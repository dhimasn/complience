/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : cmp_tools

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 17/03/2022 13:58:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_produk_lab
-- ----------------------------
DROP TABLE IF EXISTS `data_produk_lab`;
CREATE TABLE `data_produk_lab`  (
  `id_data_produk_lab` bigint(11) NOT NULL,
  `id_data_produk` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_form_lab` bigint(11) NOT NULL,
  `data_produk_lab` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `notes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nomor_she` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `state` bigint(11) NOT NULL,
  PRIMARY KEY (`id_data_produk_lab`) USING BTREE,
  INDEX `produk_lab`(`id_form_lab`) USING BTREE,
  CONSTRAINT `inspeksi_lab` FOREIGN KEY (`id_data_produk_lab`) REFERENCES `produk_lab` (`id_data_produk_lab`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `produk_lab` FOREIGN KEY (`id_form_lab`) REFERENCES `form_lab` (`id_form_lab`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
