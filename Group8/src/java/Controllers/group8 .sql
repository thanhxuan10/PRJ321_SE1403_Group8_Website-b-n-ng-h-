-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 07, 2020 lúc 07:53 AM
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
(1, 'mai', '1234', 'mai@123', '0852251098', 'Can Tho', '2020-07-12', 1, 'nu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bId` int(11) NOT NULL,
  `uId` int(11) DEFAULT NULL,
  `bStatus` varchar(255) DEFAULT NULL,
  `bNote` varchar(255) DEFAULT NULL,
  `bAddress` varchar(255) DEFAULT NULL,
  `bName` varchar(255) DEFAULT NULL,
  `bPhone` varchar(255) DEFAULT NULL,
  `bTotal` double NOT NULL,
  `bDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `bdId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `bdAmount` int(11) NOT NULL,
  `bdPrice` double DEFAULT NULL,
  `bId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `cmDate` date DEFAULT NULL,
  `cmTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `iId` int(11) NOT NULL,
  `iName` varchar(255) DEFAULT NULL,
  `iAmount` varchar(255) DEFAULT NULL,
  `pId` int(11) NOT NULL
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
  `pDiscount` varchar(255) DEFAULT NULL,
  `pDescription` varchar(200) DEFAULT NULL,
  `pDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`pId`, `pName`, `pBprices`, `pAmount`, `pIprices`, `pGender`, `pGuarantee`, `pDiscount`, `pDescription`, `pDate`) VALUES
(1, 'cbd111', 1000, 12, 10, 'nam', '1', '10%', 'rat de', '2020-01-01'),
(3, 'xuan', 1000, 34, 10, 'nu', '1 nam', '10%', 'rat dep', '2020-07-17');

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
-- Cấu trúc bảng cho bảng `statusproduct`
--

CREATE TABLE `statusproduct` (
  `stId` int(11) NOT NULL,
  `stDesciption` int(11) DEFAULT NULL
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
(1, 'xuan', '123', 'xuan@123', '0909808080', 'Can Tho', '2020-07-01', 1, '0');

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
  ADD PRIMARY KEY (`bdId`);

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
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`iId`);

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
-- Chỉ mục cho bảng `statusproduct`
--
ALTER TABLE `statusproduct`
  ADD PRIMARY KEY (`stId`);

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
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
