-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 23-05-19 11:15
-- 서버 버전: 10.1.13-MariaDB
-- PHP 버전: 7.4.5p1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `dbtmdfl12`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `bx_user`
--

CREATE TABLE `bx_user` (
  `user_idx` int(11) NOT NULL COMMENT '회원인덱스',
  `user_id` varchar(50) NOT NULL COMMENT '회원아이디',
  `user_name` varchar(50) NOT NULL COMMENT '회원이름',
  `user_email` varchar(100) NOT NULL COMMENT '회원이메일',
  `user_pwd` varchar(255) NOT NULL COMMENT '회원비밀번호',
  `user_lvl` int(11) NOT NULL COMMENT '회원레벨',
  `user_token` varchar(100) NOT NULL COMMENT '사용자토큰'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `bx_user`
--

INSERT INTO `bx_user` (`user_idx`, `user_id`, `user_name`, `user_email`, `user_pwd`, `user_lvl`, `user_token`) VALUES
(1, 'abc', '한창호', 'abc@gmail.com', '$2y$10$NWK.148DsOCFbPg3j9S5A.KabCKltzhxB7YnzLeECBh52kfQBQ8b.', 1, '40cb31c3e2c4f4d061948a2df4a0b3d50dc75a8d'),
(2, 'win1', 'win1', 'win1@gmail.com', '$2y$10$JxQIvgscggJcqYOZ5Kd1xOJEjwL0280sZ2kzb5mGGXP8wi.to1Xhm', 9, 'fc272118eeb32e02a2e6de31214a9099b68a5caa'),
(3, 'win2', 'win2', 'win2@gmail.com', '$2y$10$NASbxMR4Cm0m961HkMpKs.HthIpBdinZifQB7UQ86GGDa6pHImXKG', 9, '78b05454779afed6f3586f34cafc4e2fa1afb08d'),
(4, 'win3', 'win3', 'win3@gmail.com', '$2y$10$HAEpcQ7GDpg16O47GGNKUuSrlUCCkgpGnpBFFT94DW5eCAy/D5Bf.', 9, '8fda71fffd4976fc0687c5493d275712cfd68900'),
(5, 'win4', 'win4', 'win4@gmail.com', '$2y$10$6RQP/.8SANMsnmzseezAouDuZxrc/QPsdQQ2lT6A3G8sh3.3eJIbS', 9, '9a10aa2796724d8d44198cea9c8d28006f19925b'),
(6, 'win5', 'win5', 'win5@gmail.com', '$2y$10$ACR4adIUuseFs/io6yXcGOQXxlfFRm6nnkyS.DjYr3G7NdoCHdKKa', 9, 'ac169b9a192df46b66a8c0b0e63ef083f0391452'),
(7, 'win6', 'win6', 'win6@gmail.com', '$2y$10$wuBdje9HWtAsgnhDuqXRVOUyRrWUGkby6LzJ1BnuXjmhk4Pohwt5S', 9, '37375f2181f9ba6fd3f881aed4e6409b3be7bc82'),
(8, 'win7', 'win7', 'win7@gmail.com', '$2y$10$SZ1JvlvNsG8OwqRtUcx1nO4pcS0oO2ODvbYl1sIxSBkJaudW8Bs2i', 9, '690df158e8de4128cbce77e0c70292c2770b1125'),
(9, 'win8', 'win8', 'win8@gmail.com', '$2y$10$lGGfPH.OqajBSIT5kGASy.BmUmNDecyDnmtwyU2oLdfUair5dl2HS', 9, '51c276f719e8accab9f68f90ef2b5028b31dc178'),
(10, 'win9', 'win9', 'win9@gmail.com', '$2y$10$M0rhdkoJ97xQykh1MmA0CuQRd1n.IeUubsCUPhY25QaKSn2e/guqK', 9, 'fa01399eca89ea6b00bae6cfe56990382d24300e'),
(11, 'win10', 'win10', 'win10@gmail.com', '$2y$10$B3qV99J.2llMy1UFZbqYwOx9Nkhwa/EIOS2DiGZ3MdtHQYRmmYar.', 9, '308490ea7e4e6f1ce0155912e5e26926cb740aa7');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `bx_user`
--
ALTER TABLE `bx_user`
  ADD PRIMARY KEY (`user_idx`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `bx_user`
--
ALTER TABLE `bx_user`
  MODIFY `user_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원인덱스', AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
