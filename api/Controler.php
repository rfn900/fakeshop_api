<?php

include_once("Product.php");

/**
 * En klass som hanterar alla requests
 * @author Me
 */
class Controler
{
    private $cat;
    private $n_of_items_retrieved = 0;
    private $limit;
    private $products;
    private $product_list = array();
    private $random_indexes = array();
    /**
     * undocumented function
     *
     * @return void
     */
    public function __construct($products, $cat)
    {
        $this->n_of_items_retrieved = count($products);
        $this->limit = isset($_GET["show"]) ? htmlspecialchars($_GET["show"]) : count($products);
        $this->products = $products;
        $this->cat = $cat;
    }

    /**
     * This function validates the category requested in the URL
     *
     * @return void
     */
    public function validateCategoryRequest()
    {

        if ($this->n_of_items_retrieved == 0 || $this->cat == "") {
            $response = array(
                "Error" => "No items found in the given category / Enter a valid category => " . $this->cat
            );
            echo json_encode($response, JSON_UNESCAPED_UNICODE);
            http_response_code(400);
            die();
        }
        return null;
    }

    /**
     * This function validates the number of items requested in URL
     *
     * @return void
     */
    public function validateNumberRequest()
    {

        if ($this->n_of_items_retrieved < $this->limit || $this->limit == "") {
            $response = array(
                "Error" => "Please enter a valid number of entries - Max # of items found = "
                    . $this->n_of_items_retrieved
            );
            echo json_encode($response, JSON_UNESCAPED_UNICODE);
            http_response_code(400);
            die();
        }
        return null;
    }


    /**
     * undocumented function
     *
     * @return void
     */
    public function printJsonResponse()
    {

        // This while loop chooses the random indexes to generate random products
        while (count($this->random_indexes) < $this->limit) {
            $index = rand(1, $this->n_of_items_retrieved);
            if (!in_array($index - 1, $this->random_indexes)) array_push($this->random_indexes, $index - 1);
        }

        // This loop builds the product_list array acording to the random indexes when
        // it is suitable

        $i = 0;
        while (count($this->product_list) < $this->limit) {
            $key = isset($_GET['show']) ?  $this->random_indexes[$i] : $i;
            $id = $this->products[$key]['product_id'];
            $title = $this->products[$key]['title'];
            $description = $this->products[$key]['description'];
            $image = $this->products[$key]['image'];
            $price = $this->products[$key]['price'];
            $category = $this->products[$key]['category'];

            $product = new Product($id, $title, $description, $image, $price, $category);
            array_push($this->product_list, $product->toArray());
            $i += 1;
        }

        http_response_code(200);
        echo json_encode($this->product_list, JSON_UNESCAPED_UNICODE);
    }
}
