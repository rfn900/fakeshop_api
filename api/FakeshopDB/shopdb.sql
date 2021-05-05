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
-- CREATE DATABASE fakeshop 
-- CHARACTER SET utf8 
-- COLLATE utf8_swedish_ci;

USE fakeshop;

-- Skapa tabellen customers
-- CREATE TABLE products (
  -- product_id int(11) NOT NULL AUTO_INCREMENT,
  -- title varchar(255) NOT NULL,
  -- description varchar(255) NOT NULL, 
  -- image varchar(255) NOT NULL, 
  -- price decimal(9,2) NOT NULL, 
  -- category varchar(255) NOT NULL, 
  -- PRIMARY KEY (product_id)
-- );

INSERT INTO products (title, description, image, price, category) 
VALUES
('Gym Joggers', 
    'Gym Joggers, en trendig träningsbyxa i Tapered Fit med kontrastreväre', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw2ec20d44/media/GG-Produktbilder/Star-Nutrition-Gear/SNA1025-BAM-R_Star_Gym-Joggers-Black-Maroon-M-01_0920.jpg?sw=655&sh=655&sm=fit&sfrm=png',
    '390',
    'Clothes'),
('Trx Home', 
    'Med TRX tränar du funktionellt med din egen kroppsvikt som belastning. Använd dig av hundratals olika vinklar och övningar för en komplett helkroppsträning!', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw9d0faced/Hi-res/c/n/cn-69861_trx_home2_1.jpg?sw=655&sh=655&sm=fit&sfrm=jpg',
    '2280',
    'Accessories'),
('Elastic Band For Training', 
    'Mini Band från Star Nutrition Gear är de små gummibanden som kommer ta din träning till nästa nivå!', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwcf9a64af/Nya_produktbilder/Star_Nutrition/star_gear/setstarmini_5-x-star-gear-mini-bands_star-nutrition-gear-0220.jpg?sw=655&sh=655&sm=fit&sfrm=png',
    '49',
    'Accessories'),
('Gym Bag', 
    'BB Gym Bag - Praktisk träningsväska i funktionsmaterial!', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwd98763d0/Hi-res/1/3/130317999102_better_bodies_bb_gym_bag_black_4.jpg?sw=655&sh=655&sm=fit&sfrm=jpg',
    '590',
    'Accessories'),
('Pre Workout', 
    'Pre Workout är en ultrakoncentrerad PWO där en servering endast väger 6,5 g men levererar erkända ingredienser.', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw42716f98/Hi-res/1/0/10581401_smartshake_original2go_one_800ml_mist_gray_new.jpg?sw=655&sh=655&sm=fit&sfrm=jpg',
    '150',
    'Kost'),
('Lifiting Belt', 
    'Lifiting belt är ett styrkelyftsbälte som klarar de tyngre lyften, det har ett smart spänne som med ett enkelt handgrepp släpper på bältet.', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwb94be427/Hi-res/c/h/chained-nutrition-weight-lifting-belt-chained-nutrition-gear_1.jpg?sw=655&sh=655&sm=fit&sfrm=png',
    '450',
    'Accessories'),
('Lifting Shoes', 
    'Lifiting Shoes är en träningssko perfekt för fitness och tuff gymträning.', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwfbb17717/Hi-res/s/n/sna4000-blk-r5.jpg?sw=655&sh=655&sm=fit&sfrm=jpg',
    '450',
    'Kost'),
('Gym Hoodie', 
    'Gym Hoodie – Tuff luvtröja från Gorilla Wear med en unik design!', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw8611eaf0/Hi-res/9/0/908144090r_delta_hoodie_army_green_4.jpg?sw=655&sh=655&sm=fit&sfrm=jpg',
    '750',
    'Clothes'),
('Seamless Tights', 
    'Seamless Tights får dig att tränna bekvemt och effectiv', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwa48608ea/media/GG-Produktbilder/ICIW/10219-051R_ICIW_Define-Seamless-Tights-Jungle-Green-Wmn-01_0920.jpg?sw=655&sh=655&sm=fit&sfrm=png',
    '850',
    'Clothes'),
('Sports Bra', 
    'Sport Bra har en enkel design med snygga detaljer samtidigt som den ger en otrolig komfort! Dra på dig den här, och du kommer aldrig vilja ha på dig en annan bh igen.', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwef6fcb39/media/GG-Produktbilder/ICIW/10222-051R_ICIW_Define-Seamless-Sports-Bra-Jungle-Green-01_0920.jpg?sw=655&sh=655&sm=fit&sfrm=png',
    '349',
    'Clothes'),
('Gym Shorts', 
    ' med vintagelogotyp fram- och baktill! Det mjuka materialet ger en följsam känsla som minskar risken för skav under träningspassen!', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwe5af9516/Hi-res/p/r/pro-mesh-shorts-black-gasp_1.jpg?sw=655&sh=655&sm=fit&sfrm=png',
    '650',
    'Clothes'),
('Peanut Buter 1kg', 
    'Peanut Butter är packat i den perfekta storleken för nötsälskaren som inte kan få nog av jordnötssmör! Finns i två utsökta varianter; Smooth och Crunchy.', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw73dfb7d3/Nya_produktbilder/Star_Nutrition/3031R_Starnutrition_peanut-butter_1kg_feb20.jpg?sw=655&sh=655&sm=fit&sfrm=png',
    '99',
    'Kost'),
('Energy Drink', 
    'Energy, 330 ml. Energy Drink är en kolsyrad EAA-dryck från Star Nutrition. Tre läskande smaker med 180 mg koffein per burk.', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwdb5be746/media/GG-Produktbilder/Star-Nutrition/FP3344_Star-Amino-Energy_x24_Apple_april20NY.jpg?sw=655&sh=655&sm=fit&sfrm=png',
    '650',
    'Kost'),
('Rx Knee Support', 
    'Köp två Rx Knee Sleeve 5 mm från Rehband och få 10 % rabatt!', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwb9292778/media/GG-Produktbilder/RehBand/SETREHBAND_rx-knee-support-5-mm-x2-rehband_Rehband_0320.jpg?sw=655&sh=655&sm=fit&sfrm=png',
    '250',
    'Accessories'),
('Boxing Goves', 
    'Boxing Glove är ett par innovativa boxningshandskar från Fairtex. Framtagna i slitstarkt konstläder med en hög komfort och slitstyrka.', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw053deb66/Hi-res/1/0/1083-82r_fairtex_bgv11_boxing_gloves_f-day_1_1.jpg?sw=655&sh=655&sm=fit&sfrm=jpg',
    '1599',
    'Accessories'),
('Shaker 760ml', 
    'Shaker 2 Go 760 ml – En praktisk shaker från Gorilla Wear som tål maskindisk, micro och kyla!', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw98d87279/Hi-res/9/9/9916190500_shaker_2_go_760_ml_black_red_1.jpg?sw=655&sh=655&sm=fit&sfrm=jpg',
    '120',
    'Accessories'),
('Vitamin C Suplement', 
    'Vitamin C + Citrus Bioflavonoids är en unik C-vitaminprodukt med hög biotillgänglighet och bioflavonoider från citrusfrukt.', 
    'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwebc3c164/Nya_produktbilder/Vitaprana/901982_Vitaprana_VitaminC_Citrus-Bioflavonoids70caps_mars21.jpg?sw=655&sh=655&sm=fit&sfrm=png',
    '129',
    'Kost');


