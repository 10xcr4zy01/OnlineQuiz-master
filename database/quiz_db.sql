-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 11, 2022 lúc 07:09 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hama`
--
CREATE DATABASE IF NOT EXISTS `hama` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hama`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(18) NOT NULL,
  `displayname` varchar(30) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `displayname`, `create_at`) VALUES
(1, 'minh0812', '081201', 'Duy Minh', '2021-12-03 23:52:16'),
(2, 'quynh2611', '261101', 'Phương Quỳnh', '2021-12-03 23:54:27'),
(3, 'mni-linh', '@.@', 'Tứ Linh', '2021-12-03 23:56:19'),
(4, 'thinhpp', '1', 'Phước Thịnh', '2021-12-03 23:57:50'),
(5, 'nganht', '2', 'Thanh Ngân', '2021-12-03 23:58:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `total_money` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `order_quantity`, `total_money`, `create_at`) VALUES
(1, 'Phạm Minh', '0333454717', 'duyminh081201@gmail.com', 3, 736000, '2021-12-09 02:54:29'),
(2, 'Nguyễn Ngọc Phương Quỳnh', '0375091454', 'nnpquynh01vvk@gmail.com', 1, 582000, '2021-12-09 02:59:13'),
(3, 'Thịnh Phạm Phúc', '0777777777', 'email@email.com', 1, 388000, '2021-12-13 04:09:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `order` varchar(1000) NOT NULL,
  `total_money` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `email`, `order`, `total_money`, `status`, `create_at`) VALUES
(1, 'Phạm Minh', '0333454717', 'ấp Bình Đông 2, xã Hương Mỹ, huyện Mỏ Cày Nam, tỉnh Bến Tre', 'duyminh081201@gmail.com', '[{\"title\": \"Landscape picture 14\", \"slug\": \"landscape-picture-wcl-14\", \"color\": \"brown\", \"size\": \"30x30\", \"price\": 194000, \"quantity\": 2, \"id\": 1}]', 388000, 'pending', '2021-12-09 02:54:29'),
(2, 'Phạm Minh', '0333454717', 'ấp Bình Đông 2, xã Hương Mỹ, huyện Mỏ Cày Nam, tỉnh Bến Tre', 'duyminh081201@gmail.com', '[{\"title\": \"Landscape picture 02\", \"slug\": \"landscape-picture-wcl-02\", \"color\": \"brown\", \"size\": \"30x30\", \"price\": 159000, \"quantity\": 1, \"id\": 1}]', 159000, 'pending', '2021-12-09 02:55:14'),
(3, 'Nguyễn Ngọc Phương Quỳnh', '0375091454', 'ấp Rạch Sâu, xã Quới Thiện, huyện Vũng Liêm, tỉnh Vĩnh Long', 'nnpquynh01vvk@gmail.com', '[{\"title\": \"Landscape picture 11\", \"slug\": \"landscape-picture-wcl-11\", \"color\": \"white\", \"size\": \"40x40\", \"price\": 194000, \"quantity\": 3, \"id\": 1}]', 582000, 'pending', '2021-12-09 02:59:13'),
(4, 'Phạm Minh', '0333454717', 'ấp Bình Đông 2, xã Hương Mỹ, huyện Mỏ Cày Nam, tỉnh Bến Tre', 'duyminh081201@gmail.com', '[{\"title\": \"Landscape picture 01\", \"slug\": \"landscape-picture-wcl-01\", \"color\": \"black\", \"size\": \"40x40\", \"price\": \"189000\", \"quantity\": 1, \"id\": 1}]', 189000, 'pending', '2021-12-09 03:06:20'),
(5, 'Thịnh Phạm Phúc', '0777777777', 'Buon Ma Thuot, DakLak, VietNam', 'email@email.com', '[{\"id\": 1, \"slug\": \"landscape-picture-wcl-08\", \"color\": \"brown\", \"size\": \"40x40\", \"price\": \"194000\", \"quantity\": 2}]', 388000, 'pending', '2021-12-13 04:09:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `image01` varchar(300) NOT NULL,
  `image02` varchar(300) NOT NULL,
  `categorySlug` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `image01`, `image02`, `categorySlug`, `color`, `slug`, `size`, `description`, `create_at`) VALUES
(1, 'Landscape picture 01', 189000, 'https://i.pinimg.com/564x/f8/7c/bf/f87cbf33e9b69a3ea9396f30751b90d8.jpg', 'https://i.pinimg.com/564x/f8/7c/bf/f87cbf33e9b69a3ea9396f30751b90d8.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-01', '[\"30x30\", \"40x40\"]', 'Peaceful picture of an afternoon in the meadow drawn by Cua Mo', '2021-12-04 00:20:31'),
(2, 'Landscape picture 02', 159000, 'https://i.pinimg.com/564x/53/2a/fb/532afbbbb6de01bf9c6320b4fe433ffe.jpg', 'https://i.pinimg.com/564x/53/2a/fb/532afbbbb6de01bf9c6320b4fe433ffe.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-02', '[\"30x30\", \"40x40\"]', 'Sometimes it’s easier to be mad at the people you trust because you know that they’ll always love you no matter what you say.', '2021-12-04 00:24:35'),
(3, 'Landscape picture 03', 190000, 'https://i.pinimg.com/564x/6f/e7/05/6fe705433534e225e04a3873543b4344.jpg', 'https://i.pinimg.com/564x/6f/e7/05/6fe705433534e225e04a3873543b4344.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-03', '[\"30x30\", \"40x40\"]', 'After all, tomorrow is another day!', '2021-12-04 00:27:01'),
(4, 'Landscape picture 04', 194000, 'https://i.pinimg.com/564x/2b/4d/97/2b4d97a79ca9d7d78da0207d4ebdeb4d.jpg', 'https://i.pinimg.com/564x/2b/4d/97/2b4d97a79ca9d7d78da0207d4ebdeb4d.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-04', '[\"30x30\", \"40x40\"]', 'Fasten your seatbelts. It’s going to be a bumpy night.', '2021-12-04 00:28:41'),
(5, 'Landscape picture 05', 194000, 'https://i.pinimg.com/564x/5c/2f/0b/5c2f0b9a55d785ae14dde07b8e0b1984.jpg', 'https://i.pinimg.com/564x/5c/2f/0b/5c2f0b9a55d785ae14dde07b8e0b1984.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-05', '[\"30x30\", \"40x40\"]', 'This is the beginning of a beautiful friendship.', '2021-12-04 00:37:58'),
(6, 'Landscape picture 06', 194000, 'https://i.pinimg.com/564x/21/97/a6/2197a696102a2a7fb743492bb63c1e67.jpg', 'https://i.pinimg.com/564x/21/97/a6/2197a696102a2a7fb743492bb63c1e67.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-06', '[\"30x30\", \"40x40\"]', 'Never let the fear of striking out keep you from playing the game!', '2021-12-04 00:39:55'),
(8, 'Landscape picture 07', 194000, 'https://i.pinimg.com/564x/3d/ae/81/3dae81fee3dd91977e092bcdb95c4246.jpg', 'https://i.pinimg.com/564x/3d/ae/81/3dae81fee3dd91977e092bcdb95c4246.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-07', '[\"30x30\", \"40x40\"]', 'Close your eyes and pretend it’s all a bad dream. That’s how I get by.', '2021-12-04 00:43:54'),
(9, 'Landscape picture 08', 194000, 'https://i.pinimg.com/564x/cf/5c/3d/cf5c3de578087ca242099989d780275b.jpg', 'https://i.pinimg.com/564x/cf/5c/3d/cf5c3de578087ca242099989d780275b.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-08', '[\"30x30\", \"40x40\"]', 'Just be yourself, because life’s too short to be anybody else.', '2021-12-04 00:49:20'),
(10, 'Landscape picture 09', 194000, 'https://i.pinimg.com/564x/f3/1e/9c/f31e9cbe5f4405a60e73a8e5c65f4685.jpg', 'https://i.pinimg.com/564x/f3/1e/9c/f31e9cbe5f4405a60e73a8e5c65f4685.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-09', '[\"30x30\", \"40x40\"]', 'Some people can’t believe in themselves until someone else believes in them first.', '2021-12-04 00:51:15'),
(11, 'Landscape picture 10', 194000, 'https://i.pinimg.com/564x/b0/3b/e2/b03be21fa35bc08c940da12906fba31e.jpg', 'https://i.pinimg.com/564x/b0/3b/e2/b03be21fa35bc08c940da12906fba31e.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-10', '[\"30x30\", \"40x40\"]', 'The greatest thing you’ll ever learn is just to love and be loved in return.', '2021-12-04 00:54:57'),
(12, 'Landscape picture 11', 194000, 'https://i.pinimg.com/564x/5e/3d/ba/5e3dba7f1af4273a41e57f3c3dea5a84.jpg', 'https://i.pinimg.com/564x/5e/3d/ba/5e3dba7f1af4273a41e57f3c3dea5a84.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-11', '[\"30x30\", \"40x40\"]', 'There was no internet or any smartphone back then. Thinking about it now, how did we spend all that time?', '2021-12-04 00:58:34'),
(13, 'Landscape picture 12', 194000, 'https://i.pinimg.com/564x/b6/f7/cb/b6f7cbc4013b59f3e76c20748274c692.jpg', 'https://i.pinimg.com/564x/b6/f7/cb/b6f7cbc4013b59f3e76c20748274c692.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-12', '[\"30x30\", \"40x40\"]', 'In some ways, one’s own family is the most oblivious.', '2021-12-04 01:00:33'),
(14, 'Landscape picture 13', 194000, 'https://i.pinimg.com/564x/ce/45/c4/ce45c4cd2151151342b5853f53dc22b9.jpg', 'https://i.pinimg.com/564x/ce/45/c4/ce45c4cd2151151342b5853f53dc22b9.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-13', '[\"30x30\", \"40x40\"]', 'There’s no need to force the harsh truth onto a small bit of happiness. Sometimes you need an illusion to be happy.', '2021-12-04 01:02:09'),
(15, 'Landscape picture 14', 194000, 'https://i.pinimg.com/564x/cc/f7/68/ccf7688370c544dc1cd1df4191ca60c0.jpg', 'https://i.pinimg.com/564x/cc/f7/68/ccf7688370c544dc1cd1df4191ca60c0.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-14', '[\"30x30\", \"40x40\"]', 'Mothers tend to be the one you miss the most, whether they are alive or dead.', '2021-12-04 01:28:07'),
(16, 'Landscape picture 15', 194000, 'https://i.pinimg.com/564x/cc/eb/f5/ccebf51c78baddb9c1c4477bcfa74272.jpg', 'https://i.pinimg.com/564x/cc/eb/f5/ccebf51c78baddb9c1c4477bcfa74272.jpg', 'landscape-picture', '[\"white\", \"brown\", \"black\", \"gray\"]', 'landscape-picture-wcl-15', '[\"30x30\", \"40x40\"]', 'Mothers tend to be the one you miss the most, whether they are alive or dead.', '2021-12-04 01:29:59'),
(17, 'Celestial', 850000, 'https://i.pinimg.com/564x/d8/d5/fc/d8d5fc4edb9924d835b3f03470ed7539.jpg', 'https://i.pinimg.com/564x/d8/d5/fc/d8d5fc4edb9924d835b3f03470ed7539.jpg', 'water-color', '[\"black\", \"pink\", \"green\", \"blue\"]', 'water-color-wcl-01', '[\"12\", \"24\", \"36\"]', 'Celestial Set will include 12 colors with super strange names: Periwinkle, Sage, Golden Glow, Terracotta, Suede, Stone Gray, Breezy, Soft Lilac, Charcoal, Dark Rose, Apple Blossom, Dusky Mauve.', '2021-12-04 01:39:50'),
(18, 'Pastel dreams', 850000, 'https://i.pinimg.com/564x/ef/af/08/efaf08ba3dca327059f1a602b0e031dd.jpg', 'https://i.pinimg.com/564x/ef/af/08/efaf08ba3dca327059f1a602b0e031dd.jpg', 'water-color', '[\"black\", \"pink\", \"green\", \"blue\"]', 'water-color-wcl-02', '[\"12\", \"24\", \"36\"]', 'Prima Marketing Watercolor is a unique watercolor brand from the US that is loved by many illustrators because of its unique color palette, delicate design, stable background and pigments.', '2021-12-04 01:42:20'),
(19, 'Shimmering lights', 850000, 'https://i.pinimg.com/564x/f7/0b/3b/f70b3befc3d7d2f608a3b2505e58ff76.jpg', 'https://i.pinimg.com/564x/f7/0b/3b/f70b3befc3d7d2f608a3b2505e58ff76.jpg', 'water-color', '[\"black\", \"pink\", \"green\", \"blue\"]', 'water-color-wcl-03', '[\"12\", \"24\", \"36\"]', 'The color is quite clear and fresh, with good color spread, some pastel palettes are semi-opaque, with light coverage.', '2021-12-04 01:44:52'),
(20, 'Odyssey', 850000, 'https://i.pinimg.com/564x/5c/d0/55/5cd05579a70f66a5d86a04c59aa0e8f3.jpg', 'https://i.pinimg.com/564x/5c/d0/55/5cd05579a70f66a5d86a04c59aa0e8f3.jpg', 'water-color', '[\"black\", \"pink\", \"green\", \"blue\"]', 'water-color-wcl-04', '[\"12\", \"24\", \"36\"]', 'Prima Marketing is suitable for artists who want to experience a new color by tone or color collection.', '2021-12-04 01:47:54'),
(21, 'Pastel classics', 850000, 'https://i.pinimg.com/564x/d1/ba/48/d1ba48fc102550547593ef42cc7f1580.jpg', 'https://i.pinimg.com/564x/d1/ba/48/d1ba48fc102550547593ef42cc7f1580.jpg', 'water-color', '[\"black\", \"pink\", \"green\", \"blue\"]', 'water-color-wcl-05', '[\"12\", \"24\", \"36\"]', 'The color palette is bright, the color is relatively smooth, suitable for many different types of paintings.', '2021-12-04 01:57:03'),
(22, 'Decadent pies', 850000, 'https://i.pinimg.com/564x/e9/6a/a4/e96aa49e5009e46b1583b1911a17f4c3.jpg', 'https://i.pinimg.com/564x/e9/6a/a4/e96aa49e5009e46b1583b1911a17f4c3.jpg', 'water-color', '[\"black\", \"pink\", \"green\", \"blue\"]', 'water-color-wcl-06', '[\"12\", \"24\", \"36\"]', 'High coverage color, fresh and vibrant color palette, the former can cover the latter so it is suitable for a variety of techniques.', '2021-12-04 01:59:15'),
(23, 'Saunders waterford', 850000, 'https://i.pinimg.com/564x/68/f1/99/68f19947d8bf3f0bf7566a550a864cec.jpg', 'https://i.pinimg.com/564x/68/f1/99/68f19947d8bf3f0bf7566a550a864cec.jpg', 'paper-watercolor', '[\"blue\", \"black\"]', 'paper-watercolor-wcl', '[\"10x14 inches\", \"10x14 inches\"]', 'Saunder waterford vein hot pressed and cold pressed 300gsm - Saunder waterford is a famous paper from England - St Cuthberts Mill company.', '2021-12-04 02:03:45'),
(24, 'Porcelain Palette', 99000, 'https://i.pinimg.com/564x/f3/59/f1/f359f1257c507decf7ab14ad0395560c.jpg', 'https://i.pinimg.com/564x/f3/59/f1/f359f1257c507decf7ab14ad0395560c.jpg', 'tray-color', '[\"blue\", \"black\"]', 'tray-color-wcl', '[\"10 Well\"]', 'Material - Made from premium white Eco-friendly ceramics material. Pure white smooth surface makes it easy to cleaning and mixing and makes colors come alive. Reusable and Durable. Ideal for watercolor, gouache, acrylic, oil, tempera painting', '2021-12-04 02:08:36'),
(25, 'Escoda Reserva', 150000, 'https://i.pinimg.com/564x/60/5d/f0/605df04beb56aa79706025a65823d4cf.jpg', 'https://i.pinimg.com/564x/60/5d/f0/605df04beb56aa79706025a65823d4cf.jpg', 'paintbrush-color', '[\"blue\", \"black\"]', 'paintbrush-color-wcl', '[\"6\", \"8\", \"10\"]', 'WATERCOLOR TRAVEL BRUSH SET - This set of 6 fine artist paint brushes includes Reserva series 1214 Travel brushes in size 2, 4, 6, 8, 10, 12 and packaged in a beautiful genuine leather wallet', '2021-12-04 02:16:02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Cơ sở dữ liệu: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-07-16 18:11:42'),
(2, NULL, 'admin2', 'admin2', '1234', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2017-07-08 12:49:09', '2017-07-08 15:16:59'),
(2, 'Chetan Bhagatt', '2017-07-08 14:30:23', '2017-07-08 15:15:09'),
(3, 'Anita Desai', '2017-07-08 14:35:08', NULL),
(4, 'HC Verma', '2017-07-08 14:35:21', NULL),
(5, 'R.D. Sharma ', '2017-07-08 14:35:36', NULL),
(9, 'fwdfrwer', '2017-07-08 15:22:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, 222333, 20, '2017-07-08 20:04:55', '2017-07-15 05:54:41'),
(3, 'physics', 6, 4, 1111, 15, '2017-07-08 20:17:31', '2017-07-15 06:13:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2017-07-04 18:35:25', '2017-07-06 16:00:42'),
(5, 'Technology', 1, '2017-07-04 18:35:39', '2017-07-08 17:13:03'),
(6, 'Science', 1, '2017-07-04 18:35:55', '0000-00-00 00:00:00'),
(7, 'Management', 0, '2017-07-04 18:36:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0),
(2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5),
(3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'Anuj kumar', 'anuj.lpu1@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:37:05', '2017-07-15 18:26:21'),
(4, 'SID005', 'sdfsd', 'csfsd@dfsfks.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 0, '2017-07-11 15:41:27', '2017-07-15 17:43:03'),
(8, 'SID009', 'test', 'test@gmail.com', '2359874527', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:58:28', '2017-07-15 13:42:44'),
(9, 'SID010', 'Amit', 'amit@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 13:40:30', NULL),
(10, 'SID011', 'Sarita Pandey', 'sarita@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 18:00:59', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Đang đổ dữ liệu cho bảng `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'hama', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":\"admins\",\"table_structure[]\":\"admins\",\"table_data[]\":\"admins\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cấu trúc của bảng @TABLE@\",\"latex_structure_continued_caption\":\"Cấu trúc của bảng @TABLE@ (còn nữa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Nội dung của bảng @TABLE@\",\"latex_data_continued_caption\":\"Nội dung của bảng @TABLE@ (còn nữa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'quiz_db', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"hama\",\"library\",\"phpmyadmin\",\"quiz_db\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cấu trúc của bảng @TABLE@\",\"latex_structure_continued_caption\":\"Cấu trúc của bảng @TABLE@ (còn nữa)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Nội dung của bảng @TABLE@\",\"latex_data_continued_caption\":\"Nội dung của bảng @TABLE@ (còn nữa)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"quiz_db\",\"table\":\"lecturer\"},{\"db\":\"quiz_db\",\"table\":\"users\"},{\"db\":\"quiz_db\",\"table\":\"faculty\"},{\"db\":\"quiz_db\",\"table\":\"answers\"},{\"db\":\"quiz_db\",\"table\":\"history\"},{\"db\":\"quiz_db\",\"table\":\"questions\"},{\"db\":\"quiz_db\",\"table\":\"question_opt\"},{\"db\":\"quiz_db\",\"table\":\"quiz_list\"},{\"db\":\"quiz_db\",\"table\":\"quiz_student_list\"},{\"db\":\"quiz_db\",\"table\":\"students\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-04-11 17:08:23', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"vi\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `quiz_db`
--
CREATE DATABASE IF NOT EXISTS `quiz_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `quiz_db`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `option_id` int(30) NOT NULL,
  `is_right` tinyint(1) NOT NULL COMMENT ' 1 = right, 0 = wrong',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `quiz_id`, `question_id`, `option_id`, `is_right`, `date_updated`) VALUES
(5, 12, 2, 4, 31, 1, '0000-00-00 00:00:00'),
(6, 12, 2, 5, 34, 1, '0000-00-00 00:00:00'),
(7, 18, 2, 4, 31, 1, '2021-06-09 17:17:11'),
(8, 18, 2, 5, 34, 1, '2021-06-09 17:17:11'),
(9, 18, 2, 6, 40, 0, '2021-06-09 17:17:11'),
(10, 18, 2, 7, 43, 1, '2021-06-09 17:17:11'),
(11, 18, 2, 8, 46, 1, '2021-06-09 17:17:11'),
(12, 18, 2, 9, 52, 1, '2021-06-09 17:17:11'),
(13, 18, 2, 10, 54, 1, '2021-06-09 17:17:11'),
(14, 18, 2, 11, 59, 1, '2021-06-09 17:17:11'),
(15, 18, 2, 12, 0, 0, '2021-06-09 17:17:11'),
(16, 18, 2, 13, 0, 0, '2021-06-09 17:17:11'),
(17, 17, 2, 4, 32, 0, '2021-06-09 17:41:18'),
(18, 17, 2, 5, 36, 0, '2021-06-09 17:41:18'),
(19, 17, 2, 6, 39, 0, '2021-06-09 17:41:18'),
(20, 17, 2, 7, 41, 0, '2021-06-09 17:41:18'),
(21, 17, 2, 8, 47, 0, '2021-06-09 17:41:18'),
(22, 17, 2, 9, 0, 0, '2021-06-09 17:41:18'),
(23, 17, 2, 10, 0, 0, '2021-06-09 17:41:18'),
(24, 17, 2, 11, 0, 0, '2021-06-09 17:41:18'),
(25, 17, 2, 12, 0, 0, '2021-06-09 17:41:18'),
(26, 17, 2, 13, 0, 0, '2021-06-09 17:41:18'),
(27, 16, 2, 4, 30, 0, '2021-06-09 17:46:54'),
(28, 16, 2, 5, 34, 1, '2021-06-09 17:46:54'),
(29, 16, 2, 6, 40, 0, '2021-06-09 17:46:54'),
(30, 16, 2, 7, 43, 1, '2021-06-09 17:46:54'),
(31, 16, 2, 8, 0, 0, '2021-06-09 17:46:54'),
(32, 16, 2, 9, 52, 1, '2021-06-09 17:46:54'),
(33, 16, 2, 10, 55, 0, '2021-06-09 17:46:54'),
(34, 16, 2, 11, 59, 1, '2021-06-09 17:46:54'),
(35, 16, 2, 12, 61, 1, '2021-06-09 17:46:54'),
(36, 16, 2, 13, 68, 0, '2021-06-09 17:46:54'),
(37, 15, 2, 4, 29, 0, '2021-06-09 17:49:51'),
(38, 15, 2, 5, 34, 1, '2021-06-09 17:49:51'),
(39, 15, 2, 6, 40, 0, '2021-06-09 17:49:51'),
(40, 15, 2, 7, 43, 1, '2021-06-09 17:49:51'),
(41, 15, 2, 8, 46, 1, '2021-06-09 17:49:51'),
(42, 15, 2, 9, 52, 1, '2021-06-09 17:49:51'),
(43, 15, 2, 10, 55, 0, '2021-06-09 17:49:51'),
(44, 15, 2, 11, 59, 1, '2021-06-09 17:49:51'),
(45, 15, 2, 12, 61, 1, '2021-06-09 17:49:51'),
(46, 15, 2, 13, 67, 1, '2021-06-09 17:49:51'),
(47, 15, 2, 14, 69, 1, '2021-06-09 17:49:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `qtime` tinyint(2) NOT NULL,
  `score` int(5) NOT NULL,
  `total_score` int(5) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `history`
--

INSERT INTO `history` (`id`, `quiz_id`, `user_id`, `qtime`, `score`, `total_score`, `date_updated`) VALUES
(3, 2, 12, 5, 4, 20, '2021-06-09 13:35:40'),
(4, 2, 18, 0, 14, 20, '2021-06-09 17:17:11'),
(5, 2, 17, 0, 0, 20, '2021-06-09 17:41:18'),
(6, 2, 16, 0, 10, 20, '2021-06-09 17:46:54'),
(7, 2, 15, 0, 16, 22, '2021-06-09 17:49:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lecturer`
--

CREATE TABLE `lecturer` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lecturer`
--

INSERT INTO `lecturer` (`id`, `user_id`, `subject`, `date_updated`) VALUES
(4, 21, 'Jira', '2022-04-11 23:58:16'),
(5, 22, 'Web', '2022-04-11 23:58:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `qid` int(30) NOT NULL,
  `order_by` int(11) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `question`, `qid`, `order_by`, `date_updated`) VALUES
(4, 'What does PHP stand for?', 2, 0, '0000-00-00 00:00:00'),
(5, 'Who is the father of PHP?', 2, 0, '0000-00-00 00:00:00'),
(6, 'Which one of the following function is capable of reading a file into an array?', 2, 0, '2021-06-06 23:07:00'),
(7, 'A function in PHP which starts with __ (double underscore) is know as..', 2, 0, '2021-06-06 23:08:00'),
(8, 'Which one of the following statements is used to create a table?', 2, 0, '2021-06-06 23:08:15'),
(9, 'Which of the methods are used to manage result sets using both associative and indexed arrays?', 2, 0, '2021-06-06 23:08:30'),
(10, 'Which one of the following functions can be used to concatenate array elements to form a single delimited string?', 2, 0, '2021-06-06 23:10:37'),
(11, 'Which of the following variable names are invalid?', 2, 0, '2021-06-06 23:10:50'),
(12, 'What is true regarding $a + $b where both of them are arrays?', 2, 0, '2021-06-06 23:11:10'),
(13, 'The inbuilt function to get the number of parameters passed is:', 2, 0, '2021-06-06 23:11:30'),
(14, 'sample question', 2, 0, '2021-06-09 17:48:28'),
(15, 'dfasdfs', 4, 0, '2021-06-09 17:56:23'),
(16, 'dfasdfs', 4, 0, '2021-06-09 17:56:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question_opt`
--

CREATE TABLE `question_opt` (
  `id` int(30) NOT NULL,
  `option_txt` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1= right answer',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `question_opt`
--

INSERT INTO `question_opt` (`id`, `option_txt`, `question_id`, `is_right`, `date_updated`) VALUES
(29, 'Personal Home Page', 4, 0, '0000-00-00 00:00:00'),
(30, 'Private Home Page', 4, 0, '0000-00-00 00:00:00'),
(31, 'Hypertext Processor', 4, 1, '0000-00-00 00:00:00'),
(32, 'Preprocessor Home Page', 4, 0, '0000-00-00 00:00:00'),
(33, 'Willam Makepiece', 5, 0, '0000-00-00 00:00:00'),
(34, 'Rasmus Lerdorf', 5, 1, '0000-00-00 00:00:00'),
(35, 'Drek Kolkevi', 5, 0, '0000-00-00 00:00:00'),
(36, 'List Barely', 5, 0, '0000-00-00 00:00:00'),
(37, 'file()', 6, 1, '2021-06-06 23:07:09'),
(38, 'arr_file()', 6, 0, '2021-06-06 23:07:19'),
(39, 'arrfile()', 6, 0, '2021-06-06 23:07:29'),
(40, 'file_arr()', 6, 0, '2021-06-06 23:07:39'),
(41, 'Inbuilt Function', 7, 0, '2021-06-06 23:08:02'),
(42, 'Default Function', 7, 0, '2021-06-06 23:08:04'),
(43, 'Magic Function', 7, 1, '2021-06-06 23:08:06'),
(44, 'User Defined Function', 7, 0, '2021-06-06 23:08:08'),
(45, 'CREATE table_name (column_type column_name);', 8, 0, '2021-06-06 23:08:15'),
(46, 'CREATE TABLE table_name (column_name column_type);', 8, 1, '2021-06-06 23:08:17'),
(47, 'CREATE table_name (column_name column_type);', 8, 0, '2021-06-06 23:08:19'),
(48, 'CREATE TABLE table_name (column_type column_name);', 8, 0, '2021-06-06 23:08:21'),
(49, 'get_array() and get_row()', 9, 0, '2021-06-06 23:08:30'),
(50, 'fetch_array() and fetch_column()', 9, 0, '2021-06-06 23:08:33'),
(51, 'get_array() and get_column()', 9, 0, '2021-06-06 23:08:35'),
(52, 'fetch_array() and fetch_row()', 9, 1, '2021-06-06 23:08:37'),
(53, 'explode()', 10, 0, '2021-06-06 23:10:37'),
(54, 'implode()', 10, 1, '2021-06-06 23:10:40'),
(55, 'concat()', 10, 0, '2021-06-06 23:10:43'),
(56, 'concatenate()', 10, 0, '2021-06-06 23:10:47'),
(57, '$var_1', 11, 0, '2021-06-06 23:10:52'),
(58, '$var1', 11, 0, '2021-06-06 23:10:55'),
(59, '$var/1', 11, 1, '2021-06-06 23:10:57'),
(60, '$v1', 11, 0, '2021-06-06 23:10:59'),
(61, 'Duplicated keys are NOT overwritten', 12, 1, '2021-06-06 23:11:12'),
(62, 'The + operator is overloaded', 12, 0, '2021-06-06 23:11:13'),
(63, 'This produces a syntax error', 12, 0, '2021-06-06 23:11:15'),
(64, '$b is not appended to $a', 12, 0, '2021-06-06 23:11:18'),
(65, 'arg_num()', 13, 0, '2021-06-06 23:11:32'),
(66, 'func_args_count()', 13, 0, '2021-06-06 23:11:33'),
(67, 'func_num_args()', 13, 1, '2021-06-06 23:11:35'),
(68, 'func_args_num()', 13, 0, '2021-06-06 23:11:39'),
(69, 'đúng', 14, 1, '2021-06-09 17:48:28'),
(70, 'sai', 14, 0, '2021-06-09 17:48:28'),
(71, 'sai', 14, 0, '2021-06-09 17:48:28'),
(72, 'sai', 14, 0, '2021-06-09 17:48:28'),
(73, 'a', 15, 1, '2021-06-09 17:56:23'),
(74, 'b', 15, 0, '2021-06-09 17:56:23'),
(75, 'c', 15, 0, '2021-06-09 17:56:23'),
(76, 'd', 15, 0, '2021-06-09 17:56:23'),
(77, 'a', 16, 1, '2021-06-09 17:56:27'),
(78, 'b', 16, 0, '2021-06-09 17:56:27'),
(79, 'c', 16, 0, '2021-06-09 17:56:27'),
(80, 'd', 16, 0, '2021-06-09 17:56:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quiz_list`
--

CREATE TABLE `quiz_list` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `qpoints` int(11) NOT NULL DEFAULT 1,
  `quiz_time` tinyint(2) NOT NULL,
  `user_id` int(20) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quiz_list`
--

INSERT INTO `quiz_list` (`id`, `title`, `qpoints`, `quiz_time`, `user_id`, `date_updated`) VALUES
(2, 'Exam 1', 2, 40, 6, '2022-04-11 23:40:21'),
(3, 'Exam 2', 1, 40, 6, '2022-04-11 23:40:33'),
(4, 'Exam 3', 1, 40, 6, '2022-04-11 23:40:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quiz_student_list`
--

CREATE TABLE `quiz_student_list` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quiz_student_list`
--

INSERT INTO `quiz_student_list` (`id`, `quiz_id`, `user_id`, `date_updated`) VALUES
(5, 2, 12, '0000-00-00 00:00:00'),
(6, 2, 13, '0000-00-00 00:00:00'),
(7, 2, 14, '2021-06-09 15:16:47'),
(8, 2, 15, '2021-06-09 15:16:47'),
(9, 2, 17, '2021-06-09 15:51:36'),
(10, 2, 18, '2021-06-09 15:51:41'),
(11, 2, 16, '2021-06-09 17:45:18'),
(12, 4, 12, '2021-06-09 17:56:35'),
(13, 4, 13, '2021-06-09 17:56:41'),
(14, 4, 16, '2021-06-09 17:56:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `level_section` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`id`, `user_id`, `level_section`, `date_updated`) VALUES
(3, 12, 'Sample subject', '0000-00-00 00:00:00'),
(4, 13, 'Sample subject', '0000-00-00 00:00:00'),
(5, 14, 'Web Development', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= faculty , 3 = student',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `college` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`, `college`) VALUES
(1, 'Administrator', 1, 'admin', 'admin123', 1, '0000-00-00 00:00:00', 'Ho Chi Minh University of Education'),
(12, 'Student A', 3, 'student1', 'student1', 1, '2022-04-11 23:39:19', 'Ho Chi Minh University of Education'),
(13, 'Student B', 3, 'student2', 'student2', 1, '2022-04-11 23:39:23', 'Ho Chi Minh University of Education'),
(14, 'Phạm Phúc Thịnh', 3, 'thinhpham', 'thinhpham123', 1, '0000-00-00 00:00:00', 'Ho Chi Minh University of Education'),
(21, 'Hi Hien', 2, 'hihien', 'admin123', 1, '2022-04-11 23:58:16', ''),
(22, 'Vy Van', 2, 'vyvan', 'admin123', 1, '2022-04-11 23:58:28', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `question_opt`
--
ALTER TABLE `question_opt`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quiz_list`
--
ALTER TABLE `quiz_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `history`
--
ALTER TABLE `history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `question_opt`
--
ALTER TABLE `question_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `quiz_list`
--
ALTER TABLE `quiz_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
