<?php

/**************************************
 * 
 *   En klass som hanterar en databas
 * 
 **************************************/

class Database
{
    private $conn = null;

    public function __construct()
    {
        $dns = "mysql:host=" . (getenv('DB_SERVERNAME') ? getenv('DB_SERVERNAME') : 'localhost') .
            ";dbname=" . (getenv('DB_NAME') ? getenv('DB_NAME') : 'fakeshop') .
            ";charset=UTF8";

        try {
            $this->conn = new PDO(
                $dns,
                getenv('DB_USERNAME') ? getenv('DB_USERNAME') : 'root',
                getenv('DB_PASSWORD') ? getenv('DB_PASSWORD') : 'root'
            );

            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
    }

    /**
     * Select data from a table
     */
    private function runQuery($query)
    {
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }

    public function getProducts($cat = 'total')
    {
        $where_cat = $cat == 'total' ? "" : " WHERE category = '$cat'";
        $query = "SELECT * FROM products" . $where_cat;
        $products = $this->runQuery($query);
        return $products;
    }
}
