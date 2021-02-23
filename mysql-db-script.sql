-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              8.0.21 - MySQL Community Server - GPL
-- S.O. server:                  Win64
-- HeidiSQL Versione:            11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dump della struttura del database travel_site
CREATE DATABASE IF NOT EXISTS `travel_site` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `travel_site`;

-- Dump della struttura di tabella travel_site.offer_products
CREATE TABLE IF NOT EXISTS `offer_products` (
  `HOTEL_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TITLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text CHARACTER SET utf8 COLLATE utf8_bin,
  `BASIC_PRICE` double DEFAULT NULL,
  `OFFER_PRICE` double DEFAULT NULL,
  `LOCATION` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `IMAGE` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`HOTEL_ID`),
  UNIQUE KEY `HOTEL_ID` (`HOTEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dump dei dati della tabella travel_site.offer_products: ~0 rows (circa)
/*!40000 ALTER TABLE `offer_products` DISABLE KEYS */;
INSERT INTO `offer_products` (`HOTEL_ID`, `TITLE`, `DESCRIPTION`, `BASIC_PRICE`, `OFFER_PRICE`, `LOCATION`, `IMAGE`) VALUES
	('1-es-20989', 'Sheraton Fuerteventura Golf & Spa Resort', 'Sheraton Fuerteventura is located on the beachfront in a residential area of Fuerteventura’s east coast. It offers 4 outdoor pools, a spa, mini-golf course and air-conditioned rooms.', 170, 127, 'Avenida de las Marismas, Fuerteventura, Spain', 'https://t-cf.bstatic.com/images/hotel/max1280x900/209/209893558.jpg'),
	('1-es-22143', 'MyHotel Jardin Tropical', 'Offering spectacular views of the Atlantic Ocean and La Gomera. It features a saltwater pool carved out of the cliff. The luxurious facilities include 12,000 m2 of gardens. Each elegant room has a balcony or terrace with outdoor furniture, flat-screen TV with satellite channels, mini-bar, and safe. The private bathroom includes a bath or shower and hairdryer. Free WiFi is available throughout.', 158, 118, 'Gran Bretana, Adeje, Spagna', 'https://t-cf.bstatic.com/images/hotel/max1280x900/221/221433499.jpg'),
	('1-es-29102', 'MyHotel Vistabella Boutique Resort', 'Resort is located up on a hill, with views over Portmany Bay and is a short drive to the beach.', 166, 124, 'Camino de Benimusa, San Antonio, Spain', 'https://www.canvistabella.com/files-sbbasic/sr_canvistabella_com/fullscreen_capture_29102019_210912.jpg'),
	('1-es-37698', 'Bon Sol Prestige - MyHotel', 'The air-conditioned Bon Sol apartments are located just 150 m from Playa d’en Bossa Beach in Ibiza. Free Wi-Fi is available throughout and the complex offers 3 outdoor pools.', 73, 55, 'Arguelagues, Playa d\'en Bossa, Spain', 'https://t-cf.bstatic.com/images/hotel/max1280x900/376/37698454.jpg'),
	('1-es-97fd6', 'MyHotel Spa Porta Maris', 'Set between Postiguet Beach and Alicante Marina, offers views of the Mediterranean and free Wi-Fi. It is 100 m from Alicante’s historic centre. All rooms have a private terrace, flat-screen TV, pillow menu and seasonal air conditioning and heating. Rooms offer views of the marina or Alicante\'s Bay. The suites also have a lounge.', 100, 75, 'Plaza Puerta Del Mar, Alicante, Spain', 'https://www.melia.com/dam/jcr:97fd600f-4cda-47f0-bbac-fc6e2b843eea/208HotelPortaMaris-Luz%20de%20Mar%20Restaurant%20Cocktail.jpg'),
	('1-it-19986', 'Villaggio Turistico Lugana Marina', 'Set on Lake Garda shores, Villaggio Turistico Lugana Marina is 1.2 mi from the Terme Virgilio spa, and 2.5 mi from central Sirmione. It features free parking, bike rental and 2 swimming pools.', 48, 36, 'Lugana di Sirmione, Sirmione, Italy', 'https://t-cf.bstatic.com/images/hotel/max1280x900/199/199862685.jpg');
/*!40000 ALTER TABLE `offer_products` ENABLE KEYS */;

-- Dump della struttura di tabella travel_site.showcase_products
CREATE TABLE IF NOT EXISTS `showcase_products` (
  `HOTEL_ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `TITLE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_bin,
  `BASIC_PRICE` double DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `IMAGE` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`HOTEL_ID`),
  UNIQUE KEY `HOTEL_ID` (`HOTEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dump dei dati della tabella travel_site.showcase_products: ~7 rows (circa)
/*!40000 ALTER TABLE `showcase_products` DISABLE KEYS */;
INSERT INTO `showcase_products` (`HOTEL_ID`, `TITLE`, `DESCRIPTION`, `BASIC_PRICE`, `LOCATION`, `IMAGE`) VALUES
	('1-cr-934', 'Sol Sipar', 'If you are looking for peace and quiet, Croatian gourmet cuisine and waking up to the sound of the waves lapping the beach, the completely renovated Sol Sipar hotel is the ideal option for your holiday in Istria.', 125.23, 'Umag, Croatia', 'https://www.melia.com/dam/jcr:93479cec-f698-4b3d-a07e-6df2164e6a3f/01SolSipar-GeneralExterior.jpg'),
	('1-es-348', 'MyHotel Playa Gaviotas', 'A paradise where you can enjoy the sea and water sports. The hotel offers everything you’ll need to relax, disconnect from your routine and re-connect with yourself. Combine treatments in the SPA Sensations with a wide range of sporting activities, or take a dip in one of the outdoor pools.', 184, 'Jandía, Fuerteventura, Spain', 'https:////hotels1.cdn.iberostar.com/uploads/image/34853/crops/16:9/1920/image.jpeg'),
	('1-es-467', 'MyHotel Santa Eulalia Ibiza', 'Enjoy the beauty of the Mediterranean and the kind of intimacy you deserve. Don’t miss sunset at the Sea Soul Beach Club, located on a jetty that extends into the sea and offering a unique view of Formentera. And relax in the wellness zone or take the opportunity to get in shape at our fitness centre.', 183.5, 'Santa Eulalia del Rio, Ibiza, Spain', 'https://hotels1.cdn.iberostar.com/uploads/image/46777/crops/750:466/540/image.jpg'),
	('1-es-501', 'MyHotel Cala Domingos', 'here you will find a restaurant with sea views, spacious rooms with elegant design, lots of laughs and adventures for the little ones thanks to Star Camp and the Mediterranean essence of the special surroundings, characterised by the turquoise colour of its two coves.', 201, 'Cala Domingos, Majorca, Spain', 'https://hotels1.cdn.iberostar.com/uploads/image/50121/crops/750:466/540/image.jpg'),
	('1-es-516', 'MyHotel Grand El Mirador', 'El Mirador is a hotel that has been carefully designed with romantic decor and that is filled to the brim with special details to make you feel as though you are living in a fairy tale. It is located in the “Golden Mile” area of Costa Adeje', 384, 'Guía de Isora, Tenerife, Spain', 'https://hotels1.cdn.iberostar.com/uploads/image/51626/crops/750:466/540/image.jpeg'),
	('1-es-89e', 'Sol Marbella MyHotel - Atalaya Park', 'Just 6km from the famous Puerto Banús and the renowned Atalaya Country Club golf courses, between the tourist resorts of Marbella and Estepona, and 65km from Malaga airport', 350, 'Estepona, Málaga, Spain', 'https://www.melia.com/dam/jcr:89e31445-5b9a-4315-927d-bc954c49af3b/23SolMarbellaEstepona-Lobby_Bar.jpg'),
	('1-gr-335', 'MyHotel Creta Panorama & Mare', 'Crete, the largest of the Greek islands, is a unique place: for its beaches, villages and hidden corners, history and gastronomy.', 135.33, 'Rethymnon, Crete, Greece', 'https:////hotels1.cdn.iberostar.com/uploads/image/33544/crops/16:9/1920/image.jpeg');
/*!40000 ALTER TABLE `showcase_products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
