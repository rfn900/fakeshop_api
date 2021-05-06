<?php

/**
 * Ett databasbaserat API
 * ----------------------
 * Uppgiften 2
 * 
 * Date: 2021-05-07
 * Author: Rodrigo Nascimento
 * https://github.com/rfn900/fakeshop_api
 * 
 */
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header("Referrer-Policy: no-referrer");

include_once("Database.php");
include_once("Controler.php");

$db = new Database();

$db->setCategory(); // Reads the category from query
$cat = $db->getCategory(); // Gets the category value
$products = $db->getProducts(); // Loads products from DB

/*
 * Now that we read from our DB successfully, the controler 
 * methods validate the user queries and prints the JSON
 * response in case of success
 */

$controler = new Controler($products, $cat);
$controler->validateCategoryRequest();
$controler->validateNumberRequest();
$controler->printJsonResponse();
