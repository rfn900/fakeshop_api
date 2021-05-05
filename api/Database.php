<?php

/**************************************
 * 
 *   En klass som hanterar en databas
 * 
 **************************************/

class Database
{
    private $servername = $_ENV['DB_SERVERNAME'];
    private $username = $_ENV['DB_USERNAME'];
    private $password = $_ENV['DB_PASSWORD'];
    private $database = $_ENV['DB_NAME'];
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
    private function select($table)
    {
        $stmt = $this->conn->prepare("SELECT * FROM $table");
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        //var_dump($result);
        return $result;
    }

    public function getProducts()
    {
        $products = $this->select("products");
        return $products;
    }
}
