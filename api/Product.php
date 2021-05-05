<?php

/**************************************
 * 
 *   En klass som beskriver ett namn
 * 
 **************************************/

class Product
{
    /**
     * Instansvariabler
     */
    private $id;
    private $title;
    private $description;
    private $image;
    private $price;
    private $category;

    /**
     * Konstruktor
     */
    public function __construct($id, $title, $description, $image, $price, $category)
    {
        $this->id = $id;
        $this->title = $title;
        $this->description = $description;
        $this->image = $image;
        $this->price = $price;
        $this->category = $category;
    }

    /**
     * En metdod som konverterar ett objekt till en array
     */
    public function toArray()
    {
        $array = array(
            "id"  => $this->id,
            "title"  => $this->title,
            "description"   => $this->description,
            "image"     => $this->image,
            "price"     => $this->price,
            "category"  => $this->category,
        );

        return $array;
    }
}
