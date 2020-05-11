-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2020 a las 20:55:33
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vehiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(2) NOT NULL,
  `categoria` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `icono` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `icono`) VALUES
(1, 'Classic Cars', 'car'),
(2, 'Motorcycles', 'bicycle'),
(3, 'Planes', 'plane'),
(4, 'Ships', 'boat'),
(5, 'Trucks and Buses', 'bus'),
(6, 'Vintage Cars', 'pricetags'),
(7, 'Trains', 'train'),
(8, 'Drones', 'dron'),
(9, 'Coches de Choque', 'choque'),
(10, 'Motos de Agua', 'magua');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(9) NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_detalle`
--

CREATE TABLE `ordenes_detalle` (
  `id` int(11) NOT NULL,
  `orden_id` int(11) NOT NULL,
  `producto_id` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `producto` varchar(70) NOT NULL,
  `categoriaId` int(2) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `urlVideo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `producto`, `categoriaId`, `proveedor`, `descripcion`, `precio_compra`, `urlVideo`) VALUES
('S10_1678', '1969 Harley Davidson Ultimate Chopper', 2, 'Min Lin Diecast', 'This replica features working kickstand, front suspension, gear-shift lever, footbrake lever, drive chain, wheels and steering. All parts are particularly delicate due to their precise scale and require special care and attention.', '48810.00', ''),
('S10_1949', '1952 Alpine Renault 1300', 1, 'Classic Metal Creations', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '98580.00', ''),
('S10_2016', '1996 Moto Guzzi 1100i', 2, 'Highway 66 Mini Classics', 'Official Moto Guzzi logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.', '68990.00', ''),
('S10_4698', '2003 Harley-Davidson Eagle Drag Bike', 2, 'Red Start Diecast', 'Model features, official Harley Davidson logos and insignias, detachable rear wheelie bar, heavy diecast metal with resin parts, authentic multi-color tampo-printed graphics, separate engine drive belts, free-turning front fork, rotating tires and rear racing slick, certificate of authenticity, detailed engine, display stand\r\n, precision diecast replica, baked enamel finish, 1:10 scale model, removable fender, seat and tank cover piece for displaying the superior detail of the v-twin engine', '91020.00', ''),
('S10_4757', '1972 Alfa Romeo GTA', 1, 'Motor City Art Classics', 'Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '85680.00', ''),
('S10_4962', '1962 LanciaA Delta 16V', 1, 'Second Gear Diecast', 'Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '103420.00', ''),
('S12_1099', '1968 Ford Mustang', 1, 'Autoart Studio Design', 'Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color dark green.', '95340.00', ''),
('S12_1108', '2001 Ferrari Enzo', 1, 'Second Gear Diecast', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '95590.00', ''),
('S12_1666', '1958 Setra Bus', 5, 'Welly Diecast Productions', 'Model features 30 windows, skylights & glare resistant glass, working steering system, original logos', '77900.00', ''),
('S12_2823', '2002 Suzuki XREO', 2, 'Unimax Art Galleries', 'Official logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.', '66270.00', ''),
('S12_3148', '1969 Corvair Monza', 1, 'Welly Diecast Productions', '1:18 scale die-cast about 10\" long doors open, hood opens, trunk opens and wheels roll', '89140.00', ''),
('S12_3380', '1968 Dodge Charger', 1, 'Welly Diecast Productions', '1:12 scale model of a 1968 Dodge Charger. Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color black', '75160.00', ''),
('S12_3891', '1969 Ford Falcon', 1, 'Second Gear Diecast', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '83050.00', ''),
('S12_3990', '1970 Plymouth Hemi Cuda', 1, 'Studio M Art Models', 'Very detailed 1970 Plymouth Cuda model in 1:12 scale. The Cuda is generally accepted as one of the fastest original muscle cars from the 1970s. This model is a reproduction of one of the orginal 652 cars built in 1970. Red color.', '31920.00', ''),
('S12_4473', '1957 Chevy Pickup', 5, 'Exoto Designs', '1:12 scale die-cast about 20\" long Hood opens, Rubber wheels', '55700.00', ''),
('S12_4675', '1969 Dodge Charger', 1, 'Welly Diecast Productions', 'Detailed model of the 1969 Dodge Charger. This model includes finely detailed interior and exterior features. Painted in red and white.', '58730.00', ''),
('S18_1097', '1940 Ford Pickup Truck', 5, 'Studio M Art Models', 'This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, detailed undercarriage, opening doors and hood,  removable split rear gate, full size spare mounted in bed, detailed interior with opening glove box', '58330.00', ''),
('S18_1129', '1993 Mazda RX-7', 1, 'Highway 66 Mini Classics', 'This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, working steering, tinted windows, baked enamel finish. Color red.', '83510.00', ''),
('S18_1342', '1937 Lincoln Berline', 6, 'Motor City Art Classics', 'Features opening engine cover, doors, trunk, and fuel filler cap. Color black', '60620.00', ''),
('S18_1367', '1936 Mercedes-Benz 500K Special Roadster', 6, 'Studio M Art Models', 'This 1:18 scale replica is constructed of heavy die-cast metal and has all the features of the original: working doors and rumble seat, independent spring suspension, detailed interior, working steering system, and a bifold hood that reveals an engine so accurate that it even includes the wiring. All this is topped off with a baked enamel finish. Color white.', '24260.00', ''),
('S18_1589', '1965 Aston Martin DB5', 1, 'Classic Metal Creations', 'Die-cast model of the silver 1965 Aston Martin DB5 in silver. This model includes full wire wheels and doors that open with fully detailed passenger compartment. In 1:18 scale, this model measures approximately 10 inches/20 cm long.', '65960.00', ''),
('S18_1662', '1980s Black Hawk Helicopter', 3, 'Red Start Diecast', '1:18 scale replica of actual Army\'s UH-60L BLACK HAWK Helicopter. 100% hand-assembled. Features rotating rotor blades, propeller blades and rubber wheels.', '77270.00', ''),
('S18_1749', '1917 Grand Touring Sedan', 6, 'Welly Diecast Productions', 'This 1:18 scale replica of the 1917 Grand Touring car has all the features you would expect from museum quality reproductions: all four doors and bi-fold hood opening, detailed engine and instrument panel, chrome-look trim, and tufted upholstery, all topped off with a factory baked-enamel finish.', '86700.00', ''),
('S18_1889', '1948 Porsche 356-A Roadster', 1, 'Gearbox Collectibles', 'This precision die-cast replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '53900.00', ''),
('S18_1984', '1995 Honda Civic', 1, 'Min Lin Diecast', 'This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, working steering, tinted windows, baked enamel finish. Color yellow.', '93890.00', ''),
('S18_2238', '1998 Chrysler Plymouth Prowler', 1, 'Gearbox Collectibles', 'Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '101510.00', ''),
('S18_2248', '1911 Ford Town Car', 6, 'Motor City Art Classics', 'Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system.', '33300.00', ''),
('S18_2319', '1964 Mercedes Tour Bus', 5, 'Unimax Art Galleries', 'Exact replica. 100+ parts. working steering system, original logos', '74860.00', ''),
('S18_2325', '1932 Model A Ford J-Coupe', 6, 'Autoart Studio Design', 'This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system, chrome-covered spare, opening doors, detailed and wired engine', '58480.00', ''),
('S18_2432', '1926 Ford Fire Engine', 5, 'Carousel DieCast Legends', 'Gleaming red handsome appearance. Everything is here the fire hoses, ladder, axes, bells, lanterns, ready to fight any inferno.', '24920.00', ''),
('S18_2581', 'P-51-D Mustang', 3, 'Gearbox Collectibles', 'Has retractable wheels and comes with a stand', '49000.00', ''),
('S18_2625', '1936 Harley Davidson El Knucklehead', 2, 'Welly Diecast Productions', 'Intricately detailed with chrome accents and trim, official die-struck logos and baked enamel finish.', '24230.00', ''),
('S18_2795', '1928 Mercedes-Benz SSK', 6, 'Gearbox Collectibles', 'This 1:18 replica features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system, chrome-covered spare, opening doors, detailed and wired engine. Color black.', '72560.00', ''),
('S18_2870', '1999 Indy 500 Monte Carlo SS', 1, 'Red Start Diecast', 'Features include opening and closing doors. Color: Red', '56760.00', ''),
('S18_2949', '1913 Ford Model T Speedster', 6, 'Carousel DieCast Legends', 'This 250 part reproduction includes moving handbrakes, clutch, throttle and foot pedals, squeezable horn, detailed wired engine, removable water, gas, and oil cans, pivoting monocle windshield, all topped with a baked enamel red finish. Each replica comes with an Owners Title and Certificate of Authenticity. Color red.', '60780.00', ''),
('S18_2957', '1934 Ford V8 Coupe', 6, 'Min Lin Diecast', 'Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System', '34350.00', ''),
('S18_3029', '1999 Yamaha Speed Boat', 4, 'Min Lin Diecast', 'Exact replica. Wood and Metal. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.', '51610.00', ''),
('S18_3136', '18th Century Vintage Horse Carriage', 6, 'Red Start Diecast', 'Hand crafted diecast-like metal horse carriage is re-created in about 1:18 scale of antique horse carriage. This antique style metal Stagecoach is all hand-assembled with many different parts.\r\n\r\nThis collectible metal horse carriage is painted in classic Red, and features turning steering wheel and is entirely hand-finished.', '60740.00', ''),
('S18_3140', '1903 Ford Model A', 6, 'Unimax Art Galleries', 'Features opening trunk,  working steering system', '68300.00', ''),
('S18_3232', '1992 Ferrari 360 Spider red', 1, 'Unimax Art Galleries', 'his replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '77900.00', ''),
('S18_3233', '1985 Toyota Supra', 1, 'Highway 66 Mini Classics', 'This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, detailed undercarriage, opening doors and hood, removable split rear gate, full size spare mounted in bed, detailed interior with opening glove box', '57010.00', ''),
('S18_3259', 'Collectable Wooden Train', 7, 'Carousel DieCast Legends', 'Hand crafted wooden toy train set is in about 1:18 scale, 25 inches in total length including 2 additional carts, of actual vintage train. This antique style wooden toy train model set is all hand-assembled with 100% wood.', '67560.00', ''),
('S18_3278', '1969 Dodge Super Bee', 1, 'Min Lin Diecast', 'This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '49050.00', ''),
('S18_3320', '1917 Maxwell Touring Car', 6, 'Exoto Designs', 'Features Gold Trim, Full Size Spare Tire, Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System', '57540.00', ''),
('S18_3482', '1976 Ford Gran Torino', 1, 'Gearbox Collectibles', 'Highly detailed 1976 Ford Gran Torino \"Starsky and Hutch\" diecast model. Very well constructed and painted in red and white patterns.', '73490.00', ''),
('S18_3685', '1948 Porsche Type 356 Roadster', 1, 'Gearbox Collectibles', 'This model features working front and rear suspension on accurately replicated and actuating shock absorbers as well as opening engine cover, rear stabilizer flap,  and 4 opening doors.', '62160.00', ''),
('S18_3782', '1957 Vespa GS150', 2, 'Studio M Art Models', 'Features rotating wheels , working kick stand. Comes with stand.', '32950.00', ''),
('S18_3856', '1941 Chevrolet Special Deluxe Cabriolet', 6, 'Exoto Designs', 'Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system, leather upholstery. Color black.', '64580.00', ''),
('S18_4027', '1970 Triumph Spitfire', 1, 'Min Lin Diecast', 'Features include opening and closing doors. Color: White.', '91920.00', ''),
('S18_4409', '1932 Alfa Romeo 8C2300 Spider Sport', 6, 'Exoto Designs', 'This 1:18 scale precision die cast replica features the 6 front headlights of the original, plus a detailed version of the 142 horsepower straight 8 engine, dual spares and their famous comprehensive dashboard. Color black.', '43260.00', ''),
('S18_4522', '1904 Buick Runabout', 6, 'Exoto Designs', 'Features opening trunk,  working steering system', '52660.00', ''),
('S18_4600', '1940s Ford truck', 5, 'Motor City Art Classics', 'This 1940s Ford Pick-Up truck is re-created in 1:18 scale of original 1940s Ford truck. This antique style metal 1940s Ford Flatbed truck is all hand-assembled. This collectible 1940\'s Pick-Up truck is painted in classic dark green color, and features rotating wheels.', '84760.00', ''),
('S18_4668', '1939 Cadillac Limousine', 6, 'Studio M Art Models', 'Features completely detailed interior including Velvet flocked drapes,deluxe wood grain floor, and a wood grain casket with seperate chrome handles', '23140.00', ''),
('S18_4721', '1957 Corvette Convertible', 1, 'Classic Metal Creations', '1957 die cast Corvette Convertible in Roman Red with white sides and whitewall tires. 1:18 scale quality die-cast with detailed engine and underbvody. Now you can own The Classic Corvette.', '69930.00', ''),
('S18_4933', '1957 Ford Thunderbird', 1, 'Studio M Art Models', 'This 1:18 scale precision die-cast replica, with its optional porthole hardtop and factory baked-enamel Thunderbird Bronze finish, is a 100% accurate rendition of this American classic.', '34210.00', ''),
('S24_1046', '1970 Chevy Chevelle SS 454', 1, 'Unimax Art Galleries', 'This model features rotating wheels, working streering system and opening doors. All parts are particularly delicate due to their precise scale and require special care and attention. It should not be picked up by the doors, roof, hood or trunk.', '49240.00', ''),
('S24_1444', '1970 Dodge Coronet', 1, 'Highway 66 Mini Classics', '1:24 scale die-cast about 18\" long doors open, hood opens and rubber wheels', '32370.00', ''),
('S24_1578', '1997 BMW R 1100 S', 2, 'Autoart Studio Design', 'Detailed scale replica with working suspension and constructed from over 70 parts', '60860.00', ''),
('S24_1628', '1966 Shelby Cobra 427 S/C', 1, 'Carousel DieCast Legends', 'This diecast model of the 1966 Shelby Cobra 427 S/C includes many authentic details and operating parts. The 1:24 scale model of this iconic lighweight sports car from the 1960s comes in silver and it\'s own display case.', '29180.00', ''),
('S24_1785', '1928 British Royal Navy Airplane', 3, 'Classic Metal Creations', 'Official logos and insignias', '66740.00', ''),
('S24_1937', '1939 Chevrolet Deluxe Coupe', 6, 'Motor City Art Classics', 'This 1:24 scale die-cast replica of the 1939 Chevrolet Deluxe Coupe has the same classy look as the original. Features opening trunk, hood and doors and a showroom quality baked enamel finish.', '22570.00', ''),
('S24_2000', '1960 BSA Gold Star DBD34', 2, 'Highway 66 Mini Classics', 'Detailed scale replica with working suspension and constructed from over 70 parts', '37320.00', ''),
('S24_2011', '18th century schooner', 4, 'Carousel DieCast Legends', 'All wood with canvas sails. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with 4 masts, all square-rigged.', '82340.00', ''),
('S24_2022', '1938 Cadillac V-16 Presidential Limousine', 6, 'Classic Metal Creations', 'This 1:24 scale precision die cast replica of the 1938 Cadillac V-16 Presidential Limousine has all the details of the original, from the flags on the front to an opening back seat compartment complete with telephone and rifle. Features factory baked-enamel black finish, hood goddess ornament, working jump seats.', '20610.00', ''),
('S24_2300', '1962 Volkswagen Microbus', 5, 'Autoart Studio Design', 'This 1:18 scale die cast replica of the 1962 Microbus is loaded with features: A working steering system, opening front doors and tailgate, and famous two-tone factory baked enamel finish, are all topped of by the sliding, real fabric, sunroof.', '61340.00', ''),
('S24_2360', '1982 Ducati 900 Monster', 2, 'Highway 66 Mini Classics', 'Features two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand', '47100.00', ''),
('S24_2766', '1949 Jaguar XK 120', 1, 'Classic Metal Creations', 'Precision-engineered from original Jaguar specification in perfect scale ratio. Features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '47250.00', ''),
('S24_2840', '1958 Chevy Corvette Limited Edition', 1, 'Carousel DieCast Legends', 'The operating parts of this 1958 Chevy Corvette Limited Edition are particularly delicate due to their precise scale and require special care and attention. Features rotating wheels, working streering, opening doors and trunk. Color dark green.', '15910.00', ''),
('S24_2841', '1900s Vintage Bi-Plane', 3, 'Autoart Studio Design', 'Hand crafted diecast-like metal bi-plane is re-created in about 1:24 scale of antique pioneer airplane. All hand-assembled with many different parts. Hand-painted in classic yellow and features correct markings of original airplane.', '34250.00', ''),
('S24_2887', '1952 Citroen-15CV', 1, 'Exoto Designs', 'Precision crafted hand-assembled 1:18 scale reproduction of the 1952 15CV, with its independent spring suspension, working steering system, opening doors and hood, detailed engine and instrument panel, all topped of with a factory fresh baked enamel finish.', '72820.00', ''),
('S24_2972', '1982 Lamborghini Diablo', 1, 'Second Gear Diecast', 'This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '16240.00', ''),
('S24_3151', '1912 Ford Model T Delivery Wagon', 6, 'Min Lin Diecast', 'This model features chrome trim and grille, opening hood, opening doors, opening trunk, detailed engine, working steering system. Color white.', '46910.00', ''),
('S24_3191', '1969 Chevrolet Camaro Z28', 1, 'Exoto Designs', '1969 Z/28 Chevy Camaro 1:24 scale replica. The operating parts of this limited edition 1:24 scale diecast model car 1969 Chevy Camaro Z28- hood, trunk, wheels, streering, suspension and doors- are particularly delicate due to their precise scale and require special care and attention.', '50510.00', ''),
('S24_3371', '1971 Alpine Renault 1600s', 1, 'Welly Diecast Productions', 'This 1971 Alpine Renault 1600s replica Features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '38580.00', ''),
('S24_3420', '1937 Horch 930V Limousine', 6, 'Autoart Studio Design', 'Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system', '26300.00', ''),
('S24_3432', '2002 Chevy Corvette', 1, 'Gearbox Collectibles', 'The operating parts of this limited edition Diecast 2002 Chevy Corvette 50th Anniversary Pace car Limited Edition are particularly delicate due to their precise scale and require special care and attention. Features rotating wheels, poseable streering, opening doors and trunk.', '62110.00', ''),
('S24_3816', '1940 Ford Delivery Sedan', 6, 'Carousel DieCast Legends', 'Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System. Color black.', '48640.00', ''),
('S24_3856', '1956 Porsche 356A Coupe', 1, 'Classic Metal Creations', 'Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.', '98300.00', ''),
('S24_3949', 'Corsair F4U ( Bird Cage)', 3, 'Second Gear Diecast', 'Has retractable wheels and comes with a stand. Official logos and insignias.', '29340.00', ''),
('S24_3969', '1936 Mercedes Benz 500k Roadster', 6, 'Red Start Diecast', 'This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system and rubber wheels. Color black.', '21750.00', ''),
('S24_4048', '1992 Porsche Cayenne Turbo Silver', 1, 'Exoto Designs', 'This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.', '69780.00', ''),
('S24_4258', '1936 Chrysler Airflow', 6, 'Second Gear Diecast', 'Features opening trunk,  working steering system. Color dark green.', '57460.00', ''),
('S24_4278', '1900s Vintage Tri-Plane', 3, 'Unimax Art Galleries', 'Hand crafted diecast-like metal Triplane is Re-created in about 1:24 scale of antique pioneer airplane. This antique style metal triplane is all hand-assembled with many different parts.', '36230.00', ''),
('S24_4620', '1961 Chevrolet Impala', 1, 'Classic Metal Creations', 'This 1:18 scale precision die-cast reproduction of the 1961 Chevrolet Impala has all the features-doors, hood and trunk that open; detailed 409 cubic-inch engine; chrome dashboard and stick shift, two-tone interior; working steering system; all topped of with a factory baked-enamel finish.', '32330.00', ''),
('S32_1268', '1980’s GM Manhattan Express', 5, 'Motor City Art Classics', 'This 1980’s era new look Manhattan express is still active, running from the Bronx to mid-town Manhattan. Has 35 opeining windows and working lights. Needs a battery.', '53930.00', ''),
('S32_1374', '1997 BMW F650 ST', 2, 'Exoto Designs', 'Features official die-struck logos and baked enamel finish. Comes with stand.', '66920.00', ''),
('S32_2206', '1982 Ducati 996 R', 2, 'Gearbox Collectibles', 'Features rotating wheels , working kick stand. Comes with stand.', '24140.00', ''),
('S32_2509', '1954 Greyhound Scenicruiser', 5, 'Classic Metal Creations', 'Model features bi-level seating, 50 windows, skylights & glare resistant glass, working steering system, original logos', '25980.00', ''),
('S32_3207', '1950\'s Chicago Surface Lines Streetcar', 7, 'Gearbox Collectibles', 'This streetcar is a joy to see. It has 80 separate windows, electric wire guides, detailed interiors with seats, poles and drivers controls, rolling and turning wheel assemblies, plus authentic factory baked-enamel finishes (Green Hornet for Chicago and Cream and Crimson for Boston).', '26720.00', ''),
('S32_3522', '1996 Peterbilt 379 Stake Bed with Outrigger', 5, 'Red Start Diecast', 'This model features, opening doors, detailed engine, working steering, tinted windows, detailed interior, die-struck logos, removable stakes operating outriggers, detachable second trailer, functioning 360-degree self loader, precision molded resin trailer and trim, baked enamel finish on cab', '33610.00', ''),
('S32_4289', '1928 Ford Phaeton Deluxe', 6, 'Highway 66 Mini Classics', 'This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system', '33020.00', ''),
('S32_4485', '1974 Ducati 350 Mk3 Desmo', 2, 'Second Gear Diecast', 'This model features two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand', '56130.00', ''),
('S50_1341', '1930 Buick Marquette Phaeton', 6, 'Studio M Art Models', 'Features opening trunk,  working steering system', '27060.00', ''),
('S50_1392', 'Diamond T620 Semi-Skirted Tanker', 5, 'Highway 66 Mini Classics', 'This limited edition model is licensed and perfectly scaled for Lionel Trains. The Diamond T620 has been produced in solid precision diecast and painted with a fire baked enamel finish. It comes with a removable tanker and is a perfect model to add authenticity to your static train or car layout or to just have on display.', '68290.00', ''),
('S50_1514', '1962 City of Detroit Streetcar', 7, 'Classic Metal Creations', 'This streetcar is a joy to see. It has 99 separate windows, electric wire guides, detailed interiors with seats, poles and drivers controls, rolling and turning wheel assemblies, plus authentic factory baked-enamel finishes (Green Hornet for Chicago and Cream and Crimson for Boston).', '37490.00', ''),
('S50_4713', '2002 Yamaha YZR M1', 2, 'Autoart Studio Design', 'Features rotating wheels , working kick stand. Comes with stand.', '34170.00', ''),
('S700_1138', 'The Schooner Bluenose', 4, 'Autoart Studio Design', 'All wood with canvas sails. Measures 31 1/2 inches in Length, 22 inches High and 4 3/4 inches Wide. Many extras.\r\nThe schooner Bluenose was built in Nova Scotia in 1921 to fish the rough waters off the coast of Newfoundland. Because of the Bluenose racing prowess she became the pride of all Canadians. Still featured on stamps and the Canadian dime, the Bluenose was lost off Haiti in 1946.', '34000.00', ''),
('S700_1691', 'American Airlines: B767-300', 3, 'Min Lin Diecast', 'Exact replia with official logos and insignias and retractable wheels', '51150.00', ''),
('S700_1938', 'The Mayflower', 4, 'Studio M Art Models', 'Measures 31 1/2 inches Long x 25 1/2 inches High x 10 5/8 inches Wide\r\nAll wood with canvas sail. Extras include long boats, rigging, ladders, railing, anchors, side cannons, hand painted, etc.', '43300.00', ''),
('S700_2047', 'HMS Bounty', 4, 'Unimax Art Galleries', 'Measures 30 inches Long x 27 1/2 inches High x 4 3/4 inches Wide. \r\nMany extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.', '39830.00', ''),
('S700_2466', 'America West Airlines B757-200', 3, 'Motor City Art Classics', 'Official logos and insignias. Working steering system. Rotating jet engines', '68800.00', ''),
('S700_2610', 'The USS Constitution Ship', 4, 'Red Start Diecast', 'All wood with canvas sails. Measures 31 1/2\" Length x 22 3/8\" High x 8 1/4\" Width. Extras include 4 boats on deck, sea sprite on bow, anchors, copper railing, pilot houses, etc.', '33970.00', ''),
('S700_2824', '1982 Camaro Z28', 1, 'Carousel DieCast Legends', 'Features include opening and closing doors. Color: White. \r\nMeasures approximately 9 1/2\" Long.', '46530.00', ''),
('S700_2834', 'ATA: B757-300', 3, 'Highway 66 Mini Classics', 'Exact replia with official logos and insignias and retractable wheels', '59330.00', ''),
('S700_3167', 'F/A 18 Hornet 1/72', 3, 'Motor City Art Classics', '10\" Wingspan with retractable landing gears.Comes with pilot', '54400.00', ''),
('S700_3505', 'The Titanic', 4, 'Carousel DieCast Legends', 'Completed model measures 19 1/2 inches long, 9 inches high, 3inches wide and is in barn red/black. All wood and metal.', '51090.00', ''),
('S700_3962', 'The Queen Mary', 4, 'Welly Diecast Productions', 'Exact replica. Wood and Metal. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.', '53630.00', ''),
('S700_4002', 'American Airlines: MD-11S', 3, 'Second Gear Diecast', 'Polished finish. Exact replia with official logos and insignias and retractable wheels', '36270.00', ''),
('S72_1253', 'Boeing X-32A JSF', 3, 'Motor City Art Classics', '10\" Wingspan with retractable landing gears.Comes with pilot', '32770.00', ''),
('S72_3212', 'Pont Yacht', 4, 'Unimax Art Galleries', 'Measures 38 inches Long x 33 3/4 inches High. Includes a stand.\r\nMany extras including rigging, long boats, pilot house, anchors, etc. Comes with 2 masts, all square-rigged', '33300.00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `correo` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `rol` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `contrasena`, `nombre`, `rol`, `foto`) VALUES
(1, 'morgado@gmail.com', 'morgado', 'Jose Antonio Morgado', 'admin', 'jose'),
(2, 'ana@gmail.com', 'ana', 'Ana Belén Sánchez', 'usuario', 'ana'),
(3, 'luis@gmail.com', 'luis', 'Luis Martínez López', 'usuario', 'luis'),
(4, 'mariaParra@gmail.com', 'maria', 'María López Esteban', 'admin', 'maria'),
(5, 'sandra@gmail.com', '12345', 'Sandra Martinez', 'Administrador', 'sandra'),
(6, 'rodolfo@gmail.com', '1234', 'rodolfo sanchez', 'contable', 'rodolfo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordenes_usuarioFK` (`usuario_id`);

--
-- Indices de la tabla `ordenes_detalle`
--
ALTER TABLE `ordenes_detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordenenFK` (`orden_id`),
  ADD KEY `OD_produto_Key` (`producto_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `lineaFK` (`categoriaId`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordenes_detalle`
--
ALTER TABLE `ordenes_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD CONSTRAINT `ordenes_usuarioFK` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `ordenes_detalle`
--
ALTER TABLE `ordenes_detalle`
  ADD CONSTRAINT `OD_produtoFK` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`codigo`),
  ADD CONSTRAINT `ordenenFK` FOREIGN KEY (`orden_id`) REFERENCES `ordenes` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `lineaFK` FOREIGN KEY (`categoriaId`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
