-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 24, 2020 lúc 03:54 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `group8`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `aId` int(11) NOT NULL,
  `aName` varchar(255) DEFAULT NULL,
  `aPass` varchar(255) DEFAULT NULL,
  `aEmail` varchar(255) DEFAULT NULL,
  `aPhone` varchar(255) DEFAULT NULL,
  `aAddress` varchar(255) DEFAULT NULL,
  `aBrithday` date DEFAULT NULL,
  `aStatus` int(11) DEFAULT NULL,
  `aGender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`aId`, `aName`, `aPass`, `aEmail`, `aPhone`, `aAddress`, `aBrithday`, `aStatus`, `aGender`) VALUES
(1, 'mai', '1234', 'mai@123', '0852251098', 'Can Tho', '2020-07-12', 1, 'nu'),
(2, 'Nguyen Van A', '25d55ad283aa400af464c76d713c07ad', 'anv@gmail.com', '0901234567', 'Can Tho', '2000-05-01', 0, 'Men'),
(3, 'Nguyen Thi C', '6ebe76c9fb411be97b3b0d48b791a7c9', 'cnt@gmail.com', '0989899899', 'Hau Giang', '2000-07-04', 0, 'Women'),
(4, 'Nguyen Van B', 'd54d1702ad0f8326224b817c796763c9', 'bnv@gmail.com', '0907199299', 'Ca Mau', '2000-09-19', 0, 'Men'),
(5, 'Banh Thi D', '54d50ca4a93ea84ad048a2aba899a9d9', 'dbt@gmail.com', '0977123456', 'Bac Lieu', '1999-09-19', 0, 'Women'),
(6, 'La Van G', '74b55bce6ac2dbbfb1187ae1e5a3aee5', 'glv@gmail.com', '0989099099', 'My Tho', '1999-10-19', 0, 'Men'),
(7, 'Tieu Ha Anh Khoi', '5985894a23c7253f93a76ab4d9eab0d6', 'ktha@gmail.com', '0989567567', 'Tien Giang', '2001-01-01', 0, 'Women'),
(8, 'Truong Thi Thanh Xuan', 'e949d006312a633d5010f2443a0fb9b0', 'xttt@gmail.com', '0977789789', 'Soc Trang', '2000-09-09', 0, 'Women'),
(9, 'Truong Nhat Nam', '6eea9b7ef19179a06954edd0f6c05ceb', 'ntn@gmail.com', '0987789789', 'Tra Vinh', '1999-09-09', 0, 'Women'),
(10, 'Lady Gaga', 'c44a471bd78cc6c2fea32b9fe028d30a', 'gaga@gmail.com', '0535678678', 'Phan Thiet', '1998-09-12', 0, 'Women'),
(11, 'Charlie Ruth', '02c75fb22c75b23dc963c7eb91a062cc', 'ruthidol@gmail.com', '0979456789', 'Ha Noi', '1992-08-19', 0, 'Men');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bId` int(11) NOT NULL,
  `uId` int(11) DEFAULT NULL,
  `bStatus` int(11) DEFAULT NULL,
  `bNote` varchar(255) DEFAULT NULL,
  `bAddress` varchar(255) DEFAULT NULL,
  `bName` varchar(255) DEFAULT NULL,
  `bPhone` varchar(255) DEFAULT NULL,
  `bTotal` double DEFAULT NULL,
  `bDate` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`bId`, `uId`, `bStatus`, `bNote`, `bAddress`, `bName`, `bPhone`, `bTotal`, `bDate`) VALUES
