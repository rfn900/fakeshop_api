-- --------------------------------------------------------
--
-- Utveckla en databas med SQL
--
-- Datum: 2021-02-17
-- Utvecklare: Mahmud Al Hakim
-- Copyright: MIT
--
-- --------------------------------------------------------
-- DROP TABLE IF EXISTS fakeshop;

-- Skapa databasen moviedb
CREATE DATABASE fakeshop 
CHARACTER SET utf8 
COLLATE utf8_swedish_ci;

USE fakeshop;

-- Skapa tabellen customers
CREATE TABLE products (
  product_id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  description varchar(255) NOT NULL, 
  image varchar(255) NOT NULL, 
  price decimal(9,2) NOT NULL, 
  category varchar(255) NOT NULL, 
  PRIMARY KEY (product_id)
);

INSERT INTO products (title, description, image, price, category) 
VALUES
('Gym water bottle', 
    'Fantastic gym water bottle to cater to every gym buff needs', 
    'https://picsum.photos/500?random=1',
    '255',
    'Gym Accessories'),
('Protein Shake', 
    'Nästa generation av SmartShake Original med ny design, nytt smart clip som gör det lättare att bära med sig flaskan och en ny glossy färg!', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw42716f98/Hi-res/1/0/10581401_smartshake_original2go_one_800ml_mist_gray_new.jpg?sw=655&sh=655&sm=fit&sfrm=jpg',
    '150',
    'Kost'),
('Protein Shake', 
    'Protein Bar är en sensationellt god, glutenfri proteinbar med 20 gram protein och mindre än 1,6 g socker', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwe7b3f665/Nya_produktbilder/Star_Nutrition/8886_Star-Nutrition_Protein-Bar_55g_Cookie_Dough_BOX.jpg?sw=655&sh=655&sm=fit&sfrm=png',
    '189',
    'Kost');


