/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : cmp_tools

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 23/03/2022 09:43:25
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of data_produk_cmp
-- ----------------------------
INSERT INTO `data_produk_cmp` VALUES (1, NULL, NULL, NULL, NULL);

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
INSERT INTO `data_produk_inpeksi` VALUES (67, 1646594469412, '1', '-6.2485762,106.9378654', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (68, 1646594469412, '2', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (69, 1646594469412, '3', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (70, 1646594469412, '4', 'null', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (71, 1646594469412, '5', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (72, 1646594469412, '6', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (73, 1646594469412, '7', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (74, 1646594469412, '8', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (75, 1646594469412, '9', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (76, 1646594469412, '10', '001/LSP/QI/06.1-I/2022', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (77, 1646594469412, '11', 'Samsung', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (78, 1646594469412, '12', 'AR13KVFSDX', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (79, 1646594469412, '13', 'AR13KVFSDX', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (80, 1646594469412, '14', '1120.00', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (81, 1646594469412, '15', '12000.00', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (82, 1646594469412, '16', '11.70', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (83, 1646594469412, '17', '4', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (84, 1646594469412, '18', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (85, 1646594469412, '19', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (86, 1646594469412, '20', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (87, 1646594469412, '21', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (88, 1646594469412, '22', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (89, 1646594469412, '23', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (90, 1646594469412, '24', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (91, 1646594469412, '25', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (92, 1646594469412, '26', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (93, 1646594469412, '27', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (94, 1646594469412, '28', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (95, 1646594469412, '29', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (96, 1646594469412, '30', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (97, 1646594469412, '31', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (100, 1646594469412, '1', '-6.2485762,106.9378654', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (101, 1646594469412, '2', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (102, 1646594469412, '3', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (103, 1646594469412, '4', 'null', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (104, 1646594469412, '5', '', NULL, NULL, NULL, 4);
INSERT INTO `data_produk_inpeksi` VALUES (105, 1646594469412, '6', '', NULL, NULL, NULL, 4);

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
  `id_form_inpeksi` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_form_role` bigint(11) NULL DEFAULT NULL,
  `data_point` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data_entry_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mandatory_optional` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Notes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_form` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_form_inpeksi`) USING BTREE,
  INDEX `inspeksi_role`(`id_form_role`) USING BTREE,
  CONSTRAINT `inspeksi_role` FOREIGN KEY (`id_form_role`) REFERENCES `fom_inpeksi_role` (`id_form_role`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of form_inpeksi
-- ----------------------------
INSERT INTO `form_inpeksi` VALUES (1, 1, 'Tanggal & waktu', 'Auto-populated', 'Mandatory', 'Saat mulai mengisi, atau saat formulir dikirimkan', NULL);
INSERT INTO `form_inpeksi` VALUES (2, 1, 'Nama Inspektur', 'Auto-populated', 'Mandatory', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (3, 1, 'ID Inspektur', 'Auto-populated', 'Mandatory', 'Dapat diberikan account ID spesifik, atau dari ID unik yang disediakan KESDM (apabila ada)', NULL);
INSERT INTO `form_inpeksi` VALUES (4, 2, 'Nama Ritel', 'Manual entry', 'Mandatory', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (5, 2, 'Alamat Ritel', 'Manual entry', 'Mandatory', 'Integrasi lokasi Google Maps', NULL);
INSERT INTO `form_inpeksi` VALUES (6, 2, 'Nama Tenaga Penjual', 'Manual entry', 'Optional', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (7, 2, 'Wilayah Ritel', 'Drop down menu or auto-populated (?) based on location', 'Mandatory', '\"Jabodetabek\nJawa Tengah\nJawa Timur\nDI Yogyakarta\nKalimantan\nKepulauan Maluku\nBali & Nusa Tenggara\nPapua\nSulawesi\nSumatera\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (8, 2, 'Tipe Ritel', 'Drop down menu', 'Mandatory', '\"Warung\nPasar tradisional\nToko\nDealer/Distributor\nChain\nDepartment store\nHypermarket\nGeneral store\nSupermarket\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (9, 2, 'Lampirkan foto tampak depan Ritel\r\nLampirkan foto tampak depan Ritel\r\n', 'Photo', 'Mandatory', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (10, 2, 'Jumlah produk yang ingin diinspeksi pada kunjungan ini', 'Manual entry', 'Optional', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (11, 3, 'Apakah tenaga penjual familiar dengan LTHE?', 'Drop down menu', 'Mandatory', 'Ya \r\nSedikit\r\n Tidak', NULL);
INSERT INTO `form_inpeksi` VALUES (12, 3, 'Seberapa seringkah tenaga penjual menemukan produk tanpa LTHE?', 'Drop down menu', 'Optional', 'Tidak pernah\r\nJarang\r\nSering\r\nSangat sering', NULL);
INSERT INTO `form_inpeksi` VALUES (13, 3, 'Apakah yang dilakukan oleh pihak ritel saat produk tanpa LTHE ditemukan?', 'Drop down menu', 'Mandatory', 'Mengembalikan produk pada pemasok untuk mencantumkan label', NULL);
INSERT INTO `form_inpeksi` VALUES (14, 3, 'Apakah konsumen menanyakan tentang LTHE?', 'Drop down menu', 'Mandatory', 'Ya\r\nSering\r\nKadang-kadang\r\nTidak pernah', NULL);
INSERT INTO `form_inpeksi` VALUES (15, 3, 'Apakah pramuniaga ritel dapat menjelaskan arti LTHE dengan benar?', 'Drop down menu', 'Mandatory', 'Ya\r\nSebagian \r\nTidak', NULL);
INSERT INTO `form_inpeksi` VALUES (16, 4, 'Nomor SHE', 'Manual entry, then \"easy fill\"', 'Mandatory', 'Fitur lookup sudah diaktifkan disini, kalau tidak ditemukan, buka pilihan \"tidak ditemukan\"', NULL);
INSERT INTO `form_inpeksi` VALUES (17, 4, 'Merek', 'Pre-populated from registry', 'Mandatory', 'Or allow for manual entry if no registration', NULL);
INSERT INTO `form_inpeksi` VALUES (18, 4, 'Metrik 1: Kapasitas', 'Drop down', 'Mandatory', '1/2 PK\r\n3/4 PK\r\n1 PK\r\n1.5 PK\r\n2 PK\r\n2.5 PK\r\n3 PK', NULL);
INSERT INTO `form_inpeksi` VALUES (19, 4, 'Metrik 2: Teknologi', 'Drop down', 'Mandatory', 'Standard, fixed speed\r\nInverter', NULL);
INSERT INTO `form_inpeksi` VALUES (20, 4, 'Metrik 3: ', 'Drop down', 'Mandatory', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (21, 4, 'Manufaktur / importir', 'Pre-populated from registry', 'Mandatory', 'Or allow for manual entry if no registration', NULL);
INSERT INTO `form_inpeksi` VALUES (22, 4, 'Kode atau Tanggal Produksi', 'Manual entry', 'Mandatory', 'Can this be obtained? Is it necessary?', NULL);
INSERT INTO `form_inpeksi` VALUES (23, 4, 'Negara Asal', 'Manual entry', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (24, 4, 'Harga', 'Manual entry', 'Mandatory', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (25, 5, 'Lampirkan foto LTHE\r\n', 'Photo', 'Mandatory', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (26, 5, 'Metrik 0: Jumlah Bintang', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', NULL);
INSERT INTO `form_inpeksi` VALUES (27, 5, 'Metrik 1: Daya', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', NULL);
INSERT INTO `form_inpeksi` VALUES (28, 5, 'Metrik 2: Nilai Efisiensi Energi', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', NULL);
INSERT INTO `form_inpeksi` VALUES (29, 5, 'Metrik 3: Kapasitas Pendinginan (AC)', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', NULL);
INSERT INTO `form_inpeksi` VALUES (30, 5, 'Metrik 4: Model Unit Dalam (AC)', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', NULL);
INSERT INTO `form_inpeksi` VALUES (31, 5, 'Metrik 5: Model Unit Luar (AC)', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', NULL);
INSERT INTO `form_inpeksi` VALUES (32, 6, 'LTHE tercantum pada produk', 'Drop down menu', 'Mandatory', 'Yes\r\nNo', NULL);
INSERT INTO `form_inpeksi` VALUES (33, 6, 'LTHE tercantum pada kotak kemasan', 'Drop down menu', 'Mandatory', 'Yes\r\nNo', NULL);
INSERT INTO `form_inpeksi` VALUES (34, 6, 'Visibilitas LTHE', 'Drop down menu', 'Mandatory\r\n', '\"Label jelas dan mudah terlihat\nLabel kabur atau rusak karena tindakan produsen atau importir\nLabel kabur atau rusak karena tindakan pengecer\nLabel sebagian atau seluruhnya ditutupi oleh label lain atau informasi pemasaran\nTidak berlaku - label tidak dibu', NULL);
INSERT INTO `form_inpeksi` VALUES (35, 6, 'Kesesuaian visual LTHE', 'Drop down menu', 'Mandatory\r\n', '\"Label terlihat benar dan sesuai dengan persyaratan\nDesain label salah (warna, ukuran, dll)\nLabel tampaknya palsu\nLabel tidak sesuai dengan model fisik produk\nTidak berlaku - label tidak dibubuhkan\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (36, 6, 'Ketidaksesuaian LTHE, dijelaskan', 'Manual entry', 'Optional', 'Jelaskan secara manual, ketidaksesuaian yang ditemukan\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (37, 6, 'Label SNI tercantum dan dapat terbaca jelas', 'Drop down menu', 'Mandatory', '\"Ya\nTidak yakin\nTidak\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (38, 6, 'Ekolabel tercantum dan dapat terbaca jelas', 'Drop down menu', 'Mandatory', '\"Ya\nTidak yakin\nTidak\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (39, 6, 'Kartu garansi tercantum dan dapat terbaca jelas', 'Drop down menu', 'Mandatory', '\"Ya\nTidak yakin\nTidak\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (40, 6, 'Label produk dalam Bahasa Indonesia', 'Drop down menu', 'Mandatory', '\"Ya\nTidak yakin\nTidak\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (41, 6, 'Tinjauan inspeksi LTHE', 'Drop down menu', 'Mandatory', '\"Label dan produk tampak sesuai\nLabel atau produk tampak mencurigakan dan memerlukan penyelidikan lebih lanjut\nLabel atau produk tampak mencurigakan dan direkomendasikan untuk pengujian verifikasi\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (42, 6, 'Tuliskan penjelasan apabila label atau produk mencurigakan', 'Manual entry', 'Optional', 'Aktif untuk isian Tinjauan inspeksi selain \"Label dan produk tampak sesuai\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (43, 7, 'Apakah ada produk dari kunjungan ritel yang dipilih untuk uji petik?\r\nApakah ada produk dari kunjungan ritel yang dipilih untuk uji petik?\r\n', 'Drop down menu\r\n', 'Mandatory\r\n', '\"Ya\nTidak\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (44, 7, '(Apabila Ya) Pilih dari Entri Data yang Direkam\r\n', 'Single or multiple', 'Mandatory', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (45, 7, '(Aktifkan Entri Tambahan untuk Entri Data yg dipilih) Lab Uji Tujuan', 'Drop down menu\r\n', 'Optional\r\n', '\"Qualis\nTUV Rheinland\nB2TKE-BRIN\nB4T-Kemenperin\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (46, 7, '(Aktifkan Entri Tambahan untuk Entri Data yg dipilih) Cara Pengiriman', 'Drop down menu\r\n', 'Mandatory\r\n', '\"Diantar langsung\nPengiriman jarak dekat\nPengiriman jarak jauh\"\r\n', NULL);
INSERT INTO `form_inpeksi` VALUES (47, 7, 'Lampirkan foto Formulir Transmisi\r\n', 'Photo', 'Optional\r\n', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (48, 7, 'Lampirkan foto Bukti Pembayaran', 'Photo', 'Optional\r\n', NULL, NULL);
INSERT INTO `form_inpeksi` VALUES (49, 7, 'Lampirkan foto Kemasan Tersegel', 'Photo', 'Optional\r\n', NULL, NULL);

-- ----------------------------
-- Table structure for form_lab
-- ----------------------------
DROP TABLE IF EXISTS `form_lab`;
CREATE TABLE `form_lab`  (
  `id_form_lab` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_form_lab_role` bigint(11) NULL DEFAULT NULL,
  `datapoint` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Data entry type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Mandatory/Optional` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Notes` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_form` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_form_lab`) USING BTREE,
  INDEX `lab_role`(`id_form_lab_role`) USING BTREE,
  CONSTRAINT `lab_role` FOREIGN KEY (`id_form_lab_role`) REFERENCES `form_lab_role` (`id_form_lab_role`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of form_lab
-- ----------------------------
INSERT INTO `form_lab` VALUES (1, 1, 'Record ID\r\n', 'Auto-populated (?)\r\n', 'Mandatory\r\n', 'Hanya aktif dari sampel uji yang diunggah dan dipilih untuk uji petik pada Formulir 1, atau aktivasi khusus dari Tim Pengawasan DJEBTKE\r\n', NULL);
INSERT INTO `form_lab` VALUES (2, 1, 'Laboratorium Pengujian', 'Auto-populated', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (3, 1, 'Tanggal & Waktu Inspeksi Sampel\r\n', 'Auto-populated\r\n', 'Mandatory', 'Saat mulai mengisi, atau saat formulir dikirimkan\r\n', NULL);
INSERT INTO `form_lab` VALUES (4, 1, 'Nama Petugas Pemeriksa\r\n', 'Auto-populated (?)', 'Mandatory', NULL, NULL);
INSERT INTO `form_lab` VALUES (5, 1, 'Nama Petugas Persetujuan', 'Auto-populated (?)', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (6, 2, 'Nomor SHE\r\n', 'Auto-populated\r\n', 'Display only\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (7, 2, 'Merek', 'Auto-populated', 'Display only', NULL, NULL);
INSERT INTO `form_lab` VALUES (8, 2, 'Metrik 1: Kapasitas\r\n', 'Auto-populated\r\n', 'Display only\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (9, 2, 'Metrik 2: Teknologi', 'Auto-populated\r\n', 'Display only\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (10, 2, 'Manufaktur / importir', 'Auto-populated\r\n', 'Display only\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (11, 2, 'Kode atau Tanggal Produksi\r\n', 'Auto-populated\r\n', 'Display only\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (12, 2, 'Negara Asal\r\n', 'Auto-populated\r\n', 'Display only\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (13, 3, 'Kondisi kemasan produk AC tidak rusak\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (14, 3, 'Periksa kondisi fisik produk AC secara visual seperti bodi unit indoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (15, 3, 'Kondisi fin atau sirip alat penukar kalor tidak rusak, deformasi, berubah warna pada unit indoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (16, 3, 'Kondisi kipas pada unit indoor tidak retak, rusak atau menyentuh bagian lainnya\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (17, 3, 'Tidak ada komponen aksesoris yang hilang atau tidak lengkap seperti yang dijelaskan di dalam buku petunjuk pengoperasian. Seperti installing holder, screw, remote control dan lain-lain\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (18, 3, 'Pastikan terdapat penutup katub atau tidak ada kerusakan pada ulir sambungan pipa antara unit indoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (19, 3, 'Pipa penghubung tube refrigerant antara unit indoor dan outdoor tidak penyok\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (20, 4, 'Kondisi kemasan produk AC tidak rusak\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (21, 4, 'Periksa kondisi fisik produk AC secara visual seperti bodi unit outdoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (22, 4, 'Kondisi fin atau sirip alat penukar kalor tidak rusak, deformasi, berubah warna pada unit outdoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (23, 4, 'Kondisi kipas pada unit outdoor tidak retak, rusak atau menyentuh bagian lainnya\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (24, 4, 'Pastikan terdapat penutup katub atau tidak ada kerusakan pada ulir sambungan pipa antara unit outdoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (25, 4, 'Pipa 2 way dan 3 way valve dalam keadaan tertutup (Tidak ada kebocoran gas)\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (26, 5, 'Hasil penilaian\r\n', 'Drop down menu\r\n', 'Mandatory\r\n', '\"Baik, dapat dilanjutkan ke pengecekan kondisi pengujian\nTidak diterima, unit dikemas kembali untuk dikembalikan\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (27, 5, 'Keterangan tambahan\r\n', 'Manual entry\r\nManual entry & drop down menu\r\n', 'Optional\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (28, 6, 'Berat unit indoor, sebelum\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (29, 6, 'Berat unit indoor, sesudah\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (30, 6, 'Berat unit outdoor, sebelum\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (31, 6, 'Berat unit outdoor, sesudah\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (32, 6, 'Pipa tembaga sepanjang 7,5 m ± 10 cm\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (33, 6, 'Pasang Thermokopel pada unit Indoor dan Outdoor\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (34, 6, 'Instalasi unit (jarak unit indoor ke dinding 300 - 400 mm)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (35, 6, 'Instalasi unit (jarak unit indoor ke lantai 1400 - 1500 mm)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (36, 6, 'Instalasi unit (jarak unit outdoor ke dinding 500 mm)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (37, 6, 'Instalasi unit (jarak unit outdoor ke lantai 750 - 1000 mm)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (38, 6, 'Instalasi pemasangan air sampler unit Indoor (Metode Air Enthalpy)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (39, 6, 'Proses pemvakuman\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (40, 6, 'Test kebocoran pipa\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (41, 6, 'Kondisi Temperatur Pengujian\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (42, 6, 'Indoor Chamber: TDB (27?), TWB (19?) Outdoor Chamber: TDB (35?), TWB (24?)\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (43, 6, '\"Atur AC pada posisi:\n? Mode : Cool\n? Kecepatan fan : Maksimum\n? Posisi pengarah hembusan udara : Maksimum\n? Temperatur Remote Control : Suhu terendah/minimum\"\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (44, 6, 'Jaga perbedaan tekanan air discharge AC yang diuji di dalam receiving chamber dan ruang chamber sebesar 0 Pa\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (45, 6, 'Kecepatan aliran udara (air velocity) antara 15m/dt - 35m/dt dengan mengatur nozzle pada receiving chamber\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (46, 7, 'Hasil penilaian\r\n', 'Drop down menu\r\n', 'Mandatory\r\n', '\"Baik, pengujian dapat dimulai\nTidak diterima, unit dikemas kembali untuk dikembalikan\"\r\n', NULL);
INSERT INTO `form_lab` VALUES (47, 7, 'Keterangan tambahan\r\n', 'Manual entry\r\n', 'Optional\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (48, 8, 'Nomor seri unit indoor\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (49, 8, 'Nomor seri unit outdoor\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (50, 8, 'Kapasitas normal (Btu/h)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (51, 8, 'Daya normal (W)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (52, 8, 'Kapasitas maksimum (Btu/h)\r\nDaya maksimum (W)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (53, 8, 'Tegangan (V)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (54, 8, 'Fase\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (56, 8, 'Hz\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (57, 8, 'Current (A)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (58, 8, 'Berat unit indoor (kg)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (59, 8, 'Berat unit outdoor (kg)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (60, 8, 'Dimensi unit indoor (mm, W*H*D)\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (61, 8, 'Dimensi unit outdoor (mm, W*H*D)\r\nTipe refrigeran\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (62, 8, 'Muatan refrigeran\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);
INSERT INTO `form_lab` VALUES (63, 8, 'Tipe refrigeran\r\n', 'Manual entry\r\n', 'Mandatory\r\n', NULL, NULL);

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
-- Table structure for produk_lab
-- ----------------------------
DROP TABLE IF EXISTS `produk_lab`;
CREATE TABLE `produk_lab`  (
  `id_data_produk` bigint(11) NULL DEFAULT NULL,
  `id_data_produk_lab` bigint(11) NULL DEFAULT NULL,
  INDEX `lab_inspeksi`(`id_data_produk`) USING BTREE,
  INDEX `inspeksi_lab`(`id_data_produk_lab`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ritel_inspeksi
-- ----------------------------
DROP TABLE IF EXISTS `ritel_inspeksi`;
CREATE TABLE `ritel_inspeksi`  (
  `id_data_ritel` bigint(255) NULL DEFAULT NULL,
  `id_data_produk` bigint(255) NULL DEFAULT NULL,
  INDEX `ritel_produk`(`id_data_produk`) USING BTREE,
  INDEX `produk_ritel`(`id_data_ritel`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` bigint(255) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user_role` bigint(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE,
  INDEX `user_role`(`id_user_role`) USING BTREE,
  CONSTRAINT `user_role` FOREIGN KEY (`id_user_role`) REFERENCES `user_role` (`id_user_role`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id_user_role` bigint(255) NOT NULL AUTO_INCREMENT,
  `category_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_user_role`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
