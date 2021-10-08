-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2021 at 12:12 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camt_dii`
--

-- --------------------------------------------------------

--
-- Table structure for table `addmenu`
--

CREATE TABLE `addmenu` (
  `id` int(10) NOT NULL,
  `namemenu` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `nation` varchar(100) NOT NULL,
  `ingredient` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addmenu`
--

INSERT INTO `addmenu` (`id`, `namemenu`, `price`, `nation`, `ingredient`) VALUES
(3, 'หมูทอด', 60, 'ไทย', 'หมู'),
(4, 'ต้มยำกุ้ง', 200, 'ไทย', 'กุ้ง');

-- --------------------------------------------------------

--
-- Table structure for table `description_food`
--

CREATE TABLE `description_food` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `description_food`
--

INSERT INTO `description_food` (`id`, `menu_id`, `message`) VALUES
(1, 1, 'Fried Sea Bass with Fish Sauce'),
(2, 2, 'Spicy salad with catfish'),
(3, 3, 'Steamed Sea Bass with Lemon'),
(4, 4, 'Boiled rice with fish'),
(5, 5, 'Fried rice with canned fish'),
(6, 6, 'Stir Fried Basil with Dory Fish');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `In_id` int(10) NOT NULL,
  `Ingredient_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`In_id`, `Ingredient_name`) VALUES
(1, 'fish'),
(2, 'Beef'),
(3, 'Pork'),
(4, 'Duck meat'),
(5, ' Chicken'),
(6, 'Seafood'),
(7, 'milk'),
(8, 'tea'),
(9, 'coffee'),
(10, 'smoothie'),
(11, 'soda'),
(12, 'fruit juice');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name_menu` varchar(50) NOT NULL,
  `type_id` int(11) NOT NULL,
  `In_id` int(11) DEFAULT NULL,
  `nt_id` int(11) DEFAULT NULL,
  `image_menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name_menu`, `type_id`, `In_id`, `nt_id`, `image_menu`) VALUES
