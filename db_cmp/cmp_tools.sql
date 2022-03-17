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

 Date: 15/03/2022 17:11:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_high_risk
-- ----------------------------
DROP TABLE IF EXISTS `data_high_risk`;
CREATE TABLE `data_high_risk`  (
  `id_data_high_risk` bigint(255) NOT NULL,
  `id_data_produk` bigint(255) NULL DEFAULT NULL,
  `id_criteria` bigint(255) NULL DEFAULT NULL,
  `id_weighting` bigint(255) NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_data_high_risk`) USING BTREE,
  INDEX `high_risk_criteria`(`id_criteria`) USING BTREE,
  INDEX `data_produk_high_risk_cmp`(`id_data_produk`) USING BTREE,
  INDEX `high_risk_weighting`(`id_weighting`) USING BTREE,
  CONSTRAINT `data_produk_high_risk` FOREIGN KEY (`id_data_produk`) REFERENCES `data_produk_cmp_high_risk` (`id_data_produk`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `high_risk_criteria` FOREIGN KEY (`id_criteria`) REFERENCES `high_risk_criteria` (`id_criteria`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `high_risk_weighting` FOREIGN KEY (`id_weighting`) REFERENCES `high_risk_weighting` (`id_weighting`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for data_produk_cmp
-- ----------------------------
DROP TABLE IF EXISTS `data_produk_cmp`;
CREATE TABLE `data_produk_cmp`  (
  `id_data_produk` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_perusahaan` bigint(11) NULL DEFAULT NULL,
  `id_user` bigint(11) NULL DEFAULT NULL,
  `id_ispro` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_field` bigint(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_data_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for data_produk_cmp_high_risk
-- ----------------------------
DROP TABLE IF EXISTS `data_produk_cmp_high_risk`;
CREATE TABLE `data_produk_cmp_high_risk`  (
  `id_data_produk` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_perusahaan` bigint(11) NULL DEFAULT NULL,
  `id_user` bigint(11) NULL DEFAULT NULL,
  `id_ispro` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_field` bigint(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_data_produk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for data_produk_inpeksi
-- ----------------------------
DROP TABLE IF EXISTS `data_produk_inpeksi`;
CREATE TABLE `data_produk_inpeksi`  (
  `Id_data_produk_inspeksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_data_produk` bigint(255) NULL DEFAULT NULL,
  `id_form_inpeksi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data_produk_inspeksi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `verication_result` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nomor_she` bigint(255) NULL DEFAULT NULL,
  `state` bigint(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_data_produk_inspeksi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of data_produk_inpeksi
-- ----------------------------
INSERT INTO `data_produk_inpeksi` VALUES (67, 1646594469412, '1', '-6.2485762,106.9378654', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (68, 1646594469412, '2', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (69, 1646594469412, '3', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (70, 1646594469412, '4', 'null', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (71, 1646594469412, '5', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (72, 1646594469412, '6', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (73, 1646594469412, '7', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (74, 1646594469412, '8', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (75, 1646594469412, '9', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (76, 1646594469412, '10', '001/LSP/QI/06.1-I/2022', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (77, 1646594469412, '11', 'Samsung', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (78, 1646594469412, '12', 'AR13KVFSDX', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (79, 1646594469412, '13', 'AR13KVFSDX', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (80, 1646594469412, '14', '1120.00', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (81, 1646594469412, '15', '12000.00', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (82, 1646594469412, '16', '11.70', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (83, 1646594469412, '17', '4', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (84, 1646594469412, '18', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (85, 1646594469412, '19', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (86, 1646594469412, '20', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (87, 1646594469412, '21', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (88, 1646594469412, '22', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (89, 1646594469412, '23', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (90, 1646594469412, '24', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (91, 1646594469412, '25', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (92, 1646594469412, '26', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (93, 1646594469412, '27', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (94, 1646594469412, '28', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (95, 1646594469412, '29', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (96, 1646594469412, '30', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (97, 1646594469412, '31', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (100, 1646594469412, '1', '-6.2485762,106.9378654', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (101, 1646594469412, '2', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (102, 1646594469412, '3', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (103, 1646594469412, '4', 'null', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (104, 1646594469412, '5', '', NULL, NULL, NULL, 1);
INSERT INTO `data_produk_inpeksi` VALUES (105, 1646594469412, '6', '', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for data_produk_inpeksi_file
-- ----------------------------
DROP TABLE IF EXISTS `data_produk_inpeksi_file`;
CREATE TABLE `data_produk_inpeksi_file`  (
  `Id_data_produk_inspeksi` bigint(11) NOT NULL AUTO_INCREMENT,
  `Id_form_inpeksi` bigint(11) NULL DEFAULT NULL,
  `base64` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `state` bigint(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_data_produk_inspeksi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of data_produk_inpeksi_file
-- ----------------------------
INSERT INTO `data_produk_inpeksi_file` VALUES (68, 1646594469412, '', 1);
INSERT INTO `data_produk_inpeksi_file` VALUES (69, 1646594469412, '', 1);
INSERT INTO `data_produk_inpeksi_file` VALUES (70, 1646594469412, 'bnVsbA==', 1);
INSERT INTO `data_produk_inpeksi_file` VALUES (71, 1646594469412, '', 1);
INSERT INTO `data_produk_inpeksi_file` VALUES (72, 1646594469412, '', 1);
INSERT INTO `data_produk_inpeksi_file` VALUES (84, 1646594469412, '', 1);

-- ----------------------------
-- Table structure for data_produk_lab
-- ----------------------------
DROP TABLE IF EXISTS `data_produk_lab`;
CREATE TABLE `data_produk_lab`  (
  `id_data_produk_lab` bigint(11) NOT NULL,
  `id_form_lab` bigint(11) NOT NULL,
  `data_produk_lab` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `notes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_data_produk_lab`) USING BTREE,
  INDEX `produk_lab`(`id_form_lab`) USING BTREE,
  CONSTRAINT `inspeksi_lab` FOREIGN KEY (`id_data_produk_lab`) REFERENCES `produk_lab` (`id_data_produk_lab`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `produk_lab` FOREIGN KEY (`id_form_lab`) REFERENCES `form_lab` (`id_form_lab`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for data_produk_lab_file
-- ----------------------------
DROP TABLE IF EXISTS `data_produk_lab_file`;
CREATE TABLE `data_produk_lab_file`  (
  `id_data_produk_lab` bigint(11) NOT NULL,
  `id_form_lab` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `base64` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_data_produk_lab`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for data_produk_master
-- ----------------------------
DROP TABLE IF EXISTS `data_produk_master`;
CREATE TABLE `data_produk_master`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_data_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date_added` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date_updated` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `state` bigint(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_produk_master
-- ----------------------------
INSERT INTO `data_produk_master` VALUES (1, '1646594469412', '2022-03-15 07:28:23', '2022-03-15 07:28:23', 1);

-- ----------------------------
-- Table structure for data_ritel
-- ----------------------------
DROP TABLE IF EXISTS `data_ritel`;
CREATE TABLE `data_ritel`  (
  `id_data_ritel` bigint(255) NOT NULL,
  `nama_ritel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_ritel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wilayah_ritel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_tenaga_penjual` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tipe_ritel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto_tampak_depan_ritel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah_produk_inspeksi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_data_ritel`) USING BTREE,
  CONSTRAINT `inspeksi_ritel` FOREIGN KEY (`id_data_ritel`) REFERENCES `ritel_inspeksi` (`id_data_ritel`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fom_inpeksi_role
-- ----------------------------
DROP TABLE IF EXISTS `fom_inpeksi_role`;
CREATE TABLE `fom_inpeksi_role`  (
  `id_form_role` bigint(255) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_form_role`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fom_inpeksi_role
-- ----------------------------
INSERT INTO `fom_inpeksi_role` VALUES (1, 'Informasi Umum');
INSERT INTO `fom_inpeksi_role` VALUES (2, 'Data Ritel');
INSERT INTO `fom_inpeksi_role` VALUES (3, 'Pengalaman terhadap Label Tanda Hemat Energi');
INSERT INTO `fom_inpeksi_role` VALUES (4, 'Detail produk');
INSERT INTO `fom_inpeksi_role` VALUES (5, 'Pemeriksaan visual + entri data ketidaksesuaian');
INSERT INTO `fom_inpeksi_role` VALUES (6, 'Compliance Assessment');
INSERT INTO `fom_inpeksi_role` VALUES (7, 'Rekaman Sampel Uji Petik');

-- ----------------------------
-- Table structure for form_inpeksi
-- ----------------------------
DROP TABLE IF EXISTS `form_inpeksi`;
CREATE TABLE `form_inpeksi`  (
  `id_form_inpeksi` bigint(255) NOT NULL AUTO_INCREMENT,
  `id_form_role` bigint(255) NULL DEFAULT NULL,
  `data_point` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data_entry_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mandatory_optional` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Notes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_form_inpeksi`) USING BTREE,
  INDEX `inspeksi_role`(`id_form_role`) USING BTREE,
  CONSTRAINT `inspeksi_role` FOREIGN KEY (`id_form_role`) REFERENCES `fom_inpeksi_role` (`id_form_role`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of form_inpeksi
-- ----------------------------
INSERT INTO `form_inpeksi` VALUES (1, 1, 'Tanggal & waktu', 'Auto-populated', 'Mandatory', 'Saat mulai mengisi, atau saat formulir dikirimkan');
INSERT INTO `form_inpeksi` VALUES (2, 1, 'Nama Inspektur', 'Auto-populated', 'Mandatory', NULL);
INSERT INTO `form_inpeksi` VALUES (3, 1, 'ID Inspektur', 'Auto-populated', 'Mandatory', 'Dapat diberikan account ID spesifik, atau dari ID unik yang disediakan KESDM (apabila ada)');
INSERT INTO `form_inpeksi` VALUES (4, 2, 'Nama Ritel', 'Manual entry', 'Mandatory', NULL);
INSERT INTO `form_inpeksi` VALUES (5, 2, 'Alamat Ritel', 'Manual entry', 'Mandatory', 'Integrasi lokasi Google Maps');
INSERT INTO `form_inpeksi` VALUES (6, 2, 'Nama Tenaga Penjual', 'Manual entry', 'Optional', NULL);
INSERT INTO `form_inpeksi` VALUES (7, 2, 'Wilayah Ritel', 'Drop down menu or auto-populated (?) based on location', 'Mandatory', '\"Jabodetabek\nJawa Tengah\nJawa Timur\nDI Yogyakarta\nKalimantan\nKepulauan Maluku\nBali & Nusa Tenggara\nPapua\nSulawesi\nSumatera\"\r\n');
INSERT INTO `form_inpeksi` VALUES (8, 2, 'Tipe Ritel', 'Drop down menu', 'Mandatory', '\"Warung\nPasar tradisional\nToko\nDealer/Distributor\nChain\nDepartment store\nHypermarket\nGeneral store\nSupermarket\"\r\n');
INSERT INTO `form_inpeksi` VALUES (9, 2, 'Lampirkan foto tampak depan Ritel\r\nLampirkan foto tampak depan Ritel\r\n', 'Photo', 'Mandatory', NULL);
INSERT INTO `form_inpeksi` VALUES (10, 2, 'Jumlah produk yang ingin diinspeksi pada kunjungan ini', 'Manual entry', 'Optional', NULL);
INSERT INTO `form_inpeksi` VALUES (11, 3, 'Apakah tenaga penjual familiar dengan LTHE?', 'Drop down menu', 'Mandatory', 'Ya \r\nSedikit\r\n Tidak');
INSERT INTO `form_inpeksi` VALUES (12, 3, 'Seberapa seringkah tenaga penjual menemukan produk tanpa LTHE?', 'Drop down menu', 'Optional', 'Tidak pernah\r\nJarang\r\nSering\r\nSangat sering');
INSERT INTO `form_inpeksi` VALUES (13, 3, 'Apakah yang dilakukan oleh pihak ritel saat produk tanpa LTHE ditemukan?', 'Drop down menu', 'Mandatory', 'Mengembalikan produk pada pemasok untuk mencantumkan label');
INSERT INTO `form_inpeksi` VALUES (14, 3, 'Apakah konsumen menanyakan tentang LTHE?', 'Drop down menu', 'Mandatory', 'Ya\r\nSering\r\nKadang-kadang\r\nTidak pernah');
INSERT INTO `form_inpeksi` VALUES (15, 3, 'Apakah pramuniaga ritel dapat menjelaskan arti LTHE dengan benar?', 'Drop down menu', 'Mandatory', 'Ya\r\nSebagian \r\nTidak');
INSERT INTO `form_inpeksi` VALUES (16, 4, 'Nomor SHE', 'Manual entry, then \"easy fill\"', 'Mandatory', 'Fitur lookup sudah diaktifkan disini, kalau tidak ditemukan, buka pilihan \"tidak ditemukan\"');
INSERT INTO `form_inpeksi` VALUES (17, 4, 'Merek', 'Pre-populated from registry', 'Mandatory', 'Or allow for manual entry if no registration');
INSERT INTO `form_inpeksi` VALUES (18, 4, 'Metrik 1: Kapasitas', 'Drop down', 'Mandatory', '1/2 PK\r\n3/4 PK\r\n1 PK\r\n1.5 PK\r\n2 PK\r\n2.5 PK\r\n3 PK');
INSERT INTO `form_inpeksi` VALUES (19, 4, 'Metrik 2: Teknologi', 'Drop down', 'Mandatory', 'Standard, fixed speed\r\nInverter');
INSERT INTO `form_inpeksi` VALUES (20, 4, 'Metrik 3: ', 'Drop down', 'Mandatory', NULL);
INSERT INTO `form_inpeksi` VALUES (21, 4, 'Manufaktur / importir', 'Pre-populated from registry', 'Mandatory', 'Or allow for manual entry if no registration');
INSERT INTO `form_inpeksi` VALUES (22, 4, 'Kode atau Tanggal Produksi', 'Manual entry', 'Mandatory', 'Can this be obtained? Is it necessary?');
INSERT INTO `form_inpeksi` VALUES (23, 4, 'Negara Asal', 'Manual entry', 'Mandatory\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (24, 4, 'Harga', 'Manual entry', 'Mandatory', NULL);
INSERT INTO `form_inpeksi` VALUES (25, 5, 'Lampirkan foto LTHE\r\n', 'Photo', 'Mandatory', NULL);
INSERT INTO `form_inpeksi` VALUES (26, 5, 'Metrik 0: Jumlah Bintang', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai');
INSERT INTO `form_inpeksi` VALUES (27, 5, 'Metrik 1: Daya', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai');
INSERT INTO `form_inpeksi` VALUES (28, 5, 'Metrik 2: Nilai Efisiensi Energi', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai');
INSERT INTO `form_inpeksi` VALUES (29, 5, 'Metrik 3: Kapasitas Pendinginan (AC)', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai');
INSERT INTO `form_inpeksi` VALUES (30, 5, 'Metrik 4: Model Unit Dalam (AC)', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai');
INSERT INTO `form_inpeksi` VALUES (31, 5, 'Metrik 5: Model Unit Luar (AC)', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai');
INSERT INTO `form_inpeksi` VALUES (32, 6, 'LTHE tercantum pada produk', 'Drop down menu', 'Mandatory', 'Yes\r\nNo');
INSERT INTO `form_inpeksi` VALUES (33, 6, 'LTHE tercantum pada kotak kemasan', 'Drop down menu', 'Mandatory', 'Yes\r\nNo');
INSERT INTO `form_inpeksi` VALUES (34, 6, 'Visibilitas LTHE', 'Drop down menu', 'Mandatory\r\n', '\"Label jelas dan mudah terlihat\nLabel kabur atau rusak karena tindakan produsen atau importir\nLabel kabur atau rusak karena tindakan pengecer\nLabel sebagian atau seluruhnya ditutupi oleh label lain atau informasi pemasaran\nTidak berlaku - label tidak dibu');
INSERT INTO `form_inpeksi` VALUES (35, 6, 'Kesesuaian visual LTHE', 'Drop down menu', 'Mandatory\r\n', '\"Label terlihat benar dan sesuai dengan persyaratan\nDesain label salah (warna, ukuran, dll)\nLabel tampaknya palsu\nLabel tidak sesuai dengan model fisik produk\nTidak berlaku - label tidak dibubuhkan\"\r\n');
INSERT INTO `form_inpeksi` VALUES (36, 6, 'Ketidaksesuaian LTHE, dijelaskan', 'Manual entry', 'Optional', 'Jelaskan secara manual, ketidaksesuaian yang ditemukan\r\n');
INSERT INTO `form_inpeksi` VALUES (37, 6, 'Label SNI tercantum dan dapat terbaca jelas', 'Drop down menu', 'Mandatory', '\"Ya\nTidak yakin\nTidak\"\r\n');
INSERT INTO `form_inpeksi` VALUES (38, 6, 'Ekolabel tercantum dan dapat terbaca jelas', 'Drop down menu', 'Mandatory', '\"Ya\nTidak yakin\nTidak\"\r\n');
INSERT INTO `form_inpeksi` VALUES (39, 6, 'Kartu garansi tercantum dan dapat terbaca jelas', 'Drop down menu', 'Mandatory', '\"Ya\nTidak yakin\nTidak\"\r\n');
INSERT INTO `form_inpeksi` VALUES (40, 6, 'Label produk dalam Bahasa Indonesia', 'Drop down menu', 'Mandatory', '\"Ya\nTidak yakin\nTidak\"\r\n');
INSERT INTO `form_inpeksi` VALUES (41, 6, 'Tinjauan inspeksi LTHE', 'Drop down menu', 'Mandatory', '\"Label dan produk tampak sesuai\nLabel atau produk tampak mencurigakan dan memerlukan penyelidikan lebih lanjut\nLabel atau produk tampak mencurigakan dan direkomendasikan untuk pengujian verifikasi\"\r\n');
INSERT INTO `form_inpeksi` VALUES (42, 6, 'Tuliskan penjelasan apabila label atau produk mencurigakan', 'Manual entry', 'Optional', 'Aktif untuk isian Tinjauan inspeksi selain \"Label dan produk tampak sesuai\"\r\n');
INSERT INTO `form_inpeksi` VALUES (43, 7, 'Apakah ada produk dari kunjungan ritel yang dipilih untuk uji petik?\r\nApakah ada produk dari kunjungan ritel yang dipilih untuk uji petik?\r\n', 'Drop down menu\r\n', 'Mandatory\r\n', '\"Ya\nTidak\"\r\n');
INSERT INTO `form_inpeksi` VALUES (44, 7, '(Apabila Ya) Pilih dari Entri Data yang Direkam\r\n', 'Single or multiple', 'Mandatory', NULL);
INSERT INTO `form_inpeksi` VALUES (45, 7, '(Aktifkan Entri Tambahan untuk Entri Data yg dipilih) Lab Uji Tujuan', 'Drop down menu\r\n', 'Optional\r\n', '\"Qualis\nTUV Rheinland\nB2TKE-BRIN\nB4T-Kemenperin\"\r\n');
INSERT INTO `form_inpeksi` VALUES (46, 7, '(Aktifkan Entri Tambahan untuk Entri Data yg dipilih) Cara Pengiriman', 'Drop down menu\r\n', 'Mandatory\r\n', '\"Diantar langsung\nPengiriman jarak dekat\nPengiriman jarak jauh\"\r\n');
INSERT INTO `form_inpeksi` VALUES (47, 7, 'Lampirkan foto Formulir Transmisi\r\n', 'Photo', 'Optional\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (48, 7, 'Lampirkan foto Bukti Pembayaran', 'Photo', 'Optional\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (49, 7, 'Lampirkan foto Kemasan Tersegel', 'Photo', 'Optional\r\n', NULL);

-- ----------------------------
-- Table structure for form_lab
-- ----------------------------
DROP TABLE IF EXISTS `form_lab`;
CREATE TABLE `form_lab`  (
  `id_form_lab` bigint(255) NOT NULL AUTO_INCREMENT,
  `id_form_lab_role` bigint(255) NULL DEFAULT NULL,
  `datapoint` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Data entry type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Mandatory/Optional` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Notes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_form_lab`) USING BTREE,
  INDEX `lab_role`(`id_form_lab_role`) USING BTREE,
  CONSTRAINT `lab_role` FOREIGN KEY (`id_form_lab_role`) REFERENCES `form_lab_role` (`id_form_lab_role`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of form_lab
-- ----------------------------
INSERT INTO `form_lab` VALUES (1, 1, 'Record ID\r\n', 'Auto-populated (?)\r\n', 'Mandatory\r\n', 'Hanya aktif dari sampel uji yang diunggah dan dipilih untuk uji petik pada Formulir 1, atau aktivasi khusus dari Tim Pengawasan DJEBTKE\r\n');
INSERT INTO `form_lab` VALUES (2, 1, 'Laboratorium Pengujian', 'Auto-populated', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (3, 1, 'Tanggal & Waktu Inspeksi Sampel\r\n', 'Auto-populated\r\n', 'Mandatory', 'Saat mulai mengisi, atau saat formulir dikirimkan\r\n');
INSERT INTO `form_lab` VALUES (4, 1, 'Nama Petugas Pemeriksa\r\n', 'Auto-populated (?)', 'Mandatory', NULL);
INSERT INTO `form_lab` VALUES (5, 1, 'Nama Petugas Persetujuan', 'Auto-populated (?)', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (6, 2, 'Nomor SHE\r\n', 'Auto-populated\r\n', 'Display only\r\n', NULL);
INSERT INTO `form_lab` VALUES (7, 2, 'Merek', 'Auto-populated', 'Display only', NULL);
INSERT INTO `form_lab` VALUES (8, 2, 'Metrik 1: Kapasitas\r\n', 'Auto-populated\r\n', 'Display only\r\n', NULL);
INSERT INTO `form_lab` VALUES (9, 2, 'Metrik 2: Teknologi', 'Auto-populated\r\n', 'Display only\r\n', NULL);
INSERT INTO `form_lab` VALUES (10, 2, 'Manufaktur / importir', 'Auto-populated\r\n', 'Display only\r\n', NULL);
INSERT INTO `form_lab` VALUES (11, 2, 'Kode atau Tanggal Produksi\r\n', 'Auto-populated\r\n', 'Display only\r\n', NULL);
INSERT INTO `form_lab` VALUES (12, 2, 'Negara Asal\r\n', 'Auto-populated\r\n', 'Display only\r\n', NULL);
INSERT INTO `form_lab` VALUES (13, 3, 'Kondisi kemasan produk AC tidak rusak\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (14, 3, 'Periksa kondisi fisik produk AC secara visual seperti bodi unit indoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (15, 3, 'Kondisi fin atau sirip alat penukar kalor tidak rusak, deformasi, berubah warna pada unit indoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (16, 3, 'Kondisi kipas pada unit indoor tidak retak, rusak atau menyentuh bagian lainnya\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (17, 3, 'Tidak ada komponen aksesoris yang hilang atau tidak lengkap seperti yang dijelaskan di dalam buku petunjuk pengoperasian. Seperti installing holder, screw, remote control dan lain-lain\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (18, 3, 'Pastikan terdapat penutup katub atau tidak ada kerusakan pada ulir sambungan pipa antara unit indoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (19, 3, 'Pipa penghubung tube refrigerant antara unit indoor dan outdoor tidak penyok\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (20, 4, 'Kondisi kemasan produk AC tidak rusak\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (21, 4, 'Periksa kondisi fisik produk AC secara visual seperti bodi unit outdoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (22, 4, 'Kondisi fin atau sirip alat penukar kalor tidak rusak, deformasi, berubah warna pada unit outdoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (23, 4, 'Kondisi kipas pada unit outdoor tidak retak, rusak atau menyentuh bagian lainnya\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (24, 4, 'Pastikan terdapat penutup katub atau tidak ada kerusakan pada ulir sambungan pipa antara unit outdoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (25, 4, 'Pipa 2 way dan 3 way valve dalam keadaan tertutup (Tidak ada kebocoran gas)\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n');
INSERT INTO `form_lab` VALUES (26, 5, 'Hasil penilaian\r\n', 'Drop down menu\r\n', 'Mandatory\r\n', '\"Baik, dapat dilanjutkan ke pengecekan kondisi pengujian\nTidak diterima, unit dikemas kembali untuk dikembalikan\"\r\n');
INSERT INTO `form_lab` VALUES (27, 5, 'Keterangan tambahan\r\n', 'Manual entry\r\nManual entry & drop down menu\r\n', 'Optional\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (28, 6, 'Berat unit indoor, sebelum\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (29, 6, 'Berat unit indoor, sesudah\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (30, 6, 'Berat unit outdoor, sebelum\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (31, 6, 'Berat unit outdoor, sesudah\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (32, 6, 'Pipa tembaga sepanjang 7,5 m ± 10 cm\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (33, 6, 'Pasang Thermokopel pada unit Indoor dan Outdoor\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (34, 6, 'Instalasi unit (jarak unit indoor ke dinding 300 - 400 mm)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (35, 6, 'Instalasi unit (jarak unit indoor ke lantai 1400 - 1500 mm)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (36, 6, 'Instalasi unit (jarak unit outdoor ke dinding 500 mm)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (37, 6, 'Instalasi unit (jarak unit outdoor ke lantai 750 - 1000 mm)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (38, 6, 'Instalasi pemasangan air sampler unit Indoor (Metode Air Enthalpy)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (39, 6, 'Proses pemvakuman\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (40, 6, 'Test kebocoran pipa\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (41, 6, 'Kondisi Temperatur Pengujian\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (42, 6, 'Indoor Chamber: TDB (27?), TWB (19?) Outdoor Chamber: TDB (35?), TWB (24?)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (43, 6, '\"Atur AC pada posisi:\n? Mode : Cool\n? Kecepatan fan : Maksimum\n? Posisi pengarah hembusan udara : Maksimum\n? Temperatur Remote Control : Suhu terendah/minimum\"\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (44, 6, 'Jaga perbedaan tekanan air discharge AC yang diuji di dalam receiving chamber dan ruang chamber sebesar 0 Pa\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (45, 6, 'Kecepatan aliran udara (air velocity) antara 15m/dt - 35m/dt dengan mengatur nozzle pada receiving chamber\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n');
INSERT INTO `form_lab` VALUES (46, 7, 'Hasil penilaian\r\n', 'Drop down menu\r\n', 'Mandatory\r\n', '\"Baik, pengujian dapat dimulai\nTidak diterima, unit dikemas kembali untuk dikembalikan\"\r\n');
INSERT INTO `form_lab` VALUES (47, 7, 'Keterangan tambahan\r\n', 'Manual entry\r\n', 'Optional\r\n', NULL);
INSERT INTO `form_lab` VALUES (48, 8, 'Nomor seri unit indoor\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (49, 8, 'Nomor seri unit outdoor\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (50, 8, 'Kapasitas normal (Btu/h)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (51, 8, 'Daya normal (W)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (52, 8, 'Kapasitas maksimum (Btu/h)\r\nDaya maksimum (W)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (53, 8, 'Tegangan (V)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (54, 8, 'Fase\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (56, 8, 'Hz\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (57, 8, 'Current (A)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (58, 8, 'Berat unit indoor (kg)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (59, 8, 'Berat unit outdoor (kg)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (60, 8, 'Dimensi unit indoor (mm, W*H*D)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (61, 8, 'Dimensi unit outdoor (mm, W*H*D)\r\nTipe refrigeran\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (62, 8, 'Muatan refrigeran\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);
INSERT INTO `form_lab` VALUES (63, 8, 'Tipe refrigeran\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL);

-- ----------------------------
-- Table structure for form_lab_role
-- ----------------------------
DROP TABLE IF EXISTS `form_lab_role`;
CREATE TABLE `form_lab_role`  (
  `id_form_lab_role` bigint(255) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_form_lab_role`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of form_lab_role
-- ----------------------------
INSERT INTO `form_lab_role` VALUES (1, 'Informasi Umum');
INSERT INTO `form_lab_role` VALUES (2, 'Detil produk');
INSERT INTO `form_lab_role` VALUES (3, 'Cek Fisik, Unit Indoor');
INSERT INTO `form_lab_role` VALUES (4, 'Cek Fisik, Unit Outdoor');
INSERT INTO `form_lab_role` VALUES (5, 'Hasil Final Cek Fisik');
INSERT INTO `form_lab_role` VALUES (6, 'Pengecekan Pra-Pengujian\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n');
INSERT INTO `form_lab_role` VALUES (7, 'Hasil Final Cek Pra-Pengujian\r\n\r\n');
INSERT INTO `form_lab_role` VALUES (8, 'Data name plate produk');
INSERT INTO `form_lab_role` VALUES (9, 'Hasil pengujian full-load				\r\n');
INSERT INTO `form_lab_role` VALUES (10, 'Rekap hasil pengujian				\r\n');

-- ----------------------------
-- Table structure for high_risk_criteria
-- ----------------------------
DROP TABLE IF EXISTS `high_risk_criteria`;
CREATE TABLE `high_risk_criteria`  (
  `id_criteria` bigint(255) NOT NULL AUTO_INCREMENT,
  `nama_criteria` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `notes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_criteria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of high_risk_criteria
-- ----------------------------
INSERT INTO `high_risk_criteria` VALUES (1, 'Just meets MEPS level\r\n(?EER < 0.225 Btu/h/W)', 'This criteria identifies models with efficiency levels that just barely meet the MEPS.');

-- ----------------------------
-- Table structure for high_risk_weighting
-- ----------------------------
DROP TABLE IF EXISTS `high_risk_weighting`;
CREATE TABLE `high_risk_weighting`  (
  `id_weighting` bigint(255) NOT NULL,
  `id_criteria` bigint(255) NOT NULL,
  `answer` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `weight` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_weighting`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of high_risk_weighting
-- ----------------------------
INSERT INTO `high_risk_weighting` VALUES (0, 2, 'Yes,  ?EER < 0.1875 Btu/h/W', '2\r\n2');
INSERT INTO `high_risk_weighting` VALUES (1, 1, 'Yes,  ?EER < 0.225 Btu/h/W\r\n', '1');
INSERT INTO `high_risk_weighting` VALUES (3, 3, 'Yes,  ?EER < 0.075 Btu/h/W\r\n', '3');

-- ----------------------------
-- Table structure for perusahaan
-- ----------------------------
DROP TABLE IF EXISTS `perusahaan`;
CREATE TABLE `perusahaan`  (
  `id_perusahaan` bigint(20) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_perusahaan` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `slug` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `npwp` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `no_telp` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `merek` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `flag` enum('1','0','-1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '1',
  PRIMARY KEY (`id_perusahaan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of perusahaan
-- ----------------------------
INSERT INTO `perusahaan` VALUES (1, 'PT', 'Panasonic Gobel Indonesia', 'panasonic-gobel-indonesia', '99.999.999.9-999.999', 'Jl. Dewi Sartika No. 14 (Cawang II) Jakarta 13630\r\nIndonesia', '+62-21 801 5710, 809 0108', 'ccc@id.panasonic.com', 'Panasonic', '1');
INSERT INTO `perusahaan` VALUES (2, 'PT', 'Maspion', 'maspion', '11.111.111.1-111.111', 'Jl. HR. Rasuna Said Jakarta Selatan', '021-1234-1234', 'info@maspion.co.id', 'Maspion', '1');
INSERT INTO `perusahaan` VALUES (3, 'PT', 'Hannocs Indonesia', 'hannocs-indonesia', '33.333.333.3-333.333', 'Kawasan Industri Cikarang', '021-1234-1235', 'info@hannocs.co.id', 'Sanken,Maspion', '0');
INSERT INTO `perusahaan` VALUES (4, 'PT', 'Philips Indonesia', 'philips-indonesia', '44.444.444.4-444.444', 'asdfadf', '123123', 'cs@company.co.id', NULL, '1');
INSERT INTO `perusahaan` VALUES (5, 'PT', 'Aneka Electronics', 'aneka-electronics', '55.555.555.5-555.555', 'asdf', '1234', 'cs@company.co.id', NULL, '1');
INSERT INTO `perusahaan` VALUES (6, 'PT', 'Sharp Trading Indonesia', 'sharp-trading-indonesia', '33.333.333.3-333.333', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (7, 'PT', 'Mitsubishi Electric Indonesia', 'mitsubishi-electric-indonesia', '111111111111111', 'Kawasan Industri Jababeka', '021-23333-3333', 'usermitsubishi@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (8, 'PT', 'Tes Coba', 'nganu', '12', 'asdfasdf', '02112341234', 'admin@email.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (9, 'PT', 'Gree Electric Appliances Indonesia', 'gree-electric-appliances-indonesia', '19.122.212.2-122.122', 'asdf', '123', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (10, 'PT', 'Samsung Electronics Indonesia', 'samsung-electronics-indonesia', '11.111.111.1-111.112', 'Alamat', '021 5758999', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (11, 'PT', 'Daikin Airconditioning Indonesia', 'daikin-airconditioning-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (12, 'CV', 'Multi Guna Selaras', 'multi-guna-selaras', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (13, 'PT', 'Arisamandiri Pratama', 'arisamandiri-pratama', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (14, 'PT', 'Beko Appliances Indonesia', 'beko-appliances-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (15, 'PT', 'Hartono Istana Teknologi', 'hartono-istana-teknologi', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (16, 'PT', 'LG Electronics Indonesia', 'lg-electronics-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (17, 'PT', 'Mitsubishi Electric Indonesia', 'mitsubishi-electric-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (18, 'PT', 'Panasonic Manufacturing Indonesia', 'panasonic-manufacturing-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (19, 'PT', 'Electrolux Indonesia', 'electrolux-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (20, 'PT', 'Panggung Electric Citrabuana', 'panggung-electric-citrabuana', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (21, 'PT', 'Indopacific Nusantara', 'indopacific-nusantara', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (22, 'PT', 'Midea Planet Indonesia', 'midea-planet-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (23, 'PT', 'Berca Carrier Indonesia', 'berca-carrier-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (24, 'PT', 'Daikin Applied Solutions Indonesia', 'daikin-applied-solutions-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (25, 'PT', 'Sanken Argadwija', 'sanken-argadwija', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (26, 'PT', 'Graha Berkat Trading', 'graha-berkat-trading', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (27, 'PT', 'Denpoo Mandiri Indonesia', 'denpoo-mandiri-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (28, 'PT', 'Indotama Artha Makmur', 'indotama-artha-makmur', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (29, 'PT', 'Wira Kusuma Sejahtera', 'wira-kusuma-sejahtera', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (30, 'PT', 'Haier Sales Indonesia', 'haier-sales-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (31, 'PT', 'Tridharma Kencana', 'tridharma-kencana', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (32, 'PT', 'Berkat Andijaya Elektrindo', 'berkat-andijaya-elektrindo', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (33, 'PT', 'Elbindo Pratama Raya', 'elbindo-pratama-raya', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (34, 'PT', 'Teco Multiguna Electro', 'teco-multiguna-electro', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (35, 'PT', 'Changhong Meiling Electric Indonesia', 'changhong-meiling-electric-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (36, 'PT', 'Gree Mutiara Permai', 'gree-mutiara-permai', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (37, 'PT', 'Trane Indonesia', 'trane-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (38, 'PT', 'Sinar Rezekimas Makmur', 'sinar-rezekimas-makmur', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (39, 'PT', 'Dongbu Daewoo Electronics Indonesia', 'dongbu-daewoo-electronics-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (40, 'PT', 'Planet Electrindo', 'planet-electrindo', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (41, 'PT', 'Berkat Elektrik Sejati Tangguh', 'berkat-elektrik-sejati-tangguh', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (42, 'PT', 'Gobel Dharma Nusantara', 'gobel-dharma-nusantara', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (43, 'PT', 'Toshiba Visual Media Network Indonesia', 'toshiba-visual-media-network-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (44, 'PT', 'MDV Indonesia', 'mdv-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (45, 'PT', 'Ilthabi Mandiri Tehnik', 'ilthabi-mandiri-tehnik', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (46, 'PT', 'Green Solutions Indonesia', 'green-solutions-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (47, 'PT', 'Sarana Kencana Mulya', 'sarana-kencana-mulya', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (48, 'PT', 'Johnson Controls Hitachi Air Conditioning Indonesia', 'johnson-controls-hitachi-air-conditioning-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (49, 'PT', 'Yongwang Electronics Indonesia', 'yongwang-electronics-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (50, 'PT', 'Samsung Telecommunication Indonesia', 'samsung-telecommunitacion-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (51, 'PT', 'Panca Aditya Sejahtera', 'panca-aditya-sejahtera', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (52, 'PT', 'Panasonic Lighting Indonesia', 'panasonic-lighting-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (53, 'PT', 'Lighting Solution', 'lighting-solution', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (54, 'PT', 'GE Lighting Indonesia', 'ge-lighting-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (55, 'PT', 'Samudera Karya Mulia', 'samudera-karya-mulia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (56, 'PT', 'LUXEN MAKMUR SEJAHTERA', 'luxen-makmur-sejahtera', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (57, 'PT', 'Tjipto Langgeng Abadi', 'tjipto-langgeng-abadi', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (58, 'PT', 'Solarindo Kencana Makmur', 'solarindo-kencana-makmur', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (59, 'PT', 'Visalux Elektrindo', 'visalux-elektrindo', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (60, 'PT', 'OSRAM Indonesia', 'osram-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (61, 'PT', 'Gunawan Elektrindo', 'gunawan-elektrindo', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (62, 'PT', 'Indonesia Ascendo Lighting', 'indonesia-ascendo-lighting', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (63, 'PT', 'Amasco Indonesia', 'amasco-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (64, 'PT', 'Aurora Indah Elektrik', 'aurora-indah-elektrik', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (65, 'PT', 'Berkat Indo-Opple Gemilang', 'berkat-indo-opple-gemilang', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (66, 'PT', 'Panasonic Gobel Eco Solutions Manufacturing Indonesia', 'panasonic-gobel-eco-solutions-manufacturing-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (67, 'PT', 'Vyba Indo Perkasa', 'vyba-indo-perkasa', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (68, 'PT', 'Mitra Amertha Sejahtera', 'mitra-amertha-sejahtera', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (69, 'PT', 'Sentral Asia Niaga', 'sentral-asia-niaga', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (70, 'PT', 'Signify Commercial Indonesia', 'signify-commercial-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (71, 'PT', 'Tri Harmonis Niagantara', 'tri-harmonis-niagantara', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (72, 'PT', 'Panasonic Gobel Life Solutions Manufacturing Indonesia', 'panasonic-gobel-life-solutions-manufacturing-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (73, 'CV', 'Cahaya Nusantara Lestari', 'cahaya-nusantara-lestari', '11.111.111.1-111.111', 'Alamat', 'abc-1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (74, 'PT', 'Renesola Clean Energy', 'renescola-clean-energy', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (75, 'PT', 'Shukaku Indonesia', 'shukaku-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (76, 'PT', 'Sinko Prima Alloy', 'sinko-prima-alloy', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (77, 'PT', 'Honoris Industry', 'honoris-industry', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (78, 'PT', 'Sinergy Niagatama Indonesia', 'sinergy-niagatama-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (79, 'PT', 'Nordex Lighting Indonesia', 'nordex-lighting-indonesia', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (80, 'PT', 'Hikari', 'hikari', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (81, 'PT', 'Samudra Karya Mulya', 'samudra-karya-mulya', '11.111.111.1-111.111', 'Alamat', '1', 'sementarasaja@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (82, 'PT', 'Apalah', 'apalah', '11.111.111.1-111.111', 'Jakarta', '1', 'apalah@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (83, 'PT', 'Perusahaan Test', 'perusahaan-test', '11.111.111.1-111.111', 'Jakarta', '021 88877743', 'perusahaan.test@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (84, 'PT', 'Crescendo Aja', NULL, '12.312.312.3-123.123', 'Jl. Gatot Subroto no 42 Jakarta Selatan', '02111223344', 'crescendo.aja@gmail.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (85, 'PT', 'Tes Pusdatin', NULL, '11.111.111.1-111.111', 'alamat', 'abc', 'abc@yahoo.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (86, 'PT', 'Baru Berdiri', 'baru-berdiri', '11.111.111.1-111.111', 'Jakarta Barat', '021123123123', 'apapalahsajableh@gmail.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (87, 'PT', 'Tes Aja ', 'tes-aja', '12.121.212.1-212.121', 'Ujung Aspal Bekasi', NULL, 'apapalahsajableh@gmail.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (88, 'PT', 'asdfadfaf', NULL, '11.111.111.1-111.111', 'asdfafadfdsfadsfadf', '123', 'admin@albumbarokah.net', NULL, '0');
INSERT INTO `perusahaan` VALUES (89, 'PT', 'Undur Undur', NULL, '22.233.322.2-333.222', 'Jalan Maju Mundur', '082110956633', 'desrinaputri2012@gmail.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (90, 'PT', 'Khong Guan', NULL, '99.889.988.9-988.998', 'Lalala Lalala', '0011', 'desrina.putri@esdm.go.id', NULL, '0');
INSERT INTO `perusahaan` VALUES (91, 'PT', 'Mundur Maju', NULL, '77.788.811.1-122.277', 'Hohoho Hohoho', '2233', 'desrina.putri@esdm.go.id', NULL, '0');
INSERT INTO `perusahaan` VALUES (92, 'PT', 'Menang Jaya', 'menang-jaya', '00.987.651.2-121.921', 'jkt', NULL, 'walahdalah3@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (93, 'PT', 'Baru', 'baru', '11.191.991.9-191.910', 'jkt', NULL, 'walahdalah4@mailinator.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (94, 'PT', 'Test lagi', 'test-lagi', '11.111.666.6-533.378', 'Jakarta', NULL, 'ub.jamsirat@gmail.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (95, 'PT', 'Baru 9 jun 21', 'baru-9-jun-21', '11.111.777.7-666.555', 'jkt', NULL, 'depoprops.id@gmail.com', NULL, '0');
INSERT INTO `perusahaan` VALUES (96, 'PT', 'LG Electronics Service Indonesia', NULL, '00.000.000.0-000.000', 'Alamat', '00000000', 'a@b.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (97, 'PT', 'Hisense International Indonesia', NULL, '12.345.678.9-098.765', 'Alamat', '12345678', 'a@b.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (98, 'PT', 'Sharp Electronics Indonesia', NULL, '23.456.789.0-987.654', 'Alamat', '12345678', 'a@b.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (99, 'PT', 'Denpoo Utama', NULL, '34.567.890.9-876.543', 'Alamat', '12345678', 'a@b.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (100, 'PT', 'Haier Electrical Appliances Indonesia', NULL, '45.678.909.8-765.432', 'Alamat', '12345678', 'a@b.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (101, 'PT', 'Test', NULL, '12.313.423.1-321.323', 'dfsds', '1242323', 'email@email.com', NULL, '1');
INSERT INTO `perusahaan` VALUES (102, 'PT', 'corporate', NULL, '23.232.323', 'sadsa', '213123', 'corporate@mail.com', NULL, '1');

-- ----------------------------
-- Table structure for perusahaan_product
-- ----------------------------
DROP TABLE IF EXISTS `perusahaan_product`;
CREATE TABLE `perusahaan_product`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_perusahaan` bigint(20) NOT NULL DEFAULT 0,
  `product_category_slug` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_product` bigint(20) NULL DEFAULT 0,
  `tahun` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `quartal` int(11) NULL DEFAULT 1,
  `qty` int(11) NULL DEFAULT 0,
  `qty2` int(11) NULL DEFAULT 0,
  `qty3` int(11) NULL DEFAULT 0,
  `filename` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `timestamp` timestamp(0) NULL DEFAULT current_timestamp(0),
  `flag` enum('1','0') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_perusahaan_product_perusahaan`(`id_perusahaan`) USING BTREE,
  INDEX `product_category_slug`(`product_category_slug`) USING BTREE,
  INDEX `id_product`(`id_product`) USING BTREE,
  CONSTRAINT `FK_perusahaan_product_perusahaan` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id_perusahaan`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1004 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of perusahaan_product
-- ----------------------------
INSERT INTO `perusahaan_product` VALUES (1, 2, 'penanak-nasi', 1, '2020', 3, 100, 200, 300, 'Laporan_EBTKE20200803041029.xlsx', '2020-08-03 17:10:29', '1');
INSERT INTO `perusahaan_product` VALUES (2, 2, 'penanak-nasi', 2, '2020', 3, 100, 200, 300, 'Laporan_EBTKE20200803041029.xlsx', '2020-08-03 17:10:29', '1');
INSERT INTO `perusahaan_product` VALUES (292, 9, 'pengondisi-udara-ac', 263, '2020', 3, 0, 0, 1, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (293, 9, 'pengondisi-udara-ac', 817, '2020', 3, 0, 0, 2, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (294, 9, 'pengondisi-udara-ac', 818, '2020', 3, 0, 0, 3, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (295, 9, 'pengondisi-udara-ac', 586, '2020', 3, 0, 0, 4, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (296, 9, 'pengondisi-udara-ac', 587, '2020', 3, 0, 0, 5, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (297, 9, 'pengondisi-udara-ac', 588, '2020', 3, 0, 0, 6, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (298, 9, 'pengondisi-udara-ac', 589, '2020', 3, 0, 0, 7, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (299, 9, 'pengondisi-udara-ac', 590, '2020', 3, 0, 0, 8, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (300, 9, 'pengondisi-udara-ac', 591, '2020', 3, 0, 0, 9, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (301, 9, 'pengondisi-udara-ac', 592, '2020', 3, 0, 0, 10, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (302, 9, 'pengondisi-udara-ac', 593, '2020', 3, 0, 0, 11, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (303, 9, 'pengondisi-udara-ac', 594, '2020', 3, 0, 0, 12, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (304, 9, 'pengondisi-udara-ac', 595, '2020', 3, 0, 0, 13, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (305, 9, 'pengondisi-udara-ac', 596, '2020', 3, 0, 0, 14, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (306, 9, 'pengondisi-udara-ac', 346, '2020', 3, 0, 0, 15, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (307, 9, 'pengondisi-udara-ac', 362, '2020', 3, 0, 0, 16, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (308, 9, 'pengondisi-udara-ac', 363, '2020', 3, 0, 0, 17, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (309, 9, 'pengondisi-udara-ac', 378, '2020', 3, 0, 0, 18, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (310, 9, 'pengondisi-udara-ac', 379, '2020', 3, 0, 0, 19, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (311, 9, 'pengondisi-udara-ac', 380, '2020', 3, 0, 0, 20, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (312, 9, 'pengondisi-udara-ac', 125, '2020', 3, 0, 0, 21, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (313, 9, 'pengondisi-udara-ac', 381, '2020', 3, 0, 0, 22, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (314, 9, 'pengondisi-udara-ac', 639, '2020', 3, 0, 0, 23, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (315, 9, 'pengondisi-udara-ac', 640, '2020', 3, 0, 0, 24, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (316, 9, 'pengondisi-udara-ac', 641, '2020', 3, 0, 0, 25, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (317, 9, 'pengondisi-udara-ac', 172, '2020', 3, 0, 0, 26, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (318, 9, 'pengondisi-udara-ac', 173, '2020', 3, 0, 0, 27, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (319, 9, 'pengondisi-udara-ac', 174, '2020', 3, 0, 0, 28, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (320, 9, 'pengondisi-udara-ac', 175, '2020', 3, 0, 0, 29, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (321, 9, 'pengondisi-udara-ac', 176, '2020', 3, 0, 0, 30, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (322, 9, 'pengondisi-udara-ac', 177, '2020', 3, 0, 0, 31, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (323, 9, 'pengondisi-udara-ac', 178, '2020', 3, 0, 0, 32, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (324, 9, 'pengondisi-udara-ac', 179, '2020', 3, 0, 0, 33, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (325, 9, 'pengondisi-udara-ac', 180, '2020', 3, 0, 0, 34, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (326, 9, 'pengondisi-udara-ac', 181, '2020', 3, 0, 0, 35, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (327, 9, 'pengondisi-udara-ac', 182, '2020', 3, 0, 0, 36, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (328, 9, 'pengondisi-udara-ac', 183, '2020', 3, 0, 0, 37, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (329, 9, 'pengondisi-udara-ac', 699, '2020', 3, 0, 0, 38, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (330, 9, 'pengondisi-udara-ac', 700, '2020', 3, 0, 0, 39, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (331, 9, 'pengondisi-udara-ac', 701, '2020', 3, 0, 0, 40, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (332, 9, 'pengondisi-udara-ac', 702, '2020', 3, 0, 0, 41, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (333, 9, 'pengondisi-udara-ac', 703, '2020', 3, 0, 0, 42, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (334, 9, 'pengondisi-udara-ac', 729, '2020', 3, 0, 0, 43, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (335, 9, 'pengondisi-udara-ac', 730, '2020', 3, 0, 0, 44, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (336, 9, 'pengondisi-udara-ac', 731, '2020', 3, 0, 0, 45, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (337, 9, 'pengondisi-udara-ac', 220, '2020', 3, 0, 0, 46, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (338, 9, 'pengondisi-udara-ac', 732, '2020', 3, 0, 0, 47, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (339, 9, 'pengondisi-udara-ac', 221, '2020', 3, 0, 0, 48, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (340, 9, 'pengondisi-udara-ac', 733, '2020', 3, 0, 0, 49, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (341, 9, 'pengondisi-udara-ac', 734, '2020', 3, 0, 0, 50, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (342, 9, 'pengondisi-udara-ac', 735, '2020', 3, 0, 0, 51, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (343, 9, 'pengondisi-udara-ac', 762, '2020', 3, 0, 0, 52, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (344, 9, 'pengondisi-udara-ac', 763, '2020', 3, 0, 0, 53, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (345, 9, 'pengondisi-udara-ac', 764, '2020', 3, 0, 0, 54, 'Laporan_EBTKE20200908021239.xlsx', '2020-09-08 15:12:40', '0');
INSERT INTO `perusahaan_product` VALUES (346, 9, 'pengondisi-udara-ac', 263, '2020', 3, 0, 0, 1200, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (347, 9, 'pengondisi-udara-ac', 817, '2020', 3, 0, 0, 1201, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (348, 9, 'pengondisi-udara-ac', 818, '2020', 3, 0, 0, 1202, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (349, 9, 'pengondisi-udara-ac', 586, '2020', 3, 0, 0, 1203, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (350, 9, 'pengondisi-udara-ac', 587, '2020', 3, 0, 0, 1204, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (351, 9, 'pengondisi-udara-ac', 588, '2020', 3, 0, 0, 1205, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (352, 9, 'pengondisi-udara-ac', 589, '2020', 3, 0, 0, 1206, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (353, 9, 'pengondisi-udara-ac', 590, '2020', 3, 0, 0, 1207, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (354, 9, 'pengondisi-udara-ac', 591, '2020', 3, 0, 0, 1208, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (355, 9, 'pengondisi-udara-ac', 592, '2020', 3, 0, 0, 1209, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (356, 9, 'pengondisi-udara-ac', 593, '2020', 3, 0, 0, 1210, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (357, 9, 'pengondisi-udara-ac', 594, '2020', 3, 0, 0, 1211, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (358, 9, 'pengondisi-udara-ac', 595, '2020', 3, 0, 0, 1212, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (359, 9, 'pengondisi-udara-ac', 596, '2020', 3, 0, 0, 1213, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (360, 9, 'pengondisi-udara-ac', 346, '2020', 3, 0, 0, 1214, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (361, 9, 'pengondisi-udara-ac', 362, '2020', 3, 0, 0, 1215, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (362, 9, 'pengondisi-udara-ac', 363, '2020', 3, 0, 0, 1216, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (363, 9, 'pengondisi-udara-ac', 378, '2020', 3, 0, 0, 1217, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (364, 9, 'pengondisi-udara-ac', 379, '2020', 3, 0, 0, 1218, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (365, 9, 'pengondisi-udara-ac', 380, '2020', 3, 0, 0, 1219, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (366, 9, 'pengondisi-udara-ac', 125, '2020', 3, 0, 0, 1220, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (367, 9, 'pengondisi-udara-ac', 381, '2020', 3, 0, 0, 1221, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (368, 9, 'pengondisi-udara-ac', 639, '2020', 3, 0, 0, 1222, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (369, 9, 'pengondisi-udara-ac', 640, '2020', 3, 0, 0, 1223, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (370, 9, 'pengondisi-udara-ac', 641, '2020', 3, 0, 0, 1224, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (371, 9, 'pengondisi-udara-ac', 172, '2020', 3, 0, 0, 1225, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (372, 9, 'pengondisi-udara-ac', 173, '2020', 3, 0, 0, 1226, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (373, 9, 'pengondisi-udara-ac', 174, '2020', 3, 0, 0, 1227, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (374, 9, 'pengondisi-udara-ac', 175, '2020', 3, 0, 0, 1228, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (375, 9, 'pengondisi-udara-ac', 176, '2020', 3, 0, 0, 1229, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (376, 9, 'pengondisi-udara-ac', 177, '2020', 3, 0, 0, 1230, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (377, 9, 'pengondisi-udara-ac', 178, '2020', 3, 0, 0, 1231, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (378, 9, 'pengondisi-udara-ac', 179, '2020', 3, 0, 0, 1232, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (379, 9, 'pengondisi-udara-ac', 180, '2020', 3, 0, 0, 1233, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (380, 9, 'pengondisi-udara-ac', 181, '2020', 3, 0, 0, 1234, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (381, 9, 'pengondisi-udara-ac', 182, '2020', 3, 0, 0, 1235, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (382, 9, 'pengondisi-udara-ac', 183, '2020', 3, 0, 0, 1236, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (383, 9, 'pengondisi-udara-ac', 699, '2020', 3, 0, 0, 1237, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (384, 9, 'pengondisi-udara-ac', 700, '2020', 3, 0, 0, 1238, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (385, 9, 'pengondisi-udara-ac', 701, '2020', 3, 0, 0, 1239, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (386, 9, 'pengondisi-udara-ac', 702, '2020', 3, 0, 0, 1240, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (387, 9, 'pengondisi-udara-ac', 703, '2020', 3, 0, 0, 1241, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (388, 9, 'pengondisi-udara-ac', 729, '2020', 3, 0, 0, 1242, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (389, 9, 'pengondisi-udara-ac', 730, '2020', 3, 0, 0, 1243, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (390, 9, 'pengondisi-udara-ac', 731, '2020', 3, 0, 0, 1244, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (391, 9, 'pengondisi-udara-ac', 220, '2020', 3, 0, 0, 1245, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (392, 9, 'pengondisi-udara-ac', 732, '2020', 3, 0, 0, 1246, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (393, 9, 'pengondisi-udara-ac', 221, '2020', 3, 0, 0, 1247, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (394, 9, 'pengondisi-udara-ac', 733, '2020', 3, 0, 0, 1248, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (395, 9, 'pengondisi-udara-ac', 734, '2020', 3, 0, 0, 1249, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (396, 9, 'pengondisi-udara-ac', 735, '2020', 3, 0, 0, 1250, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (397, 9, 'pengondisi-udara-ac', 762, '2020', 3, 0, 0, 1251, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (398, 9, 'pengondisi-udara-ac', 763, '2020', 3, 0, 0, 1252, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (399, 9, 'pengondisi-udara-ac', 764, '2020', 3, 0, 0, 1253, 'Laporan_EBTKE20200908021628.xlsx', '2020-09-08 15:16:28', '1');
INSERT INTO `perusahaan_product` VALUES (400, 10, 'pengondisi-udara-ac', 1, '2021', 1, 100, 1000, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (401, 10, 'pengondisi-udara-ac', 2, '2021', 1, 101, 1001, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (402, 10, 'pengondisi-udara-ac', 3, '2021', 1, 102, 1002, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (403, 10, 'pengondisi-udara-ac', 37, '2021', 1, 103, 1003, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (404, 10, 'pengondisi-udara-ac', 38, '2021', 1, 104, 1004, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (405, 10, 'pengondisi-udara-ac', 46, '2021', 1, 105, 1005, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (406, 10, 'pengondisi-udara-ac', 47, '2021', 1, 106, 1006, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (407, 10, 'pengondisi-udara-ac', 48, '2021', 1, 107, 1007, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (408, 10, 'pengondisi-udara-ac', 49, '2021', 1, 108, 1008, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (409, 10, 'pengondisi-udara-ac', 50, '2021', 1, 109, 1009, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (410, 10, 'pengondisi-udara-ac', 51, '2021', 1, 110, 1010, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (411, 10, 'pengondisi-udara-ac', 832, '2021', 1, 111, 1011, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (412, 10, 'pengondisi-udara-ac', 833, '2021', 1, 112, 1012, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (413, 10, 'pengondisi-udara-ac', 834, '2021', 1, 113, 1013, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (414, 10, 'pengondisi-udara-ac', 835, '2021', 1, 114, 1014, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (415, 10, 'pengondisi-udara-ac', 836, '2021', 1, 115, 1015, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (416, 10, 'pengondisi-udara-ac', 837, '2021', 1, 116, 1016, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (417, 10, 'pengondisi-udara-ac', 75, '2021', 1, 117, 1017, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (418, 10, 'pengondisi-udara-ac', 76, '2021', 1, 118, 1018, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (419, 10, 'pengondisi-udara-ac', 77, '2021', 1, 119, 1019, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (420, 10, 'pengondisi-udara-ac', 78, '2021', 1, 120, 1020, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (421, 10, 'pengondisi-udara-ac', 79, '2021', 1, 121, 1021, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (422, 10, 'pengondisi-udara-ac', 80, '2021', 1, 122, 1022, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (423, 10, 'pengondisi-udara-ac', 853, '2021', 1, 123, 1023, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (424, 10, 'pengondisi-udara-ac', 854, '2021', 1, 124, 1024, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (425, 10, 'pengondisi-udara-ac', 855, '2021', 1, 125, 1025, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (426, 10, 'pengondisi-udara-ac', 856, '2021', 1, 126, 1026, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (427, 10, 'pengondisi-udara-ac', 603, '2021', 1, 127, 1027, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (428, 10, 'pengondisi-udara-ac', 604, '2021', 1, 128, 1028, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (429, 10, 'pengondisi-udara-ac', 876, '2021', 1, 129, 1029, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (430, 10, 'pengondisi-udara-ac', 642, '2021', 1, 130, 1030, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (431, 10, 'pengondisi-udara-ac', 643, '2021', 1, 131, 1031, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (432, 10, 'pengondisi-udara-ac', 654, '2021', 1, 132, 1032, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (433, 10, 'pengondisi-udara-ac', 655, '2021', 1, 133, 1033, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (434, 10, 'pengondisi-udara-ac', 656, '2021', 1, 134, 1034, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (435, 10, 'pengondisi-udara-ac', 727, '2021', 1, 135, 1035, 0, 'Laporan_EBTKE20210317102657.xls', '2021-03-17 23:26:57', '0');
INSERT INTO `perusahaan_product` VALUES (436, 73, 'pengondisi-udara-ac', 1, '2021', 1, 20, 1000, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (437, 73, 'pengondisi-udara-ac', 2, '2021', 1, 21, 1001, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (438, 73, 'pengondisi-udara-ac', 3, '2021', 1, 22, 1002, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (439, 73, 'pengondisi-udara-ac', 37, '2021', 1, 23, 1003, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (440, 73, 'pengondisi-udara-ac', 38, '2021', 1, 24, 1004, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (441, 73, 'pengondisi-udara-ac', 46, '2021', 1, 25, 1005, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (442, 73, 'pengondisi-udara-ac', 47, '2021', 1, 26, 1006, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (443, 73, 'pengondisi-udara-ac', 48, '2021', 1, 27, 1007, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (444, 73, 'pengondisi-udara-ac', 49, '2021', 1, 28, 1008, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (445, 73, 'pengondisi-udara-ac', 50, '2021', 1, 29, 1009, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (446, 73, 'pengondisi-udara-ac', 51, '2021', 1, 30, 1010, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (447, 73, 'pengondisi-udara-ac', 832, '2021', 1, 31, 1011, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (448, 73, 'pengondisi-udara-ac', 833, '2021', 1, 32, 1012, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (449, 73, 'pengondisi-udara-ac', 834, '2021', 1, 33, 1013, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (450, 73, 'pengondisi-udara-ac', 835, '2021', 1, 34, 1014, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (451, 73, 'pengondisi-udara-ac', 836, '2021', 1, 35, 1015, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (452, 73, 'pengondisi-udara-ac', 837, '2021', 1, 36, 1016, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (453, 73, 'pengondisi-udara-ac', 75, '2021', 1, 37, 1017, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (454, 73, 'pengondisi-udara-ac', 76, '2021', 1, 38, 1018, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (455, 73, 'pengondisi-udara-ac', 77, '2021', 1, 39, 1019, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (456, 73, 'pengondisi-udara-ac', 78, '2021', 1, 40, 1020, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (457, 73, 'pengondisi-udara-ac', 79, '2021', 1, 41, 1021, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (458, 73, 'pengondisi-udara-ac', 80, '2021', 1, 42, 1022, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (459, 73, 'pengondisi-udara-ac', 853, '2021', 1, 43, 1023, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (460, 73, 'pengondisi-udara-ac', 854, '2021', 1, 44, 1024, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (461, 73, 'pengondisi-udara-ac', 855, '2021', 1, 45, 1025, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (462, 73, 'pengondisi-udara-ac', 856, '2021', 1, 46, 1026, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (463, 73, 'pengondisi-udara-ac', 603, '2021', 1, 47, 1027, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (464, 73, 'pengondisi-udara-ac', 604, '2021', 1, 48, 1028, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (465, 73, 'pengondisi-udara-ac', 876, '2021', 1, 49, 1029, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (466, 73, 'pengondisi-udara-ac', 642, '2021', 1, 50, 1030, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (467, 73, 'pengondisi-udara-ac', 643, '2021', 1, 51, 1031, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (468, 73, 'pengondisi-udara-ac', 654, '2021', 1, 52, 1032, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (469, 73, 'pengondisi-udara-ac', 655, '2021', 1, 53, 1033, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (470, 73, 'pengondisi-udara-ac', 656, '2021', 1, 54, 1034, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (471, 73, 'pengondisi-udara-ac', 727, '2021', 1, 55, 1035, 0, 'Laporan_EBTKE20210318052046.xls', '2021-03-18 18:20:47', '1');
INSERT INTO `perusahaan_product` VALUES (472, 10, 'pengondisi-udara-ac', 1, '2021', 1, 20, 1000, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (473, 10, 'pengondisi-udara-ac', 2, '2021', 1, 21, 1001, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (474, 10, 'pengondisi-udara-ac', 3, '2021', 1, 22, 1002, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (475, 10, 'pengondisi-udara-ac', 37, '2021', 1, 23, 1003, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (476, 10, 'pengondisi-udara-ac', 38, '2021', 1, 24, 1004, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (477, 10, 'pengondisi-udara-ac', 46, '2021', 1, 25, 1005, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (478, 10, 'pengondisi-udara-ac', 47, '2021', 1, 26, 1006, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (479, 10, 'pengondisi-udara-ac', 48, '2021', 1, 27, 1007, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (480, 10, 'pengondisi-udara-ac', 49, '2021', 1, 28, 1008, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (481, 10, 'pengondisi-udara-ac', 50, '2021', 1, 29, 1009, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (482, 10, 'pengondisi-udara-ac', 51, '2021', 1, 30, 1010, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (483, 10, 'pengondisi-udara-ac', 832, '2021', 1, 31, 1011, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (484, 10, 'pengondisi-udara-ac', 833, '2021', 1, 32, 1012, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (485, 10, 'pengondisi-udara-ac', 834, '2021', 1, 33, 1013, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (486, 10, 'pengondisi-udara-ac', 835, '2021', 1, 34, 1014, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (487, 10, 'pengondisi-udara-ac', 836, '2021', 1, 35, 1015, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (488, 10, 'pengondisi-udara-ac', 837, '2021', 1, 36, 1016, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (489, 10, 'pengondisi-udara-ac', 75, '2021', 1, 37, 1017, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (490, 10, 'pengondisi-udara-ac', 76, '2021', 1, 38, 1018, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (491, 10, 'pengondisi-udara-ac', 77, '2021', 1, 39, 1019, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (492, 10, 'pengondisi-udara-ac', 78, '2021', 1, 40, 1020, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (493, 10, 'pengondisi-udara-ac', 79, '2021', 1, 41, 1021, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (494, 10, 'pengondisi-udara-ac', 80, '2021', 1, 42, 1022, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (495, 10, 'pengondisi-udara-ac', 853, '2021', 1, 43, 1023, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (496, 10, 'pengondisi-udara-ac', 854, '2021', 1, 44, 1024, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (497, 10, 'pengondisi-udara-ac', 855, '2021', 1, 45, 1025, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (498, 10, 'pengondisi-udara-ac', 856, '2021', 1, 46, 1026, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (499, 10, 'pengondisi-udara-ac', 603, '2021', 1, 47, 1027, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (500, 10, 'pengondisi-udara-ac', 604, '2021', 1, 48, 1028, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (501, 10, 'pengondisi-udara-ac', 876, '2021', 1, 49, 1029, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (502, 10, 'pengondisi-udara-ac', 642, '2021', 1, 50, 1030, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (503, 10, 'pengondisi-udara-ac', 643, '2021', 1, 51, 1031, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (504, 10, 'pengondisi-udara-ac', 654, '2021', 1, 52, 1032, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (505, 10, 'pengondisi-udara-ac', 655, '2021', 1, 53, 1033, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (506, 10, 'pengondisi-udara-ac', 656, '2021', 1, 54, 1034, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (507, 10, 'pengondisi-udara-ac', 727, '2021', 1, 55, 1035, 0, 'Laporan_EBTKE20210318052113.xls', '2021-03-18 18:21:13', '1');
INSERT INTO `perusahaan_product` VALUES (508, 7, 'pengondisi-udara-ac', 518, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (509, 7, 'pengondisi-udara-ac', 519, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (510, 7, 'pengondisi-udara-ac', 520, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (511, 7, 'pengondisi-udara-ac', 521, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (512, 7, 'pengondisi-udara-ac', 522, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (513, 7, 'pengondisi-udara-ac', 523, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (514, 7, 'pengondisi-udara-ac', 524, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (515, 7, 'pengondisi-udara-ac', 52, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (516, 7, 'pengondisi-udara-ac', 53, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (517, 7, 'pengondisi-udara-ac', 54, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (518, 7, 'pengondisi-udara-ac', 55, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (519, 7, 'pengondisi-udara-ac', 56, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (520, 7, 'pengondisi-udara-ac', 57, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (521, 7, 'pengondisi-udara-ac', 58, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (522, 7, 'pengondisi-udara-ac', 59, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (523, 7, 'pengondisi-udara-ac', 664, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (524, 7, 'pengondisi-udara-ac', 665, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (525, 7, 'pengondisi-udara-ac', 666, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (526, 7, 'pengondisi-udara-ac', 667, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (527, 7, 'pengondisi-udara-ac', 424, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (528, 7, 'pengondisi-udara-ac', 425, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (529, 7, 'pengondisi-udara-ac', 426, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (530, 7, 'pengondisi-udara-ac', 427, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210426114920.xls', '2021-04-26 12:49:20', '0');
INSERT INTO `perusahaan_product` VALUES (531, 7, 'pengondisi-udara-ac', 518, '2021', 2, 500, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (532, 7, 'pengondisi-udara-ac', 519, '2021', 2, 100, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (533, 7, 'pengondisi-udara-ac', 520, '2021', 2, 100, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (534, 7, 'pengondisi-udara-ac', 521, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (535, 7, 'pengondisi-udara-ac', 522, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (536, 7, 'pengondisi-udara-ac', 523, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (537, 7, 'pengondisi-udara-ac', 524, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (538, 7, 'pengondisi-udara-ac', 52, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (539, 7, 'pengondisi-udara-ac', 53, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (540, 7, 'pengondisi-udara-ac', 54, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (541, 7, 'pengondisi-udara-ac', 55, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (542, 7, 'pengondisi-udara-ac', 56, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (543, 7, 'pengondisi-udara-ac', 57, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (544, 7, 'pengondisi-udara-ac', 58, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (545, 7, 'pengondisi-udara-ac', 59, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (546, 7, 'pengondisi-udara-ac', 664, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (547, 7, 'pengondisi-udara-ac', 665, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (548, 7, 'pengondisi-udara-ac', 666, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (549, 7, 'pengondisi-udara-ac', 667, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (550, 7, 'pengondisi-udara-ac', 424, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (551, 7, 'pengondisi-udara-ac', 425, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (552, 7, 'pengondisi-udara-ac', 426, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (553, 7, 'pengondisi-udara-ac', 427, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427120025.xls', '2021-04-27 13:00:25', '1');
INSERT INTO `perusahaan_product` VALUES (554, 2, 'pengondisi-udara-ac', 792, '2021', 2, 100, 0, 0, 'Laporan_EBTKE20210427021858.xls', '2021-04-27 15:18:58', '1');
INSERT INTO `perusahaan_product` VALUES (555, 2, 'pengondisi-udara-ac', 412, '2021', 2, 100, 0, 0, 'Laporan_EBTKE20210427021858.xls', '2021-04-27 15:18:58', '1');
INSERT INTO `perusahaan_product` VALUES (556, 2, 'pengondisi-udara-ac', 413, '2021', 2, 100, 0, 0, 'Laporan_EBTKE20210427021858.xls', '2021-04-27 15:18:58', '1');
INSERT INTO `perusahaan_product` VALUES (557, 2, 'pengondisi-udara-ac', 414, '2021', 2, 100, 0, 0, 'Laporan_EBTKE20210427021858.xls', '2021-04-27 15:18:58', '1');
INSERT INTO `perusahaan_product` VALUES (558, 2, 'pengondisi-udara-ac', 415, '2021', 2, 200, 0, 0, 'Laporan_EBTKE20210427021858.xls', '2021-04-27 15:18:58', '1');
INSERT INTO `perusahaan_product` VALUES (559, 2, 'pengondisi-udara-ac', 416, '2021', 2, 200, 0, 0, 'Laporan_EBTKE20210427021858.xls', '2021-04-27 15:18:58', '1');
INSERT INTO `perusahaan_product` VALUES (560, 2, 'pengondisi-udara-ac', 417, '2021', 2, 200, 0, 0, 'Laporan_EBTKE20210427021858.xls', '2021-04-27 15:18:58', '1');
INSERT INTO `perusahaan_product` VALUES (561, 2, 'pengondisi-udara-ac', 418, '2021', 2, 200, 0, 0, 'Laporan_EBTKE20210427021858.xls', '2021-04-27 15:18:58', '1');
INSERT INTO `perusahaan_product` VALUES (562, 2, 'penanak-nasi', 1, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427021858.xls', '2021-04-27 15:18:58', '1');
INSERT INTO `perusahaan_product` VALUES (563, 2, 'penanak-nasi', 2, '2021', 2, 0, 0, 0, 'Laporan_EBTKE20210427021858.xls', '2021-04-27 15:18:58', '1');
INSERT INTO `perusahaan_product` VALUES (564, 7, 'pengondisi-udara-ac', 518, '2021', 3, 100, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (565, 7, 'pengondisi-udara-ac', 519, '2021', 3, 100, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (566, 7, 'pengondisi-udara-ac', 520, '2021', 3, 100, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (567, 7, 'pengondisi-udara-ac', 521, '2021', 3, 100, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (568, 7, 'pengondisi-udara-ac', 522, '2021', 3, 100, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (569, 7, 'pengondisi-udara-ac', 523, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (570, 7, 'pengondisi-udara-ac', 524, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (571, 7, 'pengondisi-udara-ac', 52, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (572, 7, 'pengondisi-udara-ac', 53, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (573, 7, 'pengondisi-udara-ac', 54, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (574, 7, 'pengondisi-udara-ac', 55, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (575, 7, 'pengondisi-udara-ac', 56, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (576, 7, 'pengondisi-udara-ac', 57, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (577, 7, 'pengondisi-udara-ac', 58, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (578, 7, 'pengondisi-udara-ac', 59, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (579, 7, 'pengondisi-udara-ac', 664, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (580, 7, 'pengondisi-udara-ac', 665, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (581, 7, 'pengondisi-udara-ac', 666, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (582, 7, 'pengondisi-udara-ac', 667, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (583, 7, 'pengondisi-udara-ac', 424, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (584, 7, 'pengondisi-udara-ac', 425, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (585, 7, 'pengondisi-udara-ac', 426, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (586, 7, 'pengondisi-udara-ac', 427, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210706051559.xls', '2021-07-06 18:15:59', '0');
INSERT INTO `perusahaan_product` VALUES (587, 73, 'lampu', 634, '2021', 3, 1000, 0, 0, 'Laporan_EBTKE20210707023908.xls', '2021-07-07 15:39:08', '0');
INSERT INTO `perusahaan_product` VALUES (588, 73, 'lampu', 635, '2021', 3, 1000, 0, 0, 'Laporan_EBTKE20210707023908.xls', '2021-07-07 15:39:08', '0');
INSERT INTO `perusahaan_product` VALUES (589, 73, 'lampu', 636, '2021', 3, 1000, 0, 0, 'Laporan_EBTKE20210707023908.xls', '2021-07-07 15:39:08', '0');
INSERT INTO `perusahaan_product` VALUES (590, 73, 'lampu', 637, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210707023908.xls', '2021-07-07 15:39:08', '0');
INSERT INTO `perusahaan_product` VALUES (591, 73, 'tiramisu', 9, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210707023908.xls', '2021-07-07 15:39:08', '0');
INSERT INTO `perusahaan_product` VALUES (592, 73, 'tiramisu', 7, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210707023908.xls', '2021-07-07 15:39:08', '0');
INSERT INTO `perusahaan_product` VALUES (593, 73, 'produk-tes', 1, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210707023908.xls', '2021-07-07 15:39:08', '0');
INSERT INTO `perusahaan_product` VALUES (594, 73, 'lampu', 634, '2021', 3, 2000, 0, 0, 'Laporan_EBTKE20210707024112.xls', '2021-07-07 15:41:12', '1');
INSERT INTO `perusahaan_product` VALUES (595, 73, 'lampu', 635, '2021', 3, 1000, 0, 0, 'Laporan_EBTKE20210707024112.xls', '2021-07-07 15:41:12', '1');
INSERT INTO `perusahaan_product` VALUES (596, 73, 'lampu', 636, '2021', 3, 1000, 0, 0, 'Laporan_EBTKE20210707024112.xls', '2021-07-07 15:41:12', '1');
INSERT INTO `perusahaan_product` VALUES (597, 73, 'lampu', 637, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210707024112.xls', '2021-07-07 15:41:12', '1');
INSERT INTO `perusahaan_product` VALUES (598, 73, 'tiramisu', 9, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210707024112.xls', '2021-07-07 15:41:12', '1');
INSERT INTO `perusahaan_product` VALUES (599, 73, 'tiramisu', 7, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210707024112.xls', '2021-07-07 15:41:12', '1');
INSERT INTO `perusahaan_product` VALUES (600, 73, 'produk-tes', 1, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210707024112.xls', '2021-07-07 15:41:12', '1');
INSERT INTO `perusahaan_product` VALUES (601, 7, 'pengondisi-udara-ac', 518, '2021', 3, 500, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (602, 7, 'pengondisi-udara-ac', 519, '2021', 3, 500, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (603, 7, 'pengondisi-udara-ac', 520, '2021', 3, 500, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (604, 7, 'pengondisi-udara-ac', 521, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (605, 7, 'pengondisi-udara-ac', 522, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (606, 7, 'pengondisi-udara-ac', 523, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (607, 7, 'pengondisi-udara-ac', 524, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (608, 7, 'pengondisi-udara-ac', 52, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (609, 7, 'pengondisi-udara-ac', 53, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (610, 7, 'pengondisi-udara-ac', 54, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (611, 7, 'pengondisi-udara-ac', 55, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (612, 7, 'pengondisi-udara-ac', 56, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (613, 7, 'pengondisi-udara-ac', 57, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (614, 7, 'pengondisi-udara-ac', 58, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (615, 7, 'pengondisi-udara-ac', 59, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (616, 7, 'pengondisi-udara-ac', 664, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (617, 7, 'pengondisi-udara-ac', 665, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (618, 7, 'pengondisi-udara-ac', 666, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (619, 7, 'pengondisi-udara-ac', 667, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (620, 7, 'pengondisi-udara-ac', 424, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (621, 7, 'pengondisi-udara-ac', 425, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (622, 7, 'pengondisi-udara-ac', 426, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (623, 7, 'pengondisi-udara-ac', 427, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721014911.xls', '2021-07-21 14:49:11', '0');
INSERT INTO `perusahaan_product` VALUES (624, 7, 'pengondisi-udara-ac', 518, '2021', 3, 1000, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (625, 7, 'pengondisi-udara-ac', 519, '2021', 3, 1000, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (626, 7, 'pengondisi-udara-ac', 520, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (627, 7, 'pengondisi-udara-ac', 521, '2021', 3, 1000, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (628, 7, 'pengondisi-udara-ac', 522, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (629, 7, 'pengondisi-udara-ac', 523, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (630, 7, 'pengondisi-udara-ac', 524, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (631, 7, 'pengondisi-udara-ac', 52, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (632, 7, 'pengondisi-udara-ac', 53, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (633, 7, 'pengondisi-udara-ac', 54, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (634, 7, 'pengondisi-udara-ac', 55, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (635, 7, 'pengondisi-udara-ac', 56, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (636, 7, 'pengondisi-udara-ac', 57, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (637, 7, 'pengondisi-udara-ac', 58, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (638, 7, 'pengondisi-udara-ac', 59, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (639, 7, 'pengondisi-udara-ac', 664, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (640, 7, 'pengondisi-udara-ac', 665, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (641, 7, 'pengondisi-udara-ac', 666, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (642, 7, 'pengondisi-udara-ac', 667, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (643, 7, 'pengondisi-udara-ac', 424, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (644, 7, 'pengondisi-udara-ac', 425, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (645, 7, 'pengondisi-udara-ac', 426, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (646, 7, 'pengondisi-udara-ac', 427, '2021', 3, 0, 0, 0, 'Laporan_EBTKE20210721015037.xls', '2021-07-21 14:50:37', '1');
INSERT INTO `perusahaan_product` VALUES (647, 101, 'Sheet1', 0, '2021', 1, 0, 0, 0, 'Laporan_EBTKE20210907063945.xlsx', '2021-09-07 18:39:45', '1');
INSERT INTO `perusahaan_product` VALUES (648, 101, 'Sheet1', 0, '2021', 1, 0, 0, 0, 'Laporan_EBTKE20210907063945.xlsx', '2021-09-07 18:39:45', '1');
INSERT INTO `perusahaan_product` VALUES (649, 101, 'Sheet1', 0, '2021', 1, 0, 0, 0, 'Laporan_EBTKE20210907063945.xlsx', '2021-09-07 18:39:45', '1');
INSERT INTO `perusahaan_product` VALUES (650, 101, 'Sheet1', 0, '2021', 1, 0, 0, 0, 'Laporan_EBTKE20210907063945.xlsx', '2021-09-07 18:39:45', '1');
INSERT INTO `perusahaan_product` VALUES (651, 101, 'Sheet1', 0, '2021', 1, 0, 0, 0, 'Laporan_EBTKE20210907063945.xlsx', '2021-09-07 18:39:45', '1');
INSERT INTO `perusahaan_product` VALUES (652, 101, 'Sheet1', 0, '2021', 1, 0, 0, 0, 'Laporan_EBTKE20210907063945.xlsx', '2021-09-07 18:39:45', '1');
INSERT INTO `perusahaan_product` VALUES (653, 101, 'Sheet1', 0, '2021', 1, 0, 0, 0, 'Laporan_EBTKE20210907063945.xlsx', '2021-09-07 18:39:45', '1');
INSERT INTO `perusahaan_product` VALUES (654, 101, 'Sheet1', 0, '2021', 1, 0, 0, 0, 'Laporan_EBTKE20210907063945.xlsx', '2021-09-07 18:39:45', '1');
INSERT INTO `perusahaan_product` VALUES (655, 18, 'lampu', 1, '2021', 3, 1, 1, 1, 'Laporan_EBTKE20210921082944.xlsx', '2021-09-21 08:29:46', '1');
INSERT INTO `perusahaan_product` VALUES (656, 18, 'lampu', 2, '2021', 3, 2, 2, 2, 'Laporan_EBTKE20210921082944.xlsx', '2021-09-21 08:29:46', '1');
INSERT INTO `perusahaan_product` VALUES (657, 18, 'lampu', 3, '2021', 3, 3, 3, 3, 'Laporan_EBTKE20210921082944.xlsx', '2021-09-21 08:29:46', '1');
INSERT INTO `perusahaan_product` VALUES (658, 18, 'lampu', 4, '2021', 3, 4, 4, 4, 'Laporan_EBTKE20210921082944.xlsx', '2021-09-21 08:29:46', '1');
INSERT INTO `perusahaan_product` VALUES (659, 18, 'lampu', 5, '2021', 3, 5, 5, 5, 'Laporan_EBTKE20210921082944.xlsx', '2021-09-21 08:29:46', '1');
INSERT INTO `perusahaan_product` VALUES (660, 18, 'lampu', 6, '2021', 3, 6, 6, 6, 'Laporan_EBTKE20210921082944.xlsx', '2021-09-21 08:29:46', '1');
INSERT INTO `perusahaan_product` VALUES (661, 11, 'pengondisi-udara-ac', 512, '2021', 3, 0, 0, 1, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (662, 11, 'pengondisi-udara-ac', 513, '2021', 3, 0, 0, 3, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (663, 11, 'pengondisi-udara-ac', 514, '2021', 3, 0, 0, 5, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (664, 11, 'pengondisi-udara-ac', 515, '2021', 3, 0, 0, 7, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (665, 11, 'pengondisi-udara-ac', 4, '2021', 3, 0, 0, 9, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (666, 11, 'pengondisi-udara-ac', 516, '2021', 3, 0, 0, 11, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (667, 11, 'pengondisi-udara-ac', 5, '2021', 3, 0, 0, 13, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (668, 11, 'pengondisi-udara-ac', 517, '2021', 3, 0, 0, 15, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (669, 11, 'pengondisi-udara-ac', 6, '2021', 3, 0, 0, 17, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (670, 11, 'pengondisi-udara-ac', 7, '2021', 3, 0, 0, 19, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (671, 11, 'pengondisi-udara-ac', 8, '2021', 3, 0, 0, 21, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (672, 11, 'pengondisi-udara-ac', 9, '2021', 3, 0, 0, 23, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (673, 11, 'pengondisi-udara-ac', 10, '2021', 3, 0, 0, 25, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (674, 11, 'pengondisi-udara-ac', 11, '2021', 3, 0, 0, 27, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (675, 11, 'pengondisi-udara-ac', 12, '2021', 3, 0, 0, 29, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (676, 11, 'pengondisi-udara-ac', 13, '2021', 3, 0, 0, 31, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (677, 11, 'pengondisi-udara-ac', 14, '2021', 3, 0, 0, 33, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (678, 11, 'pengondisi-udara-ac', 15, '2021', 3, 0, 0, 35, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (679, 11, 'pengondisi-udara-ac', 16, '2021', 3, 0, 0, 37, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (680, 11, 'pengondisi-udara-ac', 17, '2021', 3, 0, 0, 39, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (681, 11, 'pengondisi-udara-ac', 18, '2021', 3, 0, 0, 41, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (682, 11, 'pengondisi-udara-ac', 19, '2021', 3, 0, 0, 43, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (683, 11, 'pengondisi-udara-ac', 20, '2021', 3, 0, 0, 45, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (684, 11, 'pengondisi-udara-ac', 21, '2021', 3, 0, 0, 47, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (685, 11, 'pengondisi-udara-ac', 22, '2021', 3, 0, 0, 49, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (686, 11, 'pengondisi-udara-ac', 23, '2021', 3, 0, 0, 51, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (687, 11, 'pengondisi-udara-ac', 24, '2021', 3, 0, 0, 53, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (688, 11, 'pengondisi-udara-ac', 25, '2021', 3, 0, 0, 55, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (689, 11, 'pengondisi-udara-ac', 26, '2021', 3, 0, 0, 57, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (690, 11, 'pengondisi-udara-ac', 27, '2021', 3, 0, 0, 59, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (691, 11, 'pengondisi-udara-ac', 28, '2021', 3, 0, 0, 61, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (692, 11, 'pengondisi-udara-ac', 29, '2021', 3, 0, 0, 63, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (693, 11, 'pengondisi-udara-ac', 30, '2021', 3, 0, 0, 65, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (694, 11, 'pengondisi-udara-ac', 31, '2021', 3, 0, 0, 67, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (695, 11, 'pengondisi-udara-ac', 32, '2021', 3, 0, 0, 69, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (696, 11, 'pengondisi-udara-ac', 33, '2021', 3, 0, 0, 71, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (697, 11, 'pengondisi-udara-ac', 34, '2021', 3, 0, 0, 73, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (698, 11, 'pengondisi-udara-ac', 35, '2021', 3, 0, 0, 75, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (699, 11, 'pengondisi-udara-ac', 36, '2021', 3, 0, 0, 77, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (700, 11, 'pengondisi-udara-ac', 809, '2021', 3, 0, 0, 79, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (701, 11, 'pengondisi-udara-ac', 810, '2021', 3, 0, 0, 81, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (702, 11, 'pengondisi-udara-ac', 811, '2021', 3, 0, 0, 83, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (703, 11, 'pengondisi-udara-ac', 812, '2021', 3, 0, 0, 85, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (704, 11, 'pengondisi-udara-ac', 826, '2021', 3, 0, 0, 87, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (705, 11, 'pengondisi-udara-ac', 827, '2021', 3, 0, 0, 89, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (706, 11, 'pengondisi-udara-ac', 60, '2021', 3, 0, 0, 91, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (707, 11, 'pengondisi-udara-ac', 828, '2021', 3, 0, 0, 93, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (708, 11, 'pengondisi-udara-ac', 61, '2021', 3, 0, 0, 95, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (709, 11, 'pengondisi-udara-ac', 829, '2021', 3, 0, 0, 97, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (710, 11, 'pengondisi-udara-ac', 62, '2021', 3, 0, 0, 99, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (711, 11, 'pengondisi-udara-ac', 830, '2021', 3, 0, 0, 101, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (712, 11, 'pengondisi-udara-ac', 63, '2021', 3, 0, 0, 103, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (713, 11, 'pengondisi-udara-ac', 831, '2021', 3, 0, 0, 105, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (714, 11, 'pengondisi-udara-ac', 64, '2021', 3, 0, 0, 107, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (715, 11, 'pengondisi-udara-ac', 607, '2021', 3, 0, 0, 109, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (716, 11, 'pengondisi-udara-ac', 608, '2021', 3, 0, 0, 111, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (717, 11, 'pengondisi-udara-ac', 609, '2021', 3, 0, 0, 113, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (718, 11, 'pengondisi-udara-ac', 104, '2021', 3, 0, 0, 115, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (719, 11, 'pengondisi-udara-ac', 105, '2021', 3, 0, 0, 117, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (720, 11, 'pengondisi-udara-ac', 106, '2021', 3, 0, 0, 119, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (721, 11, 'pengondisi-udara-ac', 107, '2021', 3, 0, 0, 121, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (722, 11, 'pengondisi-udara-ac', 108, '2021', 3, 0, 0, 123, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (723, 11, 'pengondisi-udara-ac', 109, '2021', 3, 0, 0, 125, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (724, 11, 'pengondisi-udara-ac', 644, '2021', 3, 0, 0, 127, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (725, 11, 'pengondisi-udara-ac', 645, '2021', 3, 0, 0, 129, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (726, 11, 'pengondisi-udara-ac', 646, '2021', 3, 0, 0, 131, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (727, 11, 'pengondisi-udara-ac', 647, '2021', 3, 0, 0, 133, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (728, 11, 'pengondisi-udara-ac', 648, '2021', 3, 0, 0, 135, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (729, 11, 'pengondisi-udara-ac', 649, '2021', 3, 0, 0, 137, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (730, 11, 'pengondisi-udara-ac', 650, '2021', 3, 0, 0, 139, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (731, 11, 'pengondisi-udara-ac', 688, '2021', 3, 0, 0, 141, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (732, 11, 'pengondisi-udara-ac', 689, '2021', 3, 0, 0, 143, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (733, 11, 'pengondisi-udara-ac', 690, '2021', 3, 0, 0, 145, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (734, 11, 'pengondisi-udara-ac', 691, '2021', 3, 0, 0, 147, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (735, 11, 'pengondisi-udara-ac', 197, '2021', 3, 0, 0, 149, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (736, 11, 'pengondisi-udara-ac', 501, '2021', 3, 0, 0, 151, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (737, 11, 'pengondisi-udara-ac', 502, '2021', 3, 0, 0, 153, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (738, 11, 'pengondisi-udara-ac', 503, '2021', 3, 0, 0, 155, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (739, 11, 'pengondisi-udara-ac', 504, '2021', 3, 0, 0, 157, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (740, 11, 'pengondisi-udara-ac', 505, '2021', 3, 0, 0, 159, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (741, 11, 'pengondisi-udara-ac', 506, '2021', 3, 0, 0, 161, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (742, 11, 'pengondisi-udara-ac', 507, '2021', 3, 0, 0, 163, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (743, 11, 'pengondisi-udara-ac', 508, '2021', 3, 0, 0, 165, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (744, 11, 'pengondisi-udara-ac', 509, '2021', 3, 0, 0, 167, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (745, 11, 'pengondisi-udara-ac', 510, '2021', 3, 0, 0, 169, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (746, 11, 'pengondisi-udara-ac', 511, '2021', 3, 0, 0, 171, 'Laporan_EBTKE20210921083300.xlsx', '2021-09-21 08:33:00', '1');
INSERT INTO `perusahaan_product` VALUES (747, 9, 'pengondisi-udara-ac', 263, '2021', 1, 1, 1, 1, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (748, 9, 'pengondisi-udara-ac', 817, '2021', 1, 2, 2, 2, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (749, 9, 'pengondisi-udara-ac', 818, '2021', 1, 3, 3, 3, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (750, 9, 'pengondisi-udara-ac', 586, '2021', 1, 4, 4, 4, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (751, 9, 'pengondisi-udara-ac', 587, '2021', 1, 5, 5, 5, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (752, 9, 'pengondisi-udara-ac', 588, '2021', 1, 6, 6, 6, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (753, 9, 'pengondisi-udara-ac', 589, '2021', 1, 7, 7, 7, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (754, 9, 'pengondisi-udara-ac', 590, '2021', 1, 8, 8, 8, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (755, 9, 'pengondisi-udara-ac', 591, '2021', 1, 9, 9, 9, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (756, 9, 'pengondisi-udara-ac', 592, '2021', 1, 10, 10, 10, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (757, 9, 'pengondisi-udara-ac', 593, '2021', 1, 11, 11, 11, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (758, 9, 'pengondisi-udara-ac', 594, '2021', 1, 12, 12, 12, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (759, 9, 'pengondisi-udara-ac', 595, '2021', 1, 13, 13, 13, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (760, 9, 'pengondisi-udara-ac', 596, '2021', 1, 14, 14, 14, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (761, 9, 'pengondisi-udara-ac', 346, '2021', 1, 15, 15, 15, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (762, 9, 'pengondisi-udara-ac', 362, '2021', 1, 16, 16, 16, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (763, 9, 'pengondisi-udara-ac', 363, '2021', 1, 17, 17, 17, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (764, 9, 'pengondisi-udara-ac', 378, '2021', 1, 18, 18, 18, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (765, 9, 'pengondisi-udara-ac', 379, '2021', 1, 19, 19, 19, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (766, 9, 'pengondisi-udara-ac', 380, '2021', 1, 20, 20, 20, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (767, 9, 'pengondisi-udara-ac', 125, '2021', 1, 21, 21, 21, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (768, 9, 'pengondisi-udara-ac', 381, '2021', 1, 22, 22, 22, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (769, 9, 'pengondisi-udara-ac', 639, '2021', 1, 23, 23, 23, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (770, 9, 'pengondisi-udara-ac', 640, '2021', 1, 24, 24, 24, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (771, 9, 'pengondisi-udara-ac', 641, '2021', 1, 25, 25, 25, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (772, 9, 'pengondisi-udara-ac', 172, '2021', 1, 26, 26, 26, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (773, 9, 'pengondisi-udara-ac', 173, '2021', 1, 27, 27, 27, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (774, 9, 'pengondisi-udara-ac', 174, '2021', 1, 28, 28, 28, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (775, 9, 'pengondisi-udara-ac', 175, '2021', 1, 29, 29, 29, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (776, 9, 'pengondisi-udara-ac', 176, '2021', 1, 30, 30, 30, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (777, 9, 'pengondisi-udara-ac', 177, '2021', 1, 31, 31, 31, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (778, 9, 'pengondisi-udara-ac', 178, '2021', 1, 32, 32, 32, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (779, 9, 'pengondisi-udara-ac', 179, '2021', 1, 33, 33, 33, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (780, 9, 'pengondisi-udara-ac', 180, '2021', 1, 34, 34, 34, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (781, 9, 'pengondisi-udara-ac', 181, '2021', 1, 35, 35, 35, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (782, 9, 'pengondisi-udara-ac', 182, '2021', 1, 36, 36, 36, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (783, 9, 'pengondisi-udara-ac', 183, '2021', 1, 37, 37, 37, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (784, 9, 'pengondisi-udara-ac', 699, '2021', 1, 38, 38, 38, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (785, 9, 'pengondisi-udara-ac', 700, '2021', 1, 39, 39, 39, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (786, 9, 'pengondisi-udara-ac', 701, '2021', 1, 40, 40, 40, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (787, 9, 'pengondisi-udara-ac', 702, '2021', 1, 41, 41, 41, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (788, 9, 'pengondisi-udara-ac', 703, '2021', 1, 42, 42, 42, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (789, 9, 'pengondisi-udara-ac', 729, '2021', 1, 43, 43, 43, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (790, 9, 'pengondisi-udara-ac', 730, '2021', 1, 44, 44, 44, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (791, 9, 'pengondisi-udara-ac', 731, '2021', 1, 45, 45, 45, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (792, 9, 'pengondisi-udara-ac', 220, '2021', 1, 46, 46, 46, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (793, 9, 'pengondisi-udara-ac', 732, '2021', 1, 47, 47, 47, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (794, 9, 'pengondisi-udara-ac', 221, '2021', 1, 48, 48, 48, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (795, 9, 'pengondisi-udara-ac', 733, '2021', 1, 49, 49, 49, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (796, 9, 'pengondisi-udara-ac', 734, '2021', 1, 50, 50, 50, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (797, 9, 'pengondisi-udara-ac', 735, '2021', 1, 51, 51, 51, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (798, 9, 'pengondisi-udara-ac', 762, '2021', 1, 52, 52, 52, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (799, 9, 'pengondisi-udara-ac', 763, '2021', 1, 53, 53, 53, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (800, 9, 'pengondisi-udara-ac', 764, '2021', 1, 54, 54, 54, 'Laporan_EBTKE20210929091714.xlsx', '2021-09-29 21:17:14', '1');
INSERT INTO `perusahaan_product` VALUES (801, 9, 'pengondisi-udara-ac', 263, '2021', 2, 1, 1, 1, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (802, 9, 'pengondisi-udara-ac', 817, '2021', 2, 2, 2, 2, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (803, 9, 'pengondisi-udara-ac', 818, '2021', 2, 3, 3, 3, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (804, 9, 'pengondisi-udara-ac', 586, '2021', 2, 4, 4, 4, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (805, 9, 'pengondisi-udara-ac', 587, '2021', 2, 5, 5, 5, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (806, 9, 'pengondisi-udara-ac', 588, '2021', 2, 6, 6, 6, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (807, 9, 'pengondisi-udara-ac', 589, '2021', 2, 7, 7, 7, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (808, 9, 'pengondisi-udara-ac', 590, '2021', 2, 8, 8, 8, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (809, 9, 'pengondisi-udara-ac', 591, '2021', 2, 9, 9, 9, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (810, 9, 'pengondisi-udara-ac', 592, '2021', 2, 10, 10, 10, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (811, 9, 'pengondisi-udara-ac', 593, '2021', 2, 11, 11, 11, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (812, 9, 'pengondisi-udara-ac', 594, '2021', 2, 12, 12, 12, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (813, 9, 'pengondisi-udara-ac', 595, '2021', 2, 13, 13, 13, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (814, 9, 'pengondisi-udara-ac', 596, '2021', 2, 14, 14, 14, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (815, 9, 'pengondisi-udara-ac', 346, '2021', 2, 15, 15, 15, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (816, 9, 'pengondisi-udara-ac', 362, '2021', 2, 16, 16, 16, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (817, 9, 'pengondisi-udara-ac', 363, '2021', 2, 17, 17, 17, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (818, 9, 'pengondisi-udara-ac', 378, '2021', 2, 18, 18, 18, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (819, 9, 'pengondisi-udara-ac', 379, '2021', 2, 19, 19, 19, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (820, 9, 'pengondisi-udara-ac', 380, '2021', 2, 20, 20, 20, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (821, 9, 'pengondisi-udara-ac', 125, '2021', 2, 21, 21, 21, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (822, 9, 'pengondisi-udara-ac', 381, '2021', 2, 22, 22, 22, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (823, 9, 'pengondisi-udara-ac', 639, '2021', 2, 23, 23, 23, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (824, 9, 'pengondisi-udara-ac', 640, '2021', 2, 24, 24, 24, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (825, 9, 'pengondisi-udara-ac', 641, '2021', 2, 25, 25, 25, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (826, 9, 'pengondisi-udara-ac', 172, '2021', 2, 26, 26, 26, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (827, 9, 'pengondisi-udara-ac', 173, '2021', 2, 27, 27, 27, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (828, 9, 'pengondisi-udara-ac', 174, '2021', 2, 28, 28, 28, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (829, 9, 'pengondisi-udara-ac', 175, '2021', 2, 29, 29, 29, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (830, 9, 'pengondisi-udara-ac', 176, '2021', 2, 30, 30, 30, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (831, 9, 'pengondisi-udara-ac', 177, '2021', 2, 31, 31, 31, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (832, 9, 'pengondisi-udara-ac', 178, '2021', 2, 32, 32, 32, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (833, 9, 'pengondisi-udara-ac', 179, '2021', 2, 33, 33, 33, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (834, 9, 'pengondisi-udara-ac', 180, '2021', 2, 34, 34, 34, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (835, 9, 'pengondisi-udara-ac', 181, '2021', 2, 35, 35, 35, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (836, 9, 'pengondisi-udara-ac', 182, '2021', 2, 36, 36, 36, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (837, 9, 'pengondisi-udara-ac', 183, '2021', 2, 37, 37, 37, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (838, 9, 'pengondisi-udara-ac', 699, '2021', 2, 38, 38, 38, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (839, 9, 'pengondisi-udara-ac', 700, '2021', 2, 39, 39, 39, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (840, 9, 'pengondisi-udara-ac', 701, '2021', 2, 40, 40, 40, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (841, 9, 'pengondisi-udara-ac', 702, '2021', 2, 41, 41, 41, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (842, 9, 'pengondisi-udara-ac', 703, '2021', 2, 42, 42, 42, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (843, 9, 'pengondisi-udara-ac', 729, '2021', 2, 43, 43, 43, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (844, 9, 'pengondisi-udara-ac', 730, '2021', 2, 44, 44, 44, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (845, 9, 'pengondisi-udara-ac', 731, '2021', 2, 45, 45, 45, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (846, 9, 'pengondisi-udara-ac', 220, '2021', 2, 46, 46, 46, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (847, 9, 'pengondisi-udara-ac', 732, '2021', 2, 47, 47, 47, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (848, 9, 'pengondisi-udara-ac', 221, '2021', 2, 48, 48, 48, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (849, 9, 'pengondisi-udara-ac', 733, '2021', 2, 49, 49, 49, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (850, 9, 'pengondisi-udara-ac', 734, '2021', 2, 50, 50, 50, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (851, 9, 'pengondisi-udara-ac', 735, '2021', 2, 51, 51, 51, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (852, 9, 'pengondisi-udara-ac', 762, '2021', 2, 52, 52, 52, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (853, 9, 'pengondisi-udara-ac', 763, '2021', 2, 53, 53, 53, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (854, 9, 'pengondisi-udara-ac', 764, '2021', 2, 54, 54, 54, 'Laporan_EBTKE20210929091743.xlsx', '2021-09-29 21:17:43', '1');
INSERT INTO `perusahaan_product` VALUES (855, 2, 'lampu', 57, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018092916.xlsx', '2021-10-18 21:29:19', '1');
INSERT INTO `perusahaan_product` VALUES (856, 2, 'lampu', 58, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018092916.xlsx', '2021-10-18 21:29:19', '1');
INSERT INTO `perusahaan_product` VALUES (857, 2, 'lampu', 59, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211018092916.xlsx', '2021-10-18 21:29:19', '1');
INSERT INTO `perusahaan_product` VALUES (858, 2, 'lampu', 60, '2021', 4, 4, 4, 4, 'Laporan_EBTKE20211018092916.xlsx', '2021-10-18 21:29:19', '1');
INSERT INTO `perusahaan_product` VALUES (859, 2, 'lampu', 61, '2021', 4, 5, 5, 5, 'Laporan_EBTKE20211018092916.xlsx', '2021-10-18 21:29:19', '1');
INSERT INTO `perusahaan_product` VALUES (860, 2, 'penanak-nasi', 1, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018092916.xlsx', '2021-10-18 21:29:19', '1');
INSERT INTO `perusahaan_product` VALUES (861, 2, 'penanak-nasi', 2, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018092916.xlsx', '2021-10-18 21:29:19', '1');
INSERT INTO `perusahaan_product` VALUES (862, 1, 'lampu', 1, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018094909.xlsx', '2021-10-18 21:49:09', '0');
INSERT INTO `perusahaan_product` VALUES (863, 1, 'lampu', 2, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018094909.xlsx', '2021-10-18 21:49:09', '0');
INSERT INTO `perusahaan_product` VALUES (864, 1, 'lampu', 3, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211018094909.xlsx', '2021-10-18 21:49:09', '0');
INSERT INTO `perusahaan_product` VALUES (865, 1, 'lampu', 4, '2021', 4, 4, 4, 4, 'Laporan_EBTKE20211018094909.xlsx', '2021-10-18 21:49:09', '0');
INSERT INTO `perusahaan_product` VALUES (866, 1, 'lampu', 5, '2021', 4, 5, 5, 5, 'Laporan_EBTKE20211018094909.xlsx', '2021-10-18 21:49:09', '0');
INSERT INTO `perusahaan_product` VALUES (867, 1, 'lampu', 6, '2021', 4, 6, 6, 6, 'Laporan_EBTKE20211018094909.xlsx', '2021-10-18 21:49:09', '0');
INSERT INTO `perusahaan_product` VALUES (868, 1, 'lampu', 1, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018095115.xlsx', '2021-10-18 21:51:15', '0');
INSERT INTO `perusahaan_product` VALUES (869, 1, 'lampu', 2, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018095115.xlsx', '2021-10-18 21:51:15', '0');
INSERT INTO `perusahaan_product` VALUES (870, 1, 'lampu', 3, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211018095115.xlsx', '2021-10-18 21:51:15', '0');
INSERT INTO `perusahaan_product` VALUES (871, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095115.xlsx', '2021-10-18 21:51:15', '0');
INSERT INTO `perusahaan_product` VALUES (872, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095115.xlsx', '2021-10-18 21:51:15', '0');
INSERT INTO `perusahaan_product` VALUES (873, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095115.xlsx', '2021-10-18 21:51:15', '0');
INSERT INTO `perusahaan_product` VALUES (874, 1, 'lampu', 1, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018095150.xlsx', '2021-10-18 21:51:50', '0');
INSERT INTO `perusahaan_product` VALUES (875, 1, 'lampu', 2, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018095150.xlsx', '2021-10-18 21:51:50', '0');
INSERT INTO `perusahaan_product` VALUES (876, 1, 'lampu', 3, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211018095150.xlsx', '2021-10-18 21:51:50', '0');
INSERT INTO `perusahaan_product` VALUES (877, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095150.xlsx', '2021-10-18 21:51:50', '0');
INSERT INTO `perusahaan_product` VALUES (878, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095150.xlsx', '2021-10-18 21:51:50', '0');
INSERT INTO `perusahaan_product` VALUES (879, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095150.xlsx', '2021-10-18 21:51:50', '0');
INSERT INTO `perusahaan_product` VALUES (880, 1, 'lampu', 7, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018095234.xlsx', '2021-10-18 21:52:34', '0');
INSERT INTO `perusahaan_product` VALUES (881, 1, 'lampu', 8, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018095234.xlsx', '2021-10-18 21:52:34', '0');
INSERT INTO `perusahaan_product` VALUES (882, 1, 'lampu', 9, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211018095234.xlsx', '2021-10-18 21:52:34', '0');
INSERT INTO `perusahaan_product` VALUES (883, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095234.xlsx', '2021-10-18 21:52:34', '0');
INSERT INTO `perusahaan_product` VALUES (884, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095234.xlsx', '2021-10-18 21:52:34', '0');
INSERT INTO `perusahaan_product` VALUES (885, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095234.xlsx', '2021-10-18 21:52:34', '0');
INSERT INTO `perusahaan_product` VALUES (886, 1, 'lampu', 7, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018095340.xlsx', '2021-10-18 21:53:40', '0');
INSERT INTO `perusahaan_product` VALUES (887, 1, 'lampu', 8, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018095340.xlsx', '2021-10-18 21:53:40', '0');
INSERT INTO `perusahaan_product` VALUES (888, 1, 'lampu', 9, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211018095340.xlsx', '2021-10-18 21:53:40', '0');
INSERT INTO `perusahaan_product` VALUES (889, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095340.xlsx', '2021-10-18 21:53:40', '0');
INSERT INTO `perusahaan_product` VALUES (890, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095340.xlsx', '2021-10-18 21:53:40', '0');
INSERT INTO `perusahaan_product` VALUES (891, 1, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018095340.xlsx', '2021-10-18 21:53:40', '0');
INSERT INTO `perusahaan_product` VALUES (892, 1, 'lampu', 1, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018095528.xlsx', '2021-10-18 21:55:28', '1');
INSERT INTO `perusahaan_product` VALUES (893, 1, 'lampu', 2, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018095528.xlsx', '2021-10-18 21:55:28', '1');
INSERT INTO `perusahaan_product` VALUES (894, 1, 'lampu', 3, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211018095528.xlsx', '2021-10-18 21:55:28', '1');
INSERT INTO `perusahaan_product` VALUES (895, 1, 'lampu', 4, '2021', 4, 4, 4, 4, 'Laporan_EBTKE20211018095528.xlsx', '2021-10-18 21:55:28', '1');
INSERT INTO `perusahaan_product` VALUES (896, 1, 'lampu', 5, '2021', 4, 5, 5, 5, 'Laporan_EBTKE20211018095528.xlsx', '2021-10-18 21:55:28', '1');
INSERT INTO `perusahaan_product` VALUES (897, 1, 'lampu', 6, '2021', 4, 6, 6, 6, 'Laporan_EBTKE20211018095528.xlsx', '2021-10-18 21:55:28', '1');
INSERT INTO `perusahaan_product` VALUES (898, 52, 'lampu', 1, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018095826.xlsx', '2021-10-18 21:58:26', '1');
INSERT INTO `perusahaan_product` VALUES (899, 52, 'lampu', 2, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018095826.xlsx', '2021-10-18 21:58:26', '1');
INSERT INTO `perusahaan_product` VALUES (900, 52, 'lampu', 3, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211018095826.xlsx', '2021-10-18 21:58:26', '1');
INSERT INTO `perusahaan_product` VALUES (901, 52, 'lampu', 4, '2021', 4, 4, 4, 4, 'Laporan_EBTKE20211018095826.xlsx', '2021-10-18 21:58:26', '1');
INSERT INTO `perusahaan_product` VALUES (902, 52, 'lampu', 5, '2021', 4, 5, 5, 5, 'Laporan_EBTKE20211018095826.xlsx', '2021-10-18 21:58:26', '1');
INSERT INTO `perusahaan_product` VALUES (903, 52, 'lampu', 6, '2021', 4, 6, 6, 6, 'Laporan_EBTKE20211018095826.xlsx', '2021-10-18 21:58:26', '1');
INSERT INTO `perusahaan_product` VALUES (904, 51, 'lampu', 100, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018100549.xlsx', '2021-10-18 22:05:49', '0');
INSERT INTO `perusahaan_product` VALUES (905, 51, 'lampu', 101, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018100549.xlsx', '2021-10-18 22:05:49', '0');
INSERT INTO `perusahaan_product` VALUES (906, 51, 'lampu', 102, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211018100549.xlsx', '2021-10-18 22:05:49', '0');
INSERT INTO `perusahaan_product` VALUES (907, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018100549.xlsx', '2021-10-18 22:05:49', '0');
INSERT INTO `perusahaan_product` VALUES (908, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018100549.xlsx', '2021-10-18 22:05:49', '0');
INSERT INTO `perusahaan_product` VALUES (909, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018100549.xlsx', '2021-10-18 22:05:49', '0');
INSERT INTO `perusahaan_product` VALUES (910, 51, 'lampu', -1, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018100837.xlsx', '2021-10-18 22:08:37', '0');
INSERT INTO `perusahaan_product` VALUES (911, 51, 'lampu', -2, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018100837.xlsx', '2021-10-18 22:08:37', '0');
INSERT INTO `perusahaan_product` VALUES (912, 51, 'lampu', -3, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211018100837.xlsx', '2021-10-18 22:08:37', '0');
INSERT INTO `perusahaan_product` VALUES (913, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018100837.xlsx', '2021-10-18 22:08:37', '0');
INSERT INTO `perusahaan_product` VALUES (914, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018100837.xlsx', '2021-10-18 22:08:37', '0');
INSERT INTO `perusahaan_product` VALUES (915, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018100837.xlsx', '2021-10-18 22:08:37', '0');
INSERT INTO `perusahaan_product` VALUES (916, 51, 'lampu', -1, '2021', 4, 50, 50, 50, 'Laporan_EBTKE20211018101228.xlsx', '2021-10-18 22:12:28', '0');
INSERT INTO `perusahaan_product` VALUES (917, 51, 'lampu', -2, '2021', 4, 50, 50, 50, 'Laporan_EBTKE20211018101228.xlsx', '2021-10-18 22:12:28', '0');
INSERT INTO `perusahaan_product` VALUES (918, 51, 'lampu', -3, '2021', 4, 50, 50, 50, 'Laporan_EBTKE20211018101228.xlsx', '2021-10-18 22:12:28', '0');
INSERT INTO `perusahaan_product` VALUES (919, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018101228.xlsx', '2021-10-18 22:12:28', '0');
INSERT INTO `perusahaan_product` VALUES (920, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018101228.xlsx', '2021-10-18 22:12:28', '0');
INSERT INTO `perusahaan_product` VALUES (921, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018101228.xlsx', '2021-10-18 22:12:28', '0');
INSERT INTO `perusahaan_product` VALUES (922, 51, 'lampu', 1, '2021', 4, 50, 50, 50, 'Laporan_EBTKE20211018101509.xlsx', '2021-10-18 22:15:10', '0');
INSERT INTO `perusahaan_product` VALUES (923, 51, 'lampu', 2, '2021', 4, 50, 50, 50, 'Laporan_EBTKE20211018101509.xlsx', '2021-10-18 22:15:10', '0');
INSERT INTO `perusahaan_product` VALUES (924, 51, 'lampu', 3, '2021', 4, 50, 50, 50, 'Laporan_EBTKE20211018101509.xlsx', '2021-10-18 22:15:10', '0');
INSERT INTO `perusahaan_product` VALUES (925, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018101509.xlsx', '2021-10-18 22:15:10', '0');
INSERT INTO `perusahaan_product` VALUES (926, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018101509.xlsx', '2021-10-18 22:15:10', '0');
INSERT INTO `perusahaan_product` VALUES (927, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018101509.xlsx', '2021-10-18 22:15:10', '0');
INSERT INTO `perusahaan_product` VALUES (928, 51, 'lampu', 1, '2021', 4, 50, 50, 50, 'Laporan_EBTKE20211018101547.xlsx', '2021-10-18 22:15:47', '0');
INSERT INTO `perusahaan_product` VALUES (929, 51, 'lampu', 2, '2021', 4, 50, 50, 50, 'Laporan_EBTKE20211018101547.xlsx', '2021-10-18 22:15:47', '0');
INSERT INTO `perusahaan_product` VALUES (930, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018101547.xlsx', '2021-10-18 22:15:47', '0');
INSERT INTO `perusahaan_product` VALUES (931, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018101547.xlsx', '2021-10-18 22:15:47', '0');
INSERT INTO `perusahaan_product` VALUES (932, 51, 'lampu', 0, '2021', 4, NULL, NULL, NULL, 'Laporan_EBTKE20211018101547.xlsx', '2021-10-18 22:15:47', '0');
INSERT INTO `perusahaan_product` VALUES (933, 51, 'lampu', 57, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018101829.xlsx', '2021-10-18 22:18:29', '1');
INSERT INTO `perusahaan_product` VALUES (934, 51, 'lampu', 58, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018101829.xlsx', '2021-10-18 22:18:29', '1');
INSERT INTO `perusahaan_product` VALUES (935, 51, 'lampu', 59, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211018101829.xlsx', '2021-10-18 22:18:29', '1');
INSERT INTO `perusahaan_product` VALUES (936, 51, 'lampu', 60, '2021', 4, 4, 4, 4, 'Laporan_EBTKE20211018101829.xlsx', '2021-10-18 22:18:29', '1');
INSERT INTO `perusahaan_product` VALUES (937, 51, 'lampu', 61, '2021', 4, 5, 5, 5, 'Laporan_EBTKE20211018101829.xlsx', '2021-10-18 22:18:29', '1');
INSERT INTO `perusahaan_product` VALUES (938, 51, 'penanak-nasi', 1, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211018101829.xlsx', '2021-10-18 22:18:29', '1');
INSERT INTO `perusahaan_product` VALUES (939, 51, 'penanak-nasi', 2, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211018101829.xlsx', '2021-10-18 22:18:29', '1');
INSERT INTO `perusahaan_product` VALUES (940, 51, 'lampu', 57, '2021', 3, 1, 1, 1, 'Laporan_EBTKE20211018101918.xlsx', '2021-10-18 22:19:18', '1');
INSERT INTO `perusahaan_product` VALUES (941, 51, 'lampu', 58, '2021', 3, 2, 2, 2, 'Laporan_EBTKE20211018101918.xlsx', '2021-10-18 22:19:18', '1');
INSERT INTO `perusahaan_product` VALUES (942, 51, 'lampu', 59, '2021', 3, 3, 3, 3, 'Laporan_EBTKE20211018101918.xlsx', '2021-10-18 22:19:18', '1');
INSERT INTO `perusahaan_product` VALUES (943, 51, 'lampu', 60, '2021', 3, 4, 4, 4, 'Laporan_EBTKE20211018101918.xlsx', '2021-10-18 22:19:18', '1');
INSERT INTO `perusahaan_product` VALUES (944, 51, 'lampu', 61, '2021', 3, 5, 5, 5, 'Laporan_EBTKE20211018101918.xlsx', '2021-10-18 22:19:18', '1');
INSERT INTO `perusahaan_product` VALUES (945, 51, 'penanak-nasi', 1, '2021', 3, 1, 1, 1, 'Laporan_EBTKE20211018101918.xlsx', '2021-10-18 22:19:18', '1');
INSERT INTO `perusahaan_product` VALUES (946, 51, 'penanak-nasi', 2, '2021', 3, 2, 2, 2, 'Laporan_EBTKE20211018101918.xlsx', '2021-10-18 22:19:18', '1');
INSERT INTO `perusahaan_product` VALUES (947, 51, 'lampu', 57, '2021', 2, 1, 1, 1, 'Laporan_EBTKE20211018102007.xlsx', '2021-10-18 22:20:07', '1');
INSERT INTO `perusahaan_product` VALUES (948, 51, 'lampu', 58, '2021', 2, 2, 2, 2, 'Laporan_EBTKE20211018102007.xlsx', '2021-10-18 22:20:07', '1');
INSERT INTO `perusahaan_product` VALUES (949, 51, 'lampu', 59, '2021', 2, 3, 3, 3, 'Laporan_EBTKE20211018102007.xlsx', '2021-10-18 22:20:07', '1');
INSERT INTO `perusahaan_product` VALUES (950, 51, 'lampu', 60, '2021', 2, 4, 4, 4, 'Laporan_EBTKE20211018102007.xlsx', '2021-10-18 22:20:07', '1');
INSERT INTO `perusahaan_product` VALUES (951, 51, 'lampu', 61, '2021', 2, 5, 5, 5, 'Laporan_EBTKE20211018102007.xlsx', '2021-10-18 22:20:07', '1');
INSERT INTO `perusahaan_product` VALUES (952, 6, 'pengondisi-udara-ac', 813, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (953, 6, 'pengondisi-udara-ac', 337, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (954, 6, 'pengondisi-udara-ac', 338, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (955, 6, 'pengondisi-udara-ac', 339, '2021', 4, 4, 4, 4, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (956, 6, 'pengondisi-udara-ac', 340, '2021', 4, 5, 5, 5, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (957, 6, 'pengondisi-udara-ac', 341, '2021', 4, 6, 6, 6, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (958, 6, 'pengondisi-udara-ac', 86, '2021', 4, 7, 7, 7, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (959, 6, 'pengondisi-udara-ac', 342, '2021', 4, 8, 8, 8, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (960, 6, 'pengondisi-udara-ac', 87, '2021', 4, 9, 9, 9, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (961, 6, 'pengondisi-udara-ac', 88, '2021', 4, 10, 10, 10, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (962, 6, 'pengondisi-udara-ac', 89, '2021', 4, 11, 11, 11, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (963, 6, 'pengondisi-udara-ac', 90, '2021', 4, 12, 12, 12, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (964, 6, 'pengondisi-udara-ac', 91, '2021', 4, 13, 13, 13, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (965, 6, 'pengondisi-udara-ac', 92, '2021', 4, 14, 14, 14, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (966, 6, 'pengondisi-udara-ac', 93, '2021', 4, 15, 15, 15, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (967, 6, 'pengondisi-udara-ac', 94, '2021', 4, 16, 16, 16, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (968, 6, 'pengondisi-udara-ac', 95, '2021', 4, 17, 17, 17, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (969, 6, 'pengondisi-udara-ac', 96, '2021', 4, 18, 18, 18, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (970, 6, 'pengondisi-udara-ac', 97, '2021', 4, 19, 19, 19, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (971, 6, 'pengondisi-udara-ac', 98, '2021', 4, 20, 20, 20, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (972, 6, 'pengondisi-udara-ac', 99, '2021', 4, 21, 21, 21, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (973, 6, 'pengondisi-udara-ac', 100, '2021', 4, 22, 22, 22, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (974, 6, 'pengondisi-udara-ac', 101, '2021', 4, 23, 23, 23, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (975, 6, 'pengondisi-udara-ac', 102, '2021', 4, 24, 24, 24, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (976, 6, 'pengondisi-udara-ac', 103, '2021', 4, 25, 25, 25, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (977, 6, 'pengondisi-udara-ac', 370, '2021', 4, 26, 26, 26, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (978, 6, 'pengondisi-udara-ac', 371, '2021', 4, 27, 27, 27, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (979, 6, 'pengondisi-udara-ac', 372, '2021', 4, 28, 28, 28, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (980, 6, 'pengondisi-udara-ac', 373, '2021', 4, 29, 29, 29, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (981, 6, 'pengondisi-udara-ac', 374, '2021', 4, 30, 30, 30, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (982, 6, 'pengondisi-udara-ac', 375, '2021', 4, 31, 31, 31, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (983, 6, 'pengondisi-udara-ac', 651, '2021', 4, 32, 32, 32, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (984, 6, 'pengondisi-udara-ac', 652, '2021', 4, 33, 33, 33, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (985, 6, 'pengondisi-udara-ac', 653, '2021', 4, 34, 34, 34, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (986, 6, 'pengondisi-udara-ac', 913, '2021', 4, 35, 35, 35, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (987, 6, 'pengondisi-udara-ac', 146, '2021', 4, 36, 36, 36, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (988, 6, 'pengondisi-udara-ac', 147, '2021', 4, 37, 37, 37, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (989, 6, 'pengondisi-udara-ac', 148, '2021', 4, 38, 38, 38, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (990, 6, 'pengondisi-udara-ac', 149, '2021', 4, 39, 39, 39, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (991, 6, 'pengondisi-udara-ac', 728, '2021', 4, 40, 40, 40, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (992, 6, 'pengondisi-udara-ac', 219, '2021', 4, 41, 41, 41, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (993, 6, 'pengondisi-udara-ac', 486, '2021', 4, 42, 42, 42, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (994, 6, 'pengondisi-udara-ac', 487, '2021', 4, 43, 43, 43, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (995, 6, 'pengondisi-udara-ac', 488, '2021', 4, 44, 44, 44, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (996, 6, 'pengondisi-udara-ac', 489, '2021', 4, 45, 45, 45, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (997, 6, 'pengondisi-udara-ac', 490, '2021', 4, 46, 46, 46, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (998, 6, 'pengondisi-udara-ac', 491, '2021', 4, 47, 47, 47, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (999, 6, 'lemari-pendingin-kulkas', 5, '2021', 4, 1, 1, 1, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (1000, 6, 'lemari-pendingin-kulkas', 1, '2021', 4, 2, 2, 2, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (1001, 6, 'lemari-pendingin-kulkas', 2, '2021', 4, 3, 3, 3, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (1002, 6, 'lemari-pendingin-kulkas', 3, '2021', 4, 4, 4, 4, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');
INSERT INTO `perusahaan_product` VALUES (1003, 6, 'lemari-pendingin-kulkas', 4, '2021', 4, 5, 5, 5, 'Laporan_EBTKE20211025083026.xls', '2021-10-25 20:30:27', '1');

-- ----------------------------
-- Table structure for product_master_column
-- ----------------------------
DROP TABLE IF EXISTS `product_master_column`;
CREATE TABLE `product_master_column`  (
  `pmc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `category_slug` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `column_name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `column_label` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT 'label shown in table',
  `column_type` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `default_value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT 'array serialize php format',
  `default_filter` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `column_is_active` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '1',
  `column_is_show` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '1',
  `column_is_show_excel` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`pmc_id`) USING BTREE,
  INDEX `FK_product_master_column_product_category`(`category_id`) USING BTREE,
  CONSTRAINT `FK_product_master_column_product_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id_category`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 190 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_master_column
-- ----------------------------
INSERT INTO `product_master_column` VALUES (19, 1, 'lampu', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (20, 1, 'lampu', 'field-1', 'Jenis', 'DROPDOWN', 'CFL,LED', 'CFL', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (21, 1, 'lampu', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (31, 1, 'lampu', 'field-3', 'Tipe', 'DROPDOWN', 'CFL(LHE):2U;3U;Spiral,LED:Bulb;T;U;Ufo;Filament;Candle;2U;3U;Spiral;LAINNYA', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (32, 1, 'lampu', 'field-4', 'Daya (watt)', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (33, 1, 'lampu', 'field-5', 'Efikasi (Lumen/watt)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (34, 1, 'lampu', 'field-6', 'Warna Cahaya', 'DROPDOWN', 'Warm White,Daylight,Cool Daylight,Multiple', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (35, 1, 'lampu', 'field-7', 'Rating Bintang (1-5)', 'RATING', '1,2,3,4,5', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (36, 1, 'lampu', 'field-8', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (37, 1, 'lampu', 'field-9', 'Biaya Listrik <br>Tahunan (Rp)', 'AUTO-FILL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (38, 1, 'lampu', 'field-10', 'Nomor SHE', 'TEXT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (39, 2, 'pengondisi-udara-ac', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (40, 2, 'pengondisi-udara-ac', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (41, 2, 'pengondisi-udara-ac', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (42, 2, 'pengondisi-udara-ac', 'field-3', 'Tipe', 'DROPDOWN', 'Inverter,Non-Inverter', 'Inverter', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (43, 2, 'pengondisi-udara-ac', 'field-4', 'Daya (watt)', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (44, 2, 'pengondisi-udara-ac', 'field-5', 'Kapasitas Pendinginan (BTU/h)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (45, 2, 'pengondisi-udara-ac', 'field-6', 'Nilai Efisiensi (EER/CSPF)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (46, 2, 'pengondisi-udara-ac', 'field-7', 'Rating Bintang (1-5)', 'RATING', '1,2,3,4,5', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (47, 2, 'pengondisi-udara-ac', 'field-8', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (48, 2, 'pengondisi-udara-ac', 'field-9', 'Biaya Listrik Tahunan (Rp)', 'AUTO-FILL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (54, 3, 'lemari-pendingin-kulkas', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (55, 3, 'lemari-pendingin-kulkas', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (56, 3, 'lemari-pendingin-kulkas', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (57, 3, 'lemari-pendingin-kulkas', 'field-3', 'Tipe', 'DROPDOWN', 'Satu Pintu,Dua Pintu,LAINNYA', 'Satu Pintu', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (58, 3, 'lemari-pendingin-kulkas', 'field-4', 'Kapasitas (Liter)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (59, 3, 'lemari-pendingin-kulkas', 'field-5', 'Daya (watt)', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (60, 3, 'lemari-pendingin-kulkas', 'field-6', 'Rating Bintang (1-5)', 'RATING', '1,2,3,4,5', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (61, 3, 'lemari-pendingin-kulkas', 'field-7', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (62, 3, 'lemari-pendingin-kulkas', 'field-8', 'Biaya Listrik Tahunan (Rp)', 'AUTO-FILL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (63, 3, 'lemari-pendingin-kulkas', 'field-9', 'Nomor SHE', 'TEXT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (64, 4, 'penanak-nasi', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (65, 4, 'penanak-nasi', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (66, 4, 'penanak-nasi', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (67, 4, 'penanak-nasi', 'field-3', 'Kapasitas (Liter)', 'INT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (68, 4, 'penanak-nasi', 'field-4', 'Daya Memasak (watt)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (69, 4, 'penanak-nasi', 'field-5', 'Daya Memanaskan (watt)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (70, 4, 'penanak-nasi', 'field-6', 'Energi untuk Memasak dan Memanaskan (Wh)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (71, 4, 'penanak-nasi', 'field-7', 'Rating Bintang (1-5)', 'RATING', '1,2,3,4,5', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (72, 4, 'penanak-nasi', 'field-8', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (73, 4, 'penanak-nasi', 'field-9', 'Biaya Listrik Tahunan (Rp)', 'AUTO-FILL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (74, 4, 'penanak-nasi', 'field-10', 'Nomor SHE', 'TEXT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (75, 5, 'kipas-angin', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (76, 5, 'kipas-angin', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (77, 5, 'kipas-angin', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (78, 5, 'kipas-angin', 'field-3', 'Diameter (inci)', 'INT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (79, 5, 'kipas-angin', 'field-4', 'Daya (watt)', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (80, 5, 'kipas-angin', 'field-5', 'Nilai Servis', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (81, 5, 'kipas-angin', 'field-6', 'Rating Bintang (1-5)', 'RATING', '1,2,3,4,5', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (82, 5, 'kipas-angin', 'field-7', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (83, 5, 'kipas-angin', 'field-8', 'Biaya Listrik Tahunan (Rp)', 'AUTO-FILL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (84, 5, 'kipas-angin', 'field-9', 'Nomor SHE', 'TEXT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (85, 2, 'pengondisi-udara-ac', 'field-10', 'No. Registrasi/No. SHE', 'TEXT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (86, 6, 'mesin-cuci', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (87, 6, 'mesin-cuci', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (88, 6, 'mesin-cuci', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (89, 6, 'mesin-cuci', 'field-3', 'Tipe', 'DROPDOWN', 'Twin Tub,Top Loading,Front Loading', 'Twin Tub', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (90, 6, 'mesin-cuci', 'field-4', 'Kapasitas (kg)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (91, 6, 'mesin-cuci', 'field-5', 'Daya (watt)', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (92, 6, 'mesin-cuci', 'field-6', 'Konsumsi Energi (kWh/kg)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (93, 6, 'mesin-cuci', 'field-7', 'Rating Bintang (1-5)', 'RATING', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (94, 6, 'mesin-cuci', 'field-8', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (95, 6, 'mesin-cuci', 'field-9', 'Biaya Listrik Tahunan (Rp)', 'AUTO-FILL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (96, 6, 'mesin-cuci', 'field-10', 'Nomor SHE', 'TEXT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (97, 7, 'pompa-air', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (98, 7, 'pompa-air', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (99, 7, 'pompa-air', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (100, 7, 'pompa-air', 'field-3', 'Tipe', 'DROPDOWN', 'Sentrifugal,Semi-jet', 'Sentrifugal', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (101, 7, 'pompa-air', 'field-4', 'Daya (watt)', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (102, 7, 'pompa-air', 'field-5', 'Debit pada Efisiensi Maksimum (liter/menit)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (103, 7, 'pompa-air', 'field-6', 'Head pada Efisiensi Maksimum (m)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (104, 7, 'pompa-air', 'field-7', 'Head Maksimum (m)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (105, 7, 'pompa-air', 'field-8', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (106, 7, 'pompa-air', 'field-9', 'Biaya Listrik Tahunan (Rp)', 'AUTO-FILL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (107, 7, 'pompa-air', 'field-10', 'Nomor SHE', 'TEXT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (108, 8, 'televisi', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (109, 8, 'televisi', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (110, 8, 'televisi', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (111, 8, 'televisi', 'field-3', 'Tipe', 'DROPDOWN', 'LCD, LED,OLED,LAINNYA', 'LCD', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (112, 8, 'televisi', 'field-4', 'Ukuran (inci)', 'INT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (113, 8, 'televisi', 'field-5', 'Daya (watt)', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (114, 8, 'televisi', 'field-6', 'Daya Siaga (watt)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (115, 8, 'televisi', 'field-7', 'Konsumsi Energi (wattjam/cm^2)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (116, 8, 'televisi', 'field-8', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (117, 8, 'televisi', 'field-9', 'Biaya Listrik Tahunan (Rp)', 'AUTO-FILL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (118, 8, 'televisi', 'field-10', 'Nomor SHE', 'TEXT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (119, 9, 'setrika', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (120, 9, 'setrika', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (121, 9, 'setrika', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (122, 9, 'setrika', 'field-3', 'Tipe', 'DROPDOWN', 'Listrik,Steam', 'Listrik', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (123, 9, 'setrika', 'field-4', 'Daya (watt)', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (124, 9, 'setrika', 'field-5', 'Konsumsi Energi (Wh/\'C)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (125, 9, 'setrika', 'field-6', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (126, 9, 'setrika', 'field-7', 'Biaya Listrik Tahunan (Rp)', 'AUTO-FILL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (127, 9, 'setrika', 'field-8', 'Nomor SHE', 'TEXT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (128, 10, 'blender', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (129, 10, 'blender', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (130, 10, 'blender', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (131, 10, 'blender', 'field-3', 'Daya (watt)', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (132, 10, 'blender', 'field-4', 'Kapasitas Maksimum (liter)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (133, 10, 'blender', 'field-5', 'Kapasitas Efektif (liter)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (134, 10, 'blender', 'field-6', 'Konsumsi Energi Per Siklus (Watt/Jam)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (135, 10, 'blender', 'field-7', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (136, 10, 'blender', 'field-8', 'Biaya Listrik Tahunan (Rp)', 'AUTO-FILL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (137, 10, 'blender', 'field-9', 'Nomor SHE', 'TEXT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (138, 11, 'dispenser-air', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (139, 11, 'dispenser-air', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (140, 11, 'dispenser-air', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (141, 11, 'dispenser-air', 'field-3', 'Jenis', 'DROPDOWN', 'Panas,Dingin,Panas dan Dingin', 'Panas', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (142, 11, 'dispenser-air', 'field-4', 'Daya (watt)', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (143, 11, 'dispenser-air', 'field-5', 'Konsumsi Energi (kWh/hari)', 'DECIMAL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (144, 11, 'dispenser-air', 'field-6', 'Rating Bintang (1-5)', 'RATING', '1,2,3,4,5', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (145, 11, 'dispenser-air', 'field-7', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (146, 11, 'dispenser-air', 'field-8', 'Biaya Listrik Tahunan (Rp)', 'AUTO-FILL', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (147, 11, 'dispenser-air', 'field-9', 'Nomor SHE', 'TEXT', '', '', '1', '1', '0');
INSERT INTO `product_master_column` VALUES (148, 4, 'penanak-nasi', 'field-11', 'Tipe', 'DROPDOWN', 'Listrik', 'Listrik', '1', '0', '1');
INSERT INTO `product_master_column` VALUES (149, 13, 'pengering-rambut', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (150, 13, 'pengering-rambut', 'field-1', 'Jenis', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (151, 13, 'pengering-rambut', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (152, 13, 'pengering-rambut', 'field-3', 'Tipe', 'DROPDOWN', 'Listrik', 'Listrik', '1', '0', '1');
INSERT INTO `product_master_column` VALUES (153, 13, 'pengering-rambut', 'field-4', 'Daya (Watt)', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (154, 13, 'pengering-rambut', 'field-5', 'Rating Bintang (1-5)', 'RATING', '1,2,3,4,5', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (155, 13, 'pengering-rambut', 'field-6', 'Konsumsi Energi Tahunan <br/>(kWh)*', 'KET', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (156, 13, 'pengering-rambut', 'field-7', 'Biaya Listrik Tahunan', 'AUTO-FILL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (157, 13, 'pengering-rambut', 'field-8', 'Nomor SHE', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (158, 14, 'penghisap-debu-vaccum-cleaner', 'field-0', 'Merk', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (159, 14, 'penghisap-debu-vaccum-cleaner', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (160, 14, 'penghisap-debu-vaccum-cleaner', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (161, 14, 'penghisap-debu-vaccum-cleaner', 'field-3', 'Tipe', 'DROPDOWN', 'Listrik', 'Listrik', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (162, 16, 'tiramisu', 'field-0', 'Region', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (163, 16, 'tiramisu', 'field-1', 'Jumlah Gula', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (164, 16, 'tiramisu', 'field-2', 'Aroma', 'RATING', '1,2,3,4,5', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (165, 16, 'tiramisu', 'field-3', 'Harga', 'MONEY', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (166, 1, 'lampu', 'field-11', '', 'INT', '', '', '0', '1', '0');
INSERT INTO `product_master_column` VALUES (167, 1, 'lampu', 'field-12', '', 'INT', '', '', '0', '1', '0');
INSERT INTO `product_master_column` VALUES (168, 17, 'monitor', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (169, 17, 'monitor', 'field-1', 'Ukuran', 'DECIMAL', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (170, 17, 'monitor', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (171, 17, 'monitor', 'field-3', 'Nomor SHE', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (172, 17, 'monitor', 'field-4', 'Rating Bintang', 'RATING', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (173, 19, 'donut', 'field-0', 'Pemanis', 'INT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (174, 19, 'donut', 'field-1', 'Tepung', 'INT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (175, 20, 'produk-tes', 'field-0', 'Merek', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (176, 20, 'produk-tes', 'field-1', 'Famili', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (177, 20, 'produk-tes', 'field-2', 'Model', 'TEXT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (178, 20, 'produk-tes', 'field-3', 'Tipe', 'DROPDOWN', 'Listrik', 'Listrik', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (179, 21, 'kategori-tes', 'field-0', 'Tes', 'INT', '1000', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (180, 21, 'kategori-tes', 'field-1', '', 'INT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (183, 2, 'pengondisi-udara-ac', 'field-11', 'Baseline', 'DROPDOWN', 'EER,CSPF', 'EER', '1', '0', '0');
INSERT INTO `product_master_column` VALUES (184, 2, 'pengondisi-udara-ac', 'field-12', 'Jenis Refrijeran ', 'TEXT', '', '', '1', '0', '0');
INSERT INTO `product_master_column` VALUES (185, 4, 'penanak-nasi', 'field-12', 'Waktu Memasak (hari)', 'INT', '', '', '1', '0', '0');
INSERT INTO `product_master_column` VALUES (186, 4, 'penanak-nasi', 'field-13', 'Waktu Memanaskan (hari)', 'INT', '', '', '1', '0', '0');
INSERT INTO `product_master_column` VALUES (187, 4, 'penanak-nasi', 'field-14', 'Volume 80% (liter)', 'INT', '', '', '1', '0', '0');
INSERT INTO `product_master_column` VALUES (188, 22, 'dfdfd', 'field-0', 'sd', 'INT', '', '', '1', '1', '1');
INSERT INTO `product_master_column` VALUES (189, 3, 'lemari-pendingin-kulkas', 'field-10', 'Adjusted Volume (liter)', 'DECIMAL', '', '', '1', '0', '0');

SET FOREIGN_KEY_CHECKS = 1;
