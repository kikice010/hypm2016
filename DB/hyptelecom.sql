-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 28, 2016 at 12:02 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hyptelecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `assistance`
--

CREATE TABLE IF NOT EXISTS `assistance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `category` varchar(150) DEFAULT NULL,
  `highlight_flag` char(1) DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `assistance`
--

INSERT INTO `assistance` (`id`, `name`, `description`, `category`, `highlight_flag`) VALUES
(1, 'Abroad with TIM', 'Using your mobile phone abroad is easy! \r\nAll TIM customers with a rechargeable line and a subscription are automatically enabled to call, receive calls, send and receive SMS from abroad. And it is as easy as in Italy!', 'Service', 'Y'),
(2, 'Fast charging from the site tim.it', 'The service from Fast Reload tim.it site  lets you charge your phone without the need to register: \r\nsimply enter your information, and in  3 clicks your line is recharged!\r\n\r\nThe charging cuts start at a minimum of 6 eur a up to 150 eur. you will be some simple information such as:\r\nTIM number to recharge.\r\nan email address to which you send the notification operation performed.\r\nthe data of your credit card or PayPal.\r\nThey accept major credit cards issued in Italy belonging to the Visa, Mastercard (including Carta, Postepay, Clarima and Bankamericard Deutsche Credit Card), American Express, Diners Card and Aura.\r\n\r\nNB Please note that if you choose charging 6 eur you will have  5 eur credit and 500 MMS to be sent to all within 30 days. For full details on Reload + click here .', 'Payment', 'N'),
(3, 'TIM SMART', 'To you who want to surf unlimited high-speed anytime, anywhere, TIM offers the solution  TIM SMART  to be always connected, at home and outside the home.\n\nBy TIM SMART HOUSE you:\n\nUnlimited ADSL up to 20 Mbps \nTIMVision included\nunlimited calls to fixed and mobile, with no connection fee .\n\nBy  TIM SMART MOBILE  you:\n\nUnlimited ADSL up to 20 Mbps \nTIMVision included\nA SIM card with 500 minutes to all Internet 2GB 4G to your Smartphone and international calls from 1 cent per minute.\n\nEverything about your home bill: a single price to satisfy needs of the whole family.\nAlso you can ask so many options to enrich your TIM SMART.\n\nTIM to your SMART HOUSE you can add:\n\nOPTION SMART MOBILE Smartphone:\na SIM with 500 minutes to all Internet 2GB 4G to your Smartphone and international calls from 1 cent per minute.\nINTERNATIONAL VOICE from home:\nunlimited calls to landlines in the US, Canada and Western Europe.\n\nTo check if the offer is active and the availability of the services included calls for free Customer Service 187 or go to the section  Fixed MyTIM .\nTIM to your SMART MOBILE you can add:\n\nSIM PLUS Smartphone: \nA SIM card with 500 minutes to all Internet 2GB 4G to your Smartphone and international calls from 1 cent per minute.\nSIM PLUS 4G for PC and Tablet:\nInternet 4G 4GB per month.', 'Service', 'Y'),
(4, 'Recess', 'To be able to use the right to reconsider the inherent requirements of:\n\nACTIVATE NEW LINE\nPASSAGE TO ANOTHER OPERATOR\nACTIVATION OFFER / SERVICE ON LINE ALREADY ''TIM\nPURCHASE / HIRE OF PRODUCTS\nYou can contact customer service 187 or download directly from this site in the form to the written application ', 'Smart', 'N'),
(5, 'Value-added services: SMS / MMS / Internet', 'The value-added services, also called ''premium'' or ''content'', are also part of the services provided by external companies through SMS, MMS or data connection from a landline (WEB) or mobile (WAP) that you can activate, receive and / or make use of phone, tablet or PC.  \r\nThese are services such as: logos, ringtones, horoscopes, weather, news, videos, wallpapers and more.\r\nThe TIM Card, since its activation, is empowered to make / receive calls and video calls, send and receive SMS / MMS, browsing the internet, therefore, you can also activate the value added services (with the exception of TIM Card registered in the name minor for which to ''Adult; content services are disabled). activation of the service can take place following the activation procedure for each of the channels mentioned above (SMS, MMS, WEB, WAP etc.), but only ever with your consent.\r\nValue-added services are chargeable and charging arrangements (for each message and / or content, daily, weekly, monthly) vary depending on the type of service you have chosen to activate on your line. When you download content is therefore always important to verify if this means adherence to a subscription service with periodic debit your users.', 'Service', 'N'),
(6, 'Check the remaining credit while abroad', 'When you''re abroad, you can check the remaining credit of your rechargeable TIM through the following ways:\r\n\r\nIf the local operator supports the service of Direct Call , you can call 40916 even if you''re at zero credit.\r\nIf you still have remaining credit you can use the service 40916 via SMS by sending a free message to 40916 with the syntax '' CREDIT ''.\r\nDirectly from online pc entering the section MyTIM Mobile .\r\nBy phone on site TIM.it optimized for your smartphone, or via the '' App MyTIM Mobile , currently available for free download in versions for iPhone and smartphones with Android operating system . If you want to know what it costs to surf the Internet when you''re abroad, you can see the shipping costs on the Internet with their cell phone or with the PC . In this case, in fact, for the display of information, you will support the costs and conditions normally applied to data roaming.\r\nFinally from abroad, you can check your own credit by typing * 123 # followed by ENTER when the local manager allows this service. After a few moments appear the amount of your remaining credit directly on the phone''s display.', 'Monitor', 'Y'),
(7, 'Charging +', 'Reload + it allows you, for each operation of charging by 6 eur or 12 eur  to get in addition to telephone traffic, a bundle MMS valid for all, to be consumed within 30 days after the charge.\r\n\r\nFrom 02.03.2014 the new offer Reload + is enriched with new cuts Reload!\r\n\r\nReload + 17 eur\r\n\r\nReload + 22 eur\r\n\r\nConfirmation of the bundle activation Reloading you will be notified via SMS\r\n\r\nFor more details and information click here .', 'Payment', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(10, 'Pavle Vidanovic', 'awdawd@gmail.com', 'adawdawdaddwawdwd'),
(11, 'Pavle Vidanovic', 'komsijin.mejl@gmail.com', 'Njeknjaaa ! :)');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE IF NOT EXISTS `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `cpu` varchar(100) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `resolution` varchar(100) DEFAULT NULL,
  `display_size` varchar(100) DEFAULT NULL,
  `display_type` varchar(100) DEFAULT NULL,
  `sim` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `dimensions` varchar(100) DEFAULT NULL,
  `device_type` varchar(30) DEFAULT NULL,
  `promotion` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id`, `name`, `image_path`, `price`, `description`, `cpu`, `os`, `resolution`, `display_size`, `display_type`, `sim`, `weight`, `dimensions`, `device_type`, `promotion`) VALUES
(2, 'Apple iPad Pro 128 GB', '/img/devices/Tablet/ipad_pro.jpg', 1250, 'With iPad you''ve discovered a whole new world, simple and addictive. Today iPad Pro, with improved multi-touch technology, its large Retina Display 12.9 inches, and the CPU performance almost doubled compared to the iPad Air 2, is ready to once again broaden your horizons. It is not only bigger. it is an iPad that allows you to work and create in a whole new dimension as you have never done before.\n\nWith 5.6 million pixels, iPad Pro Retina display higher resolution ever seen on an iOS device. Mount 4K video, create presentations, manage a business: the 12.9 inches display everything is easier, faster and exciting. And the redesigned Multi-Touch will discover new ways to interact with your iPad.\n\nDespite its large display, the iPad Pro is surprisingly thin and light: only 6.9 mm thick and just 713 grams. With the unibody, it is also durable and well-balanced. But perhaps the most amazing aspect of the iPad Pro is another: it is so comfortable that you almost forget to have it in hand.', 'co-processor M9', 'iOS 9', '2732x2048', '12.9 inches', 'LED-backlit IPS LCD, capacitive touchscreen, 16M colors', 'Nano-SIM/ Electronic SIM card', '713 g', '305.7 x 220.6 x 6.9 mm', 'Tablet', b'1'),
(3, 'Apple iPad Mini 4', '/img/devices/Tablet/ipad-mini-4.jpg', 530, 'To view it seems really small, but is ready to surprise you with outstanding performance: The new iPad mini 4, thinner and lighter than ever, has all the power you need to do great things.\r\n\r\niPad mini 4 contains everything you love the iPad for an even more lightweight, portable design. Call friends with FaceTime or carried on with the job: you can do it anywhere, anytime.\r\n\r\niPad mini 4 has a second-generation A8 chip with 64-bit architecture of desktop level, to manage even the most elaborate app. You can edit a film, flip through your photos or do both simultaneously: everything is fluid and immediate.\r\n\r\nThe iSight camera mini iPad 4 has sophisticated optics, an even more advanced sensor and an ISP image processor designed by Apple. It includes features like Panorama, Time-Lapse, Slow and continuous shooting mode and timer. Even the FaceTime HD front camera has been redesigned with an improved sensor and larger pixels, to resume even better in low light. Result? Photos and videos, not to mention the video calls and selfies will be incredibly bright.\r\n\r\nThanks to the Touch ID technology, mini iPad 4 is protected by a password and unassailable memory test: your fingerprint. It just needs a touch to unlock it, but your data are not at danger, even if you lend it to a friend or colleague. And with Touch ID to make purchases on the iTunes, iBooks, and App Store is still easier and safer.', 'Dual-core 1.5 GHz Typhoon', 'iOS 9', '1536 x 2048', '7.9 inches', 'LED-backlit IPS LCD, capacitive touchscreen, 16M colors', 'Nano-SIM/ Electronic SIM card', '299 g', '203.2 x 134.8 x 6.1 mm', 'Tablet', b'0'),
(4, 'Huawei MediaPad T1 10', '/img/devices/Tablet/huawei-t1-10.jpg', 250, 'The Huawei T1 10 packs a 9.6" IPS HD screen and runs on the Snapdragon 410 chip with a quad-core 1.2GHz Cortex-A53 CPU, Adreno 306 GPU and 1GB of RAM. The rest of the specs include a 5MP rear cam with LED flash, a 2MP front snapper, LTE connectivity and Android KitKat with Emotion launcher.\r\n\r\nThe slate employs an aluminum unibody design and is just 8.3mm thick. It is powered by a beefy 4,800 mAh battery, which should last for 24 days on standby, 12 hours on video playback, or 6.5 hours of web browsing.', 'Quad-core 1.2 GHz Cortex-A53', 'Android OS, v4.4.4', '800 x 1280', '9.6 inches', 'IPS LCD capacitive touchscreen, 16M colors', 'Micro-SIM', '433 g', '248.5 x 150 x 8.3 mm', 'Tablet', b'0'),
(5, 'Apple Watch Sport 38', '/img/devices/Smart/apple-watch38.jpg', 370, 'Each collection Apple Watch is made of special alloys, designed to combine aesthetic and robustness. The case of Apple Watch Sport is made of silver anodized aluminum, sidereal gray, gold or rose gold, while in the Apple Watch models is made of stainless steel natural color or black sidereal. The case is available in two sizes: 38 mm and 42 mm. We have also created a range of interchangeable straps in exclusive materials. Apple Watch uses revolutionary technologies such as Digital Crown, the Taptic Engine and Force Touch. And thanks to a battery that lasts up to 18 hours, you can use it all day.', 'Dual Core 520 MHz', 'watchOS 1.0', '390 x 312', '1.65 inches', 'AMOLED capacitive touchscreen, 16M colors', NULL, '70 g', '42 x 35.9 x 10.5 mm', 'Smart', b'0'),
(6, 'Chromecast', '/img/devices/Smart/Chromecast.jpg', 80, 'With Chromecast TIMvision ports, your videos, photos and more on any TV using just a smartphone or tablet and a Wi-Fi connection, all without consuming GB. With the App TIMvision display cartoons, movies, series TV, more and documentaries on demand. Create your schedule without commercial interruptions and have more than 8,000 titles available in a single monthly subscription and the program starts whenever you want on your home TV.', NULL, NULL, '1080p', NULL, NULL, NULL, '39 g', '51.9 x 51.9 x 13.49 mm', 'Smart', b'1'),
(7, 'Polar freq sensor. HR heart', '/img/devices/Smart/polar_sensor.png', 70, 'Used with a mobile application for sports or with a compatible Polar training computer displays inmodo highly accurate real-time heart rate during training. Polar H7 can essereutilizzato with different products of the Polar range and gym equipment compatible.', NULL, NULL, NULL, 'XS-S, M-XXL', NULL, NULL, '120 g', NULL, 'Smart', b'0'),
(8, 'Samsung Smart TV 50', '/img/devices/Smart/samsung_smart_tv_50.jpg', 930, 'With the Samsung H5203, you will not believe your screen. Witness a wider spectrum of colors even in non-HD content with Wide Color Enhancer Plus. See every detail of fast, action packed TV shows and movies with the great motion clarity of Motion Rate 60.\r\n\r\n	Experience a great picture with no compromises with Samsung 1080p Full HD. With a resolution twice as high as standard HD TVs, you can catch all the details of your favorite films and games.', NULL, NULL, '1,920 x 1080', '40 inches', 'LED', NULL, '7 kg', NULL, 'Smart', b'1'),
(9, 'Samsung Gear Fit', '/img/devices/Smart/samsung-gear-fit.jpg', 80, 'The innovative curved screen from 1.84 '''' Super AMOLED touch screen and changeable straps Samsung Gear Fit make you cool and fashionable even when you''re training. It also offers a variety of colors, backgrounds and types of watch that you can choose according to your preferences. So you can customize your look every day!\r\n\r\nWith Samsung Gear Fit immediately receive Email, SMS notifications, incoming calls and apps so you do not lose a notification to always be in touch with your world. What''s more, make it Your Personal Trainer daily! In fact, thanks to the heart rate sensor, in training mode, this device supports you in real time and gives you tips you need during exercise to achieve your goals.\r\n\r\nAlways keeps track of activities during the day and is always ready to accompany you with its innovative design, comfortable and lightweight (only 27 gr.) And more resistant to water and dust.\r\nSamsung Gear Fit is compatible with a number of devices: \r\nGALAXY S5 - GALAXY Note 3 / Note II - GALAXY S4 / S4 Active / S4 Zoom / S4 mini - GALAXY Note II \r\n(the number of compatible devices could further increase).', NULL, NULL, '128x432', '1.84 inches', '1.84 inches Curved Super AMOLED touchscreen display', NULL, '27 g', '23,4 x 57,4 x 11,95 mm', 'Smart', b'0'),
(10, 'Videocamera D-Link', '/img/devices/Smart/videocamera-wireless.jpg', 80, 'The fixed camera Cloud Wireless N by D-Link (DCS-942L) is a versatile monitoring solution for your home or small office 24 hours a day; Infrared LED equipped allows you to see even in the absence of light. It connects to the Wi-Fi network user and transmits high quality video images for the home and office monitoring even in complete darkness.', NULL, NULL, NULL, NULL, NULL, NULL, '20 g', '23,4 x 57,4 x 11,95 mm', 'Smart', b'1'),
(11, 'ZTE SPro 2', '/img/devices/Smart/zte+spro2.jpg', 700, 'The ZTE Spro 2 Smart Projector is a 2-in-1 projector and mobile hotspot that lets you access the content you want and view it in style, virtually anywhere you choose.', 'QuadCore processor 2 GHz', 'Android 4.4', NULL, '5 inches', NULL, NULL, '526 g', '134 x 131 x 33 mm', 'Smart', b'1'),
(12, 'Huawei p9', '/img/devices/Phones/huawei-p9.jpg', 600, 'Huawei P9 in its design lines with a strong visual impact, characterized by diamond-cut edges and rounded to perfection. The smartphone has a unibody aerospace aluminum and glass upgraded 2.5D, and is available in two colors: Titanium Grey and Mystic Silver.\r\n\r\nWith a 96% color gamut, stunning Full HD IPS display, 5.2 "allows you to discover a world full of intense colors and more natural.\r\n\r\nThe cooperation between Huawei and Leica has created a smartphone with dual camera. The result: more photo and video sensational brightness and sharpness.\r\n\r\nHuawei P9 is capable of capturing images with bright colors while ensuring a yield extraordinary black and white; all with the timeless style of Leica.La technology with dual Huawei P9 camera allows you to capture a larger amount of light, combining the best qualities of color acquired from RGB sensor with details obtained from the sensor in black and white. All to ensure maximum results with every shot.\r\n', 'Quad-core 2.5 GHz Cortex-A72 & quad-core 1.8 GHz Cortex-A53', 'Android OS, v6.0 (Marshmallow)', '1080 x 1920 pixels (~423 ppi pixel density)', '5.2 inches (~72.9% screen-to-body ratio)', 'IPS-NEO LCD capacitive touchscreen, 16M colors', 'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', '144 g (5.08 oz)', '145 x 70.9 x 7 mm (5.71 x 2.79 x 0.28 in)', 'Phone', b'0'),
(13, 'iPhone SE', '/img/devices/Phones/iPhone_SE.jpg', 510, 'The phone 4 "more powerful than ever. IPhone SE shooting a compact design highly successful addition of two advanced cameras and a power of incredibile.Disegnato processing to fit comfortably in your hand and be pleasant to the touch, thanks to the satin finish of the aluminum shell microsabbiato.\r\niPhone SE has a Retina display, 4 '', archittetura A9 chip with 64-bit desktop-class, fingerprint sensor Touch ID, 12MP iSight camera, FaceTime HD camera with flash Retina, Live Photos and Wi-Fi connections and 4G fast. And yet, iOS 9 and iCloud.', 'Dual-core 1.84 GHz Twister', 'iOS 9.3.2', '640 x 1136 pixels (~326 ppi pixel density)', '4.0 inches (~60.8% screen-to-body ratio)', 'LED-backlit IPS LCD, capacitive touchscreen, 16M colors', 'Nano-SIM', '113 g (3.99 oz)', '123.8 x 58.6 x 7.6 mm (4.87 x 2.31 x 0.30 in)', 'Phone', b'0'),
(14, 'Iphone 6s', '/img/devices/Phones/iPhone6s.jpg', 600, 'Retina HD display, 4.7 "3D Touch. 7000 series aluminum and more resistant glass. A9 chip with 64-bit architecture of desktop level. New iSight camera with 12MP Live Photos. Touch ID. Wi-Fi connections and 4G LTE more veloci.1 long battery durata.2 and yet, iOS 9 and iCloud. all in a sleek unibody.', 'Dual-core 1.84 GHz Twister', 'iOS 9, upgradable to iOS 9.3.2', '750 x 1334 pixels (~326 ppi pixel density)', '4.7 inches (~65.6% screen-to-body ratio)', 'LED-backlit IPS LCD, capacitive touchscreen, 16M colors', 'Nano-SIM', '143 g (5.04 oz)', '138.3 x 67.1 x 7.1 mm (5.44 x 2.64 x 0.28 in)', 'Phone', b'1'),
(15, 'LG G5', '/img/devices/Phones/LG_G5.jpg', 700, 'The new LG G5 is a new type of smartphone that exceeds all limits, with a modular design that revolutionizes the metal fully specified design standards. Expand the functions, interact with the innovative LG Friends and test truly innovative smartphone experience. The G5 revolution continues with a double wide-angle camera, which captures more than your eyes can see. Even under the sun, because the new Quantum IPS display is richer, bright and colorful even in direct sunlight. And it always shows the main notifications even when not active. New LG G5: what you do not expect, in the palm of your hand.\r\nBeauty and sophistication into the palm of your hand. Looking for more attention to detail and elegance of the materials, and here they are. The metal and glass come together softly in a simply iconic shape. That gives you all sensations to try.\r\nFreed from the conventions. The new modular design with battery slide will allow you to have all that others have never been able to give. The freedom to have a metal smartphone and they can change the battery when you want. And to expand the functions with new modules.', 'Dual-core 2.15 GHz Kryo & dual-core 1.6 GHz Kryo', 'Android OS, v6.0.1 (Marshmallow)', '1440 x 2560 pixels (~554 ppi pixel density)', '5.3 inches (~70.1% screen-to-body ratio)', 'IPS LCD capacitive touchscreen, 16M colors', 'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', '159 g (5.61 oz)', '149.4 x 73.9 x 7.7 mm (5.88 x 2.91 x 0.30 in)', 'Phone', b'0'),
(16, 'LG K8', '/img/devices/Phones/lg-k8.jpg', 180, 'LGs new K Series offers a range of smartphones that reflect your personality. LG K8 accompanies you on your travels and will surprise you with detailed selfie to share with all the speed of 4G LTE network\r\nGive yourself a tone! LG K8 has a design that leaves gaping through beveled glass profile and rounded shape. More is more ergonomic and provides a better grip thanks to the work of the back cover.\r\nCatch the funniest situations of the day with 8-megapixel camera. It just a touch on the display and K8 focus and shoot immediately. Even for selfies you can count on the 5 megapixel front camera with the virtual flash feature that illuminates your face, so your selfies will be illuminated as they should, while everyone else will snap ... dark selfies!', 'Dual-core 2.15 GHz Kryo & dual-core 1.6 GHz Kryo', 'Android OS, v6.0.1 (Marshmallow)', '720 x 1280 pixels (~294 ppi pixel density)', '5.0 inches (~66.7% screen-to-body ratio)', 'IPS LCD capacitive touchscreen, 16M colors', 'Micro-SIM', '157 g (5.54 oz)', '144.6 x 71.5 x 8.7 mm (5.69 x 2.81 x 0.34 in)', 'Phone', b'1'),
(17, 'Sony XPERIA X', '/img/devices/Phones/sony-xperia-x.jpg', 630, 'A smartphone with inimitable performance that integrates a stunning camera that can predict the next movement of the subject ..\r\nXperia X Performance integrates the new camera Sony signed, faster and smarter than ever. Faster response, focus more intelligent and revolutionary adaptive shutter speed: youll have everything you need for incredibly sharp shots in all conditions. Making intuitive hybrid automatic Xperia X Performance Fire uses technologies of Sony cameras and allows you to capture any movement. Just choose the subject you want in focus and the camera will automatically follow, even when moving. The focus is always clear and always sharp subject: no need to worry of following the scene. Think of all your smartphone.\r\nOur rapid camera is able to switch from standby to shoot in less than 0.6 seconds. Thanks to the incredible speed startup, autofocus hybrid focus and image processing, you can capture the most unexpected moments.', 'Dual-core 2.15 GHz Kryo & dual-core 1.6 GHz Kryo', 'Android OS, v6.0.1 (Marshmallow)', '1080 x 1920 pixels (~441 ppi pixel density)', '5.0 inches (~69.6% screen-to-body ratio)', 'IPS LCD capacitive touchscreen, 16M colors', 'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', '153 g (5.40 oz)', '142.7 x 69.4 x 7.9 mm (5.62 x 2.73 x 0.31 in)', 'Phone', b'0'),
(18, 'ZTE Blade L5', '/img/devices/Phones/ZTE_Blade.jpg', 80, 'The phone comes with a 5.00-inch display with a resolution of 720 pixels by 1280 pixels \r\n\r\nThe ZTE Blade L5 Plus is powered by quad-core MediaTek MT6580 processor and it comes with 1GB of RAM. The phone packs 8GB of internal storage that can be expanded via a microSD card. As far as the cameras are concerned, the ZTE Blade L5 Plus packs a 8-megapixel primary camera on the rear and a 2-megapixel front shooter for selfies. \r\n\r\nThe ZTE Blade L5 Plus runs Android 5.1 and is powered by a 2150mAh non removable battery. It measures 143.00 x 72.00 x 8.30 (height x width x thickness) and weighs 160.00 grams.', 'Quad-core 1.3 GHz Cortex-A7', 'Android OS, v5.1 (Lollipop)', '720 x 1280 pixels (~294 ppi pixel density)', '5.0 inches (~69.6% screen-to-body ratio)', 'Capacitive touchscreen, 16M colors', 'Dual SIM', '160 g (5.64 oz)', '143 x 72 x 8.3 mm (5.63 x 2.83 x 0.33 in)', 'Phone', b'1'),
(19, 'LG Nexus 5X', '/img/devices/Phones/LG-Nexus5.jpg', 450, 'Nexus 5X captures all the spirit of the Nexus family, offering high-level performance in a compact, lightweight device ready to accompany you throughout the day. With the display of 5.2 '' and the processor Hexa-Core Qualcomm Snapdragon 808 processor will have a maximum of visual experience.\r\nThe Nexus 5X camera is the best that has ever been mounted on a Nexus smartphone. His special is that it takes quality pictures even in less than ideal lighting conditions. The 1.55?m pixel capture more details even when there is very little light to give you sharp pictures with stunning detail. And with the Google apps even quicker to boot Camera and take pictures, youll never miss a moment of your life.\r\nGoogle Photo is the new way to save, search and share all your photos and videos. Save an unlimited free cloud-quality photos and high quality video, which you can access from anywhere. You can search your content depending on the person, place, or the subject you have photographed, thanks to the organization of intelligent Google Photos. So you can go back in time and revisit your memories with more ease.', 'Quad-core 1.44 GHz Cortex-A53 & dual-core 1.82 GHz Cortex-A57', 'Android OS, v6.0 (Marshmallow)', '1080 x 1920 pixels (~423 ppi pixel density)', '5.2 inches (~70.2% screen-to-body ratio)', 'IPS LCD capacitive touchscreen, 16M colors', 'Nano-SIM', '136 g (4.80 oz)', '147 x 72.6 x 7.9 mm (5.79 x 2.86 x 0.31 in)', '', b'0'),
(20, 'Microsoft Lumia 950', '/img/devices/Phones/microsoft-lumia950.jpg', 500, 'Superior functionality, excellent design and the best experience with Windows 10: choose Lumia 950 and transforms it at any time in a great achievement.\r\nLearn all you can do with your Microsoft Lumia', 'Dual-core 1.82 GHz Cortex-A57 & quad-core 1.44 GHz Cortex-A53', 'Microsoft Windows 10', '1440 x 2560 pixels (~564 ppi pixel density)', '5.2 inches (~70.5% screen-to-body ratio)', 'AMOLED capacitive touchscreen, 16M colors', 'Nano-SIM', '150 g (5.29 oz)', '145 x 73.2 x 8.2 mm (5.71 x 2.88 x 0.32 in)', 'Phone', b'0'),
(21, 'Samsung Galaxy S7 edge ', '/img/devices/Phones/Samsung_S7edge.jpg', 830, 'Samsung Galaxy S7 Edge smartphone was launched in February 2016. The phone comes with a 5.50-inch touchscreen display with a resolution of 1440 pixels by 2560 pixels at a PPI of 534 pixels per inch. \r\n\r\nThe Samsung Galaxy S7 Edge is powered by 1.6GHz octa-core and it comes with 4GB of RAM. The phone packs 32GB of internal storage that can be expanded up to 200GB via a microSD card. As far as the cameras are concerned, the Samsung Galaxy S7 Edge packs a 12-megapixel primary camera on the rear and a 5-megapixel front shooter for selfies. \r\n\r\nThe Samsung Galaxy S7 Edge runs Android 6.0 and is powered by a 3600mAh non removable battery. It measures 150.90 x 72.60 x 7.70 (height x width x thickness) and weighs 157.00 grams.', 'Dual-core 2.15 GHz Kryo & dual-core 1.6 GHz Kryo, Quad-core 2.3 GHz Mongoose + quad-core 1.6 GHz Cor', 'Android OS, v6.0 (Marshmallow)', '1440 x 2560 pixels (~534 ppi pixel density)', '5.5 inches (~76.1% screen-to-body ratio)', 'Super AMOLED capacitive touchscreen, 16M colors', 'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', '157 g (5.54 oz)', '150.9 x 72.6 x 7.7 mm (5.94 x 2.86 x 0.30 in)', 'Phone', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `dev_assistance`
--

CREATE TABLE IF NOT EXISTS `dev_assistance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dev` int(11) NOT NULL,
  `id_assistance` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dev` (`id_dev`),
  KEY `id_assistance` (`id_assistance`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `dev_assistance`
--

INSERT INTO `dev_assistance` (`id`, `id_dev`, `id_assistance`) VALUES
(1, 11, 2),
(2, 12, 2),
(3, 13, 2),
(4, 14, 2),
(5, 15, 2),
(6, 16, 2),
(7, 17, 2),
(8, 18, 2),
(9, 19, 2),
(10, 20, 2),
(11, 21, 2),
(28, 2, 3),
(29, 4, 3),
(30, 8, 3),
(31, 11, 3),
(32, 12, 3),
(33, 13, 3),
(34, 14, 3),
(35, 15, 3),
(36, 16, 3),
(37, 17, 3),
(38, 18, 3),
(39, 19, 3),
(40, 20, 3),
(41, 21, 3),
(42, 12, 4),
(43, 15, 4),
(44, 17, 4),
(45, 18, 4),
(46, 6, 4),
(47, 7, 4),
(48, 8, 4),
(49, 9, 4),
(50, 12, 5),
(51, 14, 5),
(52, 15, 5),
(53, 17, 5),
(54, 18, 5),
(55, 11, 7),
(56, 2, 7),
(57, 13, 7),
(58, 4, 7),
(59, 3, 1),
(60, 3, 2),
(61, 5, 1),
(62, 5, 5),
(63, 10, 5),
(64, 10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `dev_sl`
--

CREATE TABLE IF NOT EXISTS `dev_sl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dev` int(11) NOT NULL,
  `id_sl` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dev` (`id_dev`),
  KEY `id_sl` (`id_sl`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `dev_sl`
--

INSERT INTO `dev_sl` (`id`, `id_dev`, `id_sl`) VALUES
(1, 5, 7),
(2, 7, 4),
(3, 7, 7),
(4, 9, 4),
(5, 9, 7),
(6, 2, 6),
(7, 3, 6),
(8, 4, 6),
(9, 2, 5),
(10, 3, 5),
(11, 4, 5),
(12, 8, 3),
(13, 8, 1),
(14, 10, 1),
(15, 10, 2),
(16, 12, 5),
(17, 15, 5),
(18, 14, 5),
(19, 21, 5),
(20, 12, 6),
(21, 15, 6),
(22, 14, 6),
(23, 21, 6);

-- --------------------------------------------------------

--
-- Table structure for table `homepage`
--

CREATE TABLE IF NOT EXISTS `homepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_desc` varchar(500) DEFAULT NULL,
  `group_path` varchar(50) DEFAULT NULL,
  `gover_desc` varchar(500) DEFAULT NULL,
  `gover_path` varchar(50) DEFAULT NULL,
  `bm_desc` varchar(500) DEFAULT NULL,
  `bm_path` varchar(50) DEFAULT NULL,
  `inovation` varchar(500) DEFAULT NULL,
  `testimonials` varchar(500) DEFAULT NULL,
  `projects` varchar(500) DEFAULT NULL,
  `fi_desc` varchar(500) DEFAULT NULL,
  `fi_path` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `homepage`
--

INSERT INTO `homepage` (`id`, `group_desc`, `group_path`, `gover_desc`, `gover_path`, `bm_desc`, `bm_path`, `inovation`, `testimonials`, `projects`, `fi_desc`, `fi_path`) VALUES
(1, 'A portrait of the Group: our vision of the future as well as our rich corporate history, our values, code of Ethics and conduct, the Fovernance system, activities and geographical location, the way we do our business and our commitment to customers, sustainability and innovation, our organization and the management theam, the remuneration and more', '../img/home/group.png', 'The system of corporate governance adopted by Telecom Italia, articulated according to the traditional method, is focused on the <b>role of the leadership in the strategic decision taken by the Board of Directors</b>, on the transparency of management choices, both within the companu as well as in the respect to the market.', '../img/home/governance.png', 'Business markets have a derived demand a demand in them exists because of demand in the consumer market. An example would be the Indian government wishing to purchase equipment for a nuclear power plant.The underlying consumer demand that has triggered this is that people of India are consuming more electricity (by using more household devices such as washing machines and computers).', '../img/home/business.png', 'There is a new international Innovation maturity model. This is a collection of standards and guidelines, reference documents and tools to build innovation capability. With it you build your own custom innovation management system. Also use it to train your employees, value an organizations innovation capability and its innovation project portfolio, or help assign innovation subsidies, grants or tax breaks to the best recipients.', ' Social and public values are very important to our company. By supporting this we pay our contribution to a socially responsible environment. Adding value to business environments should be a in the mind of all companies. If you are eager to participate in helping other companies we recommend that you get in touch with out enthusiastic team. They will inspire you and make sure you will reach a higher level of participation!\n', 'In our company there are many projects on which our team is working on. We are making someones dream come true. They are available here on our website. And when we are speaking about inovative ideas we are very open to hear yours. So if you have an interesting idea contact our team, make an appointment and become part of our Dream team. Let''s make a world a better place where everyone is happy.', 'In this section: our strategy and targets, information for shareholders and bondholders, investor presentations, annual results and reporting, our  risk management model, dates of  forthcoming events in the financial calendar and other useful tools and material for investors as well as for socially responsible investment.', '../img/home/investors.png');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` float(11,7) DEFAULT NULL,
  `lon` float(11,7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `lat`, `lon`) VALUES
(1, 45.4811172, 9.2219553),
(2, 45.4790115, 9.2196388),
(3, 45.4793434, 9.2165918),
(4, 45.4773750, 9.2313547);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(300) NOT NULL,
  `image_path` varchar(150) DEFAULT NULL,
  `text_position` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `description`, `image_path`, `text_position`) VALUES
(5, '<h2>TIMmusic</h2>\n\n<h2>The soundtrack to your life</h3>\n\n<p>Listen to millions of songs streaming, all new releases, <br/>\nexclusive previews and many playlist of all kinds.<br/> On smartphones without consuming GB, PC and tablet.<br/> When you want and how much you want</p>', '/img/home/tim_music.jpg', 'rightPos'),
(6, '<h1>TIM Young & Music<br/>Full Digital</h1>\n<h3><em>Summer Edition</em> con 3GB extra per l''estate!</h3> ', '/img/home/tim-young.jpg', 'rightPos');

-- --------------------------------------------------------

--
-- Table structure for table `sl_service`
--

CREATE TABLE IF NOT EXISTS `sl_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `rates_discount_price` int(11) DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `activation_rules` varchar(2000) DEFAULT NULL,
  `image_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sl_service`
--

INSERT INTO `sl_service` (`id`, `name`, `description`, `rates_discount_price`, `category`, `activation_rules`, `image_path`) VALUES
(1, 'TIM Home Connect', 'TIM Home Connect the offer is meant to be used in home automation devices in the home, the management of which involves the use of a SIM\nConnect with Tim Home for you have available minutes, SMS and MB to be used to connect and manage your burglar alarm, your boiler or other home automation systems.', 7, 'Home and Family', 'If you are already in possession of a TIM Card directly online by clicking the ACTIVE button#\nAt the Shops TIM', '/img/smartlife services/sl_home_connect.png'),
(2, 'D-Link Starter Kit SmartHome', 'With the <b>Smart Home HD Starter Kit</b> will be able to set, control, monitor and automate your home wherever you are.\nThe kit includes:\n<ul>\n<li>An HD Monitor (DCS-935L) </li>\n<li>A Wi-Fi Motion Sensor (DCH-S150)</li>\n<li>A smart plug (DSP-W215)</li> \n</ul>\nThrough the App mydlink Home for smartphones and tablets you have available to control all the devices in order to simplify the management of the house, making it safer and smarter.\n<br/>\nEasy configuration and management of your devices\n<br/>\nSimply download the app mydlink Home and the configuration wizard will help you make the best use all of the devices in easily and intuitively kit. \nWith the app you have to create the rules for on and off your appliances when and wherever want.\n<br/>\nautomatic notifications and real time on your smartphone\n<br/>\nThe app mydlink Home will notify you when:\n<ul>\n<li>A movement or sound is detected</li>\n<li>A device has been turned on or off</li>\n<li>Electricity consumption has been exceeded</li>\n<li>A device does not work properly or overheats</li>\n<li>The passive infrared motion</li>\n</ul>', 5, 'Home and Family', 'If you are already in possession of a TIM Card directly online by clicking the ACTIVE button\nConfiguration is easy!\nSimply download the app mydlink Home and the configuration wizard will help you to operate all devices in the kit.', '/img/smartlife services/sl_smart_home_security.jpg'),
(3, 'TIMvision', 'With <b>TIMvision</b> can choose between film, TV series, cartoons and documentaries, the last seven days of the major channels Rai, La7 and La7 archive, anywhere, anytime.\n<br/>\nMore than 8,000 titles available, always on demand, in a single monthly subscription, to create your own schedule without commercial interruptions.<br/><br/>\nIn addition, in the section Videostore, you can find the latest blockbusters with a constantly updated catalog, to rent or buy at any time even without a subscription.<br/>\nNot to interrupt your marathon, you can watch also TIMvision on the web, on smartphones and tablets without consuming GB, and Smart TV, inserting the credentials chosen at the time of registration to the service.', 10, 'TV and Entertainment', '<ul>\n<li>TIMvision promotion is valid for all TIM customers and other operators that will activate the offer from the site timvision.it or Smart TV compatible by 30/06/2016. The cost is <b>FREE</b> for the first month and then  5 eur per month with automatic renewal.</li>\n<li>The customer can cancel the contract at any time without penalty, upon request to Customer Service 187.</li>\n\n</ul>', '/img/smartlife services/sl_tim_vision.jpg'),
(4, 'Samsung Galaxy Gear S with SIM', 'An elegant curved Super AMOLED display for optimal fit, customizable screens and interchangeable straps to\nbetter express their own style.<br/>\nUse in accordance with law. All other product and brand names are trademarks or registered trademarks of their respective companies. Screen images simulated. Application sequences shortened. Appearances of device may vary.<br>\nUse in accordance with law. All other product and brand names are trademarks or registered trademarks of their respective companies. Screen images simulated. Application sequences shortened. Appearances of device may vary.<br>', 10, 'Health and Wellness', 'You can buy on tim.it even if you have no business TIM. Moreover, you need not be registered to make a purchase.<br/> \nOnly the purchase of pricing options for your Mobile online requires registration, to enable the option on the line for you letterhead. In all cases, if you are a registered customer you can access and purchase more quickly, by not having to re-enter each time your personal details.', '/img/smartlife services/sl_samsung_gear.jpg'),
(5, 'Digital signature', 'The trust must ensure that a digital signature is far superior to that of traditional handwritten signature. A private key known only by the person authorized to make use of it may even serve to prove their identity. They expect very interesting developments and TIM is in the foreground', 5, 'Personal services', 'When you receive a signed document, you may want to validate its signature(s) to verify the signer and the signed content.<br/>Depending on how you have configured your application, validation may occur automatically. Signature validity is determined by checking the authenticity of the signature digital ID certificate status and document integrity.<br>', '/img/smartlife services/digital_signature.jpg'),
(6, 'TIMreading', '<h4>In detail</h4>\n<p></p>\n<p>You want to be informed by the early morning hours? With the offer<b> Digital flip through TIM</b>you can read your favorite newspaper every day on your PC, tablet or smartphone. The best information is always with you. </p>\n<p>Choose from the main Italian newspapers full of attachments and local editions: Corriere della Sera, La Repubblica, Il Messaggero, La Gazzetta dello Sport, La Stampa, Il Mattino, Il Gazzettino, Il Corriere Adriatico, Il Nuovo Quotidiano di Puglia , the Nation, the Resto del Carlino and the Day.</p>\n<p> And with TIM purchases credit card and & nbsp; <b> first month is free! </b> </p>\n<p> Check out the details of each newspaper and buy online or in TIM shops. </p>\n', 3, 'TV and Entertainment', 'After receiving the confirmation SMS dell  supply activated SIM to benefit from the service you will need to flip through:\n<ul>\n<li>complete the  activation by clicking on the link in the SMS confirming the activation</li>\n<li>define your credentials (username and password) to flip through the digital</li>\n<li>download the application to the head choice or connect to the web site / tablet / smartphone * and enter in your login credentials * The flip through smartphones is only available for some titles. Discover devices compatible with each newspaper on timreading.it</li>', '/img/smartlife services/sl_tim_reading.png'),
(7, 'Smartband FE', 'SmartBand is an Android gadget to always wear, anywhere. Being waterproof, you can always take it with you. And it is so discreet as to adapt to any style. Choose from a wide range of colors and styles and wear the one that best reflects your personality.<br/>\nThe elegant metal hook closure and LED lights help to create the iconic look Sony signed. SmartBand consists of central removable drive and a comfortable and elegant wrist strap.', 7, 'Health and Wellness', 'You can buy on tim.it even if you have no business TIM. Moreover, you need not be registered to make a purchase. <br/>\nOnly the purchase of pricing options for your Mobile online requires registration, to enable the option on the line for you letterhead.<br/>\nIn all cases, if you are a registered customer you can access and purchase more quickly, by not having to re-enter each time your personal details.', '/img/smartlife services/sl_smartband.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sl_service_categories`
--

CREATE TABLE IF NOT EXISTS `sl_service_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `image_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sl_service_categories`
--

INSERT INTO `sl_service_categories` (`id`, `name`, `description`, `image_path`) VALUES
(1, 'TV and Entertainment', 'Discover the type of entertainment you prefer. The fun starts now!<br/> TV Series, Movies, Books, Games and more', '/img/sl_services_groups/tv-entertainment.jpg'),
(2, 'Health and Wellness', 'Find out how helth and wellness can positively change your life<br/>Try the latest wearables', '/img/sl_services_groups/smart-health.jpg'),
(3, 'Home and Family', 'Smart life means simpler and safer life <br/> For your home and loved once.', '/img/sl_services_groups/home-family.jpg'),
(4, 'Personal services', 'A new aproach to the world of e-payment and digital identity <br/> Keep your passwords, invoices, medical reports and manage safely your digital payments', '/img/sl_services_groups/personal.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dev_assistance`
--
ALTER TABLE `dev_assistance`
  ADD CONSTRAINT `DEV_ASSISTANCE_ibfk_1` FOREIGN KEY (`id_dev`) REFERENCES `device` (`id`),
  ADD CONSTRAINT `DEV_ASSISTANCE_ibfk_2` FOREIGN KEY (`id_assistance`) REFERENCES `sl_service` (`id`);

--
-- Constraints for table `dev_sl`
--
ALTER TABLE `dev_sl`
  ADD CONSTRAINT `DEV_SL_ibfk_1` FOREIGN KEY (`id_dev`) REFERENCES `device` (`id`),
  ADD CONSTRAINT `DEV_SL_ibfk_2` FOREIGN KEY (`id_sl`) REFERENCES `sl_service` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
