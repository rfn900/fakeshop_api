<?php

/**
 * Ett databasbaserat API
 * ----------------------
 * En egenutvecklad version av https://namnapi.se/
 * Begränsningar
 *  - Data levereras enbart i JSON-format (ej XML)
 * 
 * Date: 2021-05-03
 * Copyright: MIT
 * Contact: Mahmud Al Hakim
 * https://github.com/mahmudalhakim/
 * 
 */
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Referrer-Policy: no-referrer");

include_once("Database.php");
include_once("Product.php");

$cat = isset($_GET["category"]) ? htmlspecialchars($_GET["category"]) : "total";
$db = new Database();
$products = $db->getProducts($cat);
$n_of_items_retrieved = count($products);

if ($n_of_items_retrieved == 0 || $cat == "") {
    $response = array(
        "Error" => "No items found in the given category / Enter a valid category => " . $cat
    );
    echo json_encode($response, JSON_UNESCAPED_UNICODE);
    http_response_code(400);
    die();
}

$limit = isset($_GET["show"]) ? htmlspecialchars($_GET["show"]) : $n_of_items_retrieved;

if ($n_of_items_retrieved < $limit || $limit == "") {
    $response = array(
        "Error" => "Please enter a valid number of entries - Max # of items found = " . $n_of_items_retrieved
    );
    echo json_encode($response, JSON_UNESCAPED_UNICODE);
    http_response_code(400);
    die();
}

$product_list = array();

$random_indexes = array();

// This while loop chooses the random indexes to generate random products
while (count($random_indexes) < $limit) {
    $index = rand(1, $n_of_items_retrieved);
    if (!in_array($index - 1, $random_indexes)) array_push($random_indexes, $index - 1);
}

// This loop builds the product_list array acording to the random indexes when
// it is suitable

$i = 0;
while (count($product_list) < $limit) {
    $key = isset($_GET['show']) ?  $random_indexes[$i] : $i;
    $id = $products[$key]['product_id'];
    $title = $products[$key]['title'];
    $description = $products[$key]['description'];
    $image = $products[$key]['image'];
    $price = $products[$key]['price'];
    $category = $products[$key]['category'];

    $product = new Product($id, $title, $description, $image, $price, $category);
    array_push($product_list, $product->toArray());
    $i += 1;
}

http_response_code(200);
echo json_encode($product_list, JSON_UNESCAPED_UNICODE);
