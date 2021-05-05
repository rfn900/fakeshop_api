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

$db = new Database();
$products = $db->getProducts();

// echo "<pre>"; print_r($firstNamesMale); die();

//$limit = isset($_GET["limit"]) ? htmlspecialchars($_GET["limit"]) : 10;

//shuffle($products);

echo json_encode($products, JSON_UNESCAPED_UNICODE);
