<?php

/**************************************
 * 
 *   En klass som hanterar en databas
 * 
 **************************************/

class Database
{
    private $servername = "eu-cdbr-west-01.cleardb.com";
    private $username = "be29e044447f1e";
    private $password = "a40f7a97";
    private $database = "heroku_344e1dbce2b4fd1";
    private $conn = null;

    public function __construct()
    {
        $dns = "mysql:host={$this->servername};dbname={$this->database};charset=UTF8";

        try {
            $this->conn = new PDO($dns, $this->username, $this->password);
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