(1, 'Fried Sea Bass', 1, 1, 1, 'https://img-global.cpcdn.com/recipes/3667118cf5d3b06b/1200x630cq70/photo.jpg'),
(2, 'Spicy Catfish Salad', 1, 1, 1, 'https://img.kapook.com/u/2017/surauch/cooking/e1_10.jpg'),
(3, 'Steamed Sea Bass', 1, 1, 1, 'https://food.mthai.com/app/uploads/2017/02/Spicy-fish-2.jpg'),
(4, 'Fish Porridge', 1, 1, 1, 'https://food.mthai.com/app/uploads/2018/10/Fish-Porridge.jpg'),
(5, 'FishFriedRice', 1, 1, 1, 'https://acuisineth.com/app/uploads/2020/07/%E0%B9%80%E0%B8%97%E0%B8%A1%E0%B9%80%E0%B8%9E%E0%B8%A5%E0'),
(6, 'Stir Fried Basil', 1, 1, 1, 'https://f.ptcdn.info/096/004/000/1365778854-5321165140-o.jpg'),
(7, 'Roast beef', 1, 2, 1, 'https://s359.kapook.com/pagebuilder/3811138d-0851-40b1-af61-45a9d94cbbe4.jpg'),
(8, 'Beef Noodles', 1, 2, 1, 'https://www.matichonacademy.com/wp-content/uploads/2019/11/%E0%B8%81%E0%B9%8B%E0%B8%A7%E0%B8%A2%E0%B'),
(9, 'Fried meat', 1, 2, 1, 'https://1.bp.blogspot.com/-TIAJnjTfCc4/YJvu-1n9FWI/AAAAAAAAIjU/m4Ajm9EVaGYIvmP7tcvLHaZcSC7_eQ6YwCLcB'),
(10, 'BeefBasil', 1, 2, 1, 'https://s359.kapook.com/pagebuilder/57f5b7bb-59b1-40be-b644-5037a9d47f7b.jpg'),
(11, 'Beef Green Curry', 1, 2, 1, 'https://img.wongnai.com/p/1920x0/2019/03/18/11e7bbd7bbab421f9e1f2bc6c1d64e59.jpg'),
(12, 'Beef Massaman', 1, 2, 1, 'https://img.wongnai.com/p/1968x0/2019/01/12/201b2c7a34884258bf6118600dbb1374.jpg'),
(13, 'PorkBasil', 1, 3, 1, 'https://d12man5gwydfvl.cloudfront.net/wp-content/uploads/2019/03/%E0%B8%9C%E0%B8%B1%E0%B8%94%E0%B8%8'),
(14, 'PorkFriedRice', 1, 3, 1, 'https://s359.kapook.com/pagebuilder/3dfc9eae-e6b7-484a-9cbc-280067076ce4.jpg'),
(15, 'Boiledricewithpork', 1, 3, 1, 'https://4.bp.blogspot.com/-ugFdwQXTwdg/WPSSoW323JI/AAAAAAAAABU/yU2dYufg_OQaA_UN_wbTS10UFGRBviaUwCPcB'),
(16, 'Grilled Pork', 1, 3, 1, 'https://food.mthai.com/app/uploads/2017/09/Grilled-Pork-Sticks.jpg'),
(17, 'MincedPorkOmelette', 1, 3, 1, '        https://img.wongnai.com/p/1968x0/2018/03/09/d6a4b6f44b504ec9b6b17feaeb7a2ecc.jpg\r\n'),
(18, 'MincedPorkSoup', 1, 3, 1, 'https://img.wongnai.com/p/1920x0/2019/03/25/16be129786034c1185c4cc0768f61356.jpg'),
(19, 'DuckNoodle', 1, 4, 1, 'https://img.wongnai.com/p/1920x0/2019/02/23/15b5bb41ee034aed9c0ee71acd2d4821.jpg'),
(20, 'Pot stewed duck', 1, 4, 1, 'https://img.wongnai.com/p/1920x0/2017/10/13/b010198e7fa74d2eb9f1348718eb3662.jpg'),
(21, 'Larb Duck', 1, 4, 1, 'https://www.cpbrandsite.com/contents/images/rneskenqmgj8enhlqerxjq4tcfgtsrjl3zrlcpkx.jpg'),
(22, 'Basil Duck', 1, 4, 1, 'https://f.ptcdn.info/408/051/000/oqi6pjj6jWN0nGmGxJu-o.jpg'),
(23, 'Fried Duck', 1, 4, 1, 'https://f.ptcdn.info/946/030/000/1430573696-IMG5896-o.jpg'),
(24, 'Smoked Duck Breast', 1, 4, 1, 'https://www.theblackpeppercorn.com/wp-content/uploads/2017/03/How-to-Smoke-Duck-Breast-3.jpg'),
(25, 'Steamedrice', 1, 4, 1, 'https://www.easycookingmenu.com/media/k2/items/cache/8824c56c994d9f6e54bce08c8e97d4d0_XL.jpg'),
(26, 'Hat Yai Fried', 1, 5, 1, 'https://img.wongnai.com/p/1920x0/2016/06/21/7688035144bc469dbc6b7f46ab12bb7e.jpg'),
(27, 'TomKhaGai', 1, 5, 1, 'https://www.fit-d.com/uploads/food/f2f5ead368d85f7353c3081e8a8b4e64.jpg'),
(28, 'Gourd Chicken Noodles', 1, 5, 1, 'https://img-ha.mthcdn.com/2YvohhZ_We-SVmM6Brpw0jCxBXQ=/food.mthai.com/app/uploads/2017/08/Braised-Ch'),
(29, 'ChickenBasil', 1, 5, 1, 'https://www.siammakro.co.th/imgadmins/img_detail_food/th/143607.jpg'),
(30, 'Larb Kai', 1, 5, 1, 'https://www.cpbrandsite.com/contents/recipe/e0de7xjshvfytkpdbe5djiajahz5kwms6kifnaur.png'),
(31, 'Steamed Shrimp', 1, 6, 1, 'https://www.easycookingmenu.com/media/k2/items/cache/c10c64c27e0606d1654b81b9bb482558_XL.jpg'),
(32, 'Shrimp Fried Rice', 1, 6, 1, 'https://3.bp.blogspot.com/-x5jiMih5hBQ/WSGJW9ooqYI/AAAAAAAAEBg/pSKBuoYk-KEvWtRkHXh0eW3GxyHjObg0gCLcB'),
(33, 'Tom Yum Seafood', 1, 6, 1, 'https://www.bowensislandrestaurant.com/wp-content/uploads/2018/11/How-to-make-a-thick-sea-bass.jpg'),
(34, 'Stir-Fried Seafood', 1, 6, 1, 'https://s.isanook.com/wo/0/rp/rc/w850h510/yacxacm1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3dvLzAvdWQvMzQvMTc'),
(35, 'Seafood basil', 1, 6, 1, 'https://krua.co/wp-content/uploads/2020/06/RT1493_ImageBanner_1140x507.jpg'),
(36, 'Seafood Porridge', 1, 6, 1, 'https://snpfood.com/wp-content/uploads/2020/01/Breakfast-00003-scaled-1.jpg'),
(37, 'Saba fish rice', 1, 1, 2, 'https://d12man5gwydfvl.cloudfront.net/wp-content/uploads/2020/02/shutterstock_1419410240.jpg'),
(38, 'Tuna Sushi', 1, 1, 2, 'http://4.bp.blogspot.com/-_ysRHUR657E/Ui6nsqH3TII/AAAAAAAAADE/Or_8xt_qV_I/s1600/IMG_6930.JPG'),
(39, 'Eel with Rice', 1, 1, 2, 'https://static5-th.orstatic.com/userphoto/Article/0/4L/000WQB1B6C94616C12C7CAj.jpg'),
(40, 'Salmon Rice', 1, 1, 2, 'https://cfcdn2.azsg.opensnap.com/azsg/snapphoto/photo/L9/GT7V/3BJS2WA3450360F6CAA1AFlv.jpg'),
(41, 'Salmon fride', 1, 1, 2, 'https://www.nestle.co.th/sites/g/files/pydnoa486/files/thumb-chatbot.jpg'),
(42, 'Sasimi', 1, 1, 2, 'https://media-cdn.tripadvisor.com/media/photo-s/12/19/3f/68/caption.jpg'),
(43, 'Gyudon', 1, 2, 2, 'https://www.chillpainai.com/src/wewakeup/scoop/images/2b063db9d12b85c0a67a811408ae712b6b24af5b.jpg'),
(44, 'Beef Fried Rice', 1, 2, 2, 'https://www.matichon.co.th/wp-content/uploads/2019/06/07-%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%'),
(45, 'Sushi beef', 1, 2, 2, 'https://img.wongnai.com/p/1920x0/2018/06/13/8cee119c933143e2b43d8b1da16c2322.jpg'),
(46, 'Udon bbef', 1, 2, 2, 'https://cache-igetweb-v2.mt108.info/uploads/images-cache/3708/product/dc83443de0a09af110cdf0027c7c52'),
(50, 'Beef Sukiyaki', 1, 2, 2, 'http://2.bp.blogspot.com/-a4WA2wK06lg/UdaiTTB5UqI/AAAAAAAACDQ/hmSezn0xwWo/s640/japan+sukiyaki.jpg'),
(51, 'Teppanyaki', 1, 2, 2, 'http://f.ptcdn.info/948/022/000/1409556883-5603200301-o.jpg'),
(52, 'Pork Tonkatsu', 1, 3, 2, 'https://www.maeban.co.th/upload_images/image/features/Japan%20Sec./Tonkatsu/Tonkatsu%206.JPG'),
(53, 'Pork Over Rice', 1, 3, 2, 'https://www.cpbrandsite.com/contents/recipe/zhkxdm6cpkabqzjkohraqxfiun4e9eekvdrb2scx.jpg'),
(54, 'Pork Udon', 1, 3, 2, 'https://www.ozenx.com/wp-content/uploads/2021/01/udon-ramen-noodles-with-pork-soup-scaled.jpg'),
(55, 'Curry Pork', 1, 3, 2, 'https://bk-review.com/wp-content/uploads/2020/05/%E0%B8%A7%E0%B8%B4%E0%B8%98%E0%B8%B5%E0%B8%97%E0%B8'),
(56, 'Pork Kushikatsu', 1, 3, 2, 'https://www.tsunagujapan.com/wp-content/uploads/2015/06/pixta_21971949_S.jpg'),
(57, 'Teriyaki Don', 1, 3, 2, 'https://krua.co/wp-content/uploads/2021/04/RI1654_ImageBannerMobile_960x633_New_.jpg'),
(58, 'Pork Croquette', 1, 3, 2, 'http://kujimag.com/wp-content/uploads/2019/05/korokke-japan-food-recipe.jpg'),
(59, 'Pork Ramen', 1, 3, 2, 'https://mpics.mgronline.com/pics/Images/556000007395501.JPEG'),
(60, 'Gyoza', 1, 3, 2, 'https://www.julietsmile.com/wp-content/uploads/2017/12/A-Ramen-The-Street-Ratchada-09.jpg'),
(61, 'Grilled Pork', 1, 3, 2, 'http://f.ptcdn.info/716/047/000/ohquelwhj4Qy7Pd9W38-o.jpg'),
(62, 'Pork Sushi', 1, 3, 2, 'https://cfcdn2.azsg.opensnap.com/azsg/snapphoto/photo/LB/GUD0/3BRWL92D4058CEF877FB62lv.jpg'),
(63, 'Shibuya pork', 1, 3, 2, 'https://d28dpoj42hxr8c.cloudfront.net/files/topics/10637_ext_02_th_0.jpg?v=1472619705'),
(64, 'Teriyaki chicken', 1, 4, 2, 'https://atkitchenmag.com/wp-content/uploads/2020/06/NIK_0757.jpg'),
(65, 'Chicken Sukiyaki', 1, 4, 2, 'https://www.baannoi.com/images/food/baannoi-sukee35.jpg'),
(66, 'Chicken Curry', 1, 4, 2, 'https://www.cpbrandsite.com/contents/recipe/8exw6qiuoydvckpzrmz4stxgawwc3dc8juchzrbc.jpg'),
(67, 'OyakoDeng', 1, 4, 2, 'https://img-global.cpcdn.com/recipes/0b30708559df7b41/680x482cq70/%E0%B8%A3%E0%B8%9B-%E0%B8%AB%E0%B8'),
(68, 'Yakisoba', 1, 4, 2, 'https://www.ajinomotofoodservicethailand.com/wp-content/uploads/2018/11/10.HQshutterstock_703166530-'),
(69, 'Shrimp Tempura', 1, 6, 2, 'https://f.ptcdn.info/299/070/000/qe1c9s60dmXwxFgIyUn-o.jpg'),
(70, 'Sushi Uni', 1, 6, 2, 'https://s359.kapook.com/r/600/auto/pagebuilder/b1f285ff-31c9-4270-8213-42b37654b294.jpg'),
(71, 'Shrimp Sushi', 1, 6, 2, 'https://www.tunatenjo.com/wp-content/uploads/2020/04/90384625_233649101356134_4117877741322240000_o.'),
(72, 'Octopus Takoyaki', 1, 6, 2, 'https://pbs.twimg.com/media/DcfKP5mV4AAidgp.jpg'),
(73, 'Seafood Yakisoba', 1, 6, 2, 'https://img.wongnai.com/p/1920x0/2017/06/19/336cd7ad8d1f482dad4174d46c601a0f.jpg'),
(74, 'Tempura Udon', 1, 6, 2, 'https://yayoirestaurants.com/productimages/2238_01%20-%20880%20x%20800%20Noodle%20.jpg'),
(75, 'Grilled Salmon', 1, 1, 3, 'https://www.smeleader.com/wp-content/uploads/2014/05/%E0%B8%AD%E0%B8%B2%E0%B8%AB%E0%B8%B2%E0%B8%A3%E'),
(76, 'Spaghetti Salmon', 1, 1, 3, 'https://lh3.googleusercontent.com/proxy/53w7v4Oxs3MWLSXzZxrKp_kK-KcGZ6UsE88aV1hbLg9aaYZCo5J5z60DfBYc'),
(77, 'Salmon Pizza', 1, 1, 3, 'https://www.recetin.com/wp-content/uploads/2016/02/pizza_Salmon_espinacas.jpg'),
(78, 'Pasta Salmon', 1, 1, 3, 'http://f.ptcdn.info/790/007/000/1375100604-1373973441-o.jpg'),
(79, 'Panzenella fish', 1, 1, 3, 'https://media.healthyfood.com/wp-content/uploads/2016/09/Fish-tomato-and-feta-panzanella.jpg'),
(80, 'Salad fish', 1, 1, 3, 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploa'),
(81, 'Beef Burger', 1, 2, 3, 'https://www.thetitanfood.com//public/img/menus/1/108.jpg'),
(82, 'Beef Pizza', 1, 2, 3, 'http://ungsriwong.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2020/01/20163409/4P_05.jpg'),
(84, 'Beef Spaghetti', 1, 2, 3, 'https://cheznichique.files.wordpress.com/2018/02/26036209_864874057017238_1606218133_o.jpg'),
(85, 'Beef Steak', 1, 2, 3, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Beef_steak_%2811888070325%29.jpg/1200px-Be'),
(86, 'Osso buco', 1, 2, 3, 'https://www.delonghi.com/Global/recipes/multifry/81.jpg'),
(87, 'Beef Lasagna', 1, 2, 3, 'https://img.taste.com.au/7Hc2lg09/taste/2016/11/beef-lasagne-77009-1.jpeg'),
(88, 'Berger pork', 1, 3, 3, 'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Grilled-Pork'),
(89, 'Pork Lasagna ', 1, 3, 3, 'https://d12man5gwydfvl.cloudfront.net/wp-content/uploads/2018/10/HappyFresh-Lasagna-Recipe.jpg'),
(90, 'Spaghetti Pork', 1, 3, 3, 'https://img.wongnai.com/p/1920x0/2017/12/05/ebfdd8eb80b54012ae55d941a1c01b36.jpg'),
(91, 'Steak Pork', 1, 3, 3, 'https://image.makewebeasy.net/makeweb/0/qYdgUzlsW/DefaultData/%E0%B8%AB%E0%B8%A1%E0%B8%B9%E0%B8%99%E'),
(92, 'Penne pork', 1, 3, 3, 'https://www.cookingclassy.com/wp-content/uploads/2020/01/penne-alla-vodka-10-500x500.jpg'),
(93, 'Salad pork', 1, 3, 3, 'https://img-global.cpcdn.com/recipes/e6b1ba59d46fb219/680x482cq70/%E0%B8%A3%E0%B8%9B-%E0%B8%AB%E0%B8'),
(94, 'Salad chicken', 1, 5, 3, 'https://img.wongnai.com/p/1920x0/2017/11/16/bcb81b277172496598bd18a25617a0a7.jpg'),
(95, 'Berger chicken', 1, 5, 3, 'https://ed.edtfiles-media.com/ud/review/1/146/435634/005-850x567.jpg\r\n        '),
(96, 'Lasagna Chicken', 1, 5, 3, 'https://www.bloggang.com/data/arinchaya/picture/1311776303.jpg'),
(97, 'Roast turkey', 1, 5, 3, 'https://www.lgblogger.com/wp-content/uploads/2016/12/%E0%B9%80%E0%B8%A1%E0%B8%99%E0%B8%B9-%E2%80%9C%'),
(98, 'Chicken parmigiana', 1, 5, 3, 'http://www.taste.com.au/images/recipes/sfi/2011/05/27224_l.jpg'),
(99, 'Pizza chicken', 1, 5, 3, 'https://img.wongnai.com/p/1920x0/2017/01/25/831e74260d124ca29a6d3631652b110e.jpg'),
(100, 'Shrimp Spaghetti', 1, 6, 3, 'https://www.tvpoolonline.com/wp-content/uploads/2018/06/Sequence-14.00_01_00_06.Still086-1024x1024.j'),
(101, 'Crispy Shrimp Salad', 1, 6, 3, 'https://mssaradafood.com/wp-content/uploads/2020/10/84322-1024x768.jpg?x69673'),
(102, 'Pizza Seafood', 1, 6, 3, 'https://pbs.twimg.com/media/EA4SYCeUcAAuOBk.jpg'),
(103, ' Penne Shrimp', 1, 6, 3, 'https://img-global.cpcdn.com/recipes/0112c8852cb227a5/1200x630cq70/photo.jpg'),
(104, 'StirFriedSpaghetti', 1, 6, 3, 'https://img.wongnai.com/p/1920x0/2018/08/04/af5f930f8a0a4c798d903e22bc25d2f8.jpg'),
(105, 'Shrimp Carbonara', 1, 6, 3, 'https://mpics.mgronline.com/pics/Images/560000012655502.JPEG'),
(106, 'Spaghetti BlackInk', 1, 6, 3, 'https://img.wongnai.com/p/1920x0/2019/08/23/492f302e6b624623bcc0020fdbae9073.jpg'),
(107, 'Shrimp fra diavolo', 1, 6, 3, 'http://1.bp.blogspot.com/_jwXG0WxoPfI/TGCwSL6WGLI/AAAAAAAAAJ8/FfuTe3OhBos/s1600/shrimp+fra+diavolo.j'),
(108, 'Spinach Shrimp', 1, 6, 3, 'https://cfcdn2.azsg.opensnap.com/azsg/snapphoto/photo/LB/GUGS/3BSNGQ00A757FA4611B78Blv.jpg'),
(109, 'SeaDrunken Penne', 1, 6, 3, 'https://cfcdn2.azsg.opensnap.com/azsg/snapphoto/photo/LG/GY37/3CIERLC3EB3E0086452AA0lv.jpg'),
(110, 'SeafoodLasagne', 1, 6, 3, 'https://www.joinalifethailand.com/wp-content/uploads/2018/10/%E0%B9%80%E0%B8%A1%E0%B8%99%E0%B8%B9-%E'),
(111, 'GrilledSquid', 1, 6, 3, 'https://bravelife.in.th/wp-content/uploads/2017/02/salad-thai-squid-3-3.jpg'),
(112, 'Kalchijorim', 1, 1, 4, 'https://starkaraokeuiuc.net/wp-content/uploads/2017/09/%EB%B6%88%EA%B3%A0%EA%B8%B0.jpg'),
(113, 'ChamchiJoomokbaab', 1, 1, 4, ' https://www.koreanbapsang.com/wp-content/uploads/2020/06/DSC1202.jpg'),
(144, 'Ehmook', 1, 1, 4, 'https://f.ptcdn.info/330/067/000/q2n0y828ij9sVjPEJUbB-o.jpg'),
(145, 'Galchi Jorim ', 1, 1, 4, 'https://wikiimg.tojsiabtv.com/wikipedia/commons/thumb/c/c0/Galchi-jorim.jpg/1280px-Galchi-jorim.jpg'),
(146, 'Bulgoki', 1, 2, 4, 'https://i1.wp.com/starkaraokeuiuc.net/wp-content/uploads/2017/09/%EB%B6%88%EA%B3%A0%EA%B8%B0.jpg?fit'),
(147, 'Galbitang', 1, 2, 4, ' https://myheartbeets.com/wp-content/uploads/2015/05/ground-beef-bulgogi.jpg'),
(148, 'Blugogi', 1, 2, 4, 'https://assets.bonappetit.com/photos/57acd741f1c801a1038bc801/8:5/w_4839,h_3024,c_limit/basic-bulgog'),
(149, 'Mandu', 1, 2, 4, ' https://upload.wikimedia.org/wikipedia/commons/7/7a/Jjinmandu_%28steamed_dumplings%29.jpg'),
(150, 'Seolleongtang', 1, 2, 4, ' https://bonedbroth.com/wp-content/uploads/2015/03/Seolleongtang-Beef-Bone-Soup.jpg'),
(151, 'Yookgaejang', 1, 2, 4, 'https://s3-ap-southeast-1.amazonaws.com/cntatr-assets-ap-southeast-1-250226768838-55a62c9399d4d8a6/2'),
(152, 'Jjapakuri', 1, 2, 4, 'https://i2.wp.com/www.thegluttonlife.com/wp-content/uploads/2020/05/ram-don-jjapaguri-05.jpg?fit=102'),
(153, 'Samgyubsal', 1, 3, 4, 'https://chibogph.files.wordpress.com/2018/07/sam-gyup-sal.jpg'),
(154, 'Jeyukbokeum', 1, 3, 4, 'https://www.maangchi.com/wp-content/uploads/2010/09/spicy-stir-fried-pork-youtube.jpg'),
(155, 'Po sam', 1, 3, 4, 'https://2.bp.blogspot.com/-FMiNuUTYolM/VtAGU0fVzEI/AAAAAAAAADc/n3Nl50NUUd0/s1600/%25EB%25B3%25B4%25E'),
(156, 'Jjajangmyeon', 1, 3, 4, 'https://www.seriouseats.com/thmb/TT0Gbw1R7gRZwxhufBlEAkpEkSA=/1500x1125/filters:fill(auto,1)/__opt__'),
(157, 'Bibimbab', 1, 3, 4, 'https://img.freepik.com/free-photo/korea-food-style-bibimbab_11823-1441.jpg?size=626&ext=jpg'),
(158, 'Gimchibokkeumbab', 1, 3, 4, 'https://omnivorescookbook.com/wp-content/uploads/2020/08/200806_Kimchi-Fried-Rice_550.jpg'),
(159, 'Gimchigug', 1, 3, 4, 'https://bk-review.com/wp-content/uploads/2020/04/90780054_2816925528424497_5666429170557648896_o-102'),
(160, 'Tangsuyug', 1, 3, 4, 'https://i0.wp.com/seonkyounglongest.com/wp-content/uploads/2019/09/Tangsuyuk-7.jpg?fit=1500%2C1000&s'),
(161, 'Dak gal bi', 1, 5, 4, 'https://fastly.4sqi.net/img/general/600x600/2540105_E9RlJt2gW6T811eXtwMp5lyYCFwbJVLWskgC2D2MfLE.jpg'),
(162, 'Dak dori tang', 1, 5, 4, ' https://cathlynchoi.files.wordpress.com/2016/03/chickenstew.jpeg?w=700'),
(163, 'Taggangjeong', 1, 5, 4, 'https://www.pim.in.th/images/all-side-dish-chicken-egg-duck/korean-fried-chicken/koren-fried-chicken'),
(164, 'Samgyetang', 1, 5, 4, 'https://www.seriouseats.com/thmb/ZUOc6oscm4rRC6ELHrdkOBNnQ24=/1500x844/smart/filters:no_upscale()/__'),
(165, 'Jjimdak', 1, 5, 4, ' https://www.koreanbapsang.com/wp-content/uploads/2020/06/DSC1202.jpg'),
(166, 'Dakkochi', 1, 5, 4, 'https://i1.wp.com/seonkyounglongest.com/wp-content/uploads/2017/03/IMG_0029.jpg?fit=1100%2C618&ssl=1'),
(167, 'Snow Onion Chicken', 1, 5, 4, 'https://pbs.twimg.com/media/Ehe0vsuUMAIDacK.jpg'),
(168, 'Buldak', 1, 5, 4, ' https://www.koreanbapsang.com/wp-content/uploads/2020/06/DSC1202.jpg'),
(169, 'Nak ji boke um', 1, 6, 4, 'https://upload.wikimedia.org/wikipedia/commons/f/f0/Nakji-bokkeum.jpg'),
(170, 'Hae mool tang', 1, 6, 4, 'https://www.koreanbapsang.com/wp-content/uploads/2016/02/DSC_1087.jpg'),
(171, 'Ganjang gejang', 1, 6, 4, 'https://image.kkday.com/v2/image/get/w_960%2Cc_fit%2Cq_55%2Ct_webp/s1.kkday.com/product_25809/202001'),
(172, 'JoGaeTang', 1, 6, 4, 'https://www.maangchi.com/wp-content/uploads/2014/12/jogaetang.jpg'),
(173, 'Haemulpajeon', 1, 6, 4, 'https://www.waitrose.com/content/dam/waitrose/recipes/images/h/lemon-tart-400x400.jpg/_jcr_content/r'),
(174, 'Sannakji', 1, 6, 4, 'https://knowinsiders.com/stores/news_dataimages/dunglt/112020/19/11/2319_13-1541147610165554266819.j'),
(175, 'Saeujang', 1, 6, 4, 'https://us-fbcloud.net/wb/data/1255/1255238-img.ukv28c.1spxx.jpg'),
(176, 'Yeoneojang', 1, 6, 4, ' https://s.isanook.com/wo/0/rp/rc/w850h510/yacxacm1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL3dvLzAvdWQvMzUvMT'),
(177, 'Jiampong', 1, 6, 4, 'https://i.pinimg.com/originals/19/cd/b8/19cdb8559a385c817a9eb6e6078cf04b.jpg'),
(212, 'Hóngshāo yú gān', 1, 1, 5, 'https://www.cookeatfood.com/wp-content/uploads/2019/03/%E0%B8%81%E0%B8%A3%E0%B8%B0%E0%B9%80%E0%B8%9E'),
(213, ' Dòuzhī zhēng yú', 1, 1, 5, 'https://www.nestleprofessional.co.th/sites/g/files/gfb531/f/styles/recipe/public/media/steam-fish-wi'),
(214, 'Chǎo qíncài hé zhà yú piàn', 1, 1, 5, 'https://seefah.com/wp-content/uploads/2020/03/1610-Menu04-1100x733.jpg'),
(215, ' Suān méi zhēng yín chāng yú', 1, 1, 5, 'https://img.wongnai.com/p/1920x0/2018/08/07/313e27bc0cbd41bcbfdc4fcfb356e549.jpg'),
(216, 'Yú tóu zhǔ děng fāng', 1, 1, 5, 'https://img.wongnai.com/p/1920x0/2018/08/07/313e27bc0cbd41bcbfdc4fcfb356e549.jpg'),
(217, 'Suān méi zhēng yín chāng ', 1, 2, 5, 'http://f.ptcdn.info/733/023/000/1411441925-dsc00225-o.jpg'),
(218, 'Tiě bǎn hóngshāo niúròu', 1, 2, 5, 'https://i1.wp.com/starkaraokeuiuc.net/wp-content/uploads/2017/09/%EB%B6%88%EA%B3%A0%EA%B8%B0.jpg?fit'),
(219, 'Gān làjiāo sìchuān málà chǎo niúròu', 1, 2, 5, 'https://omnivorescookbook.com/wp-content/uploads/2019/01/1812_Sichuan-Beef-Stir-Fry_800.jpg'),
(220, 'Niúròu piàn héniú nèizàng làjiāo jiàng', 1, 2, 5, 'https://i.pinimg.com/originals/96/97/74/9697744f72dc96639bbd4ad6b91cdc59.jpg'),
(221, 'Xiǎo lóng bāo', 1, 3, 5, 'https://earnonabudget.files.wordpress.com/2015/05/20150314_134807.jpg'),
(222, 'Tángcùlǐjī', 1, 3, 5, 'https://img.wongnai.com/p/1920x0/2018/02/23/5894e36cf21e497cb9d526312b0c0c1f.jpg'),
(223, 'Hóng shāo ròu', 1, 3, 5, 'https://food.mthai.com/app/uploads/2018/07/Stewed-Belly-Pork-4.jpg'),
(224, 'Kǎo rǔ zhū', 1, 3, 5, 'http://www.todacity-ch.com/wp-content/uploads/2016/05/food-pig.jpg'),
(225, 'Chāshāo', 1, 3, 5, 'ttps://www.maeban.co.th/upfiles/blog/4018_92_2.jpg'),
(226, 'Cháng fěn', 1, 3, 5, 'https://img-global.cpcdn.com/recipes/a50fec4eb9a4f30c/1200x630cq70/photo.jpg'),
(227, 'Hóngshāo sān xiān', 1, 3, 5, 'https://img.wongnai.com/p/1920x0/2017/03/15/1238021b0bbc470ba98652331d6ae4da.jpg'),
(228, 'Ròu Zòng', 1, 3, 5, 'https://sammywongskitchen.com/wp-content/uploads/2021/05/IMG_1597-2-scaled.jpg'),
(229, 'Lā dé nà zhūròu', 1, 3, 5, 'https://i.pinimg.com/originals/7a/dd/e1/7adde126a67a06fa747fbfcbd18ad3a0.jpg'),
(230, 'Běijīng kǎoyā', 1, 4, 5, 'https://www.gourmetandcuisine.com/Images/editor_upload/_editor20181017101940_original.jpg'),
(231, 'Lǔ yā', 1, 4, 5, 'https://img.wongnai.com/p/1920x0/2017/10/13/b010198e7fa74d2eb9f1348718eb3662.jpg'),
(232, 'Shāo yā yù miàn', 1, 4, 5, 'https://www.mk1642.com/getmetafile/54a8bd49-264c-40c1-b6d8-11017028452b/E-SourceCode-DEV_MK-12-CMS-P'),
(250, 'Zhāng chá yā', 1, 4, 5, 'https://www.duckking.co.th/wp-content/uploads/2017/06/%E0%B8%AD%E0%B8%81%E0%B9%80%E0%B8%9B%E0%B9%87%'),
(251, 'Lìzǐ mèn yā', 1, 4, 5, ' https://img.kapook.com/u/wanwanat/4%20soup.jpg'),
(252, ' Jiāngchǎojī', 1, 5, 5, 'https://www.cpbrandsite.com/contents/recipe/4fxdurksktbx6ulrbkfuxzqjmspqw3g9favis0jj.png'),
(253, 'Gōng bǎo jī dīng', 1, 5, 5, 'https://sites.google.com/site/sathantitongtheawnaipratadjin/_/rsrc/1467890591779/xahar-cin/12.png?he'),
(254, 'Hóngjiǔ jīchì', 1, 5, 5, 'http://f.ptcdn.info/971/018/000/1400134203-0a168a2-o.jpg'),
(255, 'Zuì jī', 1, 5, 5, 'https://i1.wp.com/seonkyounglongest.com/wp-content/uploads/2017/03/IMG_0029.jpg?fit=1100%2C618&ssl=1'),
(256, 'Hóngshāo jī', 1, 5, 5, 'https://shopee.co.th/blog/wp-content/uploads/2021/03/%E0%B9%84%E0%B8%81%E0%B9%88%E0%B8%95%E0%B8%B8%E'),
(257, 'Jī you fàn', 1, 5, 5, 'https://i1.wp.com/www.spicetheplate.com/wp-content/uploads/2014/06/Crystal-Sugar-Braised-Chicken-Win'),
(258, 'Dǎng míng xiā hé fěnsī', 1, 6, 5, 'https://www.haveazeed.com/wp-content/uploads/2019/08/3.%E0%B8%81%E0%B8%B8%E0%B9%89%E0%B8%87%E0%B8%AD'),
(259, 'Yao Guo Xia Ren', 1, 6, 5, 'https://food.mthai.com/app/uploads/2017/01/Cashew-Chicken.jpg'),
(260, 'Hēi hújiāo chǎo hǎi xiè', 1, 6, 5, 'https://f.ptcdn.info/354/051/000/oqe2r3ibxj4nmgTBEv0-o.jpg'),
(261, 'Xiā húntún', 1, 6, 5, 'https://www.justonecookbook.com/wp-content/uploads/2020/01/Shrimp-and-Pork-Wonton-Soup-2652-I.jpg'),
(262, 'Málà xiǎo lóngxiā ', 1, 6, 5, 'https://foreignfood2019.files.wordpress.com/2019/09/tooopen_sy_162081141355.jpg?w=1024'),
(263, 'Zhá xiè zǎo', 1, 6, 5, 'https://3.bp.blogspot.com/-CLTYO83WSRk/XD_g7r48Q_I/AAAAAAAAeVE/BknmYCfZRUcaqY9uaw4vzSBvQWBbnhs-ACLcB'),
(264, 'Chǎo bāshén', 1, 6, 5, 'https://sunaribkk2014.files.wordpress.com/2014/09/imgp0610.jpg'),
(265, 'Hóngshāo hǎishēn', 1, 6, 5, 'https://media-cdn.tripadvisor.com/media/photo-s/06/1d/73/e1/3.jpg'),
(266, 'Chả cá lã vọng', 1, 1, 6, 'https://img.wongnai.com/p/1920x0/2016/11/10/b66eb535d9284760976d6773193b19be.jpg'),
(267, ' Bún Bò', 1, 1, 6, 'https://higlum.com/wp-content/uploads/2021/01/cach-nau-bun-bo-hue-ngon.jpg'),
(268, 'Phở Bò', 1, 1, 6, 'https://phohuynhtram.com/wp-content/uploads/2018/07/pho-bo-cho-be.jpg'),
(269, 'Bún chả', 1, 2, 6, 'https://vcdn-giadinh.vnecdn.net/2021/01/08/Anh-2-8146-1610099449.jpg'),
(270, 'Nem nướng ', 1, 2, 6, 'https://s359.kapook.com/pagebuilder/7885be2a-6a42-415c-aebd-08c3ba1aa1a9.jpg'),
(271, ' Cà tím xào thịt heo băm', 1, 2, 6, 'https://img.wongnai.com/p/1920x0/2020/05/18/42679672c5c74dc3b25ff0cea60c3822.jpg'),
(272, 'Bánh mì', 1, 2, 6, 'https://i0.wp.com/goodlifeupdate.com/app/uploads/2020/02/Frame_white-900x600-1.jpg'),
(273, 'Bánh xèo heo quay ', 1, 2, 6, 'https://pulses.asia/wp-content/uploads/2019/04/%E2%80%9Cbanh-xeo%E2%80%9D-with-u.s.-whole-green-peas'),
(274, 'Xôi heo quay', 1, 2, 6, 'http://voyagepvp.com/wp-content/uploads/2020/07/or6dmzuvfXMI614STX8-o.jpg'),
(275, 'Phở heo', 1, 2, 6, 'https://www.cpbrandsite.com/contents/recipe/xa78ltfw3oyrlnkslyx29t86rehyw2a1aspqxfcy.png'),
(276, 'Chả giò heo', 1, 2, 6, 'https://food.mthai.com/app/uploads/2017/04/deep-fried-spring-rolls.jpg'),
(277, 'Thịt bò lá lốt', 1, 2, 6, 'https://www.justonecookbook.com/wp-content/uploads/2020/01/Shrimp-and-Pork-Wonton-Soup-2652-I.jpg'),
(278, 'Bánh cuốn', 1, 2, 6, 'https://www.tipawanfood.com/wp-content/uploads/2015/09/AP-%E0%B8%82%E0%B8%99%E0%B8%A1%E0%B8%9B%E0%B8'),
(279, 'Bún riêu heo', 1, 2, 6, 'https://www.matichon.co.th/wp-content/uploads/2018/08/16DaengNamNeung-%E0%B8%82%E0%B8%99%E0%B8%A1%E0'),
(310, 'Cao lầu', 1, 3, 6, 'https://s3-ap-northeast-1.amazonaws.com/nem-vn.net/original/2020/09/hieuhieu-184230014209-cao-lau-ho'),
(311, 'Cơm Tấm', 1, 3, 6, 'https://asianinspirations.com.au/wp-content/uploads/2019/08/R01069_Com-Tam-3.jpg'),
(312, 'Phở Gà', 1, 4, 6, 'https://bepcuatoi.com/wp-content/uploads/2020/08/pho-ga-truyen-thong.png'),
(313, ' Xôi Gà', 1, 4, 6, 'https://media.phunutoday.vn/files/upload_images/2016/01/03/cach-lam-xoi-ga-ngon-4-phunutoday_vn.jpg'),
(314, 'Gỏi cuốn', 1, 6, 6, 'http://www.tipawanfood.com/wp-content/uploads/2016/05/App-%E0%B8%9B%E0%B8%AD%E0%B9%80%E0%B8%9B%E0%B8'),
(315, 'Bánh khọt', 1, 6, 6, 'https://pulses.asia/wp-content/uploads/2019/04/%E2%80%9Ckhot%E2%80%9D-cake-with-greasyback-shrimp-an'),
(316, 'Bún riêu cua', 1, 6, 6, 'https://blog.mamangon.vn/wp-content/uploads/2019/08/Picture4-2.png'),
(317, 'Chả cá lã vọng', 1, 6, 6, 'https://www.agoda.com/wp-content/uploads/2018/06/experience_vietnam_hanoi_Cha%CC%89-ca%CC%81-la%CC%8'),
(318, 'Bánh tráng nướng cua', 1, 6, 6, 'https://sharp-weeclub.com/wp-content/uploads/2020/05/%E0%B8%9E%E0%B8%B4%E0%B8%8B%E0%B8%8B%E0%B9%88%E'),
(319, ' Bánh xèo con tôm', 1, 6, 6, 'https://pulses.asia/wp-content/uploads/2019/04/%E2%80%9Cbanh-xeo%E2%80%9D-with-u.s.-whole-green-peas');

-- --------------------------------------------------------

--
-- Table structure for table `menu_drink`
--

CREATE TABLE `menu_drink` (
  `id` int(11) NOT NULL,
  `name_menu` varchar(50) NOT NULL,
  `type_id` int(11) NOT NULL,
  `In_id` int(1) DEFAULT NULL,
  `image_menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_drink`
--

INSERT INTO `menu_drink` (`id`, `name_menu`, `type_id`, `In_id`, `image_menu`) VALUES
(9, 'Iced Pink Milk', 2, 7, 'https://i.pinimg.com/474x/59/66/ac/5966ac1d2b9b951f850c1546a3f2dda8.jpg'),
(10, 'Iced Caramel Milk', 2, 7, 'https://i.pinimg.com/474x/db/02/b7/db02b77ae994d8a3d268c074fedc9318.jpg'),
(11, 'Iced Chocolate Milk', 2, 7, 'https://i.pinimg.com/474x/5d/7b/9a/5d7b9acc237c3aee8af5fc4b6e6a4232.jpg'),
(12, 'Iced Cocoa', 2, 7, 'https://i.pinimg.com/474x/cb/c8/92/cbc892563546dfe97785109c6ce12168.jpg'),
(13, 'Iced Oat Milk', 2, 7, 'https://i.pinimg.com/474x/40/af/65/40af659c6bf12c64a548783213514c97.jpg'),
(14, 'Vanila Milk', 2, 7, 'https://i.pinimg.com/474x/bf/d3/8d/bfd38dc174ba8c29e37e8331672c83b0.jpg'),
(15, 'Iced Matcha Milk Tea', 2, 8, 'https://i.pinimg.com/474x/57/ac/e0/57ace03af4fa2b184d468a02534bff78.jpg'),
(16, 'Iced Thai Milk Tea', 2, 8, 'https://i.pinimg.com/474x/57/ac/e0/57ace03af4fa2b184d468a02534bff78.jpg'),
(17, 'Iced Taiwanese Bubble Milk Tea', 2, 8, 'https://i.pinimg.com/474x/0b/da/79/0bda79ac253c6ebdec8c7324f47bebb4.jpg'),
(18, 'Iced Limeade Tea', 2, 8, 'https://i.pinimg.com/474x/ca/24/0d/ca240d445122fff2ed31187931e6a752.jpg'),
(19, 'Iced Lychee Tea', 2, 8, 'https://i.pinimg.com/474x/2f/35/c0/2f35c01c6323b8217d78e7516d9a8569.jpg'),
(20, 'Brown Sugar Milk Tea', 2, 8, 'https://i.pinimg.com/474x/64/8e/a3/648ea3cdcacb75af9761631335c9ce70.jpg'),
(21, 'Espresso', 2, 9, 'https://i.pinimg.com/474x/65/f6/ba/65f6bac087685e4d9f7970591eeab9e0.jpg'),
(22, 'Americano', 2, 9, 'https://i.pinimg.com/474x/0b/fc/1c/0bfc1c0cd1afdd69f81e8be6f189fef7.jpg'),
(23, 'Latte', 2, 9, 'https://i.pinimg.com/474x/9f/97/15/9f97158e127256ace9a714496f074629.jpg'),
(24, 'Cappuccino', 2, 9, 'https://i.pinimg.com/474x/45/38/10/453810958154922d419b4afb3ffda0c5.jpg'),
(25, 'Mocha', 2, 9, 'https://i.pinimg.com/474x/e3/7e/61/e37e6101450da6b16d3107861c207aaa.jpg'),
(26, 'Flat White', 2, 9, 'https://i.pinimg.com/474x/92/97/bf/9297bf9c83bc76bab6ccd13ff6c664de.jpg'),
(27, 'Strawberry Smoothies Yogurt\"', 2, 10, 'https://i.pinimg.com/474x/95/92/ad/9592ade4609465b851dc911b7e2541e9.jp'),
(28, 'Apple Smoothies Yogurt', 2, 10, 'https://i.pinimg.com/474x/5f/64/fe/5f64fe711b5173faa179e5a4df9e3633.jpg'),
(29, 'Mango Smoothies Yogurt', 2, 10, 'https://i.pinimg.com/474x/56/19/c2/5619c2e496fce17e96813842f0ee6ecf.jpg'),
(30, 'Lemon Smoothies', 2, 10, 'https://i.pinimg.com/474x/cf/8e/e4/cf8ee45c800bd4c7884eb8ae92fe9f3f.jpg'),
(31, 'Kiwi Smoothies', 2, 10, 'https://i.pinimg.com/474x/72/f7/38/72f73820b80c83139337a13f1c39887c.jpg'),
(32, 'Mixed Berry Smoothies', 2, 10, 'https://i.pinimg.com/474x/61/b6/e9/61b6e92fd5d78c93d2b5161e479ee811.jpg'),
(33, 'Iced Limenade Soda', 2, 11, 'https://i.pinimg.com/474x/ab/33/d0/ab33d039b02ba36899d24c638a85a53f.jpg'),
(34, 'Iced Strawberry Soda', 2, 11, 'https://i.pinimg.com/474x/83/2f/4a/832f4a5b16ac153bf4137b6c87ae27e4.jpg'),
(35, 'Iced Plum Soda', 2, 11, 'https://i.pinimg.com/474x/1c/e9/64/1ce964da10f1bf5907accc9dd5842bb5.jpg'),
(36, 'Iced Blueberry Soda', 2, 11, 'https://i.pinimg.com/474x/88/d7/cb/88d7cb48c1a5de39c45993b78a6216ae.jpg'),
(37, 'Iced Apple Soda', 2, 11, 'https://i.pinimg.com/474x/ea/d6/29/ead629e87ff4503bc7144de8b3ec1f7e.jpg'),
(38, 'Iced Giwi Soda', 2, 11, 'https://i.pinimg.com/474x/b7/75/8c/b7758c1b52bc58b5bc94720132b2636d.jpg'),
(39, 'Iced Limeade', 2, 12, 'https://i.pinimg.com/474x/f9/5f/b5/f95fb507fd5141b24f22a8f4d5ff9c20.jpg'),
(40, 'Iced Lychee', 2, 12, 'https://i.pinimg.com/474x/58/a5/b9/58a5b99241d693775627c8d6b6c4675f.jpg'),
(41, 'Iced Strawberry', 2, 12, 'https://i.pinimg.com/474x/8d/a5/3a/8da53a77a47dc0fec1c414ac19b53be1.jpg'),
(42, 'Iced Mango', 2, 12, 'https://i.pinimg.com/474x/73/53/0c/73530c93f990bc074ee7c56dd10cba5f.jpg'),
(43, 'Iced Orange Juice', 2, 12, 'https://i.pinimg.com/474x/e5/78/a7/e578a7a44e77e0890cbd7e8454a0dc69.jpg'),
(44, 'Iced Watermelon', 2, 12, 'https://i.pinimg.com/474x/26/4a/07/264a070dc33759bc4235b5da083559e0.jpg'),
(45, 'Iced Chocolate Milk', 2, NULL, 'https://i.pinimg.com/474x/5d/7b/9a/5d7b9acc237c3aee8af5fc4b6e6a4232.jpg'),
(46, 'Iced Cocoa', 2, NULL, 'https://i.pinimg.com/474x/cb/c8/92/cbc892563546dfe97785109c6ce12168.jpg'),
(47, 'Iced Oat Milk', 2, NULL, 'https://i.pinimg.com/474x/40/af/65/40af659c6bf12c64a548783213514c97.jpg'),
(48, 'Vanila Milk', 2, NULL, 'https://i.pinimg.com/474x/bf/d3/8d/bfd38dc174ba8c29e37e8331672c83b0.jpg'),
(49, 'Iced Matcha Milk Tea', 2, NULL, 'https://i.pinimg.com/474x/57/ac/e0/57ace03af4fa2b184d468a02534bff78.jpg'),
(50, 'Iced Thai Milk Tea', 2, NULL, 'https://i.pinimg.com/474x/57/ac/e0/57ace03af4fa2b184d468a02534bff78.jpg'),
(51, 'Iced Taiwanese Bubble Milk Tea', 2, NULL, 'https://i.pinimg.com/474x/0b/da/79/0bda79ac253c6ebdec8c7324f47bebb4.jpg'),
(52, 'Iced Limeade Tea', 2, NULL, 'https://i.pinimg.com/474x/ca/24/0d/ca240d445122fff2ed31187931e6a752.jpg'),
(53, 'Iced Lychee Tea', 2, NULL, 'https://i.pinimg.com/474x/2f/35/c0/2f35c01c6323b8217d78e7516d9a8569.jpg'),
(54, 'Brown Sugar Milk Tea', 2, NULL, 'https://i.pinimg.com/474x/64/8e/a3/648ea3cdcacb75af9761631335c9ce70.jpg'),
(55, 'Espresso', 2, NULL, 'https://i.pinimg.com/474x/65/f6/ba/65f6bac087685e4d9f7970591eeab9e0.jpg'),
(56, 'Americano', 2, NULL, 'https://i.pinimg.com/474x/0b/fc/1c/0bfc1c0cd1afdd69f81e8be6f189fef7.jpg'),
(57, 'Latte', 2, NULL, 'https://i.pinimg.com/474x/9f/97/15/9f97158e127256ace9a714496f074629.jpg'),
(58, 'Cappuccino', 2, NULL, 'https://i.pinimg.com/474x/45/38/10/453810958154922d419b4afb3ffda0c5.jpg'),
(59, 'Mocha', 2, NULL, 'https://i.pinimg.com/474x/e3/7e/61/e37e6101450da6b16d3107861c207aaa.jpg'),
(60, 'Flat White', 2, NULL, 'https://i.pinimg.com/474x/92/97/bf/9297bf9c83bc76bab6ccd13ff6c664de.jpg'),
(61, 'Strawberry Smoothies Yogurt\"', 2, NULL, 'https://i.pinimg.com/474x/95/92/ad/9592ade4609465b851dc911b7e2541e9.jp'),
(62, 'Apple Smoothies Yogurt', 2, NULL, 'https://i.pinimg.com/474x/5f/64/fe/5f64fe711b5173faa179e5a4df9e3633.jpg'),
(63, 'Mango Smoothies Yogurt', 2, NULL, 'https://i.pinimg.com/474x/56/19/c2/5619c2e496fce17e96813842f0ee6ecf.jpg'),
(64, 'Lemon Smoothies', 2, NULL, 'https://i.pinimg.com/474x/cf/8e/e4/cf8ee45c800bd4c7884eb8ae92fe9f3f.jpg'),
(65, 'Kiwi Smoothies', 2, NULL, 'https://i.pinimg.com/474x/72/f7/38/72f73820b80c83139337a13f1c39887c.jpg'),
(66, 'Mixed Berry Smoothies', 2, NULL, 'https://i.pinimg.com/474x/61/b6/e9/61b6e92fd5d78c93d2b5161e479ee811.jpg'),
(67, 'Iced Limenade Soda', 2, NULL, 'https://i.pinimg.com/474x/ab/33/d0/ab33d039b02ba36899d24c638a85a53f.jpg'),
(68, 'Iced Strawberry Soda', 2, NULL, 'https://i.pinimg.com/474x/83/2f/4a/832f4a5b16ac153bf4137b6c87ae27e4.jpg'),
(69, 'Iced Plum Soda', 2, NULL, 'https://i.pinimg.com/474x/1c/e9/64/1ce964da10f1bf5907accc9dd5842bb5.jpg'),
(70, 'Iced Blueberry Soda', 2, NULL, 'https://i.pinimg.com/474x/88/d7/cb/88d7cb48c1a5de39c45993b78a6216ae.jpg'),
(71, 'Iced Apple Soda', 2, NULL, 'https://i.pinimg.com/474x/ea/d6/29/ead629e87ff4503bc7144de8b3ec1f7e.jpg'),
(72, 'Iced Giwi Soda', 2, NULL, 'https://i.pinimg.com/474x/b7/75/8c/b7758c1b52bc58b5bc94720132b2636d.jpg'),
(73, 'Iced Limeade', 2, NULL, 'https://i.pinimg.com/474x/f9/5f/b5/f95fb507fd5141b24f22a8f4d5ff9c20.jpg'),
(74, 'Iced Lychee', 2, NULL, 'https://i.pinimg.com/474x/58/a5/b9/58a5b99241d693775627c8d6b6c4675f.jpg'),
(75, 'Iced Strawberry', 2, NULL, 'https://i.pinimg.com/474x/8d/a5/3a/8da53a77a47dc0fec1c414ac19b53be1.jpg'),
(76, 'Iced Mango', 2, NULL, 'https://i.pinimg.com/474x/73/53/0c/73530c93f990bc074ee7c56dd10cba5f.jpg'),
(77, 'Iced Orange Juice', 2, NULL, 'https://i.pinimg.com/474x/e5/78/a7/e578a7a44e77e0890cbd7e8454a0dc69.jpg'),
(78, 'Iced Watermelon', 2, NULL, 'https://i.pinimg.com/474x/26/4a/07/264a070dc33759bc4235b5da083559e0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nation`
--

CREATE TABLE `nation` (
  `id` int(11) NOT NULL,
  `nation_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nation`
--

INSERT INTO `nation` (`id`, `nation_name`) VALUES
(1, 'Thailand'),
(2, 'Japanese'),
(3, 'Italian'),
(4, 'Korea'),
(5, 'Chinese'),
(6, 'Vietnam');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `description`) VALUES
(1, 'food'),
(2, 'drink');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addmenu`
--
ALTER TABLE `addmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `description_food`
--
ALTER TABLE `description_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`In_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `In_id` (`In_id`),
  ADD KEY `nt_id` (`nt_id`);

--
-- Indexes for table `nation`
--
ALTER TABLE `nation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addmenu`
--
ALTER TABLE `addmenu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `description_food`
--
ALTER TABLE `description_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `In_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT for table `nation`
--
ALTER TABLE `nation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `description_food`
--
ALTER TABLE `description_food`
  ADD CONSTRAINT `description_food_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
