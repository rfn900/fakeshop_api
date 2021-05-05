-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Tempo de gera��o: 05-Maio-2021 �s 16:01
-- Vers�o do servidor: 5.7.32
-- vers�o do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Banco de dados: `fakeshop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `category` varchar(255) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`product_id`, `title`, `description`, `image`, `price`, `category`) VALUES
(1, 'Gym water bottle', 'Fantastic gym water bottle to cater to every gym buff needs', 'https://picsum.photos/500?random=1', '255.00', 'Accessories'),
(2, 'Protein Shake', 'N�sta generation av SmartShake Original med ny design, nytt smart clip som g�r det l�ttare att b�ra med sig flaskan och en ny glossy f�rg!', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw42716f98/Hi-res/1/0/10581401_smartshake_original2go_one_800ml_mist_gray_new.jpg?sw=655&sh=655&sm=fit&sfrm=jpg', '150.00', 'Diet'),
(3, 'Protein Bar', 'Protein Bar �r en sensationellt god, glutenfri proteinbar med 20 gram protein och mindre �n 1,6 g socker', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwe7b3f665/Nya_produktbilder/Star_Nutrition/8886_Star-Nutrition_Protein-Bar_55g_Cookie_Dough_BOX.jpg?sw=655&sh=655&sm=fit&sfrm=png', '189.00', 'Diet'),
(4, 'Gym Joggers', 'Gym Joggers, en trendig tr�ningsbyxa i Tapered Fit med kontrastrev�re', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw2ec20d44/media/GG-Produktbilder/Star-Nutrition-Gear/SNA1025-BAM-R_Star_Gym-Joggers-Black-Maroon-M-01_0920.jpg?sw=655&sh=655&sm=fit&sfrm=png', '390.00', 'Clothes'),
(5, 'Trx Home', 'Med TRX tr�nar du funktionellt med din egen kroppsvikt som belastning. Anv�nd dig av hundratals olika vinklar och �vningar f�r en komplett helkroppstr�ning!', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw9d0faced/Hi-res/c/n/cn-69861_trx_home2_1.jpg?sw=655&sh=655&sm=fit&sfrm=jpg', '2280.00', 'Accessories'),
(6, 'Elastic Band For Training', 'Mini Band fr�n Star Nutrition Gear �r de sm� gummibanden som kommer ta din tr�ning till n�sta niv�!', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwcf9a64af/Nya_produktbilder/Star_Nutrition/star_gear/setstarmini_5-x-star-gear-mini-bands_star-nutrition-gear-0220.jpg?sw=655&sh=655&sm=fit&sfrm=p', '49.00', 'Accessories'),
(7, 'Gym Bag', 'BB Gym Bag - Praktisk tr�ningsv�ska i funktionsmaterial!', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwd98763d0/Hi-res/1/3/130317999102_better_bodies_bb_gym_bag_black_4.jpg?sw=655&sh=655&sm=fit&sfrm=jpg', '590.00', 'Accessories'),
(8, 'Pre Workout', 'Pre Workout �r en ultrakoncentrerad PWO d�r en servering endast v�ger 6,5 g men levererar erk�nda ingredienser.', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw42716f98/Hi-res/1/0/10581401_smartshake_original2go_one_800ml_mist_gray_new.jpg?sw=655&sh=655&sm=fit&sfrm=jpg', '150.00', 'Kost'),
(9, 'Lifiting Belt', 'Lifiting belt �r ett styrkelyftsb�lte som klarar de tyngre lyften, det har ett smart sp�nne som med ett enkelt handgrepp sl�pper p� b�ltet.', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwb94be427/Hi-res/c/h/chained-nutrition-weight-lifting-belt-chained-nutrition-gear_1.jpg?sw=655&sh=655&sm=fit&sfrm=png', '450.00', 'Accessories'),
(10, 'Lifting Shoes', 'Lifiting Shoes �r en tr�ningssko perfekt f�r fitness och tuff gymtr�ning.', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwfbb17717/Hi-res/s/n/sna4000-blk-r5.jpg?sw=655&sh=655&sm=fit&sfrm=jpg', '450.00', 'Kost'),
(11, 'Gym Hoodie', 'Gym Hoodie � Tuff luvtr�ja fr�n Gorilla Wear med en unik design!', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw8611eaf0/Hi-res/9/0/908144090r_delta_hoodie_army_green_4.jpg?sw=655&sh=655&sm=fit&sfrm=jpg', '750.00', 'Clothes'),
(12, 'Seamless Tights', 'Seamless Tights f�r dig att tr�nna bekvemt och effectiv', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwa48608ea/media/GG-Produktbilder/ICIW/10219-051R_ICIW_Define-Seamless-Tights-Jungle-Green-Wmn-01_0920.jpg?sw=655&sh=655&sm=fit&sfrm=png', '850.00', 'Clothes'),
(13, 'Sports Bra', 'Sport Bra har en enkel design med snygga detaljer samtidigt som den ger en otrolig komfort! Dra p� dig den h�r, och du kommer aldrig vilja ha p� dig en annan bh igen.', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwef6fcb39/media/GG-Produktbilder/ICIW/10222-051R_ICIW_Define-Seamless-Sports-Bra-Jungle-Green-01_0920.jpg?sw=655&sh=655&sm=fit&sfrm=png', '349.00', 'Clothes'),
(14, 'Gym Shorts', ' med vintagelogotyp fram- och baktill! Det mjuka materialet ger en f�ljsam k�nsla som minskar risken f�r skav under tr�ningspassen!', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwe5af9516/Hi-res/p/r/pro-mesh-shorts-black-gasp_1.jpg?sw=655&sh=655&sm=fit&sfrm=png', '650.00', 'Clothes'),
(15, 'Peanut Buter 1kg', 'Peanut Butter �r packat i den perfekta storleken f�r n�ts�lskaren som inte kan f� nog av jordn�tssm�r! Finns i tv� uts�kta varianter; Smooth och Crunchy.', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw73dfb7d3/Nya_produktbilder/Star_Nutrition/3031R_Starnutrition_peanut-butter_1kg_feb20.jpg?sw=655&sh=655&sm=fit&sfrm=png', '99.00', 'Kost'),
(16, 'Energy Drink', 'Energy, 330 ml. Energy Drink �r en kolsyrad EAA-dryck fr�n Star Nutrition. Tre l�skande smaker med 180 mg koffein per burk.', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwdb5be746/media/GG-Produktbilder/Star-Nutrition/FP3344_Star-Amino-Energy_x24_Apple_april20NY.jpg?sw=655&sh=655&sm=fit&sfrm=png', '650.00', 'Kost'),
(17, 'Rx Knee Support', 'K�p tv� Rx Knee Sleeve 5 mm fr�n Rehband och f� 10 % rabatt!', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwb9292778/media/GG-Produktbilder/RehBand/SETREHBAND_rx-knee-support-5-mm-x2-rehband_Rehband_0320.jpg?sw=655&sh=655&sm=fit&sfrm=png', '250.00', 'Accessories'),
(18, 'Boxing Goves', 'Boxing Glove �r ett par innovativa boxningshandskar fr�n Fairtex. Framtagna i slitstarkt konstl�der med en h�g komfort och slitstyrka.', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw053deb66/Hi-res/1/0/1083-82r_fairtex_bgv11_boxing_gloves_f-day_1_1.jpg?sw=655&sh=655&sm=fit&sfrm=jpg', '1599.00', 'Accessories'),
(19, 'Shaker 760ml', 'Shaker 2 Go 760 ml � En praktisk shaker fr�n Gorilla Wear som t�l maskindisk, micro och kyla!', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dw98d87279/Hi-res/9/9/9916190500_shaker_2_go_760_ml_black_red_1.jpg?sw=655&sh=655&sm=fit&sfrm=jpg', '120.00', 'Accessories'),
(20, 'Vitamin C Suplement', 'Vitamin C + Citrus Bioflavonoids �r en unik C-vitaminprodukt med h�g biotillg�nglighet och bioflavonoider fr�n citrusfrukt.', 'https://www.gymgrossisten.com/dw/image/v2/BDJH_PRD/on/demandware.static/-/Sites-hsng-master-catalog/default/dwebc3c164/Nya_produktbilder/Vitaprana/901982_Vitaprana_VitaminC_Citrus-Bioflavonoids70caps_mars21.jpg?sw=655&sh=655&sm=fit&sfrm=png', '129.00', 'Kost');

--
-- �ndices para tabelas despejadas
--

--
-- �ndices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

