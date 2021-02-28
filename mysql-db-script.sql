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

-- Dump della struttura di tabella travel_site.hotels
CREATE TABLE IF NOT EXISTS `hotels` (
  `HOTEL_ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `TITLE` tinytext CHARACTER SET utf8 COLLATE utf8_bin,
  `LONG_DESCRIPTION` longtext COLLATE utf8_bin,
  `SHORT_DESCRIPTION` text COLLATE utf8_bin,
  `LOCATION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `STARS` tinyint(1) DEFAULT '1' COMMENT 'From 1 to 5',
  `PREVIEW_IMAGE` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`HOTEL_ID`),
  UNIQUE KEY `HOTEL_ID` (`HOTEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dump dei dati della tabella travel_site.hotels: ~12 rows (circa)
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` (`HOTEL_ID`, `TITLE`, `LONG_DESCRIPTION`, `SHORT_DESCRIPTION`, `LOCATION`, `STARS`, `PREVIEW_IMAGE`) VALUES
	('1-cr-934', 'Sol Sipar', '<ul>\r\n	<li>Modern, fully-renovated hotel right on the beach and in the centre of Umag</li>\r\n	<li>Delicious buffets with local specialties and show cooking</li>\r\n	<li>Bright, comfortable guest rooms for up to 8 people</li>\r\n	<li>New outdoor pools for adults and children with sunbeds and sunshades</li>\r\n	<li>Guaranteed fun with an activities programme for all ages</li>\r\n	<li>Free Wi-Fi throughout the hotel</li>\r\n</ul>\r\n\r\n								<p>The Sol Sipar Hotel is ideally located on the beachfront in Punta resort, near all the local shops, cafés, restaurants and leisure facilities, offering leisure and entertainment services for all ages. If you are looking for peaceful relaxation and being awakened by the sound of waves lapping the shore, then the new Sol Sipar Hotel is the right choice for your vacation in Istria! This hotel is newly renovated and perfect for a sophisticated and relaxing holiday. Enjoy the pleasant summer nights with your family and children or the intimate atmosphere with your partner right next to the Adriatic Sea.</p>\r\n\r\n<p>Located on the beach, 1 km from the centre of Umag in the Punta tourist resort.</p>', 'If you are looking for peace and quiet, Croatian gourmet cuisine and waking up to the sound of the waves lapping the beach, the completely renovated Sol Sipar hotel is the ideal option for your holiday in Istria.', 'Umag, Croatia', 4, 'https://www.melia.com/dam/jcr:93479cec-f698-4b3d-a07e-6df2164e6a3f/01SolSipar-GeneralExterior.jpg'),
	('1-es-20989', 'Sheraton Fuerteventura Golf & Spa Resort', '<p> Ideally located in Caleta de Fuste, on the eastern coast of Fuerteventura, an island that is especially renowned for its idyllic beaches. Sheraton Fuerteventura Beach, Golf &amp; Spa Resort has 266 comfortable rooms and suites designed in elegant Canarian style with private terraces. Its excellent restaurants offer delicious gastronomic experiences: International cuisine is served at "Los Arcos" Buffet, Mediterranean dishes at "La Veranda", Local cuisine and grill specialties at "El Faro" and Asian Cuisine at "Wok-N-Zen". Guests recharge in the 1,000 m2 wellness center, Hespérides Thalasso spa with a state-of-the-arts thermal circuit and 12 treatment cabins. Yambaland kid´s club offers hours of fun for children with plenty of creative activities. The rest of the leisure facilities include: 4 swimming pools, a fitness center, a tennis court, a mini golf and access to the golden sand beach. The selection of meeting rooms with natural sunlight are ideal for hosting any type of social events or meetings. </p>\r\n<p>The 266 spacious rooms and suites have been thoughtfully designed in elegant Canarian style to maximize comfort. They each feature a large private terrace with views to the beach or the resort’s lush gardens.</p>\r\n<p>The hotel has 4 restaurants, including an International buffet and an Asian restaurant. There are also 3 bars, one of which is a poolside bar on wooden decking.</p>\r\n<p>The Spa Thalasso Hespérides features a steam room, ice igloo and hammam. There is a tennis court. The hotel offers discounts on green fees at the adjoining course.</p>\r\n<p>Fuerteventura Airport is just 10 minutes’ drive from the Sheraton Fuerteventura. </p>', 'Sheraton Fuerteventura is located on the beachfront in a residential area of Fuerteventura’s east coast. It offers 4 outdoor pools, a spa, mini-golf course and air-conditioned rooms.', 'Avenida de las Marismas, Fuerteventura, Spain', 5, 'https://t-cf.bstatic.com/images/hotel/max1280x900/209/209893558.jpg'),
	('1-es-22143', 'MyHotel Jardin Tropical', 'Offering spectacular views of the Atlantic Ocean and La Gomera. It features a saltwater pool carved out of the cliff. The luxurious facilities include 12,000 m2 of gardens. Each elegant room has a balcony or terrace with outdoor furniture, flat-screen TV with satellite channels, mini-bar, and safe. The private bathroom includes a bath or shower and hairdryer. Free WiFi is available throughout.', 'Offering spectacular views of the Atlantic Ocean and La Gomera. It features a saltwater pool carved out of the cliff. The luxurious facilities include 12,000 m2 of gardens. Each elegant room has a balcony or terrace with outdoor furniture, flat-screen TV with satellite channels, mini-bar, and safe. The private bathroom includes a bath or shower and hairdryer. Free WiFi is available throughout.', 'Adeje, Tenerife, Spagna', 1, 'https://t-cf.bstatic.com/images/hotel/max1280x900/221/221433499.jpg'),
	('1-es-29102', 'MyHotel Vistabella Boutique Resort', 'Resort is located up on a hill, with views over Portmany Bay and is a short drive to the beach.', 'Resort is located up on a hill, with views over Portmany Bay and is a short drive to the beach.', 'Camino de Benimusa, San Antonio, Spain', 1, 'https://www.canvistabella.com/files-sbbasic/sr_canvistabella_com/fullscreen_capture_29102019_210912.jpg'),
	('1-es-348', 'MyHotel Playa Gaviotas', 'A paradise where you can enjoy the sea and water sports. The hotel offers everything you’ll need to relax, disconnect from your routine and re-connect with yourself. Combine treatments in the SPA Sensations with a wide range of sporting activities, or take a dip in one of the outdoor pools.', 'A paradise where you can enjoy the sea and water sports. The hotel offers everything you’ll need to relax, disconnect from your routine and re-connect with yourself. Combine treatments in the SPA Sensations with a wide range of sporting activities, or take a dip in one of the outdoor pools.', 'Jandía, Fuerteventura, Spain', 4, 'https://hotels1.cdn.iberostar.com/uploads/image/34853/crops/16:9/1920/image.jpeg'),
	('1-es-37698', 'MyHotel Spa Porta Maris', 'Set between Postiguet Beach and Alicante Marina, offers views of the Mediterranean and free Wi-Fi. It is 100 m from Alicante’s historic centre. All rooms have a private terrace, flat-screen TV, pillow menu and seasonal air conditioning and heating. Rooms offer views of the marina or Alicante\'s Bay. The suites also have a lounge.', 'Set between Postiguet Beach and Alicante Marina, offers views of the Mediterranean and free Wi-Fi. It is 100 m from Alicante’s historic centre. All rooms have a private terrace, flat-screen TV, pillow menu and seasonal air conditioning and heating. Rooms offer views of the marina or Alicante\'s Bay. The suites also have a lounge.', 'Plaza Puerta Del Mar, Alicante, Spain', 1, 'https://t-cf.bstatic.com/images/hotel/max1280x900/376/37698454.jpg'),
	('1-es-467', 'MyHotel Santa Eulalia Ibiza', 'Enjoy the beauty of the Mediterranean and the kind of intimacy you deserve. Don’t miss sunset at the Sea Soul Beach Club, located on a jetty that extends into the sea and offering a unique view of Formentera. And relax in the wellness zone or take the opportunity to get in shape at our fitness centre.', 'Enjoy the beauty of the Mediterranean and the kind of intimacy you deserve. Don’t miss sunset at the Sea Soul Beach Club, located on a jetty that extends into the sea and offering a unique view of Formentera. And relax in the wellness zone or take the opportunity to get in shape at our fitness centre.', 'Santa Eulalia del Rio, Ibiza, Spain', 1, 'https://hotels1.cdn.iberostar.com/uploads/image/46777/crops/750:466/540/image.jpg'),
	('1-es-501', 'MyHotel Cala Domingos', '<p>What if you woke up in a hotel with <strong>direct access</strong> to one of the most beautiful coves in Majorca? <strong>All-Inclusive</strong> means not compromising on a thing at MyHotel Cala Domingos; a <strong>family hotel</strong> set in stunning nature.</p>\r\n\r\n<p>There you will find a restaurant with sea views, spacious rooms with elegant design, lots of laughs and <strong>adventures </strong>for the little ones thanks to <strong>Star Camp</strong> and the Mediterranean essence of the <strong>special surroundings</strong>, characterised by the <strong>turquoise colour</strong> of its two coves.</p>\r\n\r\n<p>The hotel’s architecture combines <strong>tradition </strong>and <strong>modernity</strong>, with three pools set in gardens to make you feel at one with nature. The beauty of the place is not just on the surface: Cala Domingos has a <strong>natural cave</strong> and stunning sea bed to discover as you dive between coves. Double the enjoyment!</p>\r\n', 'Here you will find a restaurant with sea views, spacious rooms with elegant design, lots of laughs and adventures for the little ones thanks to Star Camp and the Mediterranean essence of the special surroundings, characterised by the turquoise colour of its two coves.', 'Cala Domingos, Majorca, Spain', 4, 'https://hotels1.cdn.iberostar.com/uploads/image/50123/crops/16:9/1920/image.jpeg'),
	('1-es-516', 'MyHotel Grand El Mirador', 'El Mirador is a hotel that has been carefully designed with romantic decor and that is filled to the brim with special details to make you feel as though you are living in a fairy tale. It is located in the “Golden Mile” area of Costa Adeje', 'El Mirador is a hotel that has been carefully designed with romantic decor and that is filled to the brim with special details to make you feel as though you are living in a fairy tale. It is located in the “Golden Mile” area of Costa Adeje', 'Guía de Isora, Tenerife, Spain', 1, 'https://hotels1.cdn.iberostar.com/uploads/image/51626/crops/750:466/540/image.jpeg'),
	('1-es-89e', 'Sol Marbella MyHotel - Atalaya Park', 'Just 6km from the famous Puerto Banús and the renowned Atalaya Country Club golf courses, between the tourist resorts of Marbella and Estepona, and 65km from Malaga airport', 'Just 6km from the famous Puerto Banús and the renowned Atalaya Country Club golf courses, between the tourist resorts of Marbella and Estepona, and 65km from Malaga airport', 'Estepona, Málaga, Spain', 1, 'https://www.melia.com/dam/jcr:89e31445-5b9a-4315-927d-bc954c49af3b/23SolMarbellaEstepona-Lobby_Bar.jpg'),
	('1-es-97fd6', 'MyHotel Suites Del Mar', '<ul>\r\n	<li>Located between Postiguet Beach and the marina, just 100m from the historic city centre</li>\r\n	<li>Recently renovated rooms with an avant-garde, warm and comfortable design</li>\r\n	<li>The carefully selected facilities in the rooms provides a level of comfort that will make you feel at home. The minimalist-style bathtub allows you to enjoy the sea view while taking a relaxing bath, making your stay an unforgettable experience</li>\r\n	<li>Our Wellness Spa offers all the facilities you need to nurture your well-being</li>\r\n	<li>Our full breakfast with stunning sea views allows you to start the day full of the energy you need to work or explore the city</li>\r\n</ul>\r\n\r\n								<p>The recently renovated Hotel Suites del Mar is located just 100m from the historic city centre. This beach hotel in Alicante offers fabulous rooms with avant-garde design, all with a terrace overlooking the sea, the beach or the marina.</p>\r\n\r\n<p>Guests also enjoy an exclusive spa service in the Sanarium, equipped with a Jacuzzi, wet and dry sauna with piped music, contrast showers, ice fountain and outdoor pool with sundeck and panoramic sea views on which to enjoy the Alicante sunshine. You will have a feeling of sailing over the sea thanks to the 180º views from the terrace over Alicante bay.</p>', 'Suites del Mar is part of Spa Porta Maris Hotel complex. There is free WiFi, and free use of the Sanarium Circuit Spa and pool on the first floor.', 'Luz de Mar, Alicante, Spagna', 4, 'https://www.melia.com/dam/jcr:97fd600f-4cda-47f0-bbac-fc6e2b843eea/208HotelPortaMaris-Luz%20de%20Mar%20Restaurant%20Cocktail.jpg'),
	('1-gr-335', 'MyHotel Creta Panorama & Mare', 'Crete, the largest of the Greek islands, is a unique place: for its beaches, villages and hidden corners, history and gastronomy.', 'Crete, the largest of the Greek islands, is a unique place: for its beaches, villages and hidden corners, history and gastronomy.', 'Rethymnon, Crete, Greece', 1, 'https://hotels1.cdn.iberostar.com/uploads/image/33544/crops/16:9/1920/image.jpeg'),
	('1-it-19986', 'Villaggio Turistico Lugana Marina', 'Set on Lake Garda shores, Villaggio Turistico Lugana Marina is 1.2 mi from the Terme Virgilio spa, and 2.5 mi from central Sirmione. It features free parking, bike rental and 2 swimming pools.', 'Set on Lake Garda shores, Villaggio Turistico Lugana Marina is 1.2 mi from the Terme Virgilio spa, and 2.5 mi from central Sirmione. It features free parking, bike rental and 2 swimming pools.', 'Lugana di Sirmione, Sirmione, Italy', 1, 'https://t-cf.bstatic.com/images/hotel/max1280x900/199/199862685.jpg');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;

-- Dump della struttura di tabella travel_site.hotels_images
CREATE TABLE IF NOT EXISTS `hotels_images` (
  `HOTEL_ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `IMAGE_SRC` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dump dei dati della tabella travel_site.hotels_images: ~29 rows (circa)
/*!40000 ALTER TABLE `hotels_images` DISABLE KEYS */;
INSERT INTO `hotels_images` (`HOTEL_ID`, `IMAGE_SRC`) VALUES
	('1-es-20989', 'https://t-cf.bstatic.com/images/hotel/max1280x900/209/209893558.jpg'),
	('1-es-22143', 'https://t-cf.bstatic.com/images/hotel/max1280x900/221/221433499.jpg'),
	('1-es-29102', 'https://www.canvistabella.com/files-sbbasic/sr_canvistabella_com/fullscreen_capture_29102019_210912.jpg'),
	('1-es-37698', 'https://t-cf.bstatic.com/images/hotel/max1280x900/376/37698454.jpg'),
	('1-es-97fd6', 'https://www.melia.com/dam/jcr:97fd600f-4cda-47f0-bbac-fc6e2b843eea/208HotelPortaMaris-Luz%20de%20Mar%20Restaurant%20Cocktail.jpg'),
	('1-it-19986', 'https://t-cf.bstatic.com/images/hotel/max1280x900/199/199862685.jpg'),
	('1-cr-934', 'https://www.melia.com/dam/jcr:93479cec-f698-4b3d-a07e-6df2164e6a3f/01SolSipar-GeneralExterior.jpg'),
	('1-es-348', 'https://hotels1.cdn.iberostar.com/uploads/image/34853/crops/16:9/1920/image.jpeg'),
	('1-gr-335', 'https://hotels1.cdn.iberostar.com/uploads/image/33544/crops/16:9/1920/image.jpeg'),
	('1-es-516', 'https://hotels1.cdn.iberostar.com/uploads/image/51626/crops/750:466/540/image.jpeg'),
	('1-es-467', 'https://hotels1.cdn.iberostar.com/uploads/image/46777/crops/750:466/540/image.jpg'),
	('1-es-89e', 'https://www.melia.com/dam/jcr:89e31445-5b9a-4315-927d-bc954c49af3b/23SolMarbellaEstepona-Lobby_Bar.jpg'),
	('1-es-501', 'https://hotels1.cdn.iberostar.com/uploads/image/50123/crops/16:9/1920/image.jpeg'),
	('1-es-97fd6', 'https://www.melia.com/dam/jcr:fbc84d23-a1e2-4bd3-ae55-0005db437894/110aHotelPortaMarisAlicante-Premium%20Room%20Sea%20View%20(1).jpg'),
	('1-es-20989', 'https://t-cf.bstatic.com/images/hotel/max1280x900/209/209888467.jpg'),
	('1-es-20989', 'https://t-cf.bstatic.com/images/hotel/max1280x900/209/209893546.jpg'),
	('1-es-20989', 'https://t-cf.bstatic.com/images/hotel/max1280x900/209/209893542.jpg'),
	('1-es-20989', 'https://t-cf.bstatic.com/images/hotel/max1280x900/209/209893530.jpg'),
	('1-es-20989', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/48377780.webp?k=b4ebb9cf73e8dfb575a843a44873fece6f0a926be632dc65b07266a9c425f65d&o='),
	('1-es-20989', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/189118135.webp?k=362a03c692bce2ba37ed7825a0226d6c6222d948491d2555f16d0e82221f3945&o='),
	('1-es-20989', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/272107801.webp?k=018835970cfcc32a04658d09906d1fae47b8f76573c7fe333215500999c4c94d&o='),
	('1-cr-934', 'https://www.melia.com/dam/jcr:2cff64d9-6376-4bf8-90c9-6de91ff05948/02SolSipar-ReceptionLobby-2.jpg'),
	('1-cr-934', 'https://www.melia.com/dam/jcr:3f3ca0d0-01f4-48b3-9c9e-9839c6c2307d/03SolSipar-Lobby.jpg'),
	('1-cr-934', 'https://www.melia.com/dam/jcr:459a5b51-08be-4987-8629-d092e12def7e/30SolSipar-PansionRestaurantSepomaia.jpg'),
	('1-cr-934', 'https://www.melia.com/dam/jcr:443b8577-5fda-49b0-a13d-f3a0572d2b54/40aSolSipar-Pool.jpg'),
	('1-cr-934', 'https://www.melia.com/dam/jcr:b80e030a-3a7e-411b-a8f8-ddcda1d54ab5/40bSolSipar-Pool.jpg'),
	('1-cr-934', 'https://www.melia.com/dam/jcr:42de4f82-baf3-41cf-8c1f-17f6ea6c656c/41aSolSipar-Beach.jpg'),
	('1-cr-934', 'https://www.melia.com/dam/jcr:746d8105-624f-4002-b8df-43fc4d39b9e1/42SolSipar-ChildrensPlayground.jpg'),
	('1-cr-934', 'https://www.melia.com/dam/jcr:e0648f9c-8714-4d40-88c3-62477c871ef3/19SolSipar-PremiumFamilyRoomSeaSideBalcony.jpg'),
	('1-es-501', 'https://cf.bstatic.com/images/hotel/max1024x768/224/224521160.jpg'),
	('1-es-501', 'https://res.cloudinary.com/lastminute/image/upload/c_scale,w_630/q_auto/v1579256286/6_vri2mp.jpg'),
	('1-es-501', 'https://hotels1.cdn.iberostar.com/uploads/image/50129/crops/16:9/1920/image.jpeg'),
	('1-es-501', 'https://media-cdn.tripadvisor.com/media/photo-s/15/01/8e/ee/views.jpg'),
	('1-es-501', 'https://media-cdn.tripadvisor.com/media/photo-m/1280/19/d9/2c/cf/ibstar-cdm-ib-bars-snack.jpg'),
	('1-es-501', 'https://foto.hrsstatic.com/fotos/0/3/545/350/80/000000/http%3A%2F%2Ffoto-origin.hrsstatic.com%2Ffoto%2F7%2F8%2F1%2F7%2F781799%2F781799_a_13801389.jpg/YPW6jJn3Q4cGR%2B58Ktjbow%3D%3D/6144,4096/6/Iberostar_Cala_Domingos-Manacor-Aussenansicht-1-781799.jpg'),
	('1-es-501', 'https://hotels1.cdn.iberostar.com/uploads/image/26139/crops/16:9/1920/image.jpeg'),
	('1-es-501', 'https://pix10.agoda.net/hotelImages/119/1195670/1195670_20031719000089503689.jpg'),
	('1-es-516', 'https://hotels1.cdn.iberostar.com/uploads/image/50157/crops/4:3/598/image.jpeg'),
	('1-es-348', 'https://hotels1.cdn.iberostar.com/uploads/image/46553/crops/16:9/1920/image.jpeg'),
	('1-es-348', 'https://hotels1.cdn.iberostar.com/uploads/image/46555/crops/16:9/1920/image.jpeg'),
	('1-es-348', 'https://hotels1.cdn.iberostar.com/uploads/image/34854/crops/16:9/1920/image.jpeg'),
	('1-es-348', 'https://hotels1.cdn.iberostar.com/uploads/image/37774/crops/16:9/1920/image.jpeg'),
	('1-es-348', 'https://hotels1.cdn.iberostar.com/uploads/image/2821/crops/16:9/1920/image.jpeg'),
	('1-es-348', 'https://hotels1.cdn.iberostar.com/uploads/image/35069/crops/16:9/1920/image.jpeg'),
	('1-es-348', 'https://hotels1.cdn.iberostar.com/uploads/image/2067/crops/16:9/1920/image.jpeg'),
	('1-es-348', 'https://hotels1.cdn.iberostar.com/uploads/image/34852/crops/16:9/1920/image.jpeg'),
	('1-es-348', 'https://hotels1.cdn.iberostar.com/uploads/image/19672/crops/16:9/1920/image.jpeg'),
	('1-es-348', 'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/itemimages/72/24/7224_v5.jpeg');
/*!40000 ALTER TABLE `hotels_images` ENABLE KEYS */;

-- Dump della struttura di tabella travel_site.offer_products
CREATE TABLE IF NOT EXISTS `offer_products` (
  `HOTEL_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `BASIC_PRICE` double DEFAULT NULL,
  `OFFER_PRICE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dump dei dati della tabella travel_site.offer_products: ~6 rows (circa)
/*!40000 ALTER TABLE `offer_products` DISABLE KEYS */;
INSERT INTO `offer_products` (`HOTEL_ID`, `BASIC_PRICE`, `OFFER_PRICE`) VALUES
	('1-es-20989', 170, 127),
	('1-es-22143', 158, 118),
	('1-es-29102', 166, 124),
	('1-es-37698', 73, 55),
	('1-es-97fd6', 100, 75),
	('1-it-19986', 48, 36);
/*!40000 ALTER TABLE `offer_products` ENABLE KEYS */;

-- Dump della struttura di tabella travel_site.rooms
CREATE TABLE IF NOT EXISTS `rooms` (
  `HOTEL_ID` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dump dei dati della tabella travel_site.rooms: ~0 rows (circa)
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;

-- Dump della struttura di tabella travel_site.showcase_products
CREATE TABLE IF NOT EXISTS `showcase_products` (
  `HOTEL_ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `BASIC_PRICE` double DEFAULT NULL,
  PRIMARY KEY (`HOTEL_ID`),
  UNIQUE KEY `HOTEL_ID` (`HOTEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dump dei dati della tabella travel_site.showcase_products: ~7 rows (circa)
/*!40000 ALTER TABLE `showcase_products` DISABLE KEYS */;
INSERT INTO `showcase_products` (`HOTEL_ID`, `BASIC_PRICE`) VALUES
	('1-cr-934', 125.23),
	('1-es-348', 184),
	('1-es-467', 183.5),
	('1-es-501', 201),
	('1-es-516', 384),
	('1-es-89e', 350),
	('1-gr-335', 135.33);
/*!40000 ALTER TABLE `showcase_products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