(35, 1, 1, 'nlcnjw', 'can tho', 'bdgv', 'dcjnw', 2500000, '2020-07-23'),
(36, 1, 0, 'khong co', 'can tho', 'xuan k', '0912367467478', 2900000, '2020-07-23'),
(37, 1, 0, 'khong co', 'can tho', 'nghi', '09123674674', 2500000, '2020-07-23'),
(38, 1, NULL, 'khong co', 'can tho', 'xuan', '09123674674', 5788880, '2020-07-23'),
(39, 1, NULL, 'khong co', 'can tho', 'nghi', '09123674674', 2500000, '2020-07-23'),
(40, 1, NULL, '', 'can tho', 'xuan', '09123674674', 5198880, '2020-07-24'),
(41, 1, NULL, 'khong co', 'can tho', 'nghi', '09123674674', 4870000, '2020-07-24'),
(42, 1, NULL, 'khong co', 'can tho', 'xuan', '09123674674', 5000000, '2020-07-24'),
(43, 1, NULL, 'khong co', 'can tho', 'xuan', '09123674674', 2310000, '2020-07-24'),
(44, 1, NULL, 'khong co', 'can tho', 'xuan', '09123674674', 5971130, '2020-07-24'),
(45, 1, NULL, 'khong co', 'can tho', 'nghi', '09123674674', 2300000, '2020-07-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `bId` int(11) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  `bdAmount` int(11) DEFAULT NULL,
  `bdPrice` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `billdetail`
--

INSERT INTO `billdetail` (`bId`, `pId`, `bdAmount`, `bdPrice`) VALUES
(35, 5, 1, 2500000),
(36, 6, 1, 2900000),
(37, 5, 1, 2500000),
(38, 6, 1, 2900000),
(38, 7, 1, 2888880),
(39, 5, 1, 2500000),
(40, 7, 1, 2888880),
(40, 10, 1, 2310000),
(41, 4, 1, 2370000),
(41, 5, 1, 2500000),
(42, 13, 1, 5000000),
(43, 10, 1, 2310000),
(44, 11, 1, 2500000),
(44, 12, 1, 1002010),
(44, 14, 1, 1234560),
(44, 16, 1, 1234560),
(45, 18, 1, 2300000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `clId` int(11) NOT NULL,
  `clName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `cmId` int(11) NOT NULL,
  `uId` int(11) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  `cmContent` varchar(255) DEFAULT NULL,
  `cmDate` date DEFAULT curdate(),
  `cmTime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`cmId`, `uId`, `pId`, `cmContent`, `cmDate`, `cmTime`) VALUES
(1, 1, 3, 'cai nay dep lam', '2020-07-23', '2020-07-23 00:00:00'),
(2, 1, 2, 'tot', '2020-07-23', '2020-07-23 00:00:00'),
(3, 1, 2, 'nam', '2020-07-23', '2020-07-23 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `desciption`
--

CREATE TABLE `desciption` (
  `dId` int(11) NOT NULL,
  `dSize` varchar(255) DEFAULT NULL,
  `dMaterial` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `hId` int(11) NOT NULL,
  `aId` int(11) DEFAULT NULL,
  `aActivity` varchar(255) DEFAULT NULL,
  `hDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacture`
--

CREATE TABLE `manufacture` (
  `mId` int(11) NOT NULL,
  `mName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `pID` int(11) NOT NULL,
  `pName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `pId` int(11) NOT NULL,
  `pName` varchar(255) NOT NULL,
  `pBprices` double NOT NULL,
  `pAmount` int(255) DEFAULT NULL,
  `pIprices` double DEFAULT NULL,
  `pGender` varchar(255) DEFAULT NULL,
  `pGuarantee` varchar(255) DEFAULT NULL,
  `pDiscount` double DEFAULT NULL,
  `pDescription` varchar(255) DEFAULT NULL,
  `pDate` date DEFAULT NULL,
  `pImage` varchar(255) DEFAULT NULL,
  `pStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`pId`, `pName`, `pBprices`, `pAmount`, `pIprices`, `pGender`, `pGuarantee`, `pDiscount`, `pDescription`, `pDate`, `pImage`, `pStatus`) VALUES
(1, 'G-SHOCK GA-110HR-1ADR ', 3806000, 50, 2000000, 'Male', '12 month', 0, 'Trademark: CasioOrigin: JapanGlasses: Mineral CrystalMachine: QuanrtzDiameter: 55mm x 51.2mmDial Thickness: 16.9mmMaterial : PlasticWire material: RubberWire Color: Red BlackWater Re', '2020-07-19', 'img\\G-SHOCK GA-120-1ADR â€“ NAM â€“ QUARTZ (PIN) â€“ DÃ‚Y CAO SU.jpg', 0),
(2, 'G-SHOCK GG-1000-1ADR', 9100000, 40, 5000000, 'Male', '12 month', 0, 'Trademark: CasioOrigin: JapanGlasses: Mineral CrystalMachine: Quanrtz(pin)Diameter: 56.2mm x 55.3mmDial Thickness: 17.1mmMaterial: PlasticWire Material: RubberDial Color: BlackWater ', '2020-07-19', 'img\\G-SHOCK GG-1000-1ADR â€“ NAM â€“ QUARTZ (PIN) â€“ DÃ‚Y CAO SU.jpg', 0),
(3, 'BABY-G (BGA-131-7BDR)', 310900, 40, 200000, 'Male', '12 month', 0, 'TradeMark: CasioOrigin: JapanGlasses: Mineral CrystalMachine: Quanrtz(pin)Diameter: 43mmDial Thickness: 13mmMaterial: PlasticWire Material: RubberDial Color: WhiteWater Resistant: 20', '2020-07-19', 'img\\BABY-G Ná»® â€“ QUARTZ (PIN) â€“ DÃ‚Y CAO SU (BGA-131-7BDR).jpg', 0),
(4, 'GUCCI UNISEX YA1264007A', 2370000, 49, 1970000, 'Male', '12 month', 0, 'TradeMark: GucciOrigin: Swiss MadeCollection: Gucci Le Marche Des MerveillesTypeOfProduct: Fashion StyleMachine: Quartz MovementDiameter: 38mm x 38mmDial Thickness: 9mmMaterial: Stainles', '2020-07-19', 'img\\Ä�á»’NG Há»’ GUCCI UNISEX YA1264007A.jpg', 0),
(5, 'GUCCI  YA1264113', 2500000, 46, 2000000, 'Male', '12 month', 0, 'TradeMark : GucciCollection : Gucci G-Timeless CollectionOrigin: Swiss MadeTypeOfProduct : Fashion StyleMachine : Automatic For : WonemDiameter : 38mm x 38mmDial Thickness : 8.15mmMate', '2020-07-19', 'img\\Ä�á»’NG Há»’ GUCCI Ná»® YA1264113.jpg', 0),
(6, 'OGIVAL NAM OG829-65AGSK', 2900000, 28, 210000, 'Male', '12 month', 0, 'TradeMark : OgivalOrigin : Swiss MadeTypeOfProduct : ClassicMachine : AutomaticFor : MenDiameter : 40mm x 40mmShell Thickness : 10mmShell Material : Stainless steel / PVD-plated technolo', '2020-07-19', 'img\\Ä�á»’NG Há»’ OGIVAL NAM OG829-65AGSK.jpg', 0),
(7, 'Omega Seamaster Planet Ocean', 2888880, 28, 2100000, 'Male', '12 month', 0, 'Collection	SeamasterShape	RoundMotion Set	calibre 9900Function	Chronograph, Column Wheel, Hour, Minute, Small Second, Co-Axial Escapement, Chronometer, Magnetic ResistantShell Material	18K Sed', '2020-07-19', 'img\\Omega Seamaster Planet Ocean.jpg', 0),
(8, 'Omega Seamaster Aqua Terra', 1080000, 30, 700000, 'Male', '12 month', 0, 'Collection	SeamasterShape	RoundMotionSet	Calibre 8939Edition	Limited EditionFunction	Date, Hours, Minutes, Seconds, World TimeShell Material	18K Sednaâ¢ goldDiameter	43BackCap	Transparent', '2020-07-19', 'img\\Omega Seamaster Aqua Terra .jpg', 0),
(9, 'Longines Spirit Chronometer Chronograph', 2580000, 30, 1700000, 'Male', '12 month', 0, 'Collection	SpiritShape	RoundLockType	folding claspFunction	Hours, minutes, seconds, date, ChronographShell Material	Stainless SteelDiameter	42Materil	Stainless SteelFunction Rim	FixedT', '2020-07-19', 'img\\Longines Spirit Chronometer Chronograph, 42mm L38204536.jpg', 0),
(10, 'CHARRIOL FE32.101.015', 2310000, 18, 2000000, 'Male', '12 month', 0, 'TradeMark : CharriolCollection : Charriol Forever Flower CollectionOrigin : Swiss MadeTypeofProduct : Fashion StyleMachine : Quartz MovementFor : WomenDiameter : 32.00mm x 32.00mmShell M', '2020-07-20', 'img\\Ä�á»’NG Há»’ CHARRIOL Ná»® FE32.101.015.jpg', 0),
(11, 'Longines Spirit Chronometer Chronograph', 2500000, 49, 2000000, 'Male', '12 month', 0, 'Collection	SpiritShape	RoundLock Type	folding claspFunction	Hours, minutes, seconds, date, ChronographShell Material	Stainless SteelDiameter	42Material	Stainless SteelFunction Rim	Fixed', '2020-07-20', 'img\\Longines Spirit Chronometer Chronograph, 42mm L38204736.jpg', 0),
(12, 'Movado Museum Classic', 1002010, 49, 500000, 'Male', '12 month', 0, 'Collection	Museum ClassicShape	RoundLockType	buckleFunction	Hour, MinuteShell Material	black PVD-finished stainless steelDiameter	40Back Cap	SolidMaterial	black PVD-finished stainless st', '2020-07-20', 'img\\Movado Museum Classic, 40mm 0607198.jpg', 0),
(13, 'Rolex Datejust', 5000000, 39, 2000000, 'Male', '12 month', 0, 'Collection	DatejustShape	RoundLockType	FoldingMotion set	Caliber 3235Function	Date, Hour, Minute, SecondShell Material	Oystersteel and yellow goldDiameter	36Material	Oystersteel and yell', '2020-07-20', 'img\\Rolex Datejust, 36mm M126233-0029.jpg', 0),
(14, 'Chanel Black Code Coco ', 1234560, 49, 100000, 'Male', '12 month', 0, 'Collection	Black Code CocoShape	RectangularLockType	Mademoiselle turnlockFunction	Hours, MinutesShell Material	Black ceramicDiameter	38.1 x 21.5 x 7.8Material	Black ceramicFunction Rim	F', '2020-07-20', 'img\\Chanel Black Code Coco watch H5147, 38.1 x 21.5 x 7.8 mm H5147.jpg', 0),
(15, 'Michael Kors Lexington Watch', 1205670, 30, 500000, 'Male', '12 month', 0, 'Collection	LexingtonShape	RoundLockType	FoldingFunction	Hour, Minute, secondsShell Material	Rose Gold coated Stainless SteelDiameter	36BackCap	SolidMaterial	Rose Gold coated Stainless St', '2020-07-20', 'img\\Michael Kors Lexington Watch, 36mm MK6641.jpg', 0),
(16, 'La D de Dior Satine', 1234560, 19, 500000, 'Male', '12 month', 0, 'Collection	La D De DiorShape	RoundLockType	folding claspFunction	Hours, MinutesShell Materil	Stainless SteelDiameter	36BackCap	SolidScrewCap	Pull / PushMaterial	stamped with a textile ', '2020-07-20', 'img\\La D de Dior Satine, 36mm CD043116M001_0000.jpg', 0),
(17, 'Tissot Carson Premium Powermatic 80', 1505000, 10, 1000000, 'Male', '12 month', 0, 'Collection	CarsonShape	RoundLockType	butterfly clasp with push-buttonsMotinSet	ETA 2671Function	Date, Hour, Minute, SecondsShell Material	316L stainless steel case with rose gold PVD coating', '2020-07-20', 'img\\Tissot Carson Premium Powermatic 80, 30mm T1222072203101.jpg', 0),
(18, 'Versace Tribute', 2300000, 9, 210000, 'Male', '12 month', 0, 'Collection	TributeShape	RoundLockType	Folding ClaspFunction	Hour, MinuteShell Material	Gold tone Stainless SteelDiameter	35BackCap	SolidMaterial	Gold tone Stainless SteelFunction Rim	F', '2020-07-20', 'img\\Versace Tribute, 35mm VEVG00320.jpg', 0),
(19, 'Michael Kors Jayne ', 1300000, 30, 100000, 'Male', '12 month', 0, 'Collection	JayneShape	RoundLockType	BuckleFunction	Hour, Minute, secondsShell Material	Rose gold-tone Stainless SteelDiameter	38Case Thickness	8BackCap	SolidMaterial	Rose gold-tone Sta', '2020-07-20', 'img\\Michael Kors Jayne , 38mm MK7126.jpg', 0),
(20, 'Hublot Classic Fusion Automatic ', 3340000, 20, 2000000, 'Male', '12 month', 0, 'Collection	Classic FusionShape	RoundLockType	Push Button Folding ClaspMotion Set	HUB1110Function	Hours, Minutes, Seconds, DateShell Material	Satin-finished and Polished Black CeramicDiamet', '2020-07-20', 'img\\Chanel Black Code Coco watch H5147, 38.1 x 21.5 x 7.8 mm H5147.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `rId` int(11) NOT NULL,
  `rRole` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipper`
--

CREATE TABLE `shipper` (
  `sId` int(11) NOT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `sPass` varchar(255) DEFAULT NULL,
  `sEmail` varchar(255) DEFAULT NULL,
  `sPhone` varchar(255) DEFAULT NULL,
  `sAddress` varchar(255) DEFAULT NULL,
  `sBirthday` date DEFAULT NULL,
  `sStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trendmask`
--

CREATE TABLE `trendmask` (
  `trId` int(11) NOT NULL,
  `trName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `typeproduct`
--

CREATE TABLE `typeproduct` (
  `tpId` int(11) NOT NULL,
  `tpName` varchar(255) DEFAULT NULL,
  `tpAmount` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `uId` int(11) NOT NULL,
  `uName` varchar(255) DEFAULT NULL,
  `uPass` varchar(255) DEFAULT NULL,
  `uEmail` varchar(255) DEFAULT NULL,
  `uPhone` varchar(255) DEFAULT NULL,
  `uAddress` varchar(255) DEFAULT NULL,
  `uBirthday` date DEFAULT NULL,
  `uStatus` int(11) DEFAULT NULL,
  `uGender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`uId`, `uName`, `uPass`, `uEmail`, `uPhone`, `uAddress`, `uBirthday`, `uStatus`, `uGender`) VALUES
(1, 'xuan dang yeu lam do', '202cb962ac59075b964b07152d234b70', 'xuan@123', '0909808080', 'Can Tho', '2020-07-01', 1, 'Male'),
(2, 'Johnathan Galindo', 'dc4b56ff4967374b261a29cd4a90580d', 'Galindo@gmail.com', '+84979123456', 'Can Tho', '2000-09-09', 0, 'Male'),
(3, 'Hary Style', '25f9e794323b453885f5181f1b624d0b', 'Hary@gmail.com', '+84901899999', 'TP.HCM', '2000-09-10', 0, 'male'),
(4, 'Harry Porter', 'aa7bfa1fcc0d9cdd62df6ded4746c6d7', 'Harry@yahoo.com.vn', '+84907055055', 'Hue', '2001-08-15', 0, 'male'),
(5, 'Huynh Ba Dat', '77d61c1d632e479c64b7dcef6ef36f38', 'Datbd@gmail.com', '+84907567890', 'Dong Thap', '2000-08-20', 0, 'male'),
(6, 'HUynh Thi Nhien', '98027326d632344eceb1cfa868028cb8', 'NhienFPT@gmail.com', '+84922567123', 'Hau Giang', '2000-08-05', 0, 'female'),
(7, 'Nguyen Quoc An', 'e9dbc8907c54c76050939f100934e14f', 'annqce14012@fpt.edu.vn', '+84997789775', 'Can Tho', '2000-10-17', 0, 'male'),
(8, 'Tieu Ha Anh Khoi', '3effe0c58e9291e136e4c9c381899dfc', 'khoitha@gmail.com', '+84901234567', 'Hau Giang', '2000-09-05', 0, 'male'),
(9, 'Pham Quoc Nghi', 'd6fe234dcb3625ef43a95a038957b423', 'nghipq@gmail.com', '+84901545454', 'Can Tho', '2000-09-09', 1, 'male'),
(10, 'Nguyen Hoang Thien Kim', '0d3a68f30b7f3fca109223f5797b338b', 'thienkim12345', '+84989567567', 'Can Tho', '2000-06-06', 1, 'female'),
(11, 'Bui Ngoc Bich', '72b5e0717f042b8660fa0d2f262d71a3', 'bichbn@gmail.com', '+84989123456', 'Can Tho', '2000-07-07', 1, 'female'),
(16, 'Xuan Truong', 'c20ad4d76fe97759aa27a0c99bff6710', '', '0852251095', 'FPT University', '2020-07-30', 1, '0'),
(17, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '2020-07-30', 1, '0'),
(18, 'Xuan Truong', 'e369853df766fa44e1ed0ff613f563bd', 'xsbh@bh', '0852251095', 'FPT University', '2020-07-30', 1, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `vId` int(11) NOT NULL,
  `vDate` date DEFAULT NULL,
  `vDiscription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aId`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bId`);

--
-- Chỉ mục cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD KEY `bId` (`bId`),
  ADD KEY `pId` (`pId`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`clId`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cmId`);

--
-- Chỉ mục cho bảng `desciption`
--
ALTER TABLE `desciption`
  ADD PRIMARY KEY (`dId`);

--
-- Chỉ mục cho bảng `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hId`);

--
-- Chỉ mục cho bảng `manufacture`
--
ALTER TABLE `manufacture`
  ADD PRIMARY KEY (`mId`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pId`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rId`);

--
-- Chỉ mục cho bảng `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`sId`);

--
-- Chỉ mục cho bảng `trendmask`
--
ALTER TABLE `trendmask`
  ADD PRIMARY KEY (`trId`);

--
-- Chỉ mục cho bảng `typeproduct`
--
ALTER TABLE `typeproduct`
  ADD PRIMARY KEY (`tpId`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uId`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`vId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `bId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `cmId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`bId`) REFERENCES `bill` (`bId`),
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`pId`) REFERENCES `product` (`pId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
