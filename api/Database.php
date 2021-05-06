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
        //echo getenv('DB_NAME') ? getenv('DB_NAME') : 'localhost';
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
    private function select($table, $cat)
    {
        $where_cat = $cat == 'total' ? "" : " WHERE category = '$cat'";
        $stmt = $this->conn->prepare("SELECT * FROM $table" . $where_cat);
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }

    public function getProducts($cat = 'total')
    {
        $products = $this->select("products", $cat);
        return $products;
    }
}
