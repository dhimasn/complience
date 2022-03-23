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

 Date: 23/03/2022 09:24:24
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
  `timestamp` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
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

-- ----------------------------
-- Table structure for product_pengondisi-udara-ac
-- ----------------------------
DROP TABLE IF EXISTS `product_pengondisi-udara-ac`;
CREATE TABLE `product_pengondisi-udara-ac`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_perusahaan` bigint(20) NULL DEFAULT 0,
  `id_user` int(11) NULL DEFAULT 0,
  `id_lspro` int(11) NULL DEFAULT 0,
  `file1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `file2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `file3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `file4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `flag` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `field-0` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field-1` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field-2` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field-3` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field-4` decimal(10, 2) NOT NULL,
  `field-5` decimal(10, 2) NOT NULL,
  `field-6` decimal(10, 2) NOT NULL,
  `field-7` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `field-8` decimal(10, 2) NOT NULL,
  `field-9` decimal(10, 2) NOT NULL,
  `field-10` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `field-11` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `field-12` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 955 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_pengondisi-udara-ac
-- ----------------------------
INSERT INTO `product_pengondisi-udara-ac` VALUES (1, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'Indoor AR13KVFSD WKN /Outdoor AR13KVFSD WKX', 'Indoor AR13KVFSD WKN /Outdoor AR13KVFSD WKX', 'Inverter', 1120.00, 12000.00, 3.73, '4', 3270.40, 4797676.80, '118.001.4.01.104.16.0001', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (2, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'Indoor AR10KVFSD WKN /Outdoor AR10KVFSD WKX', 'Indoor AR10KVFSD WKN /Outdoor AR10KVFSD WKX', 'Inverter', 820.00, 9700.00, 11.99, '4', 2394.40, 3512584.80, '118.001.4.02.104.16.0002', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (3, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'Indoor AR10KVFNA WKN /Outdoor AR10KVFNA WKX', 'Indoor AR10KVFNA WKN /Outdoor AR10KVFNA WKX', 'Inverter', 860.00, 9700.00, 11.73, '4', 2511.20, 3683930.40, '118.001.4.03.104.16.0003', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (4, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Indoor FTXZ25NVM4 /Outdoor RXZ25NVM4', 'Indoor FTXZ25NVM4 /Outdoor RXZ25NVM4', 'Inverter', 430.00, 8359.00, 21.03, '4', 1255.60, 1841965.20, '119.002.4.01.104.16.0004', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (5, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Indoor FTXZ35NVM4 /Outdoor RXZ35NVM4', 'Indoor FTXZ35NVM4 /Outdoor RXZ35NVM4', 'Inverter', 680.00, 11771.00, 19.40, '4', 1985.60, 2912875.20, '119.002.4.02.104.16.0005', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (6, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Indoor FTXZ50VM4 /Outdoor RXZ50NVM4', 'Indoor FTXZ50VM4 /Outdoor RXZ50NVM4', 'Inverter', 1150.00, 16889.00, 17.44, '4', 3358.00, 4926186.00, '119.002.4.03.104.16.0006', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (7, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Europe 1', 'Europe 1', 'Inverter', 520.00, 8530.00, 17.22, '4', 1518.40, 2227492.80, '119.002.4.04.104.16.0007', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (8, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Europe 2', 'Europe 2', 'Inverter', 855.00, 11942.00, 16.38, '4', 2496.60, 3662512.20, '119.002.4.05.104.16.0008', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (9, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Europe 3', 'Europe 3', 'Inverter', 1450.00, 17742.00, 14.94, '4', 4234.00, 6211278.00, '119.002.4.06.104.16.0009', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (10, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Non-Inverter R410A 1', 'Non-Inverter R410A 1', 'Non-Inverter', 390.00, 4982.00, 11.72, '4', 1138.80, 1670619.60, '119.002.4.07.104.16.0010', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (11, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Non-Inverter R410A 2', 'Non-Inverter R410A 2', 'Non-Inverter', 633.00, 7131.00, 11.52, '4', 1848.36, 2711544.12, '119.002.4.08.104.16.0011', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (12, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Non-Inverter R410A 3', 'Non-Inverter R410A 3', 'Non-Inverter', 819.00, 8939.00, 10.51, '4', 2391.48, 3508301.16, '119.002.4.09.104.16.0012', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (13, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Non-Inverter R410A 4', 'Non-Inverter R410A 4', 'Non-Inverter', 1063.00, 11430.00, 10.15, '3', 3103.96, 4553509.32, '119.002.3.10.099.16.0013', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (14, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Non-Inverter R410A 5', 'Non-Inverter R410A 5', 'Non-Inverter', 1650.00, 17742.00, 10.16, '3', 4818.00, 7068006.00, '119.002.3.11.099.16.0014', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (15, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Non-Inverter R410A 6', 'Non-Inverter R410A 6', 'Non-Inverter', 2032.00, 21837.00, 10.78, '4', 5933.44, 8704356.48, '119.002.4.12.104.16.0015', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (16, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Deluxe Non-Inverter R32 1', 'Deluxe Non-Inverter R32 1', 'Non-Inverter', 722.00, 8871.00, 11.65, '4', 2108.24, 3092788.08, '119.002.4.13.104.16.0016', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (17, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Deluxe Non-Inverter R32 2', 'Deluxe Non-Inverter R32 2', 'Non-Inverter', 1042.00, 12624.00, 11.63, '4', 3042.64, 4463552.88, '119.002.4.14.104.16.0017', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (18, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Deluxe Non-Inverter R32 3', 'Deluxe Non-Inverter R32 3', 'Non-Inverter', 1493.00, 18084.00, 12.19, '4', 4359.56, 6395474.52, '119.002.4.15.104.16.0018', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (19, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Deluxe Non-Inverter R32 4', 'Deluxe Non-Inverter R32 4', 'Non-Inverter', 1859.00, 22519.00, 11.90, '4', 5428.28, 7963286.76, '119.002.4.16.104.16.0019', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (20, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Deluxe Non-Inverter R32 5', 'Deluxe Non-Inverter R32 5', 'Non-Inverter', 2182.00, 24566.00, 12.20, '4', 6371.44, 9346902.48, '119.002.4.17.104.16.0020', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (21, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 1 ', 'Inverter R32 Smile 1 ', 'Inverter', 680.00, 8530.00, 15.52, '4', 1985.60, 2912875.20, '119.002.4.18.104.16.0021', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (22, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 2', 'Inverter R32 Smile 2', 'Inverter', 960.00, 11942.00, 15.43, '4', 2803.20, 4112294.40, '119.002.4.19.104.16.0022', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (23, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 3', 'Inverter R32 Smile 3', 'Inverter', 1365.00, 17742.00, 16.66, '4', 3985.80, 5847168.60, '119.002.4.20.104.16.0023', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (24, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 4', 'Inverter R32 Smile 4', 'Inverter', 1740.00, 20472.00, 15.35, '4', 5080.80, 7453533.60, '119.002.4.21.104.16.0024', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (25, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 5', 'Inverter R32 Smile 5', 'Inverter', 2365.00, 24225.00, 14.62, '4', 6905.80, 10130808.60, '119.002.4.22.104.16.0025', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (26, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 6', 'Inverter R32 Smile 6', 'Inverter', 1445.00, 17742.00, 16.89, '4', 4219.40, 6189859.80, '119.002.4.23.104.16.0026', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (27, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 7', 'Inverter R32 Smile 7', 'Inverter', 1740.00, 20472.00, 16.24, '4', 5080.80, 7453533.60, '119.002.4.24.104.16.0027', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (28, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 8', 'Inverter R32 Smile 8', 'Inverter', 337.00, 5118.00, 15.20, '4', 984.04, 1443586.68, '119.002.4.25.104.16.0028', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (29, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 9', 'Inverter R32 Smile 9', 'Inverter', 500.00, 6824.00, 14.73, '4', 1460.00, 2141820.00, '119.002.4.26.104.16.0029', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (30, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 10', 'Inverter R32 Smile 10', 'Inverter', 700.00, 8530.00, 14.13, '4', 2044.00, 2998548.00, '119.002.4.27.104.16.0030', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (31, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 11', 'Inverter R32 Smile 11', 'Inverter', 990.00, 11942.00, 14.24, '4', 2890.80, 4240803.60, '119.002.4.28.104.16.0031', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (32, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter High R32 1', 'Inverter High R32 1', 'Inverter', 540.00, 8530.00, 17.74, '4', 1576.80, 2313165.60, '119.002.4.29.104.16.0032', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (33, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter High R32 2', 'Inverter High R32 2', 'Inverter', 910.00, 11942.00, 15.37, '4', 2657.20, 3898112.40, '119.002.4.30.104.16.0033', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (34, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter High R32 3', 'Inverter High R32 3', 'Inverter', 1300.00, 17742.00, 16.72, '4', 3796.00, 5568732.00, '119.002.4.31.104.16.0034', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (35, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter High R32 4', 'Inverter High R32 4', 'Inverter', 1580.00, 20472.00, 16.29, '4', 4613.60, 6768151.20, '119.002.4.32.104.16.0035', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (36, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter High R32 5', 'Inverter High R32 5', 'Inverter', 2000.00, 24225.00, 14.73, '4', 5840.00, 8567280.00, '119.002.4.33.104.16.0036', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (37, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'Indoor AR13KVFNAWKN /Outdoor AR13KVFNAWKX', 'Indoor AR13KVFNAWKN /Outdoor AR13KVFNAWKX', 'Inverter', 1120.00, 12000.00, 11.29, '4', 3270.40, 4797676.80, '118.001.4.04.104.16.0037', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (38, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'Indoor AR18KVFNAWKN /Outdoor AR18KVFNAWKX', 'Indoor AR18KVFNAWKN /Outdoor AR18KVFNAWKX', 'Inverter', 1540.00, 17600.00, 11.14, '4', 4496.80, 6596805.60, '118.001.4.05.104.16.0038', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (39, 15, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron ', 'EAW055000(PAC 05LE;PAC 05VE;PAC 05VX;PAC 05VF;PAC 05VG)', 'EAW055000(PAC 05LE;PAC 05VE;PAC 05VX;PAC 05VF;PAC 05VG)', 'Non-Inverter', 490.00, 5000.00, 12.53, '4', 1430.80, 2098983.60, '011.003.4.01.104.16.0039', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (40, 15, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron ', 'EAW077200(PAC 07VE)', 'EAW077200(PAC 07VE)', 'Non-Inverter', 725.00, 8000.00, 12.06, '4', 2117.00, 3105639.00, '011.003.4.02.104.16.0040', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (41, 15, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron ', 'EAW109000(PAC 09LE;PAC 09VF;PAC 09VE;PAC 09VX;PAC 09VG)', 'EAW109000(PAC 09LE;PAC 09VF;PAC 09VE;PAC 09VX;PAC 09VG)', 'Non-Inverter', 880.00, 9500.00, 11.31, '4', 2569.60, 3769603.20, '011.003.4.03.104.16.0041', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (42, 15, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron ', 'EAW151000(PAC 12VE;PAC 12VX;PAC 12VF;PAC 12VG)', 'EAW151000(PAC 12VE;PAC 12VX;PAC 12VF;PAC 12VG)', 'Non-Inverter', 1050.00, 12000.00, 11.95, '4', 3066.00, 4497822.00, '011.003.4.04.104.16.0042', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (43, 15, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron ', 'EAW201600(PAC 18VE;PAC 18VX;PAC 18VF;PAC 18VG)', 'EAW201600(PAC 18VE;PAC 18VX;PAC 18VF;PAC 18VG)', 'Non-Inverter', 1690.00, 18000.00, 12.06, '4', 4934.80, 7239351.60, '011.003.4.05.104.16.0043', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (44, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'QS-C0566NKO(T05NWA;T05NLA;T05EG)', 'QS-C0566NKO(T05NWA;T05NLA;T05EG)', 'Non-Inverter', 610.00, 4600.00, 10.98, '4', 1781.20, 2613020.40, '118.004.4.01.104.16.0044', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (45, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'QS-C0564NAO', 'QS-C0564NAO', 'Non-Inverter', 480.00, 4300.00, 12.14, '4', 1401.60, 2056147.20, '118.004.4.02.104.16.0045', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (46, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'Indoor AR05KRSDUWKN /Outdoor AR05KRSDUWKX', 'Indoor AR05KRSDUWKN /Outdoor AR05KRSDUWKX', 'Inverter', 315.00, 4800.00, 14.86, '4', 919.80, 1349346.60, '118.001.4.06.104.16.0046', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (47, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'Indoor AR09KRSDUWKN /Outdoor AR09KRSDUWKX', 'Indoor AR09KRSDUWKN /Outdoor AR09KRSDUWKX', 'Inverter', 680.00, 8600.00, 12.35, '4', 1985.60, 2912875.20, '118.001.4.07.104.16.0047', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (48, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'Indoor AR05KRFSVURN /Outdoor AR05KRFSVURX', 'Indoor AR05KRFSVURN /Outdoor AR05KRFSVURX', 'Inverter', 330.00, 4800.00, 13.97, '4', 963.60, 1413601.20, '118.001.4.08.104.16.0048', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (49, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'Indoor AR09KRFSVURN /Outdoor AR09KRFSVURX', 'Indoor AR09KRFSVURN /Outdoor AR09KRFSVURX', 'Inverter', 710.00, 8500.00, 12.13, '4', 2073.20, 3041384.40, '118.001.4.09.104.16.0050', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (50, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'Indoor AR12KRFSWWKN /Outdoor AR12KRFSWWKX', 'Indoor AR12KRFSWWKN /Outdoor AR12KRFSWWKX', 'Inverter', 1160.00, 12100.00, 10.21, '3', 3387.20, 4969022.40, '118.001.3.10.099.16.0051', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (51, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'Indoor AR18KRFSWWKN /Outdoor AR18KRFSWWKX', 'Indoor AR18KRFSWWKN /Outdoor AR18KRFSWWKX', 'Inverter', 1755.00, 17900.00, 9.91, '2', 5124.60, 7517788.20, '118.001.2.11.091.16.0052', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (52, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MS-HK 10 VA /Outdoor MU-HK 10 VA', 'Indoor MS-HK 10 VA /Outdoor MU-HK 10 VA', 'Non-Inverter', 800.00, 8405.46, 10.48, '4', 2336.00, 3426912.00, '119.005.4.01.104.16.0053', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (53, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MS-HK 13 VA /Outdoor MU-HK 13 VA', 'Indoor MS-HK 13 VA /Outdoor MU-HK 13 VA', 'Non-Inverter', 1160.00, 12414.22, 10.74, '4', 3387.20, 4969022.40, '119.005.4.02.104.16.0054', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (54, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MS-HK 18VA /Outdoor MS-HK 18 VA', 'Indoor MS-HK 18VA /Outdoor MS-HK 18 VA', 'Non-Inverter', 1610.00, 16108.73, 10.02, '3', 4701.20, 6896660.40, '119.005.3.03.099.16.0055', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (55, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MS-HK 24VA /Outdoor MS-HK 24VA', 'Indoor MS-HK 24VA /Outdoor MS-HK 24VA', 'Non-Inverter', 2180.00, 21748.09, 9.98, '3', 6365.60, 9338335.20, '119.005.3.04.009.16.0056', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (56, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MSY-GJ10VA /Outdoor MUY-GJ10VA', 'Indoor MSY-GJ10VA /Outdoor MUY-GJ10VA', 'Inverter', 820.00, 8871.88, 12.56, '4', 2394.40, 3512584.80, '119.005.4.05.104.16.0057', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (57, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MSY-GJ13VA /Outdoor MUY-GJ13VA', 'Indoor MSY-GJ13VA /Outdoor MUY-GJ13VA', 'Inverter', 970.00, 10922.49, 13.10, '4', 2832.40, 4155130.80, '119.005.4.06.104.16.0058', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (58, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MSY-GF18VA /Outdoor MUY-GF18VA', 'Indoor MSY-GF18VA /Outdoor MUY-GF18VA', 'Inverter', 1670.00, 17069.90, 13.34, '4', 4876.40, 7153678.80, '119.005.4.07.104.16.0059', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (59, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MSY-GF24VA /Outdoor MUY-GF24VA', 'Indoor MSY-GF24VA /Outdoor MUY-GF24VA', 'Inverter', 1940.00, 22662.85, 15.22, '4', 5664.80, 8310261.60, '119.005.4.08.104.16.0060', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (60, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTV15AXV14 /RV15AXV14;FTV15BXV14 /RV15BXV14', 'FTV15AXV14 /RV15AXV14;FTV15BXV14 /RV15BXV14', 'Non-Inverter', 393.67, 5982.09, 15.20, '4', 1149.52, 1686340.56, '119.002.4.34.104.16.0061', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (61, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTV20AXV14 /RV20AXV14;FTV20BXV14 /RV20BXV14', 'FTV20AXV14 /RV20AXV14;FTV20BXV14 /RV20BXV14', 'Non-Inverter', 627.10, 6803.53, 10.85, '4', 1831.13, 2686270.64, '119.002.4.35.104.16.0062', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (62, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTV25AXV14 /RV25AXV14;FTV25BXV14 /RV25BXV14', 'FTV25AXV14 /RV25AXV14;FTV25BXV14 /RV25BXV14', 'Non-Inverter', 784.30, 8473.36, 10.80, '4', 2290.16, 3359658.85, '119.002.4.36.104.16.0063', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (63, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTV35AXV14 /RV35AXV14;FTV35BXV14 /RV35BXV14', 'FTV35AXV14 /RV35AXV14;FTV35BXV14 /RV35BXV14', 'Non-Inverter', 1153.60, 11604.21, 10.06, '3', 3368.51, 4941607.10, '119.002.3.37.099.16.0064', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (64, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTV50AXV14 /RV50AXV14;FTV50BXV14 /RV50BXV14', 'FTV50AXV14 /RV50AXV14;FTV50BXV14 /RV50BXV14', 'Non-Inverter', 1813.70, 17726.36, 9.77, '2', 5296.00, 7769237.87, '119.002.2.38.091.16.0065', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (65, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic ', 'CU/CS-YN5SKJ', 'CU/CS-YN5SKJ', 'Non-Inverter', 411.90, 4455.00, 10.82, '4', 1202.75, 1764431.32, '119.006.4.01.104.16.0066', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (66, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic ', 'CU/CS-PN5SKJ', 'CU/CS-PN5SKJ', 'Non-Inverter', 382.40, 4953.00, 12.96, '4', 1116.61, 1638063.94, '119.006.4.02.104.16.0067', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (67, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic ', 'CU/CS-KN5SKJCU/CS-XN5SKJ', 'CU/CS-KN5SKJCU/CS-XN5SKJ', 'Non-Inverter', 363.10, 4856.00, 13.38, '4', 1060.25, 1555389.68, '119.006.4.03.104.16.0068', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (68, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic ', 'CU/CS-YN7SKJ', 'CU/CS-YN7SKJ', 'Non-Inverter', 644.90, 6850.00, 10.62, '4', 1883.11, 2762519.44, '119.006.4.04.104.16.0069', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (69, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic ', 'CU/CS-PN7SKJ', 'CU/CS-PN7SKJ', 'Non-Inverter', 599.90, 6737.00, 11.23, '4', 1751.71, 2569755.64, '119.006.4.05.104.16.0070', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (70, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic ', 'CU/CS-KN7SKJCU/CS-XN7SKJ', 'CU/CS-KN7SKJCU/CS-XN7SKJ', 'Non-Inverter', 587.70, 6796.00, 11.56, '4', 1716.08, 2517495.23, '119.006.4.06.104.16.0071', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (71, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic ', 'CU/CS-YN9SKJ', 'CU/CS-YN9SKJ', 'Non-Inverter', 801.10, 8603.00, 10.74, '4', 2339.21, 3431624.00, '119.006.4.07.104.16.0072', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (72, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic ', 'CU/CS-PN9SKJ', 'CU/CS-PN9SKJ', 'Non-Inverter', 719.20, 8105.00, 11.27, '4', 2100.06, 3080793.89, '119.006.4.08.104.16.0073', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (73, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic ', 'CU/CS-KN9SKJCU/CS-XV9SKJ', 'CU/CS-KN9SKJCU/CS-XV9SKJ', 'Non-Inverter', 707.30, 8457.00, 11.96, '4', 2065.32, 3029818.57, '119.006.4.09.104.16.0074', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (74, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic ', 'CU/CS-PN12SKJ', 'CU/CS-PN12SKJ', 'Non-Inverter', 1023.30, 11078.00, 10.83, '4', 2988.04, 4383448.81, '119.006.4.10.104.16.0075', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (75, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR05KRFLAWKN /AR05KRFLAWKX', 'AR05KRFLAWKN /AR05KRFLAWKX', 'Non-Inverter', 400.00, 5080.50, 12.70, '4', 1168.00, 1713456.00, '118.001.4.12.104.16.0076', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (76, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR07KRFLAWKN /AR07KRFLAWKX', 'AR07KRFLAWKN /AR07KRFLAWKX', 'Non-Inverter', 687.00, 7595.10, 11.00, '4', 2006.04, 2942860.68, '118.001.4.13.104.16.0077', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (77, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR09KRFLAWKN /AR09KRFLAWKX', 'AR09KRFLAWKN /AR09KRFLAWKX', 'Non-Inverter', 816.00, 9127.10, 11.00, '4', 2382.72, 3495450.24, '118.001.4.14.104.16.0078', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (78, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR05KRFLBWKN /AR05KRFLBWKX', 'AR05KRFLBWKN /AR05KRFLBWKX', 'Non-Inverter', 400.00, 5080.50, 12.70, '4', 1168.00, 1713456.00, '118.001.4.15.104.16.0079', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (79, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR07KRFLBWKN /AR07KRFLBWKX', 'AR07KRFLBWKN /AR07KRFLBWKX', 'Non-Inverter', 687.00, 7595.10, 11.00, '4', 2006.04, 2942860.68, '118.001.4.16.104.16.0080', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (80, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR09KRFLBWKN /AR09KRFLBWKX', 'AR09KRFLBWKN /AR09KRFLBWKX', 'Non-Inverter', 816.00, 9127.10, 11.00, '4', 2382.72, 3495450.24, '118.001.4.17.104.16.0081', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (81, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'VITA 05', 'VITA 05', 'Non-Inverter', 300.00, 4800.00, 16.00, '4', 876.00, 1285092.00, '118.007.4.01.104.16.0082', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (82, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'VITA 07', 'VITA 07', 'Non-Inverter', 500.00, 6820.00, 13.64, '4', 1460.00, 2141820.00, '118.007.4.02.104.16.0083', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (83, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'VITA 09', 'VITA 09', 'Non-Inverter', 650.00, 9000.00, 13.85, '4', 1898.00, 2784366.00, '118.007.4.03.104.16.0084', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (84, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'VITA 12', 'VITA 12', 'Non-Inverter', 900.00, 12000.00, 13.33, '4', 2628.00, 3855276.00, '118.007.4.04.104.16.0085', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (85, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'VITA 18', 'VITA 18', 'Non-Inverter', 1530.00, 18000.00, 11.76, '4', 4467.60, 6553969.20, '118.007.4.05.104.16.0086', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (86, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-X9SEY /AU-X9SEY', 'AH-X9SEY /AU-X9SEY', 'Inverter', 587.40, 7062.84, 12.02, '4', 1715.21, 2516210.14, '118.008.4.01.104.16.0087', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (87, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-X18SEY /AU-X18SEY', 'AH-X18SEY /AU-X18SEY', 'Inverter', 1432.70, 16262.62, 13.53, '4', 4183.48, 6137171.03, '118.008.4.02.104.16.0088', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (88, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A24SEY /AU-A24SEY', 'AH-A24SEY /AU-A24SEY', 'Non-Inverter', 2395.10, 22613.37, 9.45, '2', 6993.69, 10259746.16, '118.008.2.03.091.16.0089', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (89, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A18SEY /AU-A18SEY;AH-A18UBY /AU-A18UBY;', 'AH-A18SEY /AU-A18SEY;AH-A18UBY /AU-A18UBY;', 'Non-Inverter', 1887.60, 18008.88, 9.55, '2', 5511.79, 8085798.86, '118.008.2.04.091.16.0090', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (90, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A5SEY /AU-A5SEY;AH-AP5SSY /AU-A5SSY;AH-A5UBY /AU-A5UBY;AH-A5UEY /AU-A5UEY;AH-A5SAY /AU-A5SAY;', 'AH-A5SEY /AU-A5SEY;AH-AP5SSY /AU-A5SSY;AH-A5UBY /AU-A5UBY;AH-A5UEY /AU-A5UEY;AH-A5SAY /AU-A5SAY;', 'Non-Inverter', 434.70, 4724.05, 10.88, '4', 1269.32, 1862098.31, '118.008.4.05.104.16.0091', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (91, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-AP5SHL /AU-A5SHL;AH-AP5UHL /AU-A5UHL;', 'AH-AP5SHL /AU-A5SHL;AH-AP5UHL /AU-A5UHL;', 'Non-Inverter', 377.20, 4532.36, 12.01, '4', 1101.42, 1615789.01, '118.008.4.06.104.16.0092', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (92, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A5SDL /AU-A5SDL', 'AH-A5SDL /AU-A5SDL', 'Non-Inverter', 374.70, 4554.95, 12.14, '4', 1094.12, 1605079.91, '118.008.4.07.104.16.0093', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (93, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-AP9SHL /AU-A9SHL', 'AH-AP9SHL /AU-A9SHL', 'Non-Inverter', 784.40, 8928.49, 11.39, '4', 2290.45, 3360087.22, '118.008.4.08.104.16.0094', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (94, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP10SHY /AU-X10SHY', 'AH-XP10SHY /AU-X10SHY', 'Non-Inverter', 814.00, 7391.19, 13.30, '4', 2376.88, 3486882.96, '118.008.4.09.104.16.0095', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (95, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A12SEY /AU-A12SEY;AH-AP12SSY /AU-A12SSY;AH-A12UBY /AU-A12UBY;AH-A12SAY /AU-A12SAY;', 'AH-A12SEY /AU-A12SEY;AH-AP12SSY /AU-A12SSY;AH-A12UBY /AU-A12UBY;AH-A12SAY /AU-A12SAY;', 'Non-Inverter', 1102.78, 11730.20, 10.64, '4', 3220.12, 4723912.52, '118.008.4.10.104.16.0096', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (96, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-AP12SHL /AU-A12SHL;AH-AP12UHL /AU-A12UHL', 'AH-AP12SHL /AU-A12SHL;AH-AP12UHL /AU-A12UHL', 'Non-Inverter', 1006.28, 11709.47, 11.64, '4', 2938.34, 4310541.26, '118.008.4.11.104.16.0097', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (97, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A9SDL /AU-A9SDL;AH-A9UDL /AU-A9UDL;AH-AP9UHL /AU-A9UHL', 'AH-A9SDL /AU-A9SDL;AH-A9UDL /AU-A9UDL;AH-AP9UHL /AU-A9UHL', 'Non-Inverter', 767.06, 8679.28, 11.31, '4', 2239.82, 3285808.90, '118.008.4.12.104.16.0098', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (98, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-AP7SHL /AU-A7SHL', 'AH-AP7SHL /AU-A7SHL', 'Non-Inverter', 587.15, 6890.70, 11.74, '4', 1714.48, 2515139.23, '118.008.4.13.104.16.0099', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (99, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A7SDL /AU-A7SDL;AH-A7UDL /AU-A7UDL;AH-AP7UHL /AU-A7UHL', 'AH-A7SDL /AU-A7SDL;AH-A7UDL /AU-A7UDL;AH-AP7UHL /AU-A7UHL', 'Non-Inverter', 584.53, 6991.39, 11.96, '4', 1706.83, 2503916.09, '118.008.4.14.104.16.0100', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (100, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A9TEY /AU-A9TEY', 'AH-A9TEY /AU-A9TEY', 'Non-Inverter', 909.52, 8641.09, 9.50, '2', 2655.80, 3896056.25, '118.008.2.15.091.16.0101', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (101, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-AP7SSY /AU-A7SSY;AH-A7SEY /AU-A7SEY;AH-A7SAY /AU-A7SAY;', 'AH-AP7SSY /AU-A7SSY;AH-A7SEY /AU-A7SEY;AH-A7SAY /AU-A7SAY;', 'Non-Inverter', 660.08, 6691.34, 10.14, '3', 1927.43, 2827545.09, '118.008.3.16.099.16.0102', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (102, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A5TEY /AU-A5TEY', 'AH-A5TEY /AU-A5TEY', 'Non-Inverter', 526.64, 5210.09, 9.84, '2', 1537.79, 2255936.17, '118.008.2.17.091.16.0103', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (103, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A7TEY /AU-A7TEY', 'AH-A7TEY /AU-A7TEY', 'Non-Inverter', 678.48, 6730.68, 9.92, '2', 1981.16, 2906364.07, '118.008.2.18.091.16.0104', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (104, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTNE15JEV14 /RNE15JEV14', 'FTNE15JEV14 /RNE15JEV14', 'Non-Inverter', 323.50, 4398.41, 13.60, '4', 944.62, 1385757.54, '119.002.4.39.104.16.0105', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (105, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTNE20JEV14 /RNE20JEV14', 'FTNE20JEV14 /RNE20JEV14', 'Non-Inverter', 537.90, 6114.65, 11.37, '4', 1570.67, 2304169.96, '119.002.4.40.104.16.0106', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (106, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTNE25JEV14 /RNE25JEV14', 'FTNE25JEV14 /RNE25JEV14', 'Non-Inverter', 699.80, 8018.89, 11.46, '4', 2043.42, 2997691.27, '119.002.4.41.104.16.0107', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (107, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTNE35JEV14 /RNE35JEV14', 'FTNE35JEV14 /RNE35JEV14', 'Non-Inverter', 989.50, 11211.83, 11.33, '4', 2889.34, 4238661.78, '119.002.4.42.104.16.0108', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (108, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTNE50JEV14 /RNE50JEV14', 'FTNE50JEV14 /RNE50JEV14', 'Non-Inverter', 1611.00, 16388.52, 9.87, '2', 4704.12, 6900944.04, '119.002.2.43.091.16.0109', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (109, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTNE60JEV14 /RNE60JEV15', 'FTNE60JEV14 /RNE60JEV15', 'Non-Inverter', 1927.60, 20477.12, 10.38, '3', 5628.59, 8257144.46, '119.002.3.44.099.16.0110', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (110, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-VU18SKP /CU-VU18SKP', 'CS-VU18SKP /CU-VU18SKP', 'Inverter', 1450.00, 17700.00, 13.96, '4', 4234.00, 6211278.00, '118.009.4.01.104.16.0111', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (111, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-VU13SKP /CU-VU13SKP', 'CS-VU13SKP /CU-VU13SKP', 'Inverter', 820.00, 11600.00, 15.35, '4', 2394.40, 3512584.80, '118.009.4.02.104.16.0112', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (112, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-VU10SKP /CU-VU10SKP', 'CS-VU10SKP /CU-VU10SKP', 'Inverter', 630.00, 8700.00, 14.88, '4', 1839.60, 2698693.20, '118.009.4.03.104.16.0113', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (113, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-S24RKP /CU-S24RKP', 'CS-S24RKP /CU-S24RKP', 'Inverter', 1880.00, 21300.00, 12.99, '4', 5489.60, 8053243.20, '118.009.4.04.104.16.0114', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (114, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-S18RKP /CU-S18RKP', 'CS-S18RKP /CU-S18RKP', 'Inverter', 1440.00, 18100.00, 13.46, '4', 4204.80, 6168441.60, '118.009.4.05.104.16.0115', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (115, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-S13RKP /CU-S13RKP', 'CS-S13RKP /CU-S13RKP', 'Inverter', 1010.00, 12500.00, 12.79, '4', 2949.20, 4326476.40, '118.009.4.06.104.16.0116', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (116, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-S10RKP /CU-S10RKP', 'CS-S10RKP /CU-S10RKP', 'Inverter', 730.00, 9720.00, 12.62, '4', 2131.60, 3127057.20, '118.009.4.07.104.16.0117', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (117, 20, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Akari', 'Family 1', 'Family 1', 'Non-Inverter', 409.00, 5210.00, 12.70, '4', 1194.28, 1752008.76, '119.010.4.01.104.16.0118', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (118, 20, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Akari', 'Family 2', 'Family 2', 'Non-Inverter', 753.50, 7142.00, 9.49, '2', 2200.22, 3227722.74, '119.010.2.02.091.16.0119', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (119, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-UV5SKP / CU-UV5SKP', 'CS-UV5SKP / CU-UV5SKP', 'Non-Inverter', 431.00, 5077.10, 11.78, '4', 1258.52, 1846248.84, '118.009.4.08.104.16.0120', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (120, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-UV9SKP / CU-UV9SKP', 'CS-UV9SKP / CU-UV9SKP', 'Non-Inverter', 780.00, 9099.80, 11.66, '4', 2277.60, 3341239.20, '118.009.4.09.104.16.0121', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (121, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PN24SKP / CU-PN24SKP', 'CS-PN24SKP / CU-PN24SKP', 'Inverter', 2048.80, 22626.00, 11.04, '4', 5982.50, 8776321.63, '118.009.4.10.104.16.0122', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (122, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PN18SKP / CU-PN18SKP', 'CS-PN18SKP / CU-PN18SKP', 'Inverter', 1611.30, 17823.30, 11.06, '4', 4705.00, 6902229.13, '118.009.4.11.104.16.0123', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (123, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'QS-C0766NK0', 'QS-C0766NK0', 'Non-Inverter', 653.10, 6769.10, 10.36, '3', 1907.05, 2797645.28, '118.004.3.03.099.16.0124', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (124, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'QS-C096QNK0', 'QS-C096QNK0', 'Non-Inverter', 916.60, 8303.70, 9.06, '2', 2676.47, 3926384.42, '118.004.2.04.091.16.0125', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (125, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-07MOO/IGWC-07MOO/O', 'GWC-07MOO/IGWC-07MOO/O', 'Non-Inverter', 731.00, 6841.00, 9.35, '2', 2134.52, 3131340.84, '118.011.2.01.091.16.0126', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (126, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'VITA PLUS 05', 'VITA PLUS 05', 'Non-Inverter', 336.00, 4773.40, 14.21, '4', 981.12, 1439303.04, '118.007.4.06.104.16.0127', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (127, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'VITA PLUS 07', 'VITA PLUS 07', 'Non-Inverter', 559.00, 7073.00, 12.65, '4', 1632.28, 2394554.76, '118.007.4.07.104.16.0128', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (128, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'VITA PLUS 09', 'VITA PLUS 09', 'Non-Inverter', 718.00, 8158.10, 11.36, '4', 2096.56, 3075653.52, '118.007.4.08.104.16.0129', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (129, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-05ECO03/LW', 'HSU-05ECO03/LW', 'Non-Inverter', 350.70, 4388.00, 12.50, '4', 1024.04, 1502272.55, '119.012.4.01.104.16.0130', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (130, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-12ECO03/LW', 'HSU-12ECO03/LW', 'Non-Inverter', 1038.80, 11828.00, 11.39, '4', 3033.30, 4449845.23, '119.012.4.02.104.16.0131', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (131, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-18ECO03/LW', 'HSU-18ECO03/LW', 'Non-Inverter', 1540.50, 18240.00, 11.84, '4', 4498.26, 6598947.42, '119.012.4.03.104.16.0132', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (132, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-05GTO03 & HSU-05GTR03', 'HSU-05GTO03 & HSU-05GTR03', 'Non-Inverter', 503.90, 5027.00, 9.98, '3', 1471.39, 2158526.20, '119.012.3.04.099.16.0133', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (133, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-07GTO03 & HSU-07GTR03', 'HSU-07GTO03 & HSU-07GTR03', 'Non-Inverter', 767.00, 7070.00, 9.22, '2', 2239.64, 3285551.88, '119.012.2.05.091.16.0134', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (134, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-09GTO03 & HSU-09GTR03', 'HSU-09GTO03 & HSU-09GTR03', 'Non-Inverter', 891.80, 8973.00, 10.06, '3', 2604.06, 3820150.15, '119.012.3.06.099.16.0135', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (135, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-12GTO03 & HSU-12GTR03', 'HSU-12GTO03 & HSU-12GTR03', 'Non-Inverter', 1143.00, 11358.00, 9.94, '2', 3337.56, 4896200.52, '119.012.2.07.091.16.0136', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (136, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-18GTO03 & HSU-18GTR03', 'HSU-18GTO03 & HSU-18GTR03', 'Non-Inverter', 1758.00, 16754.00, 9.53, '2', 5133.36, 7530639.12, '119.012.2.08.091.16.0137', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (137, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-24GTO03 & HSU-24GTR03', 'HSU-24GTO03 & HSU-24GTR03', 'Non-Inverter', 2290.40, 22598.00, 9.87, '2', 6687.97, 9811249.06, '119.012.2.09.091.16.0138', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (138, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'QS-Q096W5A0 (T10EMV)', 'QS-Q096W5A0 (T10EMV)', 'Inverter', 907.70, 9205.20, 12.21, '4', 2650.48, 3888260.03, '118.004.4.05.104.16.0139', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (139, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'QS-Q056W5A0 (T06EMV)', 'QS-Q056W5A0 (T06EMV)', 'Inverter', 437.80, 5427.00, 13.32, '4', 1278.38, 1875377.59, '118.004.4.06.104.16.0140', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (140, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'BS-Q096WEA4', 'BS-Q096WEA4', 'Inverter', 853.61, 9157.74, 12.14, '4', 2492.54, 3656557.94, '118.004.4.07.104.16.0141', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (141, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'BS-Q096J1S1', 'BS-Q096J1S1', 'Inverter', 665.32, 9600.34, 17.00, '4', 1942.73, 2849991.36, '118.004.4.08.104.16.0142', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (142, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'BS-Q126J1S1', 'BS-Q126J1S1', 'Inverter', 999.81, 12155.11, 15.30, '4', 2919.45, 4282826.11, '118.004.4.09.104.16.0143', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (143, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'BS-Q186K1S0', 'BS-Q186K1S0', 'Inverter', 1468.96, 17975.92, 14.85, '4', 4289.36, 6292495.81, '118.004.4.10.104.16.0144', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (144, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'BS-Q126J3A0', 'BS-Q126J3A0', 'Inverter', 1044.62, 12355.84, 13.93, '4', 3050.29, 4474776.02, '118.004.4.11.104.16.0145', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (145, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'BS-Q186K3A0', 'BS-Q186K3A0', 'Inverter', 1463.18, 17775.22, 14.52, '4', 4272.49, 6267736.38, '118.004.4.12.104.16.0146', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (146, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP6SHY /AU-X6SHY', 'AH-XP6SHY /AU-X6SHY', 'Inverter', 379.90, 4184.14, 11.16, '4', 1109.31, 1627354.84, '118.008.4.19.104.16.0147', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (147, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP13SHY /AU-X13SHY', 'AH-XP13SHY /AU-X13SHY', 'Inverter', 1106.40, 11390.96, 12.10, '4', 3230.69, 4739419.30, '118.008.4.20.104.16.0148', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (148, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-X12SEY /AU-X12SEY', 'AH-X12SEY /AU-X12SEY', 'Inverter', 1154.20, 11114.25, 11.46, '4', 3370.26, 4944177.29, '118.008.4.21.104.16.0149', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (149, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-AP9SSY2 /AU-A9SSY2;AH-A9SEY2 /AU-A9SEY2;AH-A9UEY /AU-A9UEY;AH-A9UBY /AU-A9UBY;AH-A9SAY /AU-A9SAY;', 'AH-AP9SSY2 /AU-A9SSY2;AH-A9SEY2 /AU-A9SEY2;AH-A9UEY /AU-A9UEY;AH-A9UBY /AU-A9UBY;AH-A9SAY /AU-A9SAY;', 'Non-Inverter', 847.74, 8982.29, 10.60, '4', 2475.40, 3631412.97, '118.008.4.22.104.16.0150', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (150, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBL-09CRN1(I) /MSBL-09CRN1(O)', 'MSBL-09CRN1(I) /MSBL-09CRN1(O)', 'Non-Inverter', 872.00, 9591.00, 11.00, '4', 2546.24, 3735334.08, '118.013.4.01.104.16.0151', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (151, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBL-12CRN1(I) /MSBL-12CRN1(O)', 'MSBL-12CRN1(I) /MSBL-12CRN1(O)', 'Non-Inverter', 1053.00, 11474.00, 10.90, '4', 3074.76, 4510672.92, '118.013.4.02.104.16.0152', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (152, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBC-05CRN1(I) /MSBC-05CRN1(O)', 'MSBC-05CRN1(I) /MSBC-05CRN1(O)', 'Non-Inverter', 395.00, 4644.00, 11.76, '4', 1153.40, 1692037.80, '118.013.4.03.104.16.0153', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (153, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBC-07CRN1(I) /MSBC-07CRN1(O)', 'MSBC-07CRN1(I) /MSBC-07CRN1(O)', 'Non-Inverter', 736.00, 7036.00, 9.60, '2', 2149.12, 3152759.04, '118.013.2.04.091.16.0154', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (154, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBC-09CRN1(I) /MSBC-09CRN1(O)', 'MSBC-09CRN1(I) /MSBC-09CRN1(O)', 'Non-Inverter', 694.00, 8716.00, 9.75, '2', 2026.48, 2972846.16, '118.013.2.05.091.16.0155', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (155, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBC-12CRN1(I) /MSBC-12CRN1(O)', 'MSBC-12CRN1(I) /MSBC-12CRN1(O)', 'Non-Inverter', 1184.00, 11771.00, 9.94, '2', 3457.28, 5071829.76, '118.013.2.06.091.16.0156', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (156, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBC-18CRN1(I) /MSBC-18CRN1(O)', 'MSBC-18CRN1(I) /MSBC-18CRN1(O)', 'Non-Inverter', 1715.00, 17116.00, 9.98, '3', 5007.80, 7346442.60, '118.013.3.07.099.16.0157', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (157, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBC-24CRN1(I) /MSBC-24CRN1(O)', 'MSBC-24CRN1(I) /MSBC-24CRN1(O)', 'Non-Inverter', 2367.00, 22188.00, 9.37, '2', 6911.64, 10139375.88, '118.013.2.08.091.16.0158', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (158, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSFC-05CRN1(I) /MSFC-05CRN1(O)', 'MSFC-05CRN1(I) /MSFC-05CRN1(O)', 'Non-Inverter', 397.00, 4607.00, 11.60, '4', 1159.24, 1700605.08, '118.013.4.09.104.16.0159', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (159, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSFC-09CRN1(I) /MSFC-09CRN1(O)', 'MSFC-09CRN1(I) /MSFC-09CRN1(O)', 'Non-Inverter', 887.00, 9324.00, 10.51, '4', 2590.04, 3799588.68, '118.013.4.10.104.16.0160', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (160, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSC4-05CRN1(I) /MSC4-05CRN1(O)', 'MSC4-05CRN1(I) /MSC4-05CRN1(O)', 'Non-Inverter', 360.00, 4272.00, 11.67, '4', 1051.20, 1542110.40, '118.013.4.11.104.16.0161', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (161, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSC4-09CRN1(I) /MSC4-09CRN1(O)', 'MSC4-09CRN1(I) /MSC4-09CRN1(O)', 'Non-Inverter', 703.00, 7773.00, 11.06, '4', 2052.76, 3011398.92, '118.013.4.12.104.16.0162', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (162, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSF-05CRN1(I) /MSF-05CRN1(O)', 'MSF-05CRN1(I) /MSF-05CRN1(O)', 'Non-Inverter', 360.00, 4272.00, 11.57, '4', 1051.20, 1542110.40, '118.013.4.13.104.16.0163', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (163, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSF-09CRN1(I) /MSF-09CRN1(O)', 'MSF-09CRN1(I) /MSF-09CRN1(O)', 'Non-Inverter', 703.00, 7773.00, 11.06, '4', 2052.76, 3011398.92, '118.013.4.14.104.16.0164', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (164, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSB2-05CRN1(I) /MSB2-05CRN1(O)', 'MSB2-05CRN1(I) /MSB2-05CRN1(O)', 'Non-Inverter', 416.00, 4470.00, 10.75, '4', 1214.72, 1781994.24, '118.013.4.15.104.16.0165', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (165, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSB2-09CRN1(I) /MSB2-09CRN1(O)', 'MSB2-09CRN1(I) /MSB2-09CRN1(O)', 'Non-Inverter', 917.00, 8016.00, 8.74, '1', 2677.64, 3928097.88, '118.013.1.16.085.16.0166', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (166, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSB2-12CRN1(I) /MSB2-12CRN1(O)', 'MSB2-12CRN1(I) /MSB2-12CRN1(O)', 'Non-Inverter', 1095.00, 10860.00, 9.92, '2', 3197.40, 4690585.80, '118.013.2.17.091.16.0167', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (167, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSKID-09CRDN1(I) /MSKID-09CRDN1(O)', 'MSKID-09CRDN1(I) /MSKID-09CRDN1(O)', 'Inverter', 807.00, 9441.00, 11.70, '4', 2356.44, 3456897.48, '118.013.4.18.104.16.0168', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (168, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSKID-12CRDN1(I) /MSKID-12CRDN1(O)', 'MSKID-12CRDN1(I) /MSKID-12CRDN1(O)', 'Inverter', 1182.00, 12409.00, 10.50, '4', 3451.44, 5063262.48, '118.013.4.19.104.16.0169', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (169, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSMB-09CRDN1(I) /MSMB-09CRDN1(O)', 'MSMB-09CRDN1(I) /MSMB-09CRDN1(O)', 'Inverter', 733.00, 9235.00, 12.60, '4', 2140.36, 3139908.12, '118.013.4.20.104.16.0170', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (170, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSMB-12CRDN1(I) /MSMB-12CRDN1(O)', 'MSMB-12CRDN1(I) /MSMB-12CRDN1(O)', 'Inverter', 882.00, 11049.00, 12.53, '4', 2575.44, 3778170.48, '118.013.4.21.104.16.0171', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (171, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSMB-18CRDN1(I) /MSMB-18CRDN1(O)', 'MSMB-18CRDN1(I) /MSMB-18CRDN1(O)', 'Inverter', 1640.00, 17186.00, 10.48, '4', 4788.80, 7025169.60, '118.013.4.22.104.16.0172', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (172, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-05MOO/I Outdoor GWC-05MOO/O', 'Indoor GWC-05MOO/I Outdoor GWC-05MOO/O', 'Non-Inverter', 590.90, 5327.50, 9.02, '2', 1725.43, 2531202.88, '118.011.2.02.091.16.0173', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (173, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-09MOO/I Outdoor GWC-09MOO/O', 'Indoor GWC-09MOO/I Outdoor GWC-09MOO/O', 'Non-Inverter', 887.10, 8592.10, 9.69, '2', 2590.33, 3800017.04, '118.011.2.03.091.16.0174', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (174, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-12MOO/I Outdoor GWC-12MOO/O', 'Indoor GWC-12MOO/I Outdoor GWC-12MOO/O', 'Non-Inverter', 1055.00, 11126.50, 10.55, '4', 3080.60, 4519240.20, '118.011.4.04.104.16.0175', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (175, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-18MOO/I Outdoor GWC-18MOO/O', 'Indoor GWC-18MOO/I Outdoor GWC-18MOO/O', 'Non-Inverter', 1721.00, 17513.80, 10.18, '3', 5025.32, 7372144.44, '118.011.3.05.099.16.0176', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (176, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-24MOO/I Outdoor GWC-24MOO/O', 'Indoor GWC-24MOO/I Outdoor GWC-24MOO/O', 'Non-Inverter', 2078.00, 21260.10, 10.23, '3', 6067.76, 8901403.92, '118.011.3.06.091.16.0177', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (177, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-05COO/I Outdoor GWC-05COO/O', 'Indoor GWC-05COO/I Outdoor GWC-05COO/O', 'Non-Inverter', 341.70, 4531.00, 13.26, '4', 997.76, 1463719.79, '118.011.4.07.104.16.0178', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (178, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-07COO/I Outdoor GWC-07COO/O', 'Indoor GWC-07COO/I Outdoor GWC-07COO/O', 'Non-Inverter', 551.70, 7002.50, 12.69, '4', 1610.96, 2363284.19, '118.011.4.08.104.16.0179', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (179, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-09COO/I Outdoor GWC-09COO/O', 'Indoor GWC-09COO/I Outdoor GWC-09COO/O', 'Non-Inverter', 710.90, 8418.10, 11.84, '4', 2075.83, 3045239.68, '118.011.4.09.104.16.0180', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (180, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-12COO/I Outdoor GWC-12COO/O', 'Indoor GWC-12COO/I Outdoor GWC-12COO/O', 'Non-Inverter', 1044.00, 12109.20, 11.60, '4', 3048.48, 4472120.16, '118.011.4.10.104.16.0181', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (181, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-18COO/I Outdoor GWC-18COO/O', 'Indoor GWC-18COO/I Outdoor GWC-18COO/O', 'Non-Inverter', 1549.00, 17759.50, 11.47, '4', 4523.08, 6635358.36, '118.011.4.11.104.16.0182', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (182, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-09GEE/I Outdoor GWC-09GEE/O', 'Indoor GWC-09GEE/I Outdoor GWC-09GEE/O', 'Inverter', 768.00, 8857.60, 12.62, '4', 2242.56, 3289835.52, '118.011.4.12.104.16.0183', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (183, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-12GEE/I Outdoor GWC-12GEE/O', 'Indoor GWC-12GEE/I Outdoor GWC-12GEE/O', 'Inverter', 1110.00, 11846.50, 12.79, '4', 3241.20, 4754840.40, '118.011.4.13.104.16.0184', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (184, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'QS-Q076W5A0 (T08EMV)', 'QS-Q076W5A0 (T08EMV)', 'Inverter', 613.60, 7166.70, 12.30, '4', 1791.71, 2628441.50, '118.004.4.13.104.16.0185', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (185, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'QS-Q056W5A1 (E06FMV)', 'QS-Q056W5A1 (E06FMV)', 'Inverter', 303.90, 4442.00, 14.69, '4', 887.39, 1301798.20, '118.004.4.14.104.16.0186', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (186, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'QS-Q096W5A1 (E10FMV)', 'QS-Q096W5A1 (E10FMV)', 'Inverter', 698.70, 8667.40, 13.76, '4', 2040.20, 2992979.27, '118.004.4.15.104.16.0187', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (187, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-05S3KS-IDRAS-05S3AS-ID', 'RAS-05S3KS-IDRAS-05S3AS-ID', 'Non-Inverter', 418.06, 4831.19, 11.56, '4', 1220.74, 1790818.54, '118.014.4.01.104.16.0188', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (188, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-07S3KS-IDRAS-07S3AS-ID', 'RAS-07S3KS-IDRAS-07S3AS-ID', 'Non-Inverter', 632.39, 6007.24, 9.50, '2', 1846.58, 2708931.10, '118.014.2.02.091.16.0189', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (189, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-10S3KS-IDRAS-10S3AS-ID', 'RAS-10S3KS-IDRAS-10S3AS-ID', 'Non-Inverter', 841.51, 7914.61, 9.41, '2', 2457.21, 3604725.90, '118.014.2.03.091.16.0190', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (190, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-13S3KS-IDRAS-13S3AS-ID', 'RAS-13S3KS-IDRAS-13S3AS-ID', 'Non-Inverter', 1124.42, 12165.49, 10.82, '4', 3283.31, 4816610.49, '118.014.4.04.104.16.0191', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (191, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-18S3KS-IDRAS-18S3AS-ID', 'RAS-18S3KS-IDRAS-18S3AS-ID', 'Non-Inverter', 1611.63, 17048.98, 10.58, '4', 4705.96, 6903642.73, '118.014.4.05.104.16.0192', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (192, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-24S3KS-IDRAS-24S3AS-ID', 'RAS-24S3KS-IDRAS-24S3AS-ID', 'Non-Inverter', 2142.17, 22526.64, 10.52, '4', 6255.14, 9176285.10, '118.014.4.06.104.16.0193', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (193, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-10G2KCV-IDRAS-10G2ACV-ID', 'RAS-10G2KCV-IDRAS-10G2ACV-ID', 'Inverter', 782.82, 8775.22, 13.04, '4', 2285.83, 3353319.06, '118.014.4.07.104.16.0194', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (194, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-13G2KCV-IDRAS-13G2ACV-ID', 'RAS-13G2KCV-IDRAS-13G2ACV-ID', 'Inverter', 1111.63, 11973.12, 14.36, '4', 3245.96, 4761822.73, '118.014.4.08.104.16.0195', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (195, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-18G2KCV-IDRAS-18G2ACV-ID', 'RAS-18G2KCV-IDRAS-18G2ACV-ID', 'Inverter', 1424.58, 16334.92, 14.92, '4', 4159.77, 6102387.87, '118.014.4.09.104.16.0196', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (196, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-22G2KCV-IDRAS-22G2ACV-ID', 'RAS-22G2KCV-IDRAS-22G2ACV-ID', 'Inverter', 1718.34, 19575.87, 15.27, '4', 5017.55, 7360749.96, '118.014.4.10.104.16.0197', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (197, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTV60AXV14/ RV60AXV14;FTV60BXV14/ RV60BXV14', 'FTV60AXV14/ RV60AXV14;FTV60BXV14/ RV60BXV14', 'Non-Inverter', 2012.60, 20908.74, 10.39, '3', 5876.79, 8621253.86, '119.002.3.45.099.16.198', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (198, 24, 241086, 0, NULL, NULL, NULL, NULL, 1, 'McQuay', 'M5WM10L;M5WM10P /M5LC10F', 'M5WM10L;M5WM10P /M5LC10F', 'Non-Inverter', 889.67, 8999.39, 10.12, '3', 2597.84, 3811026.00, '119.016.3.01.099.16.0199', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (199, 24, 241086, 0, NULL, NULL, NULL, NULL, 1, 'McQuay', 'M5WM15L;M5WM15P /M5LC15F', 'M5WM15L;M5WM15P /M5LC15F', 'Non-Inverter', 1089.22, 10878.70, 9.99, '3', 3180.52, 4665826.36, '119.016.3.02.099.16.200', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (200, 24, 241086, 0, NULL, NULL, NULL, NULL, 1, 'McQuay', 'M5WM20L;M5WM20P /M5LC20CL', 'M5WM20L;M5WM20P /M5LC20CL', 'Non-Inverter', 1752.69, 16534.84, 9.43, '2', 5117.85, 7507892.99, '119.016.2.03.091.16.201', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (201, 24, 241086, 0, NULL, NULL, NULL, NULL, 1, 'McQuay', 'M5WM25L;M5WM25P /M5LC25CL', 'M5WM25L;M5WM25P /M5LC25CL', 'Non-Inverter', 2007.30, 20014.62, 9.97, '3', 5861.32, 8598550.57, '119.016.3.04.099.16.202', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (202, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'EL-06R4DEL-06R4L', 'EL-06R4DEL-06R4L', 'Non-Inverter', 338.00, 4500.00, 13.30, '4', 986.96, 1447870.32, '118.017.4.01.104.16.0203', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (203, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'EL-P06R4DEL-P06R4L', 'EL-P06R4DEL-P06R4L', 'Non-Inverter', 338.00, 4500.00, 13.30, '4', 986.96, 1447870.32, '118.017.4.02.104.16.0204', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (204, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'EL-10R4DEL-10R4L', 'EL-10R4DEL-10R4L', 'Non-Inverter', 722.00, 8100.00, 11.20, '4', 2108.24, 3092788.08, '118.017.4.03.104.16.0205', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (205, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'EL-P10R4DEL-P10R4L', 'EL-P10R4DEL-P10R4L', 'Non-Inverter', 722.00, 8100.00, 11.20, '4', 2108.24, 3092788.08, '118.017.4.04.104.16.0206', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (206, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'EC-05R4DEC-05R4L', 'EC-05R4DEC-05R4L', 'Non-Inverter', 416.00, 4470.00, 10.75, '4', 1214.72, 1781994.24, '118.017.4.05.104.16.0207', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (207, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'EC-09R4DEC-09R4L', 'EC-09R4DEC-09R4L', 'Non-Inverter', 917.00, 8750.00, 9.54, '2', 2677.64, 3928097.88, '118.017.2.06.091.16.0208', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (208, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', '8530 BTU/h', '8530 BTU/h', 'Inverter', 670.00, 8409.19, 14.96, '4', 1956.40, 2870038.80, '011.015.4.01.104.16.0209', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (209, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', '10918 - 11942 BTU/h', '10918 - 11942 BTU/h', 'Inverter', 980.00, 11707.39, 14.85, '4', 2861.60, 4197967.20, '011.015.4.02.104.16.0210', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (210, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', '17060 BTU/h', '17060 BTU/h', 'Inverter', 1640.00, 16196.07, 11.74, '4', 4788.80, 7025169.60, '011.015.4.03.104.16.0211', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (211, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', '5000 BTU/h', '5000 BTU/h', 'Non-Inverter', 490.00, 4511.53, 10.63, '4', 1430.80, 2098983.60, '011.015.4.04.104.16.0212', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (212, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', '8530 BTU/h', '8530 BTU/h', 'Non-Inverter', 925.00, 7889.21, 9.05, '2', 2701.00, 3962367.00, '011.015.2.05.091.16.0213', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (213, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', '9213 BTU/h', '9213 BTU/h', 'Non-Inverter', 740.00, 8589.04, 11.80, '4', 2160.80, 3169893.60, '011.015.4.06.104.16.0214', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (214, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', '11771 BTU/h', '11771 BTU/h', 'Non-Inverter', 1120.00, 11194.69, 10.13, '3', 3270.40, 4797676.80, '011.015.3.07.099.16.0215', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (215, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', '9000 BTU/h', '9000 BTU/h', 'Non-Inverter', 868.00, 8122.67, 10.03, '3', 2534.56, 3718199.52, '011.015.3.08.099.16.0216', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (216, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', '12283 BTU/h', '12283 BTU/h', 'Non-Inverter', 1000.00, 11391.94, 11.25, '4', 2920.00, 4283640.00, '011.015.4.09.104.16.0217', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (217, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', '17413 - 18425 BTU/h', '17413 - 18425 BTU/h', 'Non-Inverter', 1460.00, 17742.79, 11.90, '4', 4263.20, 6254114.40, '011.015.4.10.104.16.0218', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (218, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', '24266 - 25249 BTU/h', '24266 - 25249 BTU/h', 'Non-Inverter', 2605.00, 24878.95, 11.97, '4', 7606.60, 11158882.20, '011.015.4.11.104.16.0219', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (219, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A5UDL /AU-A5UDL', 'AH-A5UDL /AU-A5UDL', 'Non-Inverter', 365.34, 4682.46, 12.82, '4', 1066.79, 1564985.04, '118.008.4.23.104.16.0220', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (220, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-09UCR/IGWC-09UCR/O', 'GWC-09UCR/IGWC-09UCR/O', 'Inverter', 620.10, 8616.10, 17.21, '4', 1810.69, 2656285.16, '118.011.4.14.104.16.0221', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (221, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-18UCR/IGWC-18UCR/O', 'GWC-18UCR/IGWC-18UCR/O', 'Inverter', 1544.80, 17526.80, 13.74, '4', 4510.82, 6617367.07, '118.011.4.15.104.16.0222', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (222, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS-05 CNI', 'DDS-05 CNI', 'Non-Inverter', 398.90, 4601.95, 11.54, '4', 1164.79, 1708744.00, '119.018.4.01.104.16.0223', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (223, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS-05 CI', 'DDS-05 CI', 'Non-Inverter', 392.95, 4418.58, 11.25, '4', 1147.41, 1683256.34, '119.018.4.02.104.16.0224', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (224, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS-09 CNI', 'DDS-09 CNI', 'Non-Inverter', 860.80, 9102.57, 10.57, '4', 2513.54, 3687357.31, '119.018.4.03.104.16.0225', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (225, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS-12 CNI', 'DDS-12 CNI', 'Non-Inverter', 1060.90, 11210.59, 10.57, '4', 3097.83, 4544513.68, '119.018.4.04.104.16.0226', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (226, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS-18 CNI', 'DDS-18 CNI', 'Non-Inverter', 1714.98, 17964.06, 10.47, '4', 5007.74, 7346356.93, '119.018.4.05.104.16.0227', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (227, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS-199 CI', 'DDS-199 CI', 'Non-Inverter', 688.25, 7307.88, 10.62, '4', 2009.69, 2948215.23, '119.018.4.06.104.16.0228', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (228, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-07MOO/IGWC-07MOO/O', 'GWC-07MOO/IGWC-07MOO/O', 'Non-Inverter', 731.00, 6841.00, 9.35, '2', 2134.52, 3131340.84, '118.019.2.01.091.16.0229', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (229, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-09MOO/I Outdoor GWC-09MOO/O', 'Indoor GWC-09MOO/I Outdoor GWC-09MOO/O', 'Non-Inverter', 887.10, 8592.10, 9.69, '2', 2590.33, 3800017.04, '118.019.2.02.091.16.0230', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (230, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-12MOO/I Outdoor GWC-12MOO/O', 'Indoor GWC-12MOO/I Outdoor GWC-12MOO/O', 'Non-Inverter', 1055.00, 11126.50, 10.55, '4', 3080.60, 4519240.20, '118.019.4.03.104.16.0231', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (231, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-18MOO/I Outdoor GWC-18MOO/O', 'Indoor GWC-18MOO/I Outdoor GWC-18MOO/O', 'Non-Inverter', 1721.00, 17513.80, 10.18, '3', 5025.32, 7372144.44, '118.019.3.04.099.16.0232', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (232, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-24MOO/I Outdoor GWC-24MOO/O', 'Indoor GWC-24MOO/I Outdoor GWC-24MOO/O', 'Non-Inverter', 2078.00, 21260.10, 10.23, '3', 6067.76, 8901403.92, '118.019.3.05.099.16.0233', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (233, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-05MOO/I Outdoor GWC-05MOO/O', 'Indoor GWC-05MOO/I Outdoor GWC-05MOO/O', 'Non-Inverter', 590.90, 5327.50, 9.02, '2', 1725.43, 2531202.88, '118.019.2.06.091.16.0234', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (234, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-18COO/I Outdoor GWC-18COO/O', 'Indoor GWC-18COO/I Outdoor GWC-18COO/O', 'Non-Inverter', 1549.00, 17759.50, 11.47, '4', 4523.08, 6635358.36, '118.019.4.07.104.16.0235', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (235, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-05COO/I Outdoor GWC-05COO/O', 'Indoor GWC-05COO/I Outdoor GWC-05COO/O', 'Non-Inverter', 341.70, 4531.00, 13.26, '4', 997.76, 1463719.79, '118.019.4.08.104.16.0236', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (236, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-09COO/I Outdoor GWC-09COO/O', 'Indoor GWC-09COO/I Outdoor GWC-09COO/O', 'Non-Inverter', 710.90, 8416.10, 11.84, '4', 2075.83, 3045239.68, '118.019.4.09.104.16.0237', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (237, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-12COO/I Outdoor GWC-12COO/O', 'Indoor GWC-12COO/I Outdoor GWC-12COO/O', 'Non-Inverter', 1044.00, 12109.20, 11.60, '4', 3048.48, 4472120.16, '118.019.4.10.104.16.0238', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (238, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-07COO/I Outdoor GWC-07COO/O', 'Indoor GWC-07COO/I Outdoor GWC-07COO/O', 'Non-Inverter', 551.70, 7002.50, 12.69, '4', 1610.96, 2363284.19, '118.019.4.11.104.16.0239', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (239, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-12GEE/I Outdoor GWC-12GEE/O', 'Indoor GWC-12GEE/I Outdoor GWC-12GEE/O', 'Inverter', 1110.00, 11846.50, 12.79, '4', 3241.20, 4754840.40, '118.019.4.12.104.16.0240', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (240, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-09GEE/I Outdoor GWC-09GEE/O', 'Indoor GWC-09GEE/I Outdoor GWC-09GEE/O', 'Inverter', 768.00, 8857.60, 12.62, '4', 2242.56, 3289835.52, '118.019.4.13.104.16.0241', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (241, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'QS-Q076W5A1 (T08EMV1)', 'QS-Q076W5A1 (T08EMV1)', 'Inverter', 628.30, 7559.20, 12.79, '4', 1834.64, 2691411.01, '118.004.4.16.104.16.0242', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (242, 29, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujiaire', 'Wall Mounted 1 PK(FW10CIJ-2A1V;FL10CIJ-2A1N)', 'Wall Mounted 1 PK(FW10CIJ-2A1V;FL10CIJ-2A1N)', 'Non-Inverter', 884.10, 8801.00, 10.47, '4', 2581.57, 3787166.12, '119.020.4.01.104.16.0243', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (243, 29, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujiaire', 'Wall Mounted 1,5 PK(FW15CIJ-2A1V;FL15CIJ-2A1N)', 'Wall Mounted 1,5 PK(FW15CIJ-2A1V;FL15CIJ-2A1N)', 'Non-Inverter', 1089.00, 11962.00, 10.98, '4', 3179.88, 4664883.96, '119.020.4.02.104.16.0244', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (244, 29, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujiaire', 'Wall Mounted 2 PK(FW20CIJ-2A1V;FL20CIJ-2A1N)', 'Wall Mounted 2 PK(FW20CIJ-2A1V;FL20CIJ-2A1N)', 'Non-Inverter', 1845.00, 18489.00, 10.02, '3', 5387.40, 7903315.80, '119.020.3.03.099.16.0245', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (245, 29, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujiaire', 'Wall Mounted 2,5 PK(FW25CIJ-2A1V;FL25CIJ-2A1N)', 'Wall Mounted 2,5 PK(FW25CIJ-2A1V;FL25CIJ-2A1N)', 'Non-Inverter', 2143.00, 22435.00, 10.47, '4', 6257.56, 9179840.52, '119.020.4.04.104.16.0246', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (246, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KC105AGC6', 'AQA-KC105AGC6', 'Non-Inverter', 343.30, 4189.54, 12.20, '4', 1002.44, 1470573.61, '119.021.4.01.104.16.0247', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (247, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KC105AG6', 'AQA-KC105AG6', 'Non-Inverter', 575.90, 5341.94, 9.28, '2', 1681.63, 2466948.28, '119.021.2.02.091.16.0248', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (248, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KC109AG6', 'AQA-KC109AG6', 'Non-Inverter', 977.50, 8753.75, 10.13, '3', 2854.30, 4187258.10, '119.021.3.03.099.16.0249', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (249, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KC112AG6', 'AQA-KC112AG6', 'Non-Inverter', 1063.10, 10862.29, 10.21, '3', 3104.25, 4553937.68, '119.021.3.04.099.16.0250', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (250, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KC118AG6', 'AQA-KC118AG6', 'Non-Inverter', 1715.70, 16841.14, 9.81, '2', 5009.84, 7349441.15, '119.021.2.05.091.16.0251', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (251, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC05NAS', 'GWC05NAS', 'Non-Inverter', 547.00, 5179.42, 9.17, '2', 1597.24, 2343151.08, '011.022.2.01.091.16.0252', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (252, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC07NAS', 'GWC07NAS', 'Non-Inverter', 720.00, 7194.80, 9.85, '2', 2102.40, 3084220.80, '011.022.2.02.091.16.0253', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (253, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC09NAS', 'GWC09NAS', 'Non-Inverter', 850.00, 8528.13, 9.99, '3', 2482.00, 3641094.00, '011.022.3.03.099.16.0254', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (254, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC12NAS', 'GWC12NAS', 'Non-Inverter', 1070.00, 10753.77, 9.89, '2', 3124.40, 4583494.80, '011.022.2.04.091.16.0255', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (255, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC18NAS', 'GWC18NAS', 'Non-Inverter', 1832.00, 17691.44, 10.41, '4', 5349.44, 7847628.48, '011.022.4.05.104.16.0256', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (256, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC24NAS', 'GWC24NAS', 'Non-Inverter', 2140.00, 21226.90, 10.04, '3', 6248.80, 9166989.60, '011.022.3.06.099.16.0257', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (257, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC05LWS', 'GWC05LWS', 'Non-Inverter', 320.00, 4359.56, 13.26, '4', 934.40, 1370764.80, '011.022.4.07.104.16.0258', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (258, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC07LWS', 'GWC07LWS', 'Non-Inverter', 520.00, 6413.86, 12.17, '4', 1518.40, 2227492.80, '011.022.4.08.104.16.0259', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (259, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC09LWS', 'GWC09LWS', 'Non-Inverter', 680.00, 8740.83, 12.42, '4', 1985.60, 2912875.20, '011.022.4.09.104.16.0260', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (260, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC09KF-K3DNA6A', 'GWC09KF-K3DNA6A', 'Inverter', 800.00, 11095.33, 9.98, '3', 2336.00, 3426912.00, '011.022.3.10.099.16.0261', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (261, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC12KF-K3DNA6A', 'GWC12KF-K3DNA6A', 'Inverter', 1100.00, 12120.55, 10.93, '4', 3212.00, 4712004.00, '011.022.4.11.104.16.0262', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (262, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC18KG-K3DNA6E', 'GWC18KG-K3DNA6E', 'Inverter', 1600.00, 17933.66, 12.15, '4', 4672.00, 6853824.00, '011.022.4.12.104.16.0263', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (263, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-24COO/I Outdoor GWC-24COO/O', 'Indoor GWC-24COO/I Outdoor GWC-24COO/O', 'Non-Inverter', 2338.70, 23058.20, 9.86, '2', 6829.00, 10018148.87, '118.011.2.16.091.16.0264', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (264, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PU9TKP/CU-PU9TKP', 'CS-PU9TKP/CU-PU9TKP', 'Inverter', 714.50, 8285.36, 12.99, '4', 2086.34, 3060660.78, '118.009.4.12.104.16.0265', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (265, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PU12TKP/CU-PU12TKP', 'CS-PU12TKP/CU-PU12TKP', 'Inverter', 1001.90, 11194.43, 12.75, '4', 2925.55, 4291778.92, '118.009.4.13.104.16.0266', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (266, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PU18TKP/CU-PU18TKP', 'CS-PU18TKP/CU-PU18TKP', 'Inverter', 1424.40, 17007.79, 13.74, '4', 4159.25, 6101616.82, '118.009.4.14.104.16.0267', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (267, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PU24TKP/CU-PU24TKP', 'CS-PU24TKP/CU-PU24TKP', 'Inverter', 1736.60, 19633.33, 13.10, '4', 5070.87, 7438969.22, '118.009.4.15.104.16.0268', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (268, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSM93', 'HSM93', 'Non-Inverter', 945.00, 8161.50, 8.63, '1', 2759.40, 4048039.80, '118.024.1.01.085.16.0269', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (269, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSD6000', 'HSD6000', 'Non-Inverter', 416.00, 4510.60, 10.84, '4', 1214.72, 1781994.24, '118.024.4.02.104.16.0270', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (270, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSD6006', 'HSD6006', 'Non-Inverter', 365.00, 4531.10, 12.41, '4', 1065.80, 1563528.60, '118.024.4.03.104.16.0271', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (271, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSD7006', 'HSD7006', 'Non-Inverter', 671.75, 6844.40, 10.19, '3', 1961.51, 2877535.17, '118.024.3.04.099.16.0272', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (272, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSD9000', 'HSD9000', 'Non-Inverter', 800.77, 8096.60, 10.11, '3', 2338.25, 3430210.40, '118.024.3.05.099.16.0273', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (273, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSD9006', 'HSD9006', 'Non-Inverter', 733.78, 8097.60, 11.01, '4', 2142.64, 3143249.36, '118.024.4.06.104.16.0274', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (274, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSD12006', 'HSD12006', 'Non-Inverter', 1185.74, 11942.00, 10.07, '3', 3462.36, 5079283.29, '118.024.3.07.099.16.0275', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (275, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSD18006', 'HSD18006', 'Non-Inverter', 1770.62, 17820.80, 10.06, '3', 5170.21, 7584698.66, '118.024.3.08.099.16.0276', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (276, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSD23006', 'HSD23006', 'Non-Inverter', 2368.70, 23643.00, 10.06, '3', 6916.60, 10146658.07, '118.024.3.09.099.16.0277', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (277, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-05B4/FOR1', 'ASW-05B4/FOR1', 'Non-Inverter', 350.00, 5000.00, 11.18, '4', 1022.00, 1499274.00, '104.025.4.01.104.16.0278', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (278, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-05A4/FAR1', 'ASW-05A4/FAR1', 'Non-Inverter', 540.00, 5000.00, 10.52, '4', 1576.80, 2313165.60, '104.025.4.02.104.16.0279', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (279, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-07A4/FAR1', 'ASW-07A4/FAR1', 'Non-Inverter', 720.00, 7000.00, 10.44, '4', 2102.40, 3084220.80, '104.025.4.03.104.16.0280', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (280, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-09A4/FAR1', 'ASW-09A4/FAR1', 'Non-Inverter', 900.00, 9000.00, 10.50, '4', 2628.00, 3855276.00, '104.025.4.04.104.16.0281', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (281, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-18A4/FAR1', 'ASW-18A4/FAR1', 'Non-Inverter', 1800.00, 18000.00, 10.47, '4', 5256.00, 7710552.00, '104.025.4.05.104.16.0282', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (282, 33, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Elba', 'EA 60 A', 'EA 60 A', 'Non-Inverter', 398.06, 4460.81, 11.20, '4', 1162.34, 1705145.74, '119.026.4.01.104.16.0283', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (283, 33, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Elba', 'EA 80 A', 'EA 80 A', 'Non-Inverter', 886.90, 7654.85, 8.63, '1', 2589.75, 3799160.32, '119.026.1.02.085.16.0284', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (284, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-09ECO03/LW', 'HSU-09ECO03/LW', 'Non-Inverter', 741.60, 8143.00, 10.98, '4', 2165.47, 3176747.42, '119.012.4.10.104.16.0285', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (285, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'Everest 05', 'Everest 05', 'Non-Inverter', 396.00, 4776.00, 12.06, '4', 1156.32, 1696321.44, '118.007.4.09.104.16.0286', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (286, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'Polar 05', 'Polar 05', 'Non-Inverter', 396.00, 4776.00, 12.06, '4', 1156.32, 1696321.44, '118.007.4.10.104.16.0287', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (287, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'Everest 09', 'Everest 09', 'Non-Inverter', 793.00, 8656.00, 10.92, '4', 2315.56, 3396926.52, '118.007.4.11.104.16.0288', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (288, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'Polar 09', 'Polar 09', 'Non-Inverter', 793.00, 8656.00, 10.92, '4', 2315.56, 3396926.52, '118.007.4.12.104.16.0289', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (289, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'Polar 12', 'Polar 12', 'Non-Inverter', 1030.00, 11321.00, 10.99, '4', 3007.60, 4412149.20, '118.007.4.13.104.16.0290', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (290, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'Polar 18', 'Polar 18', 'Non-Inverter', 1553.00, 16865.00, 10.86, '4', 4534.76, 6652492.92, '118.007.4.14.104.16.0291', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (291, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-05BKS-ID / RAS-05BAS-ID', 'RAS-05BKS-ID / RAS-05BAS-ID', 'Non-Inverter', 389.00, 4695.00, 12.07, '4', 1135.88, 1666335.96, '118.014.4.11.104.16.0292', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (292, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-07BKS-ID / RAS-07BAS-ID', 'RAS-07BKS-ID / RAS-07BAS-ID', 'Non-Inverter', 690.00, 7482.00, 10.84, '4', 2014.80, 2955711.60, '118.014.4.12.104.16.0293', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (293, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-10BKS-ID / RAS-10BAS-ID', 'RAS-10BKS-ID / RAS-10BAS-ID', 'Non-Inverter', 807.00, 8892.00, 11.02, '4', 2356.44, 3456897.48, '118.014.4.13.104.16.0294', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (294, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-13BKS-ID / RAS-13BAS-ID', 'RAS-13BKS-ID / RAS-13BAS-ID', 'Non-Inverter', 1029.00, 11464.00, 11.14, '4', 3004.68, 4407865.56, '118.014.4.14.104.16.0295', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (295, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-18BKS-ID / RAS-18BAS-ID', 'RAS-18BKS-ID / RAS-18BAS-ID', 'Non-Inverter', 1708.00, 17776.50, 10.40, '4', 4987.36, 7316457.12, '118.014.4.15.104.16.0296', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (296, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-24BKS-ID / RAS-24BAS-ID', 'RAS-24BKS-ID / RAS-24BAS-ID', 'Non-Inverter', 2022.00, 22522.00, 11.14, '4', 5904.24, 8661520.08, '118.014.4.16.104.16.0297', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (297, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHD005N16 / 38KHD005N16', '42KHD005N16 / 38KHD005N16', 'Non-Inverter', 389.00, 4695.00, 12.07, '4', 1135.88, 1666335.96, '118.014.4.17.104.16.0298', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (298, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHD007N16 / 38KHD007N16', '42KHD007N16 / 38KHD007N16', 'Non-Inverter', 690.00, 7482.00, 10.84, '4', 2014.80, 2955711.60, '118.014.4.18.104.16.0299', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (299, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHD009N16 / 38KHD009N16', '42KHD009N16 / 38KHD009N16', 'Non-Inverter', 807.00, 8892.00, 11.02, '4', 2356.44, 3456897.48, '118.014.4.19.104.16.0300', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (300, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHD012N16 / 38KHD012N16', '42KHD012N16 / 38KHD012N16', 'Non-Inverter', 1029.00, 11464.00, 11.14, '4', 3004.68, 4407865.56, '118.014.4.20.104.16.0301', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (301, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHD018N16 / 38KHD018N16', '42KHD018N16 / 38KHD018N16', 'Non-Inverter', 1708.00, 17776.50, 10.40, '4', 4987.36, 7316457.12, '118.014.4.21.104.16.0302', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (302, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHD024N16 / 38KHD024N16', '42KHD024N16 / 38KHD024N16', 'Non-Inverter', 2022.00, 22522.00, 11.14, '4', 5904.24, 8661520.08, '118.014.4.22.104.16.0303', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (303, 34, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TECO', 'LS05401IDW / LT05401IDW', 'LS05401IDW / LT05401IDW', 'Non-Inverter', 410.00, 4387.00, 10.70, '4', 1197.20, 1756292.40, '119.028.4.01.104.16.0304', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (304, 34, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TECO', 'LS09401ID / LT09401ID', 'LS09401ID / LT09401ID', 'Non-Inverter', 741.70, 8182.00, 11.02, '4', 2165.76, 3177175.79, '119.028.4.02.104.16.0305', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (305, 34, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TECO', 'LS09401IDW / LT09401IDW', 'LS09401IDW / LT09401IDW', 'Non-Inverter', 745.30, 8227.00, 11.05, '4', 2176.28, 3192596.89, '119.028.4.03.104.16.0306', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (306, 34, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TECO', 'LS12401ID / LT12401ID', 'LS12401ID / LT12401ID', 'Non-Inverter', 1281.80, 11714.00, 9.10, '2', 3742.86, 5490769.75, '119.028.2.04.091.16.0307', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (307, 34, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TECO', 'LS18401ID / LT18401ID', 'LS18401ID / LT18401ID', 'Non-Inverter', 1935.40, 17883.00, 9.20, '2', 5651.37, 8290556.86, '119.028.2.05.091.16.0308', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (308, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-05D/ESA-05L', 'ESA-05D/ESA-05L', 'Non-Inverter', 397.00, 4607.00, 11.60, '4', 1159.24, 1700605.08, '118.017.4.07.104.16.0309', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (309, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-07D/ESA-07L', 'ESA-07D/ESA-07L', 'Non-Inverter', 733.00, 7060.00, 9.63, '2', 2140.36, 3139908.12, '118.017.2.08.091.16.0310', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (310, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-09D/ESA-09L', 'ESA-09D/ESA-09L', 'Non-Inverter', 887.00, 9324.00, 10.51, '4', 2590.04, 3799588.68, '118.017.4.09.104.16.0311', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (311, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-12D/ESA-12L', 'ESA-12D/ESA-12L', 'Non-Inverter', 1043.00, 11368.00, 10.90, '4', 3045.56, 4467836.52, '118.017.4.10.104.16.0312', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (312, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-18D/ESA-18L', 'ESA-18D/ESA-18L', 'Non-Inverter', 1747.00, 16864.00, 9.65, '2', 5101.24, 7483519.08, '118.017.4.11.091.16.0313', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (313, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'EVA-10D/EVA-10L', 'EVA-10D/EVA-10L', 'Inverter', 850.00, 9008.00, 11.79, '4', 2482.00, 3641094.00, '118.017.4.12.104.16.0314', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (314, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-09UCR/I & GWC-09UCR/O', 'GWC-09UCR/I & GWC-09UCR/O', 'Non-Inverter', 687.70, 9015.10, 17.21, '4', 2008.08, 2945859.23, '118.019.4.14.104.16.0315', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (315, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-18UCR/I & GWC-18UCR/O', 'GWC-18UCR/I & GWC-18UCR/O', 'Inverter', 233.00, 17526.60, 13.74, '4', 680.36, 998088.12, '118.019.4.15.104.16.0316', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (316, 28, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-24COO/I & GWC-24COO/O', 'GWC-24COO/I & GWC-24COO/O', 'Inverter', 2338.70, 23058.20, 9.86, '2', 6829.00, 10018148.87, '118.019.2.16.091.16.0317', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (317, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-05', 'CSC-05', 'Non-Inverter', 389.00, 4857.60, 12.50, '4', 1135.88, 1666335.96, '118.029.4.01.104.16.0318', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (318, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-09', 'CSC-09', 'Non-Inverter', 784.00, 9253.30, 11.80, '4', 2289.28, 3358373.76, '118.029.4.02.104.16.0319', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (319, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-05CSA/BY', 'TAC-05CSA/BY', 'Non-Inverter', 412.93, 4565.88, 11.06, '4', 1205.76, 1768843.47, '118.031.4.01.104.17.0001', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (320, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-09CSA/BY', 'TAC-09CSA/BY', 'Non-Inverter', 840.08, 8687.06, 10.58, '4', 2453.03, 3598600.29, '118.031.4.02.104.17.0002', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (321, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-06CSA/KA', 'TAC-06CSA/KA', 'Non-Inverter', 365.29, 4780.18, 13.08, '4', 1066.65, 1564770.86, '118.031.4.03.104.17.0003', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (322, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-09CSA/KA', 'TAC-09CSA/KA', 'Non-Inverter', 766.90, 8516.55, 11.11, '4', 2239.35, 3285123.52, '118.031.4.04.104.17.0004', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (323, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KC105AGE6', 'AQA-KC105AGE6', 'Non-Inverter', 358.00, 4056.39, 11.33, '4', 1045.36, 1533543.12, '119.021.4.06.104.17.0005', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (324, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KC205AGE3', 'AQA-KC205AGE3', 'Non-Inverter', 358.00, 4056.39, 11.33, '4', 1045.36, 1533543.12, '119.021.4.07.104.17.0006', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (325, 20, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Akari', 'AC-91200GLWi/k', 'AC-91200GLWi/k', 'Non-Inverter', 1099.50, 9550.01, 8.70, '1', 3210.54, 4709862.18, '119.010.1.03.085.17.0007', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (326, 20, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Akari', 'AC-91800GLWi/k', 'AC-91800GLWi/k', 'Non-Inverter', 1540.80, 14753.25, 9.58, '2', 4499.14, 6600232.51, '119.010.2.04.091.17.0008', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (327, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'COOCAA', 'SMFC05A-1AA1NB /SMFC05A-2AA1NB', 'SMFC05A-1AA1NB /SMFC05A-2AA1NB', 'Non-Inverter', 335.00, 4441.72, 12.38, '4', 978.20, 1435019.40, '011.022.4.13.104.17.0009', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (328, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'COOCAA', 'SMFC07A-2AA1NB /SMFC07A-1AA1NA', 'SMFC07A-2AA1NB /SMFC07A-1AA1NA', 'Non-Inverter', 500.00, 6373.93, 12.10, '4', 1460.00, 2141820.00, '011.022.4.14.104.17.0010', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (329, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'COOCAA', 'SMFC09A-1AA1NA /SMFC09A-2AA1NB', 'SMFC09A-1AA1NA /SMFC09A-2AA1NB', 'Non-Inverter', 970.00, 8539.74, 10.09, '3', 2832.40, 4155130.80, '011.022.3.15.099.17.0011', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (330, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'COOCAA', 'SMFC12A-3AA1NA', 'SMFC12A-3AA1NA', 'Non-Inverter', 1279.00, 11642.89, 9.89, '2', 3734.68, 5478775.56, '011.022.2.16.091.17.0012', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (331, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'COOCAA', 'SMFC18A-4AA1NA', 'SMFC18A-4AA1NA', 'Non-Inverter', 1918.00, 17386.77, 10.19, '3', 5600.56, 8216021.52, '011.022.3.17.099.17.0013', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (332, 31, 241086, 0, NULL, NULL, NULL, NULL, 1, 'COOCAA', 'SMFC24A-4AA1NA', 'SMFC24A-4AA1NA', 'Non-Inverter', 2220.00, 21390.13, 10.19, '3', 6482.40, 9509680.80, '011.022.3.18.099.17.0014', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (333, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-12', 'CSC-12', 'Non-Inverter', 1100.00, 11860.10, 10.78, '4', 3212.00, 4712004.00, '118.029.4.03.104.17.0015', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (334, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-18', 'CSC-18', 'Non-Inverter', 1545.50, 16227.50, 10.50, '4', 4512.86, 6620365.62, '118.029.4.04.104.17.0016', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (335, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-U13TKP /CU-U13TKP', 'CS-U13TKP /CU-U13TKP', 'Inverter', 1031.30, 11524.71, 12.81, '4', 3011.40, 4417717.93, '118.009.4.16.104.17.0017', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (336, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-U10TKP /CU-U10TKP', 'CS-U10TKP /CU-U10TKP', 'Inverter', 768.70, 9211.72, 13.74, '4', 2244.60, 3292834.07, '118.009.4.17.104.17.0018', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (337, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-X18UEY /AU-X18UEY', 'AH-X18UEY /AU-X18UEY', 'Inverter', 1493.66, 17262.57, 14.84, '4', 4361.49, 6398301.72, '118.008.4.24.104.17.0019', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (338, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-X9UEY /AU-X9UEY', 'AH-X9UEY /AU-X9UEY', 'Inverter', 822.00, 8696.57, 12.48, '4', 2400.24, 3521152.08, '118.008.4.25.104.17.0020', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (339, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-X12UEY /AU-X12UEY', 'AH-X12UEY /AU-X12UEY', 'Inverter', 1065.53, 12094.93, 13.47, '4', 3111.35, 4564346.93, '118.008.4.26.104.17.0021', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (340, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP6UHY /AU-X6UHY', 'AH-XP6UHY /AU-X6UHY', 'Inverter', 385.98, 5152.26, 13.76, '4', 1127.06, 1653399.37, '118.008.4.27.104.17.0022', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (341, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP10UHY /AU-X10UHY', 'AH-XP10UHY /AU-X10UHY', 'Inverter', 754.76, 9245.09, 14.54, '4', 2203.90, 3233120.13, '118.008.4.28.104.17.0023', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (342, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP13UHY /AU-X13UHY', 'AH-XP13UHY /AU-X13UHY', 'Inverter', 976.90, 11974.93, 14.64, '4', 2852.55, 4184687.92, '118.008.4.29.104.17.0024', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (343, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-07', 'CSC-07', 'Non-Inverter', 642.00, 7765.00, 12.10, '4', 1874.64, 2750096.88, '118.029.4.05.104.17.0025', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (344, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'BS-Q096J1S0 (D10SMV.NJ0T;D10SMV.UJ0T)', 'BS-Q096J1S0 (D10SMV.NJ0T;D10SMV.UJ0T)', 'Inverter', 410.00, 9200.00, 12.60, '4', 1197.20, 1756292.40, '118.004.4.17.104.17.0026', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (345, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S4-Q12JA2PA (E13SIV.NJAT;E13SIV.UJAT)', 'S4-Q12JA2PA (E13SIV.NJAT;E13SIV.UJAT)', 'Inverter', 1030.00, 12000.00, 14.75, '4', 3007.60, 4412149.20, '118.004.4.18.104.17.0027', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (346, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-05MOO2/I Outdoor GWC-05MOO2/O', 'Indoor GWC-05MOO2/I Outdoor GWC-05MOO2/O', 'Non-Inverter', 351.00, 4245.00, 12.10, '4', 1024.92, 1503557.64, '118.011.4.17.104.17.0028', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (347, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSOC-05CRLN2 (I) /MSOC-05CRLN2 (O)', 'MSOC-05CRLN2 (I) /MSOC-05CRLN2 (O)', 'Non-Inverter', 329.00, 4445.00, 13.51, '4', 960.68, 1409317.56, '118.013.4.23.104.17.0029', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (348, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBM-05CRLN2(I) /MSBM-05CRLN2(O)', 'MSBM-05CRLN2(I) /MSBM-05CRLN2(O)', 'Non-Inverter', 329.00, 4445.00, 13.51, '4', 960.68, 1409317.56, '118.013.4.24.104.17.0030', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (349, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSFO-05CRLN2(I) /MSFO-05CRLN2(O)', 'MSFO-05CRLN2(I) /MSFO-05CRLN2(O)', 'Non-Inverter', 331.00, 4330.00, 13.08, '4', 966.52, 1417884.84, '118.013.4.25.104.17.0031', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (350, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'AQA-K107AG6 /AQA-C107AG6', 'AQA-K107AG6 /AQA-C107AG6', 'Non-Inverter', 747.60, 7407.46, 9.91, '2', 2182.99, 3202449.26, '119.021.2.08.091.17.0032', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (351, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'AQA-K109AGC6 /AQA-C109AGC6', 'AQA-K109AGC6 /AQA-C109AGC6', 'Non-Inverter', 709.80, 8796.01, 12.39, '4', 2072.62, 3040527.67, '119.021.4.09.104.17.0033', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (352, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSOC-09CRLN2(I) /MSOC-09CRLN2(O)', 'MSOC-09CRLN2(I) /MSOC-09CRLN2(O)', 'Non-Inverter', 688.00, 8851.00, 12.86, '4', 2008.96, 2947144.32, '118.013.4.26.104.17.0034', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (353, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBM-09CRLN2(I) /MSBM-09CRLN2(O)', 'MSBM-09CRLN2(I) /MSBM-09CRLN2(O)', 'Non-Inverter', 688.00, 8851.00, 12.86, '4', 2008.96, 2947144.32, '118.013.4.27.104.17.0035', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (354, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSFO-09CRLN2(I) /MSFO-09CRLN2(O)', 'MSFO-09CRLN2(I) /MSFO-09CRLN2(O)', 'Non-Inverter', 689.00, 8649.00, 12.55, '4', 2011.88, 2951427.96, '118.013.4.28.104.17.0036', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (355, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-U18TKP /CU-U18TKP', 'CS-U18TKP /CU-U18TKP', 'Inverter', 1477.50, 17560.20, 14.21, '4', 4314.30, 6329078.10, '118.009.4.18.104.17.0037', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (356, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-U24TKP /CU-U24TKP', 'CS-U24TKP /CU-U24TKP', 'Inverter', 1792.20, 20496.23, 13.87, '4', 5233.22, 7677139.61, '118.009.4.19.104.17.0038', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (357, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBN-05CRN1 (I) /MSBN-05CRN1 (O)', 'MSBN-05CRN1 (I) /MSBN-05CRN1 (O)', 'Non-Inverter', 395.00, 4644.00, 11.76, '4', 1153.40, 1692037.80, '118.013.4.26.104.17.0039', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (358, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBN-09CRN1 (I) /MSBN-09CRN1 (O)', 'MSBN-09CRN1 (I) /MSBN-09CRN1 (O)', 'Non-Inverter', 894.00, 8716.00, 9.75, '2', 2610.48, 3829574.16, '118.013.2.27.091.17.0040', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (359, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBN-18CRN1 (I) /MSBN-18CRN1 (O)', 'MSBN-18CRN1 (I) /MSBN-18CRN1 (O)', 'Non-Inverter', 1715.00, 17116.00, 9.98, '2', 5007.80, 7346442.60, '118.013.2.28.091.17.0041', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (360, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'DR Kuhler ', 'GWC12NAS ', 'GWC12NAS ', 'Non-Inverter', 1070.00, 11003.96, 10.82, '4', 3124.40, 4583494.80, '011.030.4.01.104.17.0042', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (361, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'DR Kuhler ', 'GWC18NAS', 'GWC18NAS', 'Non-Inverter', 1832.00, 17573.94, 10.55, '4', 5349.44, 7847628.48, '011.030.4.02.104.17.0043', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (362, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-05C3/IOutdoor GWC-05C3/O', 'Indoor GWC-05C3/IOutdoor GWC-05C3/O', 'Non-Inverter', 320.00, 4451.60, 13.90, '4', 934.40, 1370764.80, '118.011.4.18.104.17.0044', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (363, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'Indoor GWC-09C3/IOutdoor GWC-09C3/O', 'Indoor GWC-09C3/IOutdoor GWC-09C3/O', 'Non-Inverter', 692.00, 8150.00, 11.78, '4', 2020.64, 2964278.88, '118.011.4.18.104.17.0045', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (364, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KC205AGC3', 'AQA-KC205AGC3', 'Non-Inverter', 333.77, 4392.17, 13.16, '4', 974.61, 1429750.52, '118.021.4.10.104.17.0046', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (365, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KC205AG3', 'AQA-KC205AG3', 'Non-Inverter', 574.30, 5264.42, 9.18, '2', 1676.96, 2460094.45, '118.021.2.11.104.17.0047', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (366, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KC209AG3', 'AQA-KC209AG3', 'Non-Inverter', 855.50, 8818.26, 10.30, '3', 2498.06, 3664654.02, '118.021.3.12.104.17.0048', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (367, 33, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Elba', 'EA 90 A', 'EA 90 A', 'Non-Inverter', 886.90, 8308.15, 9.36, '2', 2589.75, 3799160.32, '119.026.2.03.091.16.0049', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (368, 33, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Elba', 'EA 120 A', 'EA 120 A', 'Non-Inverter', 1125.30, 11749.00, 10.44, '4', 3285.88, 4820380.09, '119.026.4.04.104.16.0050', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (369, 33, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Elba', 'EA 180 A', 'EA 180 A', 'Non-Inverter', 1894.70, 17290.97, 9.12, '2', 5532.52, 8116212.71, '119.026.2.05.091.16.0051', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (370, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A5UCY /AU-A5UCY;AH-A5VEY /AU-A5VEY;', 'AH-A5UCY /AU-A5UCY;AH-A5VEY /AU-A5VEY;', 'Non-Inverter', 327.90, 4369.30, 13.33, '4', 957.47, 1404605.56, '118.008.4.30.104.17.0052', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (371, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A7UCY /AU-A7UCY;AH-A7VEY /AU-A7VEY', 'AH-A7UCY /AU-A7UCY;AH-A7VEY /AU-A7VEY', 'Non-Inverter', 522.40, 6074.60, 11.63, '4', 1525.41, 2237773.54, '118.008.4.31.104.17.0053', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (372, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A9UCY /AU-A9UCY;AH-A9VEY /AU-A9VEY', 'AH-A9UCY /AU-A9UCY;AH-A9VEY /AU-A9VEY', 'Non-Inverter', 689.50, 7962.20, 11.55, '4', 2013.34, 2953569.78, '118.008.4.32.104.17.0054', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (373, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A12UCY /AU-A12UCY;AH-A12VEY /AU-A12VEY', 'AH-A12UCY /AU-A12UCY;AH-A12VEY /AU-A12VEY', 'Non-Inverter', 1010.90, 12311.70, 12.18, '4', 2951.83, 4330331.68, '118.008.4.33.104.17.0055', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (374, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A18UCY /AU-A18UCY', 'AH-A18UCY /AU-A18UCY', 'Non-Inverter', 1551.00, 18046.07, 11.64, '4', 4528.92, 6643925.64, '118.008.4.34.104.17.0056', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (375, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A24UCY /AU-A24UCY', 'AH-A24UCY /AU-A24UCY', 'Non-Inverter', 2137.70, 23981.10, 11.22, '4', 6242.08, 9157137.23, '118.008.4.35.104.17.0057', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (376, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q18K21PA(D19RIV3.NKAT;D19RIV3.UKAT)', 'S3-Q18K21PA(D19RIV3.NKAT;D19RIV3.UKAT)', 'Inverter', 1404.57, 17962.95, 15.57, '4', 4101.34, 6016672.23, '118.004.4.19.104.17.0058', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (377, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S4-Q18K22PA(E19SIV.NKAT;E19SIV.UKAT)', 'S4-Q18K22PA(E19SIV.NKAT;E19SIV.UKAT)', 'Inverter', 1458.04, 18012.05, 14.68, '4', 4257.48, 6245718.47, '118.004.4.20.104.17.0059', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (378, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-07C3/I /GWC-07C3/O', 'GWC-07C3/I /GWC-07C3/O', 'Non-Inverter', 499.10, 6378.40, 12.80, '4', 1457.37, 2137964.72, '118.011.4.20.104.17.0060', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (379, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-12C3/I /GWC-12C3/O', 'GWC-12C3/I /GWC-12C3/O', 'Non-Inverter', 1010.90, 12311.50, 12.10, '4', 2951.83, 4330331.68, '118.011.4.21.104.17.0061', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (380, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-18C3/I / GWC-18C3/O', 'GWC-18C3/I / GWC-18C3/O', 'Non-Inverter', 1540.00, 17605.92, 11.43, '4', 4496.80, 6596805.60, '118.011.4.22.104.17.0062', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (381, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-24C3/I /GWC-24C3/O', 'GWC-24C3/I /GWC-24C3/O', 'Non-Inverter', 2137.70, 23981.20, 11.20, '4', 6242.08, 9157137.23, '118.011.4.23.104.17.0063', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (382, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCRV9BGS', 'AQA-KCRV9BGS', 'Inverter', 1287.30, 11053.53, 12.20, '4', 3758.92, 5514329.77, '118.021.4.13.104.17.0064', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (383, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCRV12BGS', 'AQA-KCRV12BGS', 'Inverter', 1104.40, 11426.14, 13.16, '4', 3224.85, 4730852.02, '118.021.4.14.104.17.0065', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (384, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCRV18BGS', 'AQA-KCRV18BGS', 'Inverter', 1837.90, 18220.50, 12.42, '4', 5366.67, 7872901.96, '118.021.4.15.104.17.0066', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (385, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-05CSA/LE', 'TAC-05CSA/LE', 'Non-Inverter', 400.00, 5000.00, 10.94, '4', 1168.00, 1713456.00, '118.031.4.05.104.17.0067', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (386, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-09CSA/LE', 'TAC-09CSA/LE', 'Non-Inverter', 840.00, 9000.00, 10.60, '4', 2452.80, 3598257.60, '118.031.4.06.104.17.0068', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (387, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-06CSA/JE', 'TAC-06CSA/JE', 'Non-Inverter', 360.00, 5500.00, 12.40, '4', 1051.20, 1542110.40, '118.031.4.07.104.17.0069', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (388, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-09CSA/JE', 'TAC-09CSA/JE', 'Non-Inverter', 680.00, 9500.00, 11.72, '4', 1985.60, 2912875.20, '118.031.4.08.104.17.0070', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (389, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-12CSA/JE', 'TAC-12CSA/JE', 'Non-Inverter', 1000.00, 12000.00, 11.25, '4', 2920.00, 4283640.00, '118.031.4.09.104.17.0071', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (390, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-18CSA/JE', 'TAC-18CSA/JE', 'Non-Inverter', 1400.00, 18000.00, 10.95, '4', 4088.00, 5997096.00, '118.031.4.10.104.17.0072', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (391, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-24CSA/JE', 'TAC-24CSA/JE', 'Non-Inverter', 1800.00, 23000.00, 10.93, '4', 5256.00, 7710552.00, '118.031.4.11.104.17.0073', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (392, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC05LWS', 'GWC05LWS', 'Non-Inverter', 320.00, 4356.10, 13.17, '4', 934.40, 1370764.80, '011.030.4.03.104.17.0074', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (393, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC07LWS', 'GWC07LWS', 'Non-Inverter', 520.00, 6799.58, 12.91, '4', 1518.40, 2227492.80, '011.030.4.04.104.17.0075', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (394, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC09LWS', 'GWC09LWS', 'Non-Inverter', 600.00, 8415.01, 11.92, '4', 1752.00, 2570184.00, '011.030.4.05.104.17.0076', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (395, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC05NAS', 'GWC05NAS', 'Non-Inverter', 547.00, 5219.73, 9.05, '1', 1597.24, 2343151.08, '011.030.1.06.085.17.0077', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (396, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC07NAS', 'GWC07NAS', 'Non-Inverter', 720.00, 6694.98, 9.54, '2', 2102.40, 3084220.80, '011.030.2.07.091.17.0078', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (397, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC09NAS', 'GWC09NAS', 'Non-Inverter', 850.00, 8402.69, 9.74, '2', 2482.00, 3641094.00, '011.030.2.08.091.17.0079', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (398, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC12NAS', 'GWC12NAS', 'Non-Inverter', 1034.00, 10986.23, 10.73, '4', 3019.28, 4429283.76, '011.030.4.09.104.17.0080', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (399, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC18NAS', 'GWC18NAS', 'Non-Inverter', 1832.00, 17574.02, 10.30, '3', 5349.44, 7847628.48, '011.030.3.10.099.17.0081', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (400, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC24NAS', 'GWC24NAS', 'Non-Inverter', 2140.00, 21648.14, 10.24, '3', 6248.80, 9166989.60, '011.030.3.11.099.17.0082', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (401, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC09KF-K3DNA6A', 'GWC09KF-K3DNA6A', 'Inverter', 800.00, 9029.62, 12.29, '4', 2336.00, 3426912.00, '011.030.4.12.104.17.0083', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (402, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC12KF-K3DNA6A', 'GWC12KF-K3DNA6A', 'Inverter', 1100.00, 12490.99, 11.04, '4', 3212.00, 4712004.00, '011.030.4.13.104.17.0084', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (403, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC18KG-K3DNA6E', 'GWC18KG-K3DNA6E', 'Inverter', 1600.00, 17456.36, 12.05, '4', 4672.00, 6853824.00, '011.030.4.14.104.17.0085', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (404, 20, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Akari', 'AC-0909GLWi/k', 'AC-0909GLWi/k', 'Non-Inverter', 749.93, 7810.07, 10.41, '4', 2189.80, 3212430.15, '119.010.4.05.104.17.0086', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (405, 37, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Trane', '4MCW0530HB00AA / 4TTK0530HB00AA', '4MCW0530HB00AA / 4TTK0530HB00AA', 'Non-Inverter', 3160.00, 29637.00, 9.38, '2', 9227.20, 13536302.40, '104.027.2.01.091.17.0087', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (406, 37, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Trane', '4MCW0522HB00AA / 4TTK0522HB00AA', '4MCW0522HB00AA / 4TTK0522HB00AA', 'Non-Inverter', 2169.00, 21231.00, 9.79, '2', 6333.48, 9291215.16, '104.027.2.02.091.17.0088', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (407, 37, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Trane', '4MCW0518HB00AA / 4TTK0518HB00AA', '4MCW0518HB00AA / 4TTK0518HB00AA', 'Non-Inverter', 1685.00, 16853.00, 10.00, '3', 4920.20, 7217933.40, '104.027.3.03.099.17.0089', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (408, 37, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Trane', '4MCW0509HB00AA / 4TTK0509HB00AA', '4MCW0509HB00AA / 4TTK0509HB00AA', 'Non-Inverter', 833.00, 8566.00, 10.28, '3', 2432.36, 3568272.12, '104.027.3.04.099.17.0090', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (409, 37, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Trane', '4MCW0512HB00AA / 4TTK0512HB00AA', '4MCW0512HB00AA / 4TTK0512HB00AA', 'Non-Inverter', 1047.00, 10806.00, 10.33, '3', 3057.24, 4484971.08, '104.027.3.05.099.17.0091', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (410, 37, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Trane', '4MCW3505HB00AA / 4TTK3505HB00AA', '4MCW3505HB00AA / 4TTK3505HB00AA', 'Non-Inverter', 396.00, 4106.00, 10.35, '3', 1156.32, 1696321.44, '104.027.3.06.099.17.0092', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (411, 37, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Trane', '4MCW3507HB00AA / 4TTK3507HB00AA', '4MCW3507HB00AA / 4TTK3507HB00AA', 'Non-Inverter', 598.00, 6535.00, 10.92, '4', 1746.16, 2561616.72, '104.027.4.07.104.17.0093', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (412, 2, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Uchida', 'MP-S6EF / MP-S6CMP-S6EE / MP-S6CMP-S6EXE / MP-S6CMP-S6EBP / MP-S6CMP-S7EFL / MP-S6C', 'MP-S6EF / MP-S6CMP-S6EE / MP-S6CMP-S6EXE / MP-S6CMP-S6EBP / MP-S6CMP-S7EFL / MP-S6C', 'Non-Inverter', 590.00, 6010.00, 9.10, '2', 1722.80, 2527347.60, '011.032.2.01.091.17.0094', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (413, 2, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Uchida', 'MP-S9EFL / MP-S9LWMP-S7EE / MP-S7CMP-S7EXE / MP-S7CMP-S7EBP / MP-S7CMP-S7EF / MP-S7CMP-S9LGM / MP-S9LWMP-S9LGU / MP-S9LWMP-S9LGT / MP-S9LWMP-S9LGV / MP-S9LW', 'MP-S9EFL / MP-S9LWMP-S7EE / MP-S7CMP-S7EXE / MP-S7CMP-S7EBP / MP-S7CMP-S7EF / MP-S7CMP-S9LGM / MP-S9LWMP-S9LGU / MP-S9LWMP-S9LGT / MP-S9LWMP-S9LGV / MP-S9LW', 'Non-Inverter', 690.00, 8600.00, 9.56, '2', 2014.80, 2955711.60, '011.032.2.02.091.17.0095', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (414, 2, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Uchida', 'MP-S5LGV / MP-S5LWMP-S5EFL / MP-S5LWMP-S5LGM / MP-S5LWMP-S5LGT / MP-S5LWMP-S5LGU / MP-S5LWMP-S5SGT / MP-S5LWMP-S5SGM / MP-S5LW', 'MP-S5LGV / MP-S5LWMP-S5EFL / MP-S5LWMP-S5LGM / MP-S5LWMP-S5LGT / MP-S5LWMP-S5LGU / MP-S5LWMP-S5SGT / MP-S5LWMP-S5SGM / MP-S5LW', 'Non-Inverter', 390.00, 5000.00, 10.02, '3', 1138.80, 1670619.60, '011.032.3.03.099.17.0096', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (415, 2, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Uchida', 'MP-S16EE / MP-S16C', 'MP-S16EE / MP-S16C', 'Non-Inverter', 1700.00, 17180.00, 8.57, '1', 4964.00, 7282188.00, '011.032.1.04.085.17.0097', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (416, 2, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Uchida', 'MP-S9EE / MP-S9CMP-S9EXE / MP-S9CMP-S9EBP / MP-S9CMP-S9EF / MP-S9C', 'MP-S9EE / MP-S9CMP-S9EXE / MP-S9CMP-S9EBP / MP-S9CMP-S9EF / MP-S9C', 'Non-Inverter', 840.00, 8600.00, 9.32, '2', 2452.80, 3598257.60, '011.032.2.05.091.17.0098', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (417, 2, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Uchida', 'MP-S12EE / MP-S12C', 'MP-S12EE / MP-S12C', 'Non-Inverter', 1100.00, 12000.00, 10.52, '4', 3212.00, 4712004.00, '011.032.4.06.104.17.0099', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (418, 2, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Uchida', 'MP-S5EC / MP-S5CE ', 'MP-S5EC / MP-S5CE ', 'Non-Inverter', 345.00, 5000.00, 11.85, '4', 1007.40, 1477855.80, '011.032.4.07.104.17.0100', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (419, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC-05BX2', 'BAC-05BX2', 'Non-Inverter', 380.00, 4422.00, 11.62, '4', 1109.60, 1627783.20, '104.025.4.06.104.17.0101', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (420, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC-09BX2', 'BAC-09BX2', 'Non-Inverter', 860.00, 8880.00, 9.44, '2', 2511.20, 3683930.40, '104.025.2.07.091.17.0102', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (421, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC-12BX2', 'BAC-12BX2', 'Non-Inverter', 1053.00, 10721.00, 10.17, '3', 3074.76, 4510672.92, '104.025.3.08.099.17.0103', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (422, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC-18BX2', 'BAC-18BX2', 'Non-Inverter', 1758.00, 17296.00, 9.83, '2', 5133.36, 7530639.12, '104.025.2.09.091.17.0104', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (423, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-12A4/FAR1', 'ASW-12A4/FAR1', 'Non-Inverter', 1060.00, 11121.00, 10.48, '4', 3095.20, 4540658.40, '104.025.4.10.104.17.0105', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (424, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MS-HP10VF Outdoor MU-HP10VF', 'Indoor MS-HP10VF Outdoor MU-HP10VF', 'Non-Inverter', 805.50, 9740.00, 12.09, '4', 2352.06, 3450472.02, '119.005.4.09.104.17.0106', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (425, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MS-HP13VF Outdoor MU-HP13VF', 'Indoor MS-HP13VF Outdoor MU-HP13VF', 'Non-Inverter', 1124.90, 12898.00, 11.46, '4', 3284.71, 4818666.64, '119.005.4.10.104.17.0107', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (426, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MS-HP18VF Outdoor MU-HP18VF', 'Indoor MS-HP18VF Outdoor MU-HP18VF', 'Non-Inverter', 1627.80, 18419.00, 11.31, '4', 4753.18, 6972909.19, '119.005.4.11.104.17.0108', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (427, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'Indoor MS-HP24VF Outdoor MU-HP24VF', 'Indoor MS-HP24VF Outdoor MU-HP24VF', 'Non-Inverter', 1882.20, 23025.00, 12.23, '4', 5496.02, 8062667.21, '119.005.4.12.104.17.0109', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (428, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S4-Q07WA5AA (T08EV)', 'S4-Q07WA5AA (T08EV)', 'Non-Inverter', 626.40, 7308.30, 12.14, '4', 1829.09, 2683272.10, '118.004.4.21.104.17.0110', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (429, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S4-Q09WA5AA (T10EV)', 'S4-Q09WA5AA (T10EV)', 'Non-Inverter', 913.80, 9488.70, 11.53, '4', 2668.30, 3914390.23, '118.004.4.22.104.17.0111', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (430, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q09JL1PA(D10RIV3.NJAT;D10RIV3.UJAT)', 'S3-Q09JL1PA(D10RIV3.NJAT;D10RIV3.UJAT)', 'Inverter', 610.42, 9723.52, 18.22, '4', 1782.43, 2614819.53, '118.004.4.23.104.17.0112', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (431, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q12JL1PA(D13RIV3.NJAT;D13RIV3.UJAT)', 'S3-Q12JL1PA(D13RIV3.NJAT;D13RIV3.UJAT)', 'Inverter', 882.41, 12239.01, 16.70, '4', 2576.64, 3779926.77, '118.004.4.24.104.17.0113', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (432, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'Polar 07(ESM07CRK-B2I;ESM07CRK-B2E)', 'Polar 07(ESM07CRK-B2I;ESM07CRK-B2E)', 'Non-Inverter', 687.00, 7322.00, 10.66, '4', 2006.04, 2942860.68, '118.007.4.15.104.17.0114', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (433, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'SQ-Q06WA5AA(T06EV3.NWAT;T06EV3.UWAT;T06EV3.NWAH;T06EV3.UWAH)', 'SQ-Q06WA5AA(T06EV3.NWAT;T06EV3.UWAT;T06EV3.NWAH;T06EV3.UWAH)', 'Inverter', 490.42, 6223.73, 12.82, '4', 1432.03, 2100782.73, '118.004.4.25.104.17.0115', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (434, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'SQ-Q09WA5AA(T10EV3.NWAT;T10EV3.UWAT;T10EV3.NWAH;T10EV3.UWAH)', 'SQ-Q09WA5AA(T10EV3.NWAT;T10EV3.UWAT;T10EV3.NWAH;T10EV3.UWAH)', 'Inverter', 927.30, 9237.72, 11.54, '4', 2707.72, 3972219.37, '118.004.4.26.104.17.0116', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (435, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q05WA6AA(E06SV3.NWAT;E06SV3.UWAT)', 'S3-Q05WA6AA(E06SV3.NWAT;E06SV3.UWAT)', 'Inverter', 285.85, 4219.25, 13.34, '4', 834.68, 1224478.49, '118.004.4.27.104.17.0117', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (436, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q09WA6AA(E10SV3.NWAT;E10SV3.UWAT)', 'S3-Q09WA6AA(E10SV3.NWAT;E10SV3.UWAT)', 'Inverter', 625.71, 8000.39, 13.80, '4', 1827.07, 2680316.38, '118.004.4.28.104.17.0118', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (437, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC05NAS', 'GWC05NAS', 'Inverter', 575.93, 5287.19, 9.19, '2', 1681.72, 2467076.79, '011.030.2.15.091.17.0119', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (438, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC09NAS', 'GWC09NAS', 'Inverter', 856.40, 8542.39, 9.97, '3', 2500.69, 3668509.30, '011.030.3.16.099.17.0120', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (439, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC18NAS', 'GWC18NAS', 'Inverter', 1705.60, 17773.94, 10.42, '4', 4980.35, 7306176.38, '011.030.4.17.104.17.0121', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (440, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-09GTZ03;HSU-09GTX03;HSU-09IMX03', 'HSU-09GTZ03;HSU-09GTX03;HSU-09IMX03', 'Non-Inverter', 881.20, 8975.90, 10.19, '3', 2573.10, 3774743.57, '118.012.3.11.099.17.0122', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (441, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-12GTZ03;HSU-12GTX03;HSU-12IMX03', 'HSU-12GTZ03;HSU-12GTX03;HSU-12IMX03', 'Non-Inverter', 1168.40, 11911.00, 10.19, '3', 3411.73, 5005004.98, '118.012.3.12.099.17.0123', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (442, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-18GTZ03;HSU-18GTX03;HSU-18IMX03', 'HSU-18GTZ03;HSU-18GTX03;HSU-18IMX03', 'Non-Inverter', 1766.90, 17875.80, 10.12, '3', 5159.35, 7568763.52, '118.012.3.13.099.17.0124', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (443, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-24GTZ03;HSU-24GTX03;HSU-24IMX03', 'HSU-24GTZ03;HSU-24GTX03;HSU-24IMX03', 'Non-Inverter', 2248.00, 22600.10, 10.05, '3', 6564.16, 9629622.72, '118.012.3.14.099.17.0125', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (444, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-10INV03', 'HSU-10INV03', 'Inverter', 834.90, 9512.00, 12.63, '4', 2437.91, 3576411.04, '118.012.4.15.104.17.0126', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (445, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-13INV03', 'HSU-13INV03', 'Inverter', 1126.60, 11913.30, 12.54, '4', 3289.67, 4825948.82, '118.012.4.16.104.17.0127', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (446, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-18INV03', 'HSU-18INV03', 'Inverter', 2179.30, 22054.50, 13.56, '4', 6363.56, 9335336.65, '118.012.4.17.104.17.0128', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (447, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-24INV03', 'HSU-24INV03', 'Inverter', 1494.70, 17450.30, 12.80, '4', 4364.52, 6402756.71, '118.012.4.18.104.17.0129', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (448, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-05LXX03', 'HSU-05LXX03', 'Non-Inverter', 516.80, 5266.80, 10.19, '3', 1509.06, 2213785.15, '118.012.3.19.099.17.0130', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (449, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-05GTZ03;HSU-05GTX03;HSU-05IMX03', 'HSU-05GTZ03;HSU-05GTX03;HSU-05IMX03', 'Non-Inverter', 527.50, 5860.80, 11.11, '4', 1540.30, 2259620.10, '118.012.4.20.104.17.0131', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (450, 21, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Haier', 'HSU-07GTZ03;HSU-07GTX03;HSU-07IMX03', 'HSU-07GTZ03;HSU-07GTX03;HSU-07IMX03', 'Non-Inverter', 687.70, 7255.30, 10.55, '4', 2008.08, 2945859.23, '118.012.4.21.104.17.0132', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (451, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q12JA2PA(E13SIV3.NJAT;E13SIV3.UJAT;T13EV3.NJAT;T13EV3.UJAT)', 'S3-Q12JA2PA(E13SIV3.NJAT;E13SIV3.UJAT;T13EV3.NJAT;T13EV3.UJAT)', 'Inverter', 380.00, 11931.93, 14.46, '4', 1109.60, 1627783.20, '118.004.4.29.104.17.0133', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (452, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q18KL2PA(E19SIV3.NKAT;E19SIV3.UKAT;T19EV3.NKAT;T19EV3.UKAT)', 'S3-Q18KL2PA(E19SIV3.NKAT;E19SIV3.UKAT;T19EV3.NKAT;T19EV3.UKAT)', 'Inverter', 1523.09, 18042.93, 14.16, '4', 4447.42, 6524369.25, '118.004.4.30.104.17.0134', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (453, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ELA-06D / ELA-06L', 'ELA-06D / ELA-06L', 'Non-Inverter', 336.00, 4350.30, 12.95, '4', 981.12, 1439303.04, '118.017.4.13.104.17.0135', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (454, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'EL-06ELAD / EL-06ELAL', 'EL-06ELAD / EL-06ELAL', 'Non-Inverter', 336.00, 4350.30, 12.95, '4', 981.12, 1439303.04, '118.017.4.14.104.17.0136', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (455, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ELA-10D / ELA-10L', 'ELA-10D / ELA-10L', 'Non-Inverter', 887.00, 9324.00, 10.51, '4', 2590.04, 3799588.68, '118.017.4.15.104.17.0137', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (456, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'EL-10ELAD / EL-10ELAL', 'EL-10ELAD / EL-10ELAL', 'Non-Inverter', 887.00, 9324.00, 10.51, '4', 2590.04, 3799588.68, '118.017.4.16.104.17.0138', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (457, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-05D / ESA-05L', 'ESA-05D / ESA-05L', 'Non-Inverter', 397.00, 4607.00, 11.60, '4', 1159.24, 1700605.08, '118.017.4.17.104.17.0139', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (458, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-07D / ESA-07L', 'ESA-07D / ESA-07L', 'Non-Inverter', 733.00, 7060.00, 9.63, '2', 2140.36, 3139908.12, '118.017.2.18.091.17.0140', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (459, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-09D / ESA-09L', 'ESA-09D / ESA-09L', 'Non-Inverter', 887.00, 9324.00, 10.51, '4', 2590.04, 3799588.68, '118.017.4.19.104.17.0141', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (460, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-YN5TKJ;CU/CS-YN5TKJ-1', 'CU/CS-YN5TKJ;CU/CS-YN5TKJ-1', 'Non-Inverter', 420.30, 4692.00, 11.16, '4', 1227.28, 1800413.89, '119.006.4.11.104.17.0142', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (461, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-PN5TKJ', 'CU/CS-PN5TKJ', 'Non-Inverter', 391.50, 5079.00, 12.97, '4', 1143.18, 1677045.06, '119.006.4.12.104.17.0143', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (462, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-KN5TKJ;CU/CS-XN5TKJ', 'CU/CS-KN5TKJ;CU/CS-XN5TKJ', 'Non-Inverter', 375.00, 5041.00, 13.44, '4', 1095.00, 1606365.00, '119.006.4.13.104.17.0144', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (463, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-YN7TKJ;CU/CS-YN7TKJ-1', 'CU/CS-YN7TKJ;CU/CS-YN7TKJ-1', 'Non-Inverter', 665.40, 7179.00, 10.79, '4', 1942.97, 2850334.06, '119.006.4.14.104.17.0145', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (464, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-PN7TKJ', 'CU/CS-PN7TKJ', 'Non-Inverter', 597.60, 6714.00, 11.24, '4', 1744.99, 2559903.26, '119.006.4.15.104.17.0146', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (465, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-KN7TKJ;CU/CS-XN7TKJ', 'CU/CS-KN7TKJ;CU/CS-XN7TKJ', 'Non-Inverter', 582.40, 6795.00, 11.67, '4', 1700.61, 2494791.94, '119.006.4.16.104.17.0147', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (466, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-YN9TKJ;CU/CS-YN9TKJ-1', 'CU/CS-YN9TKJ;CU/CS-YN9TKJ-1', 'Non-Inverter', 789.10, 8499.00, 10.77, '4', 2304.17, 3380220.32, '119.006.4.17.104.17.0148', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (467, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-PN9TKJ', 'CU/CS-PN9TKJ', 'Non-Inverter', 754.00, 8532.00, 11.32, '4', 2201.68, 3229864.56, '119.006.4.18.104.17.0149', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (468, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-KN9TKJ;CU/CS-XN9TKJ', 'CU/CS-KN9TKJ;CU/CS-XN9TKJ', 'Non-Inverter', 734.20, 8778.00, 11.96, '4', 2143.86, 3145048.49, '119.006.4.19.104.17.0150', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (469, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CSPN12TKJ', 'CU/CSPN12TKJ', 'Non-Inverter', 1005.90, 11414.00, 11.35, '4', 2937.23, 4308913.48, '119.006.4.20.104.17.0151', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (470, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-YN12TKJ', 'CU/CS-YN12TKJ', 'Non-Inverter', 1050.90, 11273.00, 10.73, '4', 3068.63, 4501677.28, '119.006.4.21.104.17.0152', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (471, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-UV5RKP / CU-UV5RKP', 'CS-UV5RKP / CU-UV5RKP', 'Non-Inverter', 410.00, 4961.00, 12.10, '4', 1197.20, 1756292.40, '118.009.4.20.104.17.0153', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (472, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-UV9RKP / CU-UV9RKP', 'CS-UV9RKP / CU-UV9RKP', 'Non-Inverter', 853.60, 5819.70, 9.98, '3', 2492.51, 3656515.10, '118.009.3.21.099.17.0154', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (473, 24, 241086, 0, NULL, NULL, NULL, NULL, 1, 'McQuay', 'M5WMY10P /M5LCY10F2', 'M5WMY10P /M5LCY10F2', 'Inverter', 806.84, 8930.79, 14.38, '4', 2355.97, 3456212.10, '119.016.4.05.104.17.0155', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (474, 24, 241086, 0, NULL, NULL, NULL, NULL, 1, 'McQuay', 'M5WMY15P /M5LCY15F2', 'M5WMY15P /M5LCY15F2', 'Inverter', 1302.16, 11696.37, 13.36, '4', 3802.31, 5577984.66, '119.016.4.06.104.17.0156', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (475, 24, 241086, 0, NULL, NULL, NULL, NULL, 1, 'McQuay', 'M5WMY20P /M5LCY20C2', 'M5WMY20P /M5LCY20C2', 'Inverter', 1669.41, 18556.76, 12.93, '4', 4874.68, 7151151.45, '119.016.4.07.104.17.0157', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (476, 24, 241086, 0, NULL, NULL, NULL, NULL, 1, 'McQuay', 'M5WMY25P /M5LCY25C2', 'M5WMY25P /M5LCY25C2', 'Inverter', 1955.67, 21753.75, 13.91, '4', 5710.56, 8377386.24, '119.016.4.08.104.17.0158', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (477, 38, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Premiere Air', 'PKSH-10NF / PUSH-10NF', 'PKSH-10NF / PUSH-10NF', 'Non-Inverter', 825.50, 8506.00, 10.30, '3', 2410.46, 3536144.82, '118.037.3.01.099.17.0159', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (478, 38, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Premiere Air', 'PKSH-13NF / PUSH-13NF', 'PKSH-13NF / PUSH-13NF', 'Non-Inverter', 1049.00, 10798.00, 10.00, '3', 3063.08, 4493538.36, '118.037.3.02.099.17.0160', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (479, 38, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Premiere Air', 'PKSH-20NF / PUSH-20NF', 'PKSH-20NF / PUSH-20NF', 'Non-Inverter', 1587.60, 17145.00, 10.79, '3', 4635.79, 6800706.86, '118.037.3.03.099.17.0161', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (480, 38, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Premiere Air', 'PKSH-25NF / PUSH-25NF', 'PKSH-25NF / PUSH-25NF', 'Non-Inverter', 1709.40, 19141.00, 11.20, '4', 4991.45, 7322454.22, '118.037.4.04.104.17.0162', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (481, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KRV9WJ/AQA-CRV9WJ;AQA-KRV9WJW/AQA-CRV9WJW;', 'AQA-KRV9WJ/AQA-CRV9WJ;AQA-KRV9WJW/AQA-CRV9WJW;', 'Inverter', 775.00, 10178.00, 13.13, '4', 2263.00, 3319821.00, '118.021.4.16.104.17.0163', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (482, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KRV12WJ/AQA-CRV12WJ;AQA-KRV12WJW/AQA-CRV12WJW;', 'AQA-KRV12WJ/AQA-CRV12WJ;AQA-KRV12WJW/AQA-CRV12WJW;', 'Inverter', 1187.00, 13422.81, 11.29, '4', 3466.04, 5084680.68, '118.021.4.17.104.17.0164', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (483, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KRV18WJ/AQA-CRV18WJ;AQA-KRV18WJW/AQA-CRV18WJW;', 'AQA-KRV18WJ/AQA-CRV18WJ;AQA-KRV18WJW/AQA-CRV18WJW;', 'Inverter', 1404.00, 15268.70, 10.88, '4', 4099.68, 6014230.56, '118.021.4.18.104.17.0165', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (484, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PN18TKP / CU-PN18TKP;CS-YN18TKP / CU-YN18TKP', 'CS-PN18TKP / CU-PN18TKP;CS-YN18TKP / CU-YN18TKP', 'Non-Inverter', 1567.10, 17504.92, 11.17, '4', 4575.93, 6712892.24, '118.009.4.22.104.17.0166', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (485, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PN24TKP / CU-PN24TKP;CS-YN24TKP / CU-YN24TKP', 'CS-PN24TKP / CU-PN24TKP;CS-YN24TKP / CU-YN24TKP', 'Non-Inverter', 2101.50, 22627.70, 10.77, '4', 6136.38, 9002069.46, '118.009.4.23.104.17.0167', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (486, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-X6VEY /AU-X6VEY', 'AH-X6VEY /AU-X6VEY', 'Inverter', 402.34, 5032.87, 12.45, '4', 1174.83, 1723479.72, '118.008.4.36.104.18.0001', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (487, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-X9VEY /AU-X9VEY', 'AH-X9VEY /AU-X9VEY', 'Inverter', 825.61, 8979.26, 13.48, '4', 2410.78, 3536616.02, '118.008.4.37.104.18.0002', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (488, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-X12VEY /AU-X12VEY', 'AH-X12VEY /AU-X12VEY', 'Inverter', 1107.96, 11994.00, 13.42, '4', 3235.24, 4746101.77, '118.008.4.38.104.18.0003', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (489, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-X18VEY /AU-X18VEY', 'AH-X18VEY /AU-X18VEY', 'Inverter', 1724.01, 18898.18, 14.34, '4', 5034.11, 7385038.20, '118.008.4.40.104.18.0004', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (490, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP10VXY /AU-X10VXY', 'AH-XP10VXY /AU-X10VXY', 'Inverter', 491.27, 8603.19, 21.40, '4', 1434.51, 2104423.82, '118.008.4.41.104.18.0005', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (491, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP13VXY /AU-X13VXY', 'AH-XP13VXY /AU-X13VXY', 'Inverter', 753.14, 11424.91, 19.30, '4', 2199.17, 3226180.63, '118.008.4.42.104.18.0006', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (492, 39, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daewoo', 'DSB-05TGL', 'DSB-05TGL', 'Non-Inverter', 429.08, 4656.42, 10.85, '4', 1252.91, 1838024.25, '119.034.4.01.104.18.0007', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (493, 39, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daewoo', 'DSB-09TGL', 'DSB-09TGL', 'Non-Inverter', 778.36, 8279.66, 10.64, '4', 2272.81, 3334214.03, '119.034.4.02.104.18.0008', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (494, 39, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daewoo', 'DSB-12TGL', 'DSB-12TGL', 'Non-Inverter', 1053.41, 11237.87, 10.67, '4', 3075.96, 4512429.21, '119.034.4.03.104.18.0009', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (495, 39, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daewoo', 'DSB-18TGL', 'DSB-18TGL', 'Non-Inverter', 1526.48, 16846.34, 11.05, '4', 4457.32, 6538890.79, '119.034.4.04.104.18.0010', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (496, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-LN5TKJ', 'CU/CS-LN5TKJ', 'Non-Inverter', 410.80, 4733.00, 11.52, '4', 1199.54, 1759719.31, '119.006.4.22.104.18.0011', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (497, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-LN9TKJ', 'CU/CS-LN9TKJ', 'Non-Inverter', 731.10, 8237.00, 11.27, '4', 2134.81, 3131769.20, '119.006.4.23.104.18.0012', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (498, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-VU10UKP /CU-VU10UKP', 'CS-VU10UKP /CU-VU10UKP', 'Inverter', 735.20, 9182.03, 13.74, '4', 2146.78, 3149332.13, '118.009.4.24.104.18.0013', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (499, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-VU13UKP /CU-VU13UKP', 'CS-VU13UKP /CU-VU13UKP', 'Inverter', 940.90, 11957.00, 14.05, '4', 2747.43, 4030476.88, '118.009.4.25.104.18.0014', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (500, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-VU18UKP /CU-VU18UKP', 'CS-VU18UKP /CU-VU18UKP', 'Inverter', 1516.30, 17054.89, 13.76, '4', 4427.60, 6495283.33, '118.009.4.26.104.18.0015', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (501, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTKQ15SVM4/RKQ15SVM4', 'FTKQ15SVM4/RKQ15SVM4', 'Inverter', 288.40, 5260.96, 18.76, '4', 842.13, 1235401.78, '119.002.4.46.104.18.0016', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (502, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTKQ20SVM4/RKQ20SVM4', 'FTKQ20SVM4/RKQ20SVM4', 'Inverter', 470.40, 7114.70, 16.48, '4', 1373.57, 2015024.26, '119.002.4.47.104.18.0017', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (503, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTKQ25SVM4/RKQ25SVM4', 'FTKQ25SVM4/RKQ25SVM4', 'Inverter', 796.90, 9092.30, 15.24, '4', 2326.95, 3413632.72, '119.002.4.48.104.18.0018', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (504, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTKQ35SVM4/RKQ35SVM4', 'FTKQ35SVM4/RKQ35SVM4', 'Inverter', 1065.00, 12176.75, 15.89, '4', 3109.80, 4562076.60, '119.002.4.49.104.18.0019', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (505, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTKQ50SVM4/RKQ50SVM4', 'FTKQ50SVM4/RKQ50SVM4', 'Inverter', 1726.30, 17715.79, 14.18, '4', 5040.80, 7394847.73, '119.002.4.50.104.18.0020', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (506, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTKQ60SVM4/RKQ60SVM4', 'FTKQ60SVM4/RKQ60SVM4', 'Inverter', 2181.20, 20384.99, 14.03, '4', 6369.10, 9343475.57, '119.002.4.51.104.18.0021', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (507, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTC15NV14/RC15NV14', 'FTC15NV14/RC15NV14', 'Non-Inverter', 373.10, 4848.11, 12.99, '4', 1089.45, 1598226.08, '119.002.4.52.104.18.0022', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (508, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTC20NV14/RC20NV14', 'FTC20NV14/RC20NV14', 'Non-Inverter', 619.60, 6837.65, 11.04, '4', 1809.23, 2654143.34, '119.002.4.53.104.18.0023', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (509, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTC25NV14/RC25NV14', 'FTC25NV14/RC25NV14', 'Non-Inverter', 802.60, 9334.55, 11.63, '4', 2343.59, 3438049.46, '119.002.4.54.104.18.0024', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (510, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTC35NV14/RC35NV14', 'FTC35NV14/RC35NV14', 'Non-Inverter', 902.80, 10958.32, 12.14, '4', 2636.18, 3867270.19, '119.002.4.55.104.18.0025', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (511, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTC50NV14/RC50NV14', 'FTC50NV14/RC50NV14', 'Non-Inverter', 1501.50, 16607.57, 11.06, '4', 4384.38, 6431885.46, '119.002.4.56.104.18.0026', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (512, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTC60NV14/RC60NV14', 'FTC60NV14/RC60NV14', 'Non-Inverter', 1874.40, 21539.27, 11.49, '4', 5473.25, 8029254.82, '119.002.4.57.104.18.0027', 'CSRF', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (513, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTKM25SVM4/RKM25SVM4', 'FTKM25SVM4/RKM25SVM4', 'Inverter', 505.40, 8976.63, 20.31, '4', 1475.77, 2164951.66, '119.002.4.58.104.18.0028', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (514, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTKM35SVM4/RKM35SVM4', 'FTKM35SVM4/RKM35SVM4', 'Inverter', 853.60, 12219.74, 18.63, '4', 2492.51, 3656515.10, '119.002.4.59.104.18.0029', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (515, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTKM50SVM4/RKM50SVM4', 'FTKM50SVM4/RKM50SVM4', 'Inverter', 1209.50, 17769.01, 18.65, '4', 3531.74, 5181062.58, '119.002.4.60.104.18.0030', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (516, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTKM60SVM4/RKM60SVM4', 'FTKM60SVM4/RKM60SVM4', 'Inverter', 1487.00, 20034.92, 17.20, '4', 4342.04, 6369772.68, '119.002.4.61.104.18.0031', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (517, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTKM71SVM4/RKM71SVM4', 'FTKM71SVM4/RKM71SVM4', 'Inverter', 1988.30, 23787.78, 16.21, '4', 5805.84, 8517161.41, '119.002.4.62.104.18.0032', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (518, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'MSY-JP10VF / MUY-JP10VF', 'MSY-JP10VF / MUY-JP10VF', 'Inverter', 1005.05, 9616.04, 14.04, '4', 2934.75, 4305272.38, '118.005.4.13.104.18.0033', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (519, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'MSY-JP13VF / MUY-JP13VF', 'MSY-JP13VF / MUY-JP13VF', 'Inverter', 1277.16, 12634.57, 14.27, '4', 3729.31, 5470893.66, '118.005.4.14.104.18.0034', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (520, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'MSY-JP18VF / MUY-JP18VF', 'MSY-JP18VF / MUY-JP18VF', 'Inverter', 1971.50, 17737.73, 13.31, '4', 5756.78, 8445196.26, '118.005.4.15.104.18.0035', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (521, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'MSY-JP24VF / MUY-JP24VF', 'MSY-JP24VF / MUY-JP24VF', 'Inverter', 1946.24, 22628.55, 14.29, '4', 5683.02, 8336991.51, '118.005.4.16.104.18.0036', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (522, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'MSZ-LN10VFV / MUZ-LN10VF;MSZ-LN10VFB / MUZ-LN10VF;MSZ-LN10VFR / MUZ-LN10VF', 'MSZ-LN10VFV / MUZ-LN10VF;MSZ-LN10VFB / MUZ-LN10VF;MSZ-LN10VFR / MUZ-LN10VF', 'Inverter', 531.04, 9012.59, 20.40, '4', 1550.64, 2274784.19, '118.005.4.17.104.18.0037', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (523, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'MSZ-LN13VFV / MUZ-LN13VF;MSZ-LN13VFB / MUZ-LN13VF;MSZ-LN13VFR / MUZ-LN13VF', 'MSZ-LN13VFV / MUZ-LN13VF;MSZ-LN13VFB / MUZ-LN13VF;MSZ-LN13VFR / MUZ-LN13VF', 'Inverter', 983.94, 13107.06, 17.68, '4', 2873.10, 4214844.74, '118.005.4.18.104.18.0038', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (524, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'MSZ-LN18VFV / MUZ-LN18VF;MSZ-LN18VFB / MUZ-LN18VF;MSZ-LN18VFR / MUZ-LN18VF', 'MSZ-LN18VFV / MUZ-LN18VF;MSZ-LN18VFB / MUZ-LN18VF;MSZ-LN18VFR / MUZ-LN18VF', 'Inverter', 1448.07, 18153.58, 16.43, '4', 4228.36, 6203010.57, '118.005.4.19.104.18.0039', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (525, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q09JL1YA(P10RV3.NJAT;P10RV3.UJAT)', 'S3-Q09JL1YA(P10RV3.NJAT;P10RV3.UJAT)', 'Inverter', 596.13, 9111.35, 16.60, '4', 1740.70, 2553606.31, '118.004.4.31.104.18.0040', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (526, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q12JL1YA(P13RV3.NJAT;P13RV3.UJAT)', 'S3-Q12JL1YA(P13RV3.NJAT;P13RV3.UJAT)', 'Inverter', 935.50, 12024.54, 15.97, '4', 2731.66, 4007345.22, '118.004.4.32.104.18.0041', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (527, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHC009DS38KHC009DS', '42KHC009DS38KHC009DS', 'Non-Inverter', 773.00, 9229.00, 14.81, '4', 2257.16, 3311253.72, '118.014.4.23.104.18.0042', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (528, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHC012DS38KHC012DS', '42KHC012DS38KHC012DS', 'Non-Inverter', 1093.00, 11724.00, 13.52, '4', 3191.56, 4682018.52, '118.014.4.24.104.18.0043', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (529, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHC018DS38KHC018DS', '42KHC018DS38KHC018DS', 'Non-Inverter', 1666.00, 18090.00, 14.22, '4', 4864.72, 7136544.24, '118.014.4.25.104.18.0044', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (530, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHC022DS38KHC022DS', '42KHC022DS38KHC022DS', 'Non-Inverter', 1911.00, 21963.00, 15.02, '4', 5580.12, 8186036.04, '118.014.4.26.104.18.0045', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (531, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-05PKPG-IDRAS-05PAPG-ID', 'RAS-05PKPG-IDRAS-05PAPG-ID', 'Inverter', 380.63, 4396.36, 11.55, '4', 1111.44, 1630481.89, '118.014.4.27.104.18.0046', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (532, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-07PKPG-IDRAS-07PAPG-ID', 'RAS-07PKPG-IDRAS-07PAPG-ID', 'Inverter', 594.89, 6377.57, 10.72, '4', 1737.08, 2548294.60, '118.014.4.28.104.18.0047', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (533, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-10PKPG-IDRAS-10PAPG-ID', 'RAS-10PKPG-IDRAS-10PAPG-ID', 'Inverter', 745.71, 9432.61, 12.65, '4', 2177.47, 3194353.18, '118.014.4.29.104.18.0048', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (534, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-10PKSG-IDRAS-10PASG-ID', 'RAS-10PKSG-IDRAS-10PASG-ID', 'Inverter', 798.59, 9105.71, 11.40, '4', 2331.88, 3420872.07, '118.014.4.30.104.18.0049', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (535, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-05(CSC-05NVB2; CSC-05NVS2)', 'CSC-05(CSC-05NVB2; CSC-05NVS2)', 'Non-Inverter', 431.00, 4883.00, 11.33, '4', 1258.52, 1846248.84, '118.029.4.06.104.18.0050', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (536, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-09 (CSC-09NVB2; CSC-09NVS2)', 'CSC-09 (CSC-09NVB2; CSC-09NVS2)', 'Non-Inverter', 777.67, 8223.00, 10.57, '4', 2270.80, 3331258.32, '118.029.4.07.104.18.0051', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (537, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PU7UKP /CU-PU7UKP', 'CS-PU7UKP /CU-PU7UKP', 'Inverter', 527.80, 6806.60, 13.28, '4', 1541.18, 2260905.19, '118.009.4.27.104.18.0052', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (538, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PU9UKP /CU-PU9UKP', 'CS-PU9UKP /CU-PU9UKP', 'Inverter', 687.70, 8247.83, 13.65, '4', 2008.08, 2945859.23, '118.009.4.28.104.18.0053', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (539, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PU12UKP /CU-PU12UKP', 'CS-PU12UKP /CU-PU12UKP', 'Inverter', 960.10, 11368.78, 13.07, '4', 2803.49, 4112722.76, '118.009.4.29.104.18.0054', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (540, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PU18UKP /CU-PU18UKP', 'CS-PU18UKP /CU-PU18UKP', 'Inverter', 1415.70, 17393.70, 14.43, '4', 4133.84, 6064349.15, '118.009.4.30.104.18.0055', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (541, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-PU24UKP /CU-PU24UKP', 'CS-PU24UKP /CU-PU24UKP', 'Inverter', 1746.30, 20828.55, 14.76, '4', 5099.20, 7480520.53, '118.009.4.31.104.18.0056', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (542, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCR5ANE(AQA-KR5ANE; AQA-CR5ANE)', 'AQA-KCR5ANE(AQA-KR5ANE; AQA-CR5ANE)', 'Non-Inverter', 361.00, 6257.61, 17.33, '4', 1054.12, 1546394.04, '118.021.4.19.104.18.0057', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (543, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCR9ANS(AQA-KR9ANS; AQA-CR9ANS)', 'AQA-KCR9ANS(AQA-KR9ANS; AQA-CR9ANS)', 'Non-Inverter', 892.00, 8949.68, 10.03, '3', 2604.64, 3821006.88, '118.021.3.20.099.18.0058', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (544, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCR5ANC(AQA-KR5ANC; AQA-CR5ANC)', 'AQA-KCR5ANC(AQA-KR5ANC; AQA-CR5ANC)', 'Non-Inverter', 358.00, 5527.44, 15.44, '4', 1045.36, 1533543.12, '118.021.4.21.104.18.0059', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (545, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCR9ANC(AQA-KR9ANC; AQA-CR9ANC)', 'AQA-KCR9ANC(AQA-KR9ANC; AQA-CR9ANC)', 'Non-Inverter', 709.00, 7922.66, 11.17, '4', 2070.28, 3037100.76, '118.021.4.22.104.18.0060', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (546, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'DAST ', 'DAS05LWA', 'DAS05LWA', 'Non-Inverter', 344.00, 1860.92, 18.46, '4', 1004.48, 1473572.16, '119.036.4.01.104.18.0061', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (547, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'DAST ', 'DAS05FA', 'DAS05FA', 'Non-Inverter', 477.00, 2021.92, 14.40, '4', 1392.84, 2043296.28, '119.036.4.02.104.18.0062', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (548, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'DAST ', 'DAS09LWA', 'DAS09LWA', 'Non-Inverter', 710.00, 2849.88, 13.72, '4', 2073.20, 3041384.40, '119.036.4.03.104.18.0063', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (549, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'DAST ', 'DAS09FA', 'DAS09FA', 'Non-Inverter', 832.00, 3200.87, 13.14, '4', 2429.44, 3563988.48, '119.036.4.04.104.18.0064', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (550, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'DAST ', 'DAS12FA', 'DAS12FA', 'Non-Inverter', 1726.30, 5191.98, 14.18, '4', 5040.80, 7394847.73, '119.036.4.05.104.18.0065', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (551, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'DAST ', 'DAS18FA', 'DAS18FA', 'Non-Inverter', 2181.20, 5974.25, 14.03, '4', 6369.10, 9343475.57, '119.036..4.06.104.18.0066', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (552, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'IKEDA', 'IAS05LWA', 'IAS05LWA', 'Non-Inverter', 344.00, 6349.73, 18.46, '4', 1004.48, 1473572.16, '119.036.4.07.104.18.0067', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (553, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'IKEDA', 'IAS05FA', 'IAS05FA', 'Non-Inverter', 477.00, 6868.36, 14.40, '4', 1392.84, 2043296.28, '119.036.4.08.104.18.0068', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (554, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'IKEDA', 'IAS09LWA', 'IAS09LWA', 'Non-Inverter', 710.00, 9724.20, 13.72, '4', 2073.20, 3041384.40, '119.036.4.09.104.18.0069', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (555, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'IKEDA', 'IAS09FA', 'IAS09FA', 'Non-Inverter', 832.00, 10921.81, 13.14, '4', 2429.44, 3563988.48, '119.036.4.10.104.18.0070', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (556, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'IKEDA', 'IAS12FA', 'IAS12FA', 'Non-Inverter', 1084.00, 14122.27, 14.18, '4', 3165.28, 4643465.76, '119.036.4.11.104.18.0071', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (557, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'IKEDA', 'IAS18FA', 'IAS18FA', 'Non-Inverter', 1477.00, 20045.50, 14.03, '4', 4312.84, 6326936.28, '119.036.4.12.104.18.0072', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (558, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBE-05CRN1 (I) /MSBE-05CRN1 (O)', 'MSBE-05CRN1 (I) /MSBE-05CRN1 (O)', 'Non-Inverter', 4644.00, 395.00, 11.76, '4', 13560.48, 19893224.16, '118.013.4.29.104.18.0067', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (559, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBE-07CRN1 (I) /MSBE-07CRN1 (O)', 'MSBE-07CRN1 (I) /MSBE-07CRN1 (O)', 'Non-Inverter', 7063.00, 736.00, 9.60, '2', 20623.96, 30255349.32, '118.013.2.30.091.18.0068', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (560, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBE-18CRN1 (I) /MSBE-18CRN1 (O)', 'MSBE-18CRN1 (I) /MSBE-18CRN1 (O)', 'Non-Inverter', 17486.00, 1880.00, 9.82, '2', 51059.12, 74903729.04, '118.013.2.31.091.18.0069', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (561, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBE-09CRN1 (I) /MSBE-09CRN1 (O);MSBD-09CRN1 (I) /MSBD-09CRN1 (O)', 'MSBE-09CRN1 (I) /MSBE-09CRN1 (O);MSBD-09CRN1 (I) /MSBD-09CRN1 (O)', 'Non-Inverter', 8512.00, 890.00, 9.56, '2', 24855.04, 36462343.68, '118.013.2.32.091.18.0070', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (562, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBE-12CRN1 (I) /MSBE-12CRN1 (O);MSBD-12CRN1 (I) /MSBD-12CRN1 (O)', 'MSBE-12CRN1 (I) /MSBE-12CRN1 (O);MSBD-12CRN1 (I) /MSBD-12CRN1 (O)', 'Non-Inverter', 11160.00, 1026.00, 10.88, '4', 32587.20, 47805422.40, '118.013.4.33.104.18.0071', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (563, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBE-24CRN1 (I) /MSBE-24CRN1 (O);MSBD-24CRN1 (I) /MSBD-24CRN1 (O)', 'MSBE-24CRN1 (I) /MSBE-24CRN1 (O);MSBD-24CRN1 (I) /MSBD-24CRN1 (O)', 'Non-Inverter', 20400.00, 1870.00, 10.91, '4', 59568.00, 87386256.00, '118.013.4.34.104.18.0072', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (564, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSOE-05CRLN2 (I) /MSOE-05CRLN2 (O)', 'MSOE-05CRLN2 (I) /MSOE-05CRLN2 (O)', 'Non-Inverter', 4510.00, 328.00, 13.75, '4', 13169.20, 19319216.40, '118.013.4.35.104.18.0073', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (565, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSOD-09CRLN2 (I) /MSOD-09CRLN2 (O);MSOE-09CRLN2 (I) /MSOE-09CRLN2 (O)', 'MSOD-09CRLN2 (I) /MSOD-09CRLN2 (O);MSOE-09CRLN2 (I) /MSOE-09CRLN2 (O)', 'Non-Inverter', 8274.00, 709.00, 11.67, '4', 24160.08, 35442837.36, '118.013.4.36.104.18.0074', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (566, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSIG-09CRDN1 (I) /MSIG-09CRDN1 (O);', 'MSIG-09CRDN1 (I) /MSIG-09CRDN1 (O);', 'Inverter', 4289.00, 338.00, 11.75, '4', 12523.88, 18372531.96, '118.013.4.37.104.18.0075', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (567, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSUC-09HRFN1 (I) /MSUC-09HRFN1 (O);', 'MSUC-09HRFN1 (I) /MSUC-09HRFN1 (O);', 'Inverter', 4896.00, 287.00, 15.30, '4', 14296.32, 20972701.44, '118.013.4.38.104.18.0076', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (568, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSUC-12HRFN1 (I) /MSUC-12HRFN1 (O);', 'MSUC-12HRFN1 (I) /MSUC-12HRFN1 (O);', 'Inverter', 6363.40, 386.00, 14.61, '4', 18581.13, 27258514.78, '118.013.4.39.104.18.0077', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (569, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC-05BX5', 'BAC-05BX5', 'Non-Inverter', 412.93, 4565.88, 11.06, '4', 1205.76, 1768843.47, '118.025.4.11.104.18.0078', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (570, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC-09BX5', 'BAC-09BX5', 'Non-Inverter', 840.08, 8687.06, 10.58, '4', 2453.03, 3598600.29, '118.025.4.12.104.18.0079', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (571, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC-12BX5', 'BAC-12BX5', 'Non-Inverter', 1000.51, 11250.80, 11.25, '4', 2921.49, 4285824.66, '118.025.4.13.104.18.0080', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (572, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC-18BX5', 'BAC-18BX5', 'Non-Inverter', 1506.56, 16499.11, 10.95, '4', 4399.16, 6453560.68, '118.025.4.14.104.18.0081', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (573, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC-05BW5', 'BAC-05BW5', 'Non-Inverter', 365.29, 4780.18, 13.08, '4', 1066.65, 1564770.86, '118.025.4.15.104.18.0082', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (574, 32, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC-09BW5', 'BAC-09BW5', 'Non-Inverter', 766.90, 8516.55, 11.11, '4', 2239.35, 3285123.52, '118.025.4.16.104.18.0083', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (575, 20, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Akari', 'AC-91212GLWi/k', 'AC-91212GLWi/k', 'Non-Inverter', 1058.78, 11454.09, 10.82, '4', 3091.64, 4535432.36, '119.010.4.06.104.18.0084', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (576, 20, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Akari', 'AC-91818GLWi/k', 'AC-91818GLWi/k', 'Non-Inverter', 1481.84, 16445.84, 11.09, '4', 4326.97, 6347669.10, '119.010.4.07.104.18.0085', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (577, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q06WA(T06EV4.NWAT;T06EV4.UWAT;T06EV4.NWAH;T06EV4.UWAH;E06SV4.NWAT;E06SV4.UWAT)', 'S3-Q06WA(T06EV4.NWAT;T06EV4.UWAT;T06EV4.NWAH;T06EV4.UWAH;E06SV4.NWAT;E06SV4.UWAT)', 'Inverter', 490.42, 6223.73, 12.82, '4', 1432.03, 2100782.73, '118.004.4.33.104.18.0086', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (578, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q09WA(T10EV4.NWAT;T10EV4.UWAT;T10EV4.NWAH;T10EV4.UWAH;E10SV4.NWAT;E10SV4.UWAT)', 'S3-Q09WA(T10EV4.NWAT;T10EV4.UWAT;T10EV4.NWAH;T10EV4.UWAH;E10SV4.NWAT;E10SV4.UWAT)', 'Inverter', 927.30, 9237.72, 11.54, '4', 2707.72, 3972219.37, '118.004.4.34.104.18.0087', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (579, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q12JA(E13SIV4.NJAT;E13SIV4.UJAT;T13EV4.NJAT;T13EV4.UJAT)', 'S3-Q12JA(E13SIV4.NJAT;E13SIV4.UJAT;T13EV4.NJAT;T13EV4.UJAT)', 'Inverter', 996.97, 11931.93, 14.46, '4', 2911.15, 4270660.57, '118.004.4.35.104.18.0088', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (580, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q18KL(E19SIV4.NKAT;E19SIV4.UKAT;T19EV4.NKAT;T19EV4.UKAT)', 'S3-Q18KL(E19SIV4.NKAT;E19SIV4.UKAT;T19EV4.NKAT;T19EV4.UKAT)', 'Inverter', 1523.09, 18042.93, 14.16, '4', 4447.42, 6524369.25, '118.004.4.36.104.18.0089', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (581, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC05C1', 'GWC05C1', 'Non-Inverter', 315.00, 4327.34, 13.40, '4', 919.80, 1349346.60, '011.030.4.18.104.18.0090', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (582, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC07C1', 'GWC07C1', 'Non-Inverter', 480.00, 6627.81, 12.83, '4', 1401.60, 2056147.20, '011.030.4.19.104.18.0091', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (583, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC09C1', 'GWC09C1', 'Non-Inverter', 655.00, 8137.00, 11.64, '4', 1912.60, 2805784.20, '011.030.4.20.104.18.0092', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (584, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC12C1', 'GWC12C1', 'Non-Inverter', 1034.00, 11707.43, 11.39, '4', 3019.28, 4429283.76, '011.030.4.21.104.18.0093', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (585, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC18C1', 'GWC18C1', 'Non-Inverter', 1550.00, 17773.94, 11.74, '4', 4526.00, 6639642.00, '011.030.4.22.104.18.0094', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (586, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-05F1/I GWC-05F1/O', 'GWC-05F1/I GWC-05F1/O', 'Inverter', 341.40, 5171.00, 14.16, '4', 996.89, 1462434.70, '118.011.4.24.104.18.0095', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (587, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-09F1/I GWC-09F1/O', 'GWC-09F1/I GWC-09F1/O', 'Inverter', 683.00, 8569.00, 14.42, '4', 1994.36, 2925726.12, '118.011.4.25.104.18.0096', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (588, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-12F1/I GWC-12F1/O', 'GWC-12F1/I GWC-12F1/O', 'Inverter', 1279.00, 11794.00, 10.91, '4', 3734.68, 5478775.56, '118.011.4.26.104.18.0097', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (589, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-18F1/I GWC-18F1/O', 'GWC-18F1/I GWC-18F1/O', 'Inverter', 1456.00, 15999.00, 13.24, '4', 4251.52, 6236979.84, '118.011.4.27.104.18.0098', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (590, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-24F1/I GWC-24F1/O', 'GWC-24F1/I GWC-24F1/O', 'Inverter', 1940.00, 24594.00, 14.57, '4', 5664.80, 8310261.60, '118.011.4.28.104.18.0099', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (591, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-05C3E/I;GWC-05C3E/O', 'GWC-05C3E/I;GWC-05C3E/O', 'Non-Inverter', 320.00, 4451.60, 13.90, '4', 934.40, 1370764.80, '118.011.4.29.104.18.0100', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (592, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-07C3E/I;GWC-07C3E/O', 'GWC-07C3E/I;GWC-07C3E/O', 'Non-Inverter', 499.10, 6378.40, 12.80, '4', 1457.37, 2137964.72, '118.011.4.30.104.18.0101', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (593, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-09C3E/I;GWC-09C3E/O', 'GWC-09C3E/I;GWC-09C3E/O', 'Non-Inverter', 692.00, 8150.00, 11.78, '4', 2020.64, 2964278.88, '118.011.4.31.104.18.0102', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (594, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-12C3E/I;GWC-12C3E/O', 'GWC-12C3E/I;GWC-12C3E/O', 'Non-Inverter', 1010.90, 12311.50, 12.10, '4', 2951.83, 4330331.68, '118.011.4.32.104.18.0103', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (595, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-18C3E/I;GWC-18C3E/O', 'GWC-18C3E/I;GWC-18C3E/O', 'Non-Inverter', 1540.00, 17605.92, 11.43, '4', 4496.80, 6596805.60, '118.011.4.33.104.18.0104', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (596, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-24C3E/I;GWC-24C3E/O', 'GWC-24C3E/I;GWC-24C3E/O', 'Non-Inverter', 2137.70, 23981.20, 11.20, '4', 6242.08, 9157137.23, '118.011.4.34.104.18.0105', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (597, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-ZV5UKP /CU-ZV5UKP', 'CS-ZV5UKP /CU-ZV5UKP', 'Non-Inverter', 400.00, 5401.20, 13.50, '4', 1168.00, 1713456.00, '118.009.4.32.104.18.0057', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (598, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-RS9UKP /CU-RS9UKP', 'CS-RS9UKP /CU-RS9UKP', 'Non-Inverter', 734.00, 9331.81, 14.41, '4', 2143.28, 3144191.76, '118.009.4.33.104.18.0058', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (599, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCR5ANS(AQA-KR5ANS;AQA-CR5ANS)', 'AQA-KCR5ANS(AQA-KR5ANS;AQA-CR5ANS)', 'Non-Inverter', 540.00, 7083.31, 13.12, '4', 1576.80, 2313165.60, '118.021.4.23.104.18.0106', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (600, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCR7ANS(AQA-KR7ANS;AQA-CR7ANS)', 'AQA-KCR7ANS(AQA-KR7ANS;AQA-CR7ANS)', 'Non-Inverter', 892.00, 9017.92, 12.98, '4', 2604.64, 3821006.88, '118.021.4.24.104.18.0107', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (601, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCR12ANS(AQA-KR12ANS;AQA-CR12ANS)', 'AQA-KCR12ANS(AQA-KR12ANS;AQA-CR12ANS)', 'Non-Inverter', 1177.00, 11791.87, 10.02, '3', 3436.84, 5041844.28, '118.021.3.25.099.18.0108', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (602, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCR18ANS(AQA-KR18ANS;AQA-CR18ANS)', 'AQA-KCR18ANS(AQA-KR18ANS;AQA-CR18ANS)', 'Non-Inverter', 1662.00, 17189.66, 10.34, '3', 4853.04, 7119409.68, '118.021.3.26.099.18.0109', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (603, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR05NRFLDWKN /AR05NRFLDWKX', 'AR05NRFLDWKN /AR05NRFLDWKX', 'Non-Inverter', 399.00, 5046.35, 12.64, '4', 1165.08, 1709172.36, '118. 001.4.18.104.18.0110', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (604, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR09NRFLDWKN /AR09NRFLDWKX', 'AR09NRFLDWKN /AR09NRFLDWKX', 'Non-Inverter', 802.00, 8874.60, 11.07, '4', 2341.84, 3435479.28, '118. 001.4.19.104.18.0111', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (605, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', 'SRK/C12CT-S3', 'SRK/C12CT-S3', 'Non-Inverter', 1093.00, 12009.57, 10.98, '4', 3191.56, 4682018.52, '011.015.4.12.104.18.0112', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (606, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', 'SRK/C09CTR-S3', 'SRK/C09CTR-S3', 'Non-Inverter', 841.10, 9192.37, 10.92, '4', 2456.01, 3602969.60, '011.015.4.13.104.18.0113', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (607, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTV15BXV149/RV15BXV149', 'FTV15BXV149/RV15BXV149', 'Non-Inverter', 395.80, 4348.25, 10.99, '4', 1155.74, 1695464.71, '119.002.4.63.104.18.0114', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (608, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTV25BXV149/RV25BXV149', 'FTV25BXV149/RV25BXV149', 'Non-Inverter', 785.80, 8709.47, 11.08, '4', 2294.54, 3366084.31, '119.002.4.64.104.18.0115', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (609, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'FTV35BXV149/RV35BXV149', 'FTV35BXV149/RV35BXV149', 'Non-Inverter', 1176.60, 11878.19, 10.63, '4', 3435.67, 5040130.82, '119.002.4.65.104.18.0116', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (610, 33, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Elba', 'EA 60 SLW', 'EA 60 SLW', 'Non-Inverter', 380.00, 5472.85, 14.40, '4', 1109.60, 1627783.20, '118.026.4.06.104.18.0117', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (611, 33, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Elba', 'EA 60 S', 'EA 60 S', 'Non-Inverter', 409.00, 4449.25, 10.88, '4', 1194.28, 1752008.76, '118.026.4.07.104.18.0118', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (612, 33, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Elba', 'EA 90 SLW', 'EA 90 SLW', 'Non-Inverter', 680.00, 8410.58, 12.37, '4', 1985.60, 2912875.20, '118.026.4.08.104.18.0119', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (613, 33, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Elba', 'EA 90 S', 'EA 90 S', 'Non-Inverter', 830.00, 10365.66, 12.49, '4', 2423.60, 3555421.20, '118.026.4.09.104.18.0120', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (614, 33, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Elba', 'EA 120 S', 'EA 120 S', 'Non-Inverter', 1070.00, 11129.94, 10.40, '3', 3124.40, 4583494.80, '118.026.3.10.099.18.0121', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (615, 33, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Elba', 'EA 180 S', 'EA 180 S', 'Non-Inverter', 1607.00, 16810.92, 10.46, '4', 4692.44, 6883809.48, '118.026.4.11.104.18.0122', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (616, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-XU10VKP /CU-XU10VKP', 'CS-XU10VKP /CU-XU10VKP', 'Inverter', 789.10, 9345.80, 13.35, '4', 2304.17, 3380220.32, '118.009.4.34.104.18.0123', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (617, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-XU13VKP /CU-XU13VKP', 'CS-XU13VKP /CU-XU13VKP', 'Inverter', 1022.90, 11685.40, 13.28, '4', 2986.87, 4381735.36, '118.009.4.35.104.18.0124', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (618, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-XU18VKP /CU-XU18VKP', 'CS-XU18VKP /CU-XU18VKP', 'Inverter', 1457.20, 17869.70, 14.58, '4', 4255.02, 6242120.21, '118.009.4.36.104.18.0125', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (619, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-XU24VKP /CU-XU24VKP', 'CS-XU24VKP /CU-XU24VKP', 'Inverter', 1732.00, 20526.00, 14.59, '4', 5057.44, 7419264.48, '118.009.4.37.104.18.0126', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (620, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC 05 BX3', 'BAC 05 BX3', 'Non-Inverter', 468.00, 5779.93, 12.35, '4', 1366.56, 2004743.52, '118.039.4.01.104.18.0127', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (621, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC 09 BX3', 'BAC 09 BX3', 'Non-Inverter', 754.00, 8949.68, 11.87, '4', 2201.68, 3229864.56, '118.039.4.02.104.18.0128', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (622, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC 12 BX3', 'BAC 12 BX3', 'Non-Inverter', 1072.00, 11849.88, 11.05, '4', 3130.24, 4592062.08, '118.039.4.03.104.18.0129', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (623, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC 18 BX3', 'BAC 18 BX3', 'Non-Inverter', 1531.00, 17196.48, 11.23, '4', 4470.52, 6558252.84, '118.039.4.04.104.18.0130', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (624, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC 05 BW5', 'BAC 05 BW5', 'Non-Inverter', 339.00, 3882.86, 11.45, '4', 989.88, 1452153.96, '118.039.4.05.104.18.0131', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (625, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'BESTLIFE', 'BAC 09 BW5', 'BAC 09 BW5', 'Non-Inverter', 690.00, 8553.88, 12.39, '4', 2014.80, 2955711.60, '118.039.4.06.104.18.0132', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (626, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-05A4/FHR1', 'ASW-05A4/FHR1', 'Non-Inverter', 468.00, 5779.93, 12.35, '4', 1366.56, 2004743.52, '118.039.4.07.104.18.0133', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (627, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-12A4/FHR1;ASW-12A4/JAR1', 'ASW-12A4/FHR1;ASW-12A4/JAR1', 'Non-Inverter', 1072.00, 11849.88, 11.05, '4', 3130.24, 4592062.08, '118.039.4.08.104.18.0134', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (628, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-05A4/FAR3', 'ASW-05A4/FAR3', 'Non-Inverter', 464.00, 4868.92, 10.49, '4', 1354.88, 1987608.96, '118.039.4.09.104.18.0135', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (629, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-09A4/FFR3', 'ASW-09A4/FFR3', 'Non-Inverter', 468.00, 8581.18, 11.44, '4', 1366.56, 2004743.52, '118.039.4.10.104.18.0136', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (630, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-09A4/FHR1;ASW-09A4/JAR1', 'ASW-09A4/FHR1;ASW-09A4/JAR1', 'Non-Inverter', 754.00, 8949.68, 11.87, '4', 2201.68, 3229864.56, '118.039.4.11.104.18.0137', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (631, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-09A4/FOR1', 'ASW-09A4/FOR1', 'Non-Inverter', 690.00, 8553.88, 12.39, '4', 2014.80, 2955711.60, '118.039.4.12.104.18.0138', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (632, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-07A4/FHR1', 'ASW-07A4/FHR1', 'Non-Inverter', 690.00, 8553.88, 12.39, '4', 2014.80, 2955711.60, '118.039.4.13.104.18.0139', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (633, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-18A4/FAR3', 'ASW-18A4/FAR3', 'Non-Inverter', 1450.00, 17551.33, 12.10, '4', 4234.00, 6211278.00, '118.039.4.14.104.18.0140', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (634, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-18A4/FHR1;ASW-18A4/JAR1', 'ASW-18A4/FHR1;ASW-18A4/JAR1', 'Non-Inverter', 1531.00, 17196.48, 11.23, '4', 4470.52, 6558252.84, '118.039.4.15.104.18.0141', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (635, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-09A4/FAR3', 'ASW-09A4/FAR3', 'Non-Inverter', 809.00, 8642.60, 10.68, '4', 2362.28, 3465464.76, '118.039.4.16.104.18.0142', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (636, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-12A4/FAR3', 'ASW-12A4/FAR3', 'Non-Inverter', 1056.00, 11348.31, 10.74, '4', 3083.52, 4523523.84, '118.039.4.17.104.18.0143', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (637, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-05B4/FOR1', 'ASW-05B4/FOR1', 'Non-Inverter', 339.00, 3882.86, 11.45, '4', 989.88, 1452153.96, '118.039.4.18.104.18.0144', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (638, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AUX', 'ASW-05A4/FFR3', 'ASW-05A4/FFR3', 'Non-Inverter', 366.00, 3858.97, 10.54, '4', 1068.72, 1567812.24, '118.039.4.19.104.18.0145', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (639, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-05MOO3/I;GWC-05MOO3/O', 'GWC-05MOO3/I;GWC-05MOO3/O', 'Non-Inverter', 395.90, 3950.70, 9.98, '3', 1156.03, 1695893.08, '118.011.3.35.099.18.0146', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (640, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-07MOO3/I;GWC-07MOO3/O', 'GWC-07MOO3/I;GWC-07MOO3/O', 'Non-Inverter', 594.10, 5580.80, 9.96, '3', 1734.77, 2544910.52, '118.011.3.36.099.18.0147', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (641, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-09MOO3/I;GWC-09MOO3/O', 'GWC-09MOO3/I;GWC-09MOO3/O', 'Non-Inverter', 768.40, 7867.60, 10.24, '3', 2243.73, 3291548.98, '118.011.3.37.099.18.0148', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (642, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR12NRFLDWKN (I);AR12NRFLDWKX (O)', 'AR12NRFLDWKN (I);AR12NRFLDWKX (O)', 'Non-Inverter', 1130.40, 11817.10, 10.45, '4', 3300.77, 4842226.66, '118.001.4.20.104.19.0149', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (643, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR18NRFLDWKN (I);AR18NRFLDWKX (O)', 'AR18NRFLDWKN (I);AR18NRFLDWKX (O)', 'Non-Inverter', 1706.80, 17852.00, 10.46, '4', 4983.86, 7311316.75, '118.001.4.21.104.19.0150', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (644, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 12(FTKC15TVM4;RKC15TVM4)', 'Inverter R32 Smile 12(FTKC15TVM4;RKC15TVM4)', 'Inverter', 295.40, 5112.54, 17.70, '4', 862.57, 1265387.26, '119.002.4.66.104.19.0151', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (645, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 13(FTKC20TVM4;RKC20TVM4)', 'Inverter R32 Smile 13(FTKC20TVM4;RKC20TVM4)', 'Inverter', 494.90, 7050.56, 15.90, '4', 1445.11, 2119973.44, '119.002.4.67.104.19.0152', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (646, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 14(FTKC25TVM4;RKC25TVM4)', 'Inverter R32 Smile 14(FTKC25TVM4;RKC25TVM4)', 'Inverter', 679.50, 8987.89, 16.84, '4', 1984.14, 2910733.38, '119.002.4.68.104.19.0153', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (647, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 15(FTKC35TVM4;RKC35TVM4)', 'Inverter R32 Smile 15(FTKC35TVM4;RKC35TVM4)', 'Inverter', 985.30, 12095.20, 16.19, '4', 2877.08, 4220670.49, '119.002.4.69.104.19.0154', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (648, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 16(FTKC50TVM4;RKC50TVM4)', 'Inverter R32 Smile 16(FTKC50TVM4;RKC50TVM4)', 'Inverter', 1321.00, 17914.71, 17.10, '4', 3857.32, 5658688.44, '119.002.4.70.104.19.0155', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (649, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 17(FTKC60TVM4;RKC60TVM4)', 'Inverter R32 Smile 17(FTKC60TVM4;RKC60TVM4)', 'Inverter', 1706.40, 20426.62, 15.83, '4', 4982.69, 7309603.30, '119.002.4.71.104.19.0156', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (650, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Inverter R32 Smile 18(FTKC71TVM4;RKC71TVM4)', 'Inverter R32 Smile 18(FTKC71TVM4;RKC71TVM4)', 'Inverter', 2035.10, 23761.17, 15.51, '4', 5942.49, 8717635.76, '119.002.4.72.104.19.0157', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (651, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP6WHY;AU-X6WHY', 'AH-XP6WHY;AU-X6WHY', 'Inverter', 373.55, 5377.07, 15.12, '4', 1090.77, 1600153.72, '118.008.4.43.104.19.0158', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (652, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP10WHY;AU-X10WHY', 'AH-XP10WHY;AU-X10WHY', 'Inverter', 686.94, 8770.10, 15.03, '4', 2005.86, 2942603.66, '118.008.4.44.104.19.0159', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (653, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP13WHY;AU-X13WHY', 'AH-XP13WHY;AU-X13WHY', 'Inverter', 935.61, 11453.71, 15.01, '4', 2731.98, 4007816.42, '118.008.4.45.104.19.0160', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (654, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR10RYFHAWKN /AR10RYFHAWKX', 'AR10RYFHAWKN /AR10RYFHAWKX', 'Inverter', 990.90, 10917.82, 12.70, '4', 2893.43, 4244658.88, '118.001.4.22.104.19.0161', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (655, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR13RYFHAWKN /AR13RYFHAWKX', 'AR13RYFHAWKN /AR13RYFHAWKX', 'Inverter', 1306.30, 12718.67, 11.96, '4', 3814.40, 5595718.93, '118.001.4.23.104.19.0162', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (656, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR18RYFHAWKN /AR18RYFHAWKX', 'AR18RYFHAWKN /AR18RYFHAWKX', 'Inverter', 1503.40, 16915.45, 12.98, '4', 4389.93, 6440024.38, '118.001.4.24.104.19.0163', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (657, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-05(CSC-05NVC; CSC-05CSD)', 'CSC-05(CSC-05NVC; CSC-05CSD)', 'Non-Inverter', 426.00, 4481.00, 10.52, '4', 1243.92, 1824830.64, '104.029.4.08.104.19.0164', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (658, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-09(CSC-09NVC; CSC-09CSD)', 'CSC-09(CSC-09NVC; CSC-09CSD)', 'Non-Inverter', 784.00, 8170.00, 10.41, '4', 2289.28, 3358373.76, '104.029.4.09.104.19.0165', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (659, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-07NVB2', 'CSC-07NVB2', 'Non-Inverter', 652.00, 6960.00, 10.68, '4', 1903.84, 2792933.28, '104.029.4.10.104.19.0166', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (660, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-12NVB2', 'CSC-12NVB2', 'Non-Inverter', 1037.00, 10817.00, 10.43, '4', 3028.04, 4442134.68, '104.029.4.11.104.19.0167', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (661, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-05RDX', 'CSC-05RDX', 'Non-Inverter', 356.00, 4260.00, 11.97, '4', 1039.52, 1524975.84, '104.029.4.12.104.19.0168', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (662, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-09RDX', 'CSC-09RDX', 'Non-Inverter', 690.00, 7759.00, 11.24, '4', 2014.80, 2955711.60, '104.029.4.13.104.19.0169', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (663, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q12JA3AD(T12EV4.NJAT;T12EV4.UJAT)', 'S3-Q12JA3AD(T12EV4.NJAT;T12EV4.UJAT)', 'Inverter', 1102.40, 10122.98, 11.03, '4', 3219.01, 4722284.74, '118.004.4.37.104.19.170', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (664, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'MS-JR10VF-NE1;MU-JR10VF-NE1', 'MS-JR10VF-NE1;MU-JR10VF-NE1', 'Non-Inverter', 830.89, 9215.06, 11.09, '4', 2426.20, 3559233.64, '118.005.4.20.104.19.171', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (665, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'MS-JR13VF-NE1;MU-JR13VF-NE1', 'MS-JR13VF-NE1;MU-JR13VF-NE1', 'Non-Inverter', 1115.61, 12125.09, 10.87, '4', 3257.58, 4778871.62, '118.005.4.21.104.19.172', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (666, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'MS-JR18VF-NE1;MU-JR18VF-NE1', 'MS-JR18VF-NE1;MU-JR18VF-NE1', 'Non-Inverter', 1607.39, 17007.59, 10.58, '4', 4693.58, 6885480.10, '118.005.4.22.104.19.173', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (667, 7, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Electric', 'MS-JR24VF-NE1;MU-JR24VF-NE1', 'MS-JR24VF-NE1;MU-JR24VF-NE1', 'Non-Inverter', 1936.93, 22180.05, 11.45, '4', 5655.84, 8297110.83, '118.005.4.23.104.20.174', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (668, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-RS5UKPCU-RS5UKP', 'CS-RS5UKPCU-RS5UKP', 'Inverter', 414.40, 5276.20, 11.92, '4', 1210.05, 1775140.42, '118.009.4.38.104.18.175', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (669, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-10U2KCVG-IDRAS-10U2ACVG-ID', 'RAS-10U2KCVG-IDRAS-10U2ACVG-ID', 'Inverter', 903.31, 8529.45, 11.06, '4', 2637.67, 3869454.85, '118.014.4.31.104.18.176', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (670, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-13U2KCVG-IDRAS-10U2ACVG-ID', 'RAS-13U2KCVG-IDRAS-10U2ACVG-ID', 'Inverter', 1187.66, 12121.61, 12.60, '4', 3467.97, 5087507.88, '118.014.4.32.104.18.177', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (671, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-10U2KCVG-IDRAS-10U2ACVG-ID', 'RAS-10U2KCVG-IDRAS-10U2ACVG-ID', 'Inverter', 1682.82, 17443.75, 13.31, '4', 4913.83, 7208595.06, '118.014.4.33.104.18.178', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (672, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KR5ANC1;AQA-CR5ANC1', 'AQA-KR5ANC1;AQA-CR5ANC1', 'Non-Inverter', 384.50, 4236.49, 10.98, '4', 1122.74, 1647059.58, '118.021.4.27.104.19.0179', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (673, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KR5ANE2;AQA-CR5ANE2', 'AQA-KR5ANE2;AQA-CR5ANE2', 'Non-Inverter', 351.20, 4054.08, 11.49, '4', 1025.50, 1504414.37, '118.021.4.28.104.19.0180', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (674, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KR9ANS2;AQA-CR9ANS2', 'AQA-KR9ANS2;AQA-CR9ANS2', 'Non-Inverter', 871.30, 8440.69, 9.67, '2', 2544.20, 3732335.53, '118.021.2.29.104.19.0181', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (675, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KRV9WGW;AQA-CRV9WGW', 'AQA-KRV9WGW;AQA-CRV9WGW', 'Inverter', 759.20, 9885.09, 14.94, '4', 2216.86, 3252139.49, '118.021.4.30.104.19.0182', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (676, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KRV9WG;AQA-CRV9WG', 'AQA-KRV9WG;AQA-CRV9WG', 'Inverter', 759.20, 9885.09, 14.94, '4', 2216.86, 3252139.49, '118.021.4.31.104.19.0183', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (677, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KRV18WG;AQA-CRV18WG', 'AQA-KRV18WG;AQA-CRV18WG', 'Inverter', 1755.50, 18466.98, 12.22, '4', 5126.06, 7519930.02, '118.021.4.32.104.19.0184', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (678, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSAF-09CRN2(I) /MSAF-09CRN2(O)', 'MSAF-09CRN2(I) /MSAF-09CRN2(O)', 'Non-Inverter', 801.10, 8925.60, 11.14, '4', 2339.21, 3431624.00, '118.013.4.40.104.19.0185', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (679, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSFC-09CRN1-32(I) /MSFC-09CRN1-32(O)', 'MSFC-09CRN1-32(I) /MSFC-09CRN1-32(O)', 'Non-Inverter', 801.10, 8925.60, 11.14, '4', 2339.21, 3431624.00, '118.013.4.41.104.19.0186', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (680, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSAF-12CRN2(I) /MSAF-12CRN2(O)', 'MSAF-12CRN2(I) /MSAF-12CRN2(O)', 'Non-Inverter', 1053.90, 11509.90, 10.92, '4', 3077.39, 4514528.20, '118.013.4.42.104.19.0187', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (681, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSFO-09CRLN2-32(I) /MSFO-09CRLN2-32(O)', 'MSFO-09CRLN2-32(I) /MSFO-09CRLN2-32(O)', 'Non-Inverter', 706.30, 9012.20, 12.76, '4', 2062.40, 3025534.93, '118.013.4.43.104.19.0188', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (682, 15, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron ', 'EAW055000(PAC05VG; PAC05VX-M)', 'EAW055000(PAC05VG; PAC05VX-M)', 'Non-Inverter', 450.00, 6000.00, 10.85, '4', 1314.00, 1927638.00, '011.003.4.06.104.19.0189', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (683, 15, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron ', 'EAW077200', 'EAW077200', 'Non-Inverter', 690.00, 7000.00, 11.38, '4', 2014.80, 2955711.60, '011.003.4.07.104.19.0190', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (684, 15, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron ', 'EAW109000(PAC 09VX-M ;PAC 09VG)', 'EAW109000(PAC 09VX-M ;PAC 09VG)', 'Non-Inverter', 880.00, 9500.00, 10.59, '4', 2569.60, 3769603.20, '011.003.4.08.104.19.0191', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (685, 15, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron ', 'EAW 151000(PAC12VX-M; PAC 12VG)', 'EAW 151000(PAC12VX-M; PAC 12VG)', 'Non-Inverter', 1000.00, 12000.00, 10.70, '4', 2920.00, 4283640.00, '011.003.4.09.104.19.0192', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (686, 15, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron ', 'EAW 201600(PAC 18VX-M; PAC 18VG; PAC 18VG-M)', 'EAW 201600(PAC 18VX-M; PAC 18VG; PAC 18VG-M)', 'Non-Inverter', 1690.00, 18000.00, 11.26, '4', 4934.80, 7239351.60, '011.003.4.10.104.19.0193', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (687, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'AQUA', 'AQA-KCRV12WG(AQA-KRV12WG; AQA-KRV12WG)', 'AQA-KCRV12WG(AQA-KRV12WG; AQA-KRV12WG)', 'Inverter', 1182.30, 12335.90, 12.26, '4', 3452.32, 5064547.57, '118.021.4.33.104.19.0194', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (688, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'DAMA Non-Inverter R32 C Series 1(FTV15CXV14;RV15CXV14)', 'DAMA Non-Inverter R32 C Series 1(FTV15CXV14;RV15CXV14)', 'Non-Inverter', 395.80, 4348.25, 10.99, '4', 1155.74, 1695464.71, '119.002.4.73.104.19.0195', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (689, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'DAMA Non-Inverter R32 C Series 2(FTV20CXV14;RV20CXV14)', 'DAMA Non-Inverter R32 C Series 2(FTV20CXV14;RV20CXV14)', 'Non-Inverter', 627.10, 6803.53, 10.85, '4', 1831.13, 2686270.64, '119.002.4.74.104.19.0196', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (690, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'DAMA Non-Inverter R32 C Series 3(FTV25CXV14;RV25CXV14)', 'DAMA Non-Inverter R32 C Series 3(FTV25CXV14;RV25CXV14)', 'Non-Inverter', 785.80, 8709.47, 11.08, '4', 2294.54, 3366084.31, '119.002.4.75.104.19.0197', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (691, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'DAMA Non-Inverter R32 C Series 4(FTV35CXV14;RV35CXV14)', 'DAMA Non-Inverter R32 C Series 4(FTV35CXV14;RV35CXV14)', 'Non-Inverter', 1117.60, 11878.20, 10.63, '4', 3263.39, 4787396.06, '119.002.4.76.104.19.0198', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (692, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU-PN18UKJ;CS-PN18UKJ', 'CU-PN18UKJ;CS-PN18UKJ', 'Non-Inverter', 1591.90, 17733.00, 11.14, '4', 4648.35, 6819126.52, '119.006.4.24.104.19.0199', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (693, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU-LN18UKJ;CS-LN18UKJ', 'CU-LN18UKJ;CS-LN18UKJ', 'Non-Inverter', 1591.90, 17733.00, 11.14, '4', 4648.35, 6819126.52, '119.006.4.25.104.19.0200', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (694, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU-YN18TKJ;CS-YN18TKJ', 'CU-YN18TKJ;CS-YN18TKJ', 'Non-Inverter', 1631.50, 17479.00, 10.71, '4', 4763.98, 6988758.66, '119.006.4.26.104.19.0201', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (695, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU-PN24UKJ;CS-PN24UKJ', 'CU-PN24UKJ;CS-PN24UKJ', 'Non-Inverter', 2113.40, 22945.00, 10.86, '4', 6171.13, 9053044.78, '119.006.4.27.104.19.0202', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (696, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU-LN24UKJ;CS-LN24UKJ', 'CU-LN24UKJ;CS-LN24UKJ', 'Non-Inverter', 2113.40, 22945.00, 10.86, '4', 6171.13, 9053044.78, '119.006.4.28.104.19.0203', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (697, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU-YN24TKJ;CS-YN24TKJ', 'CU-YN24TKJ;CS-YN24TKJ', 'Non-Inverter', 2111.80, 22543.00, 10.68, '4', 6166.46, 9046190.95, '119.006.4.29.104.19.0204', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (698, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSFO-05CRLN2-32 (I)/(O)MSFC-05CRN1-32 (I)/(O)MSAF-05CRN2 (I)/(O)', 'MSFO-05CRLN2-32 (I)/(O)MSFC-05CRN1-32 (I)/(O)MSAF-05CRN2 (I)/(O)', 'Non-Inverter', 359.30, 4213.10, 11.72, '4', 1049.16, 1539111.85, '118.013.4.44.104.19.0205', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (699, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-05SE/I;GWC-05SE/O;', 'GWC-05SE/I;GWC-05SE/O;', 'Non-Inverter', 400.90, 4354.50, 10.86, '4', 1170.63, 1717311.28, '118.011.4.38.104.19.0206', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (700, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-09SE/I;GWC-09SE/O;', 'GWC-09SE/I;GWC-09SE/O;', 'Non-Inverter', 803.40, 8030.00, 10.00, '3', 2345.93, 3441476.38, '118.011.3.39.099.19.0207', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (701, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-05MOO3/I;GWC-05MOO3/O', 'GWC-05MOO3/I;GWC-05MOO3/O', 'Non-Inverter', 400.90, 4354.50, 10.86, '4', 1170.63, 1717311.28, '118.011.4.40.104.19.0208', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (702, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-07MOO3/I;GWC-07MOO3/O', 'GWC-07MOO3/I;GWC-07MOO3/O', 'Non-Inverter', 592.60, 6020.00, 10.16, '3', 1730.39, 2538485.06, '118.011.3.41.099.19.0209', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (703, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-09MOO3/I;GWC-09MOO3/O', 'GWC-09MOO3/I;GWC-09MOO3/O', 'Non-Inverter', 803.40, 8030.00, 10.00, '3', 2345.93, 3441476.38, '118.011.4.42.104.19.0210', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (704, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sansui', 'L 05 S1 /LO 05 S1', 'L 05 S1 /LO 05 S1', 'Non-Inverter', 405.24, 5030.20, 12.41, '4', 1183.30, 1735902.27, '118.015.4.14.104.19.0211', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (705, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sansui', 'L 09 S1 /LO 09 S1', 'L 09 S1 /LO 09 S1', 'Non-Inverter', 790.05, 8320.30, 10.53, '4', 2306.95, 3384289.78, '118.015.4.15.104.19.0212', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (706, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sansui', 'L 12 S1 /LO 12 S1', 'L 12 S1 /LO 12 S1', 'Non-Inverter', 1066.30, 11350.20, 10.64, '4', 3113.60, 4567645.33, '118.015.4.16.104.19.0213', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (707, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sansui', 'L 18 S1 /LO 18 S1', 'L 18 S1 /LO 18 S1', 'Non-Inverter', 1510.43, 16220.10, 10.74, '4', 4410.46, 6470138.37, '118.015.4.17.104.19.0214', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (708, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sansui', 'L 24 S1 /LO 24 S1', 'L 24 S1 /LO 24 S1', 'Non-Inverter', 2348.50, 23420.50, 9.97, '3', 6857.62, 10060128.54, '118.015.3.18.099.19.0215', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (709, 42, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Cawang', 'EU/EP-SN-5SGM', 'EU/EP-SN-5SGM', 'Non-Inverter', 413.50, 4621.00, 11.18, '4', 1207.42, 1771285.14, '119.041.4.01.104.19.0216', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (710, 42, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Cawang', 'EU/EP-SN-7SGM', 'EU/EP-SN-7SGM', 'Non-Inverter', 672.30, 7144.00, 10.63, '4', 1963.12, 2879891.17, '119.041.4.02.104.19.0217', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (711, 42, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Cawang', 'EU/EP-SN-9SGM', 'EU/EP-SN-9SGM', 'Non-Inverter', 776.50, 8256.00, 10.63, '4', 2267.38, 3326246.46, '119.041.4.03.104.19.0218', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (712, 42, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Cawang', 'EU/EP-SN-12SGM', 'EU/EP-SN-12SGM', 'Non-Inverter', 1027.20, 11160.00, 10.86, '4', 2999.42, 4400155.01, '119.041.4.04.104.19.0219', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (713, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sansui', 'X 05 X1 /XO 05 S1', 'X 05 X1 /XO 05 S1', 'Non-Inverter', 465.10, 5168.40, 11.11, '4', 1358.09, 1992320.96, '118.015.4.19.104.19.0220', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (714, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sansui', 'X 09 S1 /XO 09 S1', 'X 09 S1 /XO 09 S1', 'Non-Inverter', 827.90, 9925.80, 11.99, '4', 2417.47, 3546425.56, '118.015.4.20.104.19.0221', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (715, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sansui', 'X12 S1 /XO 12 S1', 'X12 S1 /XO 12 S1', 'Non-Inverter', 1109.00, 12837.80, 11.58, '4', 3238.28, 4750556.76, '118.015.4.21.104.19.0222', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (716, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sansui', 'X 18 S1 /XO 18 S1', 'X 18 S1 /XO 18 S1', 'Non-Inverter', 1539.00, 17983.10, 11.68, '4', 4493.88, 6592521.96, '118.015.4.22.104.19.0223', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (717, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sansui', 'X 05 D1 /XO 05 D1', 'X 05 D1 /XO 05 D1', 'Non-Inverter', 359.20, 3896.90, 10.85, '4', 1048.86, 1538683.49, '118.015.4.23.104.19.0224', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (718, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sansui', 'X 09 D1 /XO 09 D1', 'X 09 D1 /XO 09 D1', 'Non-Inverter', 739.60, 8133.30, 11.00, '4', 2159.63, 3168180.14, '118.015.4.24.104.19.0225', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (719, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHA005N8FS/38KHA005N8FS', '42KHA005N8FS/38KHA005N8FS', 'Non-Inverter', 357.50, 5689.60, 15.91, '4', 1043.90, 1531401.30, '118.014.4.34.104.19.0226', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (720, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHA009N8FS/38KHA009N8FS', '42KHA009N8FS/38KHA009N8FS', 'Non-Inverter', 821.90, 8681.60, 10.56, '4', 2399.95, 3520723.72, '118.014.4.35.104.19.0227', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (721, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHA012N8FS/38KHA012N8FS', '42KHA012N8FS/38KHA012N8FS', 'Non-Inverter', 1054.60, 13134.80, 12.45, '4', 3079.43, 4517526.74, '118.014.4.36.104.19.0228', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (722, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHA018N8FS/38KHA018N8FS', '42KHA018N8FS/38KHA018N8FS', 'Non-Inverter', 1565.40, 18467.40, 11.80, '4', 4570.97, 6705610.06, '118.014.4.37.104.19.0229', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (723, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'IndoorTAC-05CSA/X5; TAC-05CSA/X6OutdoorTAC-05CSA/XO', 'IndoorTAC-05CSA/X5; TAC-05CSA/X6OutdoorTAC-05CSA/XO', 'Non-Inverter', 400.05, 5020.60, 12.55, '4', 1168.15, 1713670.18, '118.031.4.12.104.19.0230', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (724, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'IndoorTAC-09CSA/X5; TAC-09CSA/X6OutdoorTAC-09CSA/XO', 'IndoorTAC-09CSA/X5; TAC-09CSA/X6OutdoorTAC-09CSA/XO', 'Non-Inverter', 790.50, 8330.50, 10.54, '4', 2308.26, 3386217.42, '118.031.4.13.104.19.0231', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (725, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'IndoorTAC-12CSA/X5; TAC-12CSA/X6OutdoorTAC-12CSA/XO', 'IndoorTAC-12CSA/X5; TAC-12CSA/X6OutdoorTAC-12CSA/XO', 'Non-Inverter', 1065.20, 11350.20, 10.66, '4', 3110.38, 4562933.33, '118.031.4.14.104.19.0232', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (726, 13, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'IndoorTAC-18CSA/X5; TAC-18CSA/X6OutdoorTAC-18CSA/XO', 'IndoorTAC-18CSA/X5; TAC-18CSA/X6OutdoorTAC-18CSA/XO', 'Non-Inverter', 1530.50, 16240.10, 10.61, '4', 4469.06, 6556111.02, '118.031.4.15.104.19.0233', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (727, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR07NRFLDWKN (I) /AR07NFRLDWKX (O)', 'AR07NRFLDWKN (I) /AR07NFRLDWKX (O)', 'Non-Inverter', 622.20, 6537.20, 10.45, '4', 1816.82, 2665280.81, '118.001.4.25.104.19.0234', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (728, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-AP7SSY /AU-A7SSY;AH-A7SAY /AU-A7SAY;', 'AH-AP7SSY /AU-A7SSY;AH-A7SAY /AU-A7SAY;', 'Non-Inverter', 671.20, 7046.36, 10.49, '4', 1959.90, 2875179.17, '118.008.4.46.104.19.0235', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (729, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-05MOO3S/I;GWC-05MOO3S/O', 'GWC-05MOO3S/I;GWC-05MOO3S/O', 'Non-Inverter', 360.60, 4153.30, 11.52, '4', 1052.95, 1544680.58, '118.011.4.43.104.19.0236', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (730, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-09MOO3S/I;GWC-09MOO3S/O', 'GWC-09MOO3S/I;GWC-09MOO3S/O', 'Non-Inverter', 744.30, 8043.00, 10.81, '4', 2173.36, 3188313.25, '118.011.4.44.104.19.0237', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (731, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-05C3E/I;GWC-05C3E/O', 'GWC-05C3E/I;GWC-05C3E/O', 'Non-Inverter', 360.60, 4153.30, 11.52, '4', 1052.95, 1544680.58, '118.011.4.45.104.19.0238', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (732, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-07C3E/I;GWC-07C3E/O', 'GWC-07C3E/I;GWC-07C3E/O', 'Non-Inverter', 547.10, 6085.40, 11.12, '4', 1597.53, 2343579.44, '118.011.4.46.104.19.0239', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (733, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-05F1/I;GWC-05F1/O', 'GWC-05F1/I;GWC-05F1/O', 'Inverter', 351.50, 4946.70, 13.09, '4', 1026.38, 1505699.46, '118.011.4.47.104.19.0240', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (734, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-18F1/I;GWC-18F1/O', 'GWC-18F1/I;GWC-18F1/O', 'Inverter', 1470.40, 15915.60, 11.34, '4', 4293.57, 6298664.26, '118.011.4.48.104.19.0241', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (735, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-24F1/I;GWC-24F1/O', 'GWC-24F1/I;GWC-24F1/O', 'Inverter', 2052.50, 20741.10, 12.49, '4', 5993.30, 8792171.10, '118.011.4.49.104.19.0242', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (736, 20, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Akari', 'A-05D3LWi/k;A-05D5PLWi/k;A-05D35LWi/k', 'A-05D3LWi/k;A-05D5PLWi/k;A-05D35LWi/k', 'Non-Inverter', 400.20, 5020.40, 12.55, '4', 1168.58, 1714312.73, '118.010.4.08.104.19.0243', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (737, 20, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Akari', 'A-09D3LWi/k;A-09D5PLWi/k;A-09D39LWi/k', 'A-09D3LWi/k;A-09D5PLWi/k;A-09D39LWi/k', 'Non-Inverter', 780.50, 8350.20, 10.70, '4', 2279.06, 3343381.02, '118.010.4.09.104.19.0244', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (738, 20, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Akari', 'A-18D7LWi/k', 'A-18D7LWi/k', 'Non-Inverter', 1510.50, 16250.10, 10.76, '4', 4410.66, 6470438.22, '118.010.4.10.104.19.0245', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (739, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-05BKS-ID /RAS-05BAS-ID', 'RAS-05BKS-ID /RAS-05BAS-ID', 'Non-Inverter', 399.50, 4866.77, 12.09, '4', 1166.54, 1711314.18, '118.040.4.01.104.19.0246', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (740, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-07BKS-ID /RAS-07BAS-ID', 'RAS-07BKS-ID /RAS-07BAS-ID', 'Non-Inverter', 675.30, 7554.89, 11.14, '4', 1971.88, 2892742.09, '118.040.4.02.104.19.0247', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (741, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-10BKS-ID /RAS-10BAS-ID', 'RAS-10BKS-ID /RAS-10BAS-ID', 'Non-Inverter', 815.10, 9048.63, 11.06, '4', 2380.09, 3491594.96, '118.040.4.03.104.19.0248', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (742, 44, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fuji AC', 'FAW05;FOW05', 'FAW05;FOW05', 'Non-Inverter', 408.20, 5020.10, 12.30, '4', 1191.94, 1748581.85, '118.043.4.01.104.19.0249', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (743, 44, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fuji AC', 'FAW09;FOW09', 'FAW09;FOW09', 'Non-Inverter', 789.10, 8330.30, 10.55, '4', 2304.17, 3380220.32, '118.043.4.02.104.19.0250', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (744, 44, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fuji AC', 'FAW12;FOW12', 'FAW12;FOW12', 'Non-Inverter', 1060.30, 11340.10, 10.70, '4', 3096.08, 4541943.49, '118.043.4.03.104.19.0251', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (745, 44, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fuji AC', 'FAW18;FOW18', 'FAW18;FOW18', 'Non-Inverter', 1520.20, 16230.20, 10.68, '4', 4438.98, 6511989.53, '118.043.4.04.104.19.0252', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (746, 44, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fuji AC', 'FAW24;FOW24', 'FAW24;FOW24', 'Non-Inverter', 2348.60, 23410.20, 9.97, '3', 6857.91, 10060556.90, '118.043.4.05.099.19.0253', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (747, 34, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TECO', 'LS05FCID1 / LT05FCID1', 'LS05FCID1 / LT05FCID1', 'Non-Inverter', 400.28, 5044.04, 12.60, '4', 1168.82, 1714655.42, '118.028.4.06.104.19.0254', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (748, 34, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TECO', 'LS09FCID1 / LT09FCID1', 'LS09FCID1 / LT09FCID1', 'Non-Inverter', 784.42, 8300.76, 10.58, '4', 2290.51, 3360172.89, '118.028.4.07.104.19.0255', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (749, 34, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TECO', 'LS12FCID1 / LT12FCID1', 'LS12FCID1 / LT12FCID1', 'Non-Inverter', 1066.08, 11362.18, 10.66, '4', 3112.95, 4566702.93, '118.028.4.08.104.19.0256', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (750, 34, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TECO', 'LS18FCID1 / LT18FCID1', 'LS18FCID1 / LT18FCID1', 'Non-Inverter', 1500.43, 16200.43, 10.80, '4', 4381.26, 6427301.97, '118.028.4.09.104.19.0257', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (751, 34, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TECO', 'LS24FCID1 / LT24FCID1', 'LS24FCID1 / LT24FCID1', 'Non-Inverter', 2348.59, 23419.05, 9.97, '3', 6857.88, 10060514.07, '118.028.3.10.099.19.0258', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (752, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'ESM05CRR-C1', 'ESM05CRR-C1', 'Non-Inverter', 480.40, 5219.85, 10.83, '4', 1402.77, 2057860.66, '118.007.4.16.104.19.0259', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (753, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'ESM09CRR-C1', 'ESM09CRR-C1', 'Non-Inverter', 761.50, 9476.14, 12.42, '4', 2223.58, 3261991.86, '118.007.4.17.104.19.0260', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (754, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'ESM12CRR-C1', 'ESM12CRR-C1', 'Non-Inverter', 1028.20, 11962.76, 11.62, '4', 3002.34, 4404438.65, '118.007.4.18.104.19.0261', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (755, 19, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Electrolux', 'ESM18CRR-C1', 'ESM18CRR-C1', 'Non-Inverter', 1506.70, 18241.77, 12.09, '4', 4399.56, 6454160.39, '118.007.4.19.104.19.0262', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (756, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBC-05CRN1 (I)/(O)', 'MSBC-05CRN1 (I)/(O)', 'Non-Inverter', 383.40, 4875.91, 12.66, '4', 1119.53, 1642347.58, '118.013.4.45.104.19.0263', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (757, 45, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aicool', 'AI/AO-WMF05SPCA', 'AI/AO-WMF05SPCA', 'Non-Inverter', 406.90, 5002.00, 12.29, '4', 1188.15, 1743013.12, '119.038.4.01.104.19.0263', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (758, 45, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aicool', 'AI/AO-WMF09SPCA', 'AI/AO-WMF09SPCA', 'Non-Inverter', 788.20, 9174.00, 11.64, '4', 2301.54, 3376365.05, '119.038.4.02.104.19.0264', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (759, 45, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aicool', 'AI/AO-WMF12SPCA', 'AI/AO-WMF12SPCA', 'Non-Inverter', 1002.10, 11851.00, 11.83, '4', 2926.13, 4292635.64, '119.038.4.03.104.19.0265', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (760, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBC-07CRN1(I) /MSBC-07CRN1(O)', 'MSBC-07CRN1(I) /MSBC-07CRN1(O)', 'Non-Inverter', 740.30, 7316.47, 9.86, '2', 2161.68, 3171178.69, '118.013.2.46.091.19.0267', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (761, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSBC-18CRN1(I) /MSBC-18CRN1(O)', 'MSBC-18CRN1(I) /MSBC-18CRN1(O)', 'Non-Inverter', 1749.70, 17544.62, 10.02, '3', 5109.12, 7495084.91, '118.013.3.47.099.19.0268', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (762, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-12MOO3/I;GWC-12MOO3/O', 'GWC-12MOO3/I;GWC-12MOO3/O', 'Non-Inverter', 1012.50, 12904.00, 12.74, '4', 2956.50, 4337185.50, '118.011.4.50.104.19.0269', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (763, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-18MOO3/I;GWC-18MOO3/O', 'GWC-18MOO3/I;GWC-18MOO3/O', 'Non-Inverter', 1531.90, 17660.50, 11.53, '4', 4473.15, 6562108.12, '118.011.4.51.104.19.0270', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (764, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-24MOO3/I;GWC-24MOO3/O', 'GWC-24MOO3/I;GWC-24MOO3/O', 'Non-Inverter', 2273.70, 23376.70, 10.27, '3', 6639.20, 9739712.27, '118.011.3.52.099.19.0271', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (765, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSFC-05CRN1(I) /MSFC-05CRN1(O)', 'MSFC-05CRN1(I) /MSFC-05CRN1(O)', 'Non-Inverter', 406.90, 5033.42, 12.32, '4', 1188.15, 1743013.12, '118.013.4.48.104.19.0272', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (766, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSFC-09CRN1(I) /MSFC-09CRN1(O)', 'MSFC-09CRN1(I) /MSFC-09CRN1(O)', 'Non-Inverter', 889.00, 10028.91, 11.26, '4', 2595.88, 3808155.96, '118.013.4.49.104.19.0273', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (767, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q12JA(T13EV4 NINJAT;T13EV4 UINJAT)', 'S3-Q12JA(T13EV4 NINJAT;T13EV4 UINJAT)', 'Inverter', 993.10, 12254.26, 14.98, '4', 2899.85, 4254082.88, '118.004.4.38.104.19.0274', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (768, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q18KL(T19EV4 NINKAT;T19EV4 UINKAT)', 'S3-Q18KL(T19EV4 NINKAT;T19EV4 UINKAT)', 'Inverter', 1543.40, 18693.24, 14.77, '4', 4506.73, 6611369.98, '118.004.4.39.104.19.0275', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (769, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-05S3KS-ID /RAS-05S3AS-ID', 'RAS-05S3KS-ID /RAS-05S3AS-ID', 'Non-Inverter', 409.00, 5003.71, 12.18, '4', 1194.28, 1752008.76, '118.040.4.04.104.19.0276', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (770, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-07S3KS-ID /RAS-07S3AS-ID', 'RAS-07S3KS-ID /RAS-07S3AS-ID', 'Non-Inverter', 622.60, 6049.84, 9.69, '2', 1817.99, 2666994.26, '118.040.2.05.091.19.0277', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (771, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-10S3KS-ID /RAS-10S3AS-ID', 'RAS-10S3KS-ID /RAS-10S3AS-ID', 'Non-Inverter', 838.60, 8262.27, 9.83, '2', 2448.71, 3592260.50, '118.040.2.06.091.19.0278', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (772, 14, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Beko', 'BSFSA 050 /BSFSA 051', 'BSFSA 050 /BSFSA 051', 'Non-Inverter', 358.00, 5203.00, 14.54, '4', 1045.36, 1533543.12, '104.044.4.01.104.19.0279', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (773, 14, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Beko', 'BSFSA 090 /BSFSA 091', 'BSFSA 090 /BSFSA 091', 'Non-Inverter', 711.00, 9448.00, 13.28, '4', 2076.12, 3045668.04, '104.044.4.02.104.19.0280', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (774, 14, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Beko', 'BSFSA 120 /BSFSA 121', 'BSFSA 120 /BSFSA 121', 'Non-Inverter', 1090.00, 12019.00, 11.03, '4', 3182.80, 4669167.60, '104.044.4.03.104.19.0281', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (775, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSFO-05CRLN2(I) /MSFO-05RCLN2(O)', 'MSFO-05CRLN2(I) /MSFO-05RCLN2(O)', 'Non-Inverter', 359.30, 4213.10, 11.72, '4', 1049.16, 1539111.85, '118.013.4.50.104.19.0282', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (776, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', 'RAS-13S3KS-ID/RAS-13S3AS-ID', 'RAS-13S3KS-ID/RAS-13S3AS-ID', 'Non-Inverter', 1100.00, 11686.46, 10.61, '4', 3212.00, 4712004.00, '118.014.4.38.104.19.0283', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (777, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', 'RAS-18S3KS-ID/RAS-18S3AS-ID', 'RAS-18S3KS-ID/RAS-18S3AS-ID', 'Non-Inverter', 1598.20, 16827.94, 10.52, '4', 4666.74, 6846113.45, '118.014.4.39.104.19.0284', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (778, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', 'RAS-24S3KS-ID/RAS-24S3AS-ID', 'RAS-24S3KS-ID/RAS-24S3AS-ID', 'Non-Inverter', 2120.50, 22440.27, 10.57, '4', 6191.86, 9083458.62, '118.014.4.40.104.19.0285', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (779, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSFO-09CRLN2(I) /MSFO-09CRLN2(O)', 'MSFO-09CRLN2(I) /MSFO-09CRLN2(O)', 'Non-Inverter', 706.30, 9012.20, 12.76, '4', 2062.40, 3025534.93, '118.013.4.51.104.19.0286', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (780, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q06WA(E06SV4 NWAC/E06SV4 UWAC);(S06EV4 NWAC/S06EV4 UWAC);(T06EV4 NWAC/T06EV4 UWAC);', 'S3-Q06WA(E06SV4 NWAC/E06SV4 UWAC);(S06EV4 NWAC/S06EV4 UWAC);(T06EV4 NWAC/T06EV4 UWAC);', 'Inverter', 491.80, 6246.18, 12.76, '4', 1436.06, 2106694.15, '118.004.4.40.104.19.0287', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (781, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q09WA(E10SV4 NWAC/E10SV4 UWAC);(S10EV4 NWAC/S10EV4 UWAC);(T10EV4 NWAC/T10EV4 UWAC);', 'S3-Q09WA(E10SV4 NWAC/E10SV4 UWAC);(S10EV4 NWAC/S10EV4 UWAC);(T10EV4 NWAC/T10EV4 UWAC);', 'Inverter', 916.30, 9662.92, 11.80, '4', 2675.60, 3925099.33, '118.004.4.41.104.19.0288', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (782, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q12JA(E13SV5 NJAC/E13SV5 UJAC);(S13EV4 NJAC/S13EV4 UJAC);', 'S3-Q12JA(E13SV5 NJAC/E13SV5 UJAC);(S13EV4 NJAC/S13EV4 UJAC);', 'Inverter', 1018.10, 12675.24, 14.80, '4', 2972.85, 4361173.88, '118.004.4.42.104.19.0289', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (783, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q18KL(E19SV5 NKAC/E19SV5 UKAC);(S19EV4 NKAC/S19EV4 UKAC);', 'S3-Q18KL(E19SV5 NKAC/E19SV5 UKAC);(S19EV4 NKAC/S19EV4 UKAC);', 'Inverter', 1513.60, 17987.67, 14.08, '4', 4419.71, 6483717.50, '118.004.4.43.104.19.0290', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (784, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-12D/L', 'ESA-12D/L', 'Non-Inverter', 1064.50, 11854.34, 11.12, '4', 3108.34, 4559934.78, '118.017.4.20.104.19.0291', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (785, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-18D/L', 'ESA-18D/L', 'Non-Inverter', 1672.60, 17212.20, 10.28, '3', 4883.99, 7164816.26, '118.017.3.21.099.19.0292', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (786, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-05D/L;EC-05ESAD/L', 'ESA-05D/L;EC-05ESAD/L', 'Non-Inverter', 392.20, 4937.78, 12.54, '4', 1145.22, 1680043.61, '118.017.4.22.104.19.0293', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (787, 25, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sanken', 'ESA-09D/L;EC-09ESAD/L', 'ESA-09D/L;EC-09ESAD/L', 'Non-Inverter', 881.00, 9742.83, 11.04, '4', 2572.52, 3773886.84, '118.017.4.23.104.19.0294', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (788, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS-05 CNI', 'DDS-05 CNI', 'Non-Inverter', 394.20, 4494.58, 11.35, '4', 1151.06, 1688610.89, '118.018.4.07.104.19.0295', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (789, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS-09 CNI', 'DDS-09 CNI', 'Non-Inverter', 888.00, 8680.00, 9.76, '2', 2592.96, 3803872.32, '118.018.2.08.104.19.0296', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (790, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS-155 CI', 'DDS-155 CI', 'Non-Inverter', 388.20, 4264.73, 10.94, '4', 1133.54, 1662909.05, '118.018.4.09.104.19.0297', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (791, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS-199 CI', 'DDS-199 CI', 'Non-Inverter', 708.40, 6754.16, 9.51, '2', 2068.53, 3034530.58, '118.018.2.10.104.19.0298', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (792, 2, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Maspion', 'MAC-05ESLW / MAC-05CSLW', 'MAC-05ESLW / MAC-05CSLW', 'Non-Inverter', 350.00, 5000.00, 11.91, '4', 1022.00, 1499274.00, '011.032.4.08.104.19.0299', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (793, 46, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Taiace', 'GTS9 IW1 / GTS9 IOW1', 'GTS9 IW1 / GTS9 IOW1', 'Inverter', 846.00, 9002.00, 11.60, '4', 2470.32, 3623959.44, '104.045.4.01.104.19.0300', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (794, 46, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Taiace', 'GTS12 IW1 / GTS12 IOW1', 'GTS12 IW1 / GTS12 IOW1', 'Inverter', 1284.00, 11162.00, 10.46, '4', 3749.28, 5500193.76, '104.045.4.02.104.19.0301', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (795, 46, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Taiace', 'GTS18 IW1 / GTS18 IOW1', 'GTS18 IW1 / GTS18 IOW1', 'Inverter', 1031.00, 17342.00, 11.13, '4', 3010.52, 4416432.84, '104.045.4.03.104.19.0302', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (796, 46, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Taiace', 'GTS22 IW1 / GTS22 IOW1', 'GTS22 IW1 / GTS22 IOW1', 'Inverter', 2257.00, 21366.00, 11.05, '4', 6590.44, 9668175.48, '104.045.4.04.104.19.0303', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (797, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-10U2KCVG-IDRAS-10U2ACVG-ID', 'RAS-10U2KCVG-IDRAS-10U2ACVG-ID', 'Inverter', 916.10, 8626.41, 11.36, '4', 2675.01, 3924242.60, '118.040.4.07.104.19.0304', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (798, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-13U2KCVG-IDRAS-13U2ACVG-ID', 'RAS-13U2KCVG-IDRAS-13U2ACVG-ID', 'Inverter', 1207.50, 12130.88, 11.98, '4', 3525.90, 5172495.30, '118.040.4.08.104.19.0305', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (799, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-18U2KCVG-IDRAS-18U2ACVG-ID', 'RAS-18U2KCVG-IDRAS-18U2ACVG-ID', 'Inverter', 1717.20, 17726.70, 13.03, '4', 5014.22, 7355866.61, '118.040.4.09.104.19.0306', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (800, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q09JL(P10RV3 NJAC/P10RV3 UJAC);', 'S3-Q09JL(P10RV3 NJAC/P10RV3 UJAC);', 'Inverter', 641.60, 9323.63, 16.65, '4', 1873.47, 2748383.42, '118.004.4.44.104.19.0307', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (801, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q12JL(P13RV3 NJAC/P13RV3 UJAC);', 'S3-Q12JL(P13RV3 NJAC/P13RV3 UJAC);', 'Inverter', 955.50, 12365.18, 15.99, '4', 2790.06, 4093018.02, '118.004.4.45.104.19.0308', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (802, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCR5ANR(AQA-KR5ANR; AQA-CR5ANR)(AQA-KR5ANR1; AQA-CR5ANR1)(AQA-KR5ANR2; AQA-CR5ANR2)', 'AQA-KCR5ANR(AQA-KR5ANR; AQA-CR5ANR)(AQA-KR5ANR1; AQA-CR5ANR1)(AQA-KR5ANR2; AQA-CR5ANR2)', 'Non-Inverter', 411.50, 5095.88, 12.33, '4', 1201.58, 1762717.86, '118.021.4.34.104.19.0309', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (803, 30, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Aqua', 'AQA-KCR9ANR(AQA-KR9ANR; AQA-CR9ANR)(AQA-KR9ANR1; AQA-CR9ANR1)(AQA-KR9ANR2; AQA-CR9ANR2)', 'AQA-KCR9ANR(AQA-KR9ANR; AQA-CR9ANR)(AQA-KR9ANR1; AQA-CR9ANR1)(AQA-KR9ANR2; AQA-CR9ANR2)', 'Non-Inverter', 786.60, 8890.92, 11.28, '4', 2296.87, 3369511.22, '118.021.4.35.104.19.0310', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (804, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-ZN5WKPCU-ZN5WKP', 'CS-ZN5WKPCU-ZN5WKP', 'Non-Inverter', 328.10, 4551.28, 13.80, '4', 958.05, 1405462.28, '118.009.4.39.104.19.0311', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (805, 1, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS-ZN9WKPCU-ZN9WKP', 'CS-ZN9WKPCU-ZN9WKP', 'Non-Inverter', 751.20, 9104.21, 12.09, '4', 2193.50, 3217870.37, '118.009.4.40.104.19.0312', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (806, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-05S3KS-ID /RAS-05S3AS-ID', 'RAS-05S3KS-ID /RAS-05S3AS-ID', 'Non-Inverter', 401.40, 4773.57, 11.84, '4', 1172.09, 1719453.10, '118.014.4.41.104.19.0313', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (807, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-07S3KS-ID /RAS-07S3AS-ID', 'RAS-07S3KS-ID /RAS-07S3AS-ID', 'Non-Inverter', 634.00, 6146.30, 9.67, '2', 1851.28, 2715827.76, '118.014.2.42.091.19.0314', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (808, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-10S3KS-ID /RAS-10S3AS-ID', 'RAS-10S3KS-ID /RAS-10S3AS-ID', 'Non-Inverter', 856.60, 8342.15, 9.72, '2', 2501.27, 3669366.02, '118.014.2.43.091.19.0315', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (809, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'DAMA Non-Inverter R32 C Series 5(FTV50CXV14;RV25CXV14)', 'DAMA Non-Inverter R32 C Series 5(FTV50CXV14;RV25CXV14)', 'Non-Inverter', 1632.06, 18015.36, 10.69, '4', 4765.62, 6991157.50, '119.002.4.77.104.19.0316', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (810, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'DAMA Non-Inverter R32 C Series 6(FTV60CXV14;RV60CXV14)', 'DAMA Non-Inverter R32 C Series 6(FTV60CXV14;RV60CXV14)', 'Non-Inverter', 2167.30, 23475.57, 10.83, '4', 6328.52, 9283932.97, '119.002.4.78.104.19.0317', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (811, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'DAMA Entry Non-Inverter R32 Series 1(FTP15AV14;RP15AV14)', 'DAMA Entry Non-Inverter R32 Series 1(FTP15AV14;RP15AV14)', 'Non-Inverter', 395.26, 1416.96, 12.23, '4', 1154.16, 1693151.55, '119.002.4.79.104.19.0318', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (812, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'DAMA Entry Non-Inverter R32 Series 2(FTP25AV14;RP25AV14)', 'DAMA Entry Non-Inverter R32 Series 2(FTP25AV14;RP25AV14)', 'Non-Inverter', 777.74, 8377.54, 10.77, '4', 2271.00, 3331558.17, '119.002.4.80.104.19.0319', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (813, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-XP13UHY;AU-X13UHY', 'AH-XP13UHY;AU-X13UHY', 'Inverter', 970.60, 9283.73, 11.68, '4', 2834.15, 4157700.98, '118.008.4.47.104.19.0320', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (814, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS - 05 CTL ', 'DDS - 05 CTL ', 'Non-Inverter', 441.40, 4789.34, 10.81, '4', 1288.89, 1890798.70, '118.018.4.11.104.19.0321', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (815, 27, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Denpoo', 'DDS - 09 CTL ', 'DDS - 09 CTL ', 'Non-Inverter', 783.40, 7582.80, 9.66, '2', 2287.53, 3355803.58, '118.018.2.12.091.19.0322', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (816, 47, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron', 'EAW109000(PAC 09VX-1)', 'EAW109000(PAC 09VX-1)', 'Non-Inverter', 908.00, 10081.00, 11.10, '4', 2651.36, 3889545.12, '118.046.4.01.104.19.0001', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (817, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-09GTech', 'GWC-09GTech', 'Inverter', 623.30, 9487.84, 13.40, '4', 1820.04, 2669992.81, '118.011.4.53.104.19.0324', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (818, 9, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC-12GTech', 'GWC-12GTech', 'Inverter', 904.90, 12126.04, 10.88, '4', 2642.31, 3876265.84, '118.011.4.54.104.19.0325', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (819, 47, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron', 'EAW055000(PAC 05VX-1)', 'EAW055000(PAC 05VX-1)', 'Non-Inverter', 492.00, 6689.00, 13.61, '4', 1436.64, 2107550.88, '118.046.4.02.104.19.0326', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (820, 47, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron', 'EAW151000(PAC 12VX-1)', 'EAW151000(PAC 12VX-1)', 'Non-Inverter', 1103.00, 12740.00, 11.55, '4', 3220.76, 4724854.92, '118.046.4.03.104.19.0327', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (821, 47, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron', 'EAW201600(PAC 18VX-1)', 'EAW201600(PAC 18VX-1)', 'Non-Inverter', 1675.20, 17639.80, 10.53, '4', 4891.58, 7175953.73, '118.046.4.04.104.19.0328', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (822, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Bestlife', 'BAC 05 CX', 'BAC 05 CX', 'Non-Inverter', 485.60, 5447.80, 11.22, '4', 1417.95, 2080135.58, '135.039.4.20.104.19.0328', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (823, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Bestlife', 'BAC 18 CX', 'BAC 18 CX', 'Non-Inverter', 1681.40, 16741.20, 9.96, '3', 4909.69, 7202512.30, '135.039.3.21.099.19.0329', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (824, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSAF-18CRN2(I) /MSAF-18CRN2(O)', 'MSAF-18CRN2(I) /MSAF-18CRN2(O)', 'Non-Inverter', 1471.60, 17327.81, 11.76, '4', 4297.07, 6303804.62, '118.013.4.52.104.19.0330', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (825, 22, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Midea', 'MSAF-24CRN2(I) /MSAF-24CRN2(O)', 'MSAF-24CRN2(I) /MSAF-24CRN2(O)', 'Non-Inverter', 2014.00, 23459.56, 11.64, '4', 5880.88, 8627250.96, '118.013.4.53.104.19.0331', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (826, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Flash Entry Inverter R32 Series 1(FTKQ15UVM4/RKQ15UVM4)', 'Flash Entry Inverter R32 Series 1(FTKQ15UVM4/RKQ15UVM4)', 'Inverter', 323.20, 5118.00, 18.07, '4', 943.74, 1384472.45, '119.002.4.81.104.19.0332', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (827, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Flash Entry Inverter R32 Series 2(FTKQ20UVM4/RKQ20UVM4)', 'Flash Entry Inverter R32 Series 2(FTKQ20UVM4/RKQ20UVM4)', 'Inverter', 577.20, 6992.55, 16.14, '4', 1685.42, 2472517.01, '119.002.4.82.104.19.0333', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (828, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Flash Entry Inverter R32 Series 3(FTKQ25UVM4/RKQ25UVM4)', 'Flash Entry Inverter R32 Series 3(FTKQ25UVM4/RKQ25UVM4)', 'Inverter', 825.90, 9084.45, 14.95, '4', 2411.63, 3537858.28, '119.002.4.83.104.19.0334', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (829, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Flash Entry Inverter R32 Series 4(FTKQ35UVM4/RKQ35UVM4)', 'Flash Entry Inverter R32 Series 4(FTKQ35UVM4/RKQ35UVM4)', 'Inverter', 1227.40, 12211.21, 15.30, '4', 3584.01, 5257739.74, '119.002.4.84.104.19.0335', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (830, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Flash Entry Inverter R32 Series 5(FTKQ50UVM4/RKQ50UVM4)', 'Flash Entry Inverter R32 Series 5(FTKQ50UVM4/RKQ50UVM4)', 'Inverter', 1598.70, 17354.11, 14.06, '4', 4668.20, 6848255.27, '119.002.4.85.104.19.0336', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (831, 11, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Daikin', 'Flash Entry Inverter R32 Series 6(FTKQ60UVM4/RKQ60UVM4)', 'Flash Entry Inverter R32 Series 6(FTKQ60UVM4/RKQ60UVM4)', 'Inverter', 2046.40, 20225.65, 13.72, '4', 5975.49, 8766040.90, '119.002.4.86.104.19.0337', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (832, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR10TYEAEWKN(I) /AR10TYEAEWKX (O)', 'AR10TYEAEWKN(I) /AR10TYEAEWKX (O)', 'Inverter', 678.60, 9571.90, 16.63, '4', 1981.51, 2906878.10, '118.001.4.26.104.20.0338', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (833, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR13TYEAEWKN(I) /AR13TYEAEWKX (O)', 'AR13TYEAEWKN(I) /AR13TYEAEWKX (O)', 'Inverter', 1051.40, 13071.16, 15.32, '4', 3070.09, 4503819.10, '118.001.4.27.104.20.0339', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (834, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR18TYEAEWKN(I) /AR18TYEAEWKX (O)', 'AR18TYEAEWKN(I) /AR18TYEAEWKX (O)', 'Inverter', 1704.20, 18392.77, 14.03, '4', 4976.26, 7300179.29, '118.001.4.28.104.20.0340', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (835, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR10TYGZEWKN(I) /AR10TYGZEWKX (O)', 'AR10TYGZEWKN(I) /AR10TYGZEWKX (O)', 'Inverter', 930.50, 10290.85, 12.92, '4', 2717.06, 3985927.02, '118.001.4.29.104.20.0341', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (836, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR13TYGZEWKN(I) /AR13TYGZEWKX (O)', 'AR13TYGZEWKN(I) /AR13TYGZEWKX (O)', 'Inverter', 1150.50, 13143.41, 13.79, '4', 3359.46, 4928327.82, '118.001.4.30.104.20.0342', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (837, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR18TYGZEWKN(I) /AR18TYGZEWKX (O)', 'AR18TYGZEWKN(I) /AR18TYGZEWKX (O)', 'Inverter', 1536.00, 18886.22, 15.06, '4', 4485.12, 6579671.04, '118.001.4.31.104.20.0343', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (838, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Bestlife', 'BAC 09 CX', 'BAC 09 CX', 'Non-Inverter', 806.40, 8781.50, 10.89, '4', 2354.69, 3454327.30, '135.039.4.22.104.20.0007', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (839, 41, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Bestlife', 'BAC 12 CX', 'BAC 12 CX', 'Non-Inverter', 1051.10, 11159.20, 10.62, '4', 3069.21, 4502534.00, '135.039.4.23.104.20.0008', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (840, 47, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron', 'EAW055000(PAC 05VG-1)', 'EAW055000(PAC 05VG-1)', 'Non-Inverter', 495.00, 5732.00, 11.58, '4', 1445.40, 2120401.80, '118.046.4.05.104.20.0009', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (841, 47, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron', 'EAW109000(PAC 09VG-1)', 'EAW109000(PAC 09VG-1)', 'Non-Inverter', 859.00, 9607.00, 11.18, '4', 2508.28, 3679646.76, '118.046.4.06.104.20.0010', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (842, 47, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron', 'EAW151000(PAC 12VG-1)', 'EAW151000(PAC 12VG-1)', 'Non-Inverter', 1178.70, 12927.30, 10.97, '4', 3441.80, 5049126.47, '118.046.4.07.104.20.0011', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (843, 47, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Polytron', 'EAW201600(PAC 18VG-1)', 'EAW201600(PAC 18VG-1)', 'Non-Inverter', 1675.50, 18389.50, 10.98, '4', 4892.46, 7177238.82, '118.046.4.08.104.20.0012', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (844, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSDC-09IVE', 'CSDC-09IVE', 'Inverter', 801.60, 9249.00, 12.57, '4', 2340.67, 3433765.82, '135.029.4.14.104.20.0013', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (845, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSDC-12IVE', 'CSDC-12IVE', 'Inverter', 1024.20, 11359.90, 12.79, '4', 2990.66, 4387304.09, '135.029.4.15.104.20.0014', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (846, 14, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Beko', 'BSVOA090 / BSVOA091', 'BSVOA090 / BSVOA091', 'Inverter', 707.20, 9454.99, 15.75, '4', 2065.02, 3029390.21, '118.044.4.04.104.20.0015', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (847, 14, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Beko', 'BSVOA120 /BSVOA121', 'BSVOA120 /BSVOA121', 'Inverter', 880.60, 12265.41, 16.11, '4', 2571.35, 3772173.38, '118.044.4.05.104.20.0016', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (848, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSWS05ES/HSWS05ES', 'HSWS05ES/HSWS05ES', 'Non-Inverter', 400.28, 5044.04, 12.60, '4', 1168.82, 1714655.42, '118.024.4.10.104.20.0017', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (849, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSWS09ES/HSWS09ES', 'HSWS09ES/HSWS09ES', 'Non-Inverter', 784.42, 8300.76, 10.58, '4', 2290.51, 3360172.89, '118.024.4.11.104.20.0018', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (850, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSWS12ES/HSWS12ES', 'HSWS12ES/HSWS12ES', 'Non-Inverter', 1066.08, 11362.18, 10.66, '4', 3112.95, 4566702.93, '118.024.4.12.104.20.0019', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (851, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSWS18ES/HSWS18ES', 'HSWS18ES/HSWS18ES', 'Non-Inverter', 1500.43, 16200.43, 10.80, '4', 4381.26, 6427301.97, '118.024.4.13.104.20.0020', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (852, 12, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Honshu', 'HSWS24ES/HSWS24ES', 'HSWS24ES/HSWS24ES', 'Non-Inverter', 2348.59, 23419.05, 9.97, '3', 6857.88, 10060514.07, '118.024.3.14.099.20.0021', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (853, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR05TGHQASINSE /AR05TGHQASIXSE', 'AR05TGHQASINSE /AR05TGHQASIXSE', 'Non-Inverter', 337.80, 4454.02, 13.13, '4', 986.38, 1447013.59, '118.001.4.32.104.20.0022', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (854, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR09TGHQASINSE /AR09TGHQASIXSE', 'AR09TGHQASINSE /AR09TGHQASIXSE', 'Non-Inverter', 770.10, 8268.24, 10.71, '4', 2248.69, 3298831.16, '118.001.4.33.104.20.0023', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (855, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR12TGHQASINSE /AR12TGHQASIXSE', 'AR12TGHQASINSE /AR12TGHQASIXSE', 'Non-Inverter', 991.00, 11477.85, 11.56, '4', 2893.72, 4245087.24, '118.001.4.34.104.20.0024', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (856, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR18TGHQASINSE /AR18TGHQASIXSE', 'AR18TGHQASINSE /AR18TGHQASIXSE', 'Non-Inverter', 1499.10, 16925.04, 11.28, '4', 4377.37, 6421604.72, '118.001.4.35.104.20.0025', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (857, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', 'SRK10YW-W3/SRC10YW-W3', 'SRK10YW-W3/SRC10YW-W3', 'Non-Inverter', 745.00, 8530.00, 11.87, '4', 2175.40, 3191311.80, '113.015.4.25.104.20.0026', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (858, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', 'SRK13YW-W3/SRC13YW-W3', 'SRK13YW-W3/SRC13YW-W3', 'Non-Inverter', 1055.00, 10912.00, 10.78, '4', 3080.60, 4519240.20, '113.015.4.26.104.20.0027', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (859, 26, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Mitsubishi Heavy Industries', 'SRK18YW-W3/SRC18YW-W3', 'SRK18YW-W3/SRC18YW-W3', 'Non-Inverter', 1470.00, 17055.00, 11.29, '4', 4292.40, 6296950.80, '113.015.4.27.104.20.0028', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (860, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujitsu', 'ASAG09JLCA /AOAG09JLCA', 'ASAG09JLCA /AOAG09JLCA', 'Non-Inverter', 726.00, 9103.22, 16.64, '4', 2119.92, 3109922.64, '119.036.4.13.104.20.0029', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (861, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujitsu', 'ASAG12JLCA /AOAG12JLCA', 'ASAG12JLCA /AOAG12JLCA', 'Non-Inverter', 1044.00, 11825.99, 16.06, '4', 3048.48, 4472120.16, '119.036.4.14.104.20.0030', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (862, 40, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujitsu', 'ASAA18JCC /AOAR18JCC', 'ASAA18JCC /AOAR18JCC', 'Non-Inverter', 1264.00, 16855.28, 15.02, '4', 3690.88, 5414520.96, '119.036.4.15.104.20.0031', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (863, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHA005N8FS38KHA005N8FS', '42KHA005N8FS38KHA005N8FS', 'Non-Inverter', 357.50, 5689.60, 15.91, '4', 1043.90, 1531401.30, '118.014.4.44.104.20.0032', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (864, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHA009N8FS38KHA009N8FS', '42KHA009N8FS38KHA009N8FS', 'Non-Inverter', 821.90, 8681.60, 10.56, '4', 2399.95, 3520723.72, '118.014.4.45.104.20.0033', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (865, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHA012N8FS38KHA012N8FS', '42KHA012N8FS38KHA012N8FS', 'Non-Inverter', 1054.60, 13134.80, 12.45, '4', 3079.43, 4517526.74, '118.014.4.46.104.20.0034', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (866, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHA018N8FS38KHA018N8FS', '42KHA018N8FS38KHA018N8FS', 'Non-Inverter', 1565.40, 18467.40, 11.80, '4', 4570.97, 6705610.06, '118.014.4.47.104.20.0035', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (867, 23, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Carrier', '42KHA024N8FS38KHA024N8FS', '42KHA024N8FS38KHA024N8FS', 'Non-Inverter', 2013.60, 23761.94, 11.79, '4', 5879.71, 8625537.50, '118.014.4.48.104.20.0036', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (868, 48, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Hitachi', 'RAS-EJ10CKN /RAC-EJ10CKN', 'RAS-EJ10CKN /RAC-EJ10CKN', 'Non-Inverter', 804.30, 8554.80, 10.61, '4', 2348.56, 3445331.65, '119.048.4.01.104.20.0037', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (869, 48, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Hitachi', 'RAS-EJ13CKN /RAC-EJ13CKN', 'RAS-EJ13CKN /RAC-EJ13CKN', 'Non-Inverter', 981.60, 11398.80, 11.60, '4', 2866.27, 4204821.02, '119.048.4.02.104.20.0038', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (870, 48, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Hitachi', 'RAS-EJ18CKN /RAC-EJ18CKN', 'RAS-EJ18CKN /RAC-EJ18CKN', 'Non-Inverter', 1882.00, 18044.20, 9.59, '2', 5495.44, 8061810.48, '119.048.2.03.091.20.0039', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (871, 48, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Hitachi', 'RAS-EJ24CKN /RAC-EJ24CKN', 'RAS-EJ24CKN /RAC-EJ24CKN', 'Non-Inverter', 1962.60, 22205.90, 11.33, '4', 5730.79, 8407071.86, '119.048.4.04.104.20.0040', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (872, 48, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Hitachi', 'RAS-XJ10CKN /RAC-XJ10CKN', 'RAS-XJ10CKN /RAC-XJ10CKN', 'Inverter', 795.80, 9098.60, 13.17, '4', 2323.74, 3408920.71, '119.048.4.05.104.20.0041', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (873, 48, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Hitachi', 'RAS-XJ13CKN /RAC-XJ13CKN', 'RAS-XJ13CKN /RAC-XJ13CKN', 'Inverter', 1136.00, 11987.80, 13.30, '4', 3317.12, 4866215.04, '119.048.4.06.104.20.0042', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (874, 48, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Hitachi', 'RAS-XJ18CKN /RAC-XJ18CKN', 'RAS-XJ18CKN /RAC-XJ18CKN', 'Inverter', 1854.80, 19125.90, 13.68, '4', 5416.02, 7945295.47, '119.048.4.07.104.20.0043', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (875, 48, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Hitachi', 'RAS-XJ24CKN /RAC-XJ24CKN', 'RAS-XJ24CKN /RAC-XJ24CKN', 'Inverter', 2126.20, 22590.37, 14.99, '4', 6208.50, 9107875.37, '119.048.4.08.104.20.0044', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (876, 10, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR07NRFLDWKN /AR07NRFLDWKX', 'AR07NRFLDWKN /AR07NRFLDWKX', 'Non-Inverter', 635.40, 7272.38, 11.41, '4', 1855.37, 2721824.86, '118.001.4.36.104.20.0045', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (877, 29, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujiaire', 'FW05L1H-2A1N /FL05L1H-2A1N', 'FW05L1H-2A1N /FL05L1H-2A1N', 'Non-Inverter', 385.00, 4577.88, 11.90, '4', 1124.20, 1649201.40, '119.020.4.05.104.20.0046', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (878, 29, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujiaire', 'FW07L1H-2A1N /FL07L1H-2A1N', 'FW07L1H-2A1N /FL07L1H-2A1N', 'Non-Inverter', 572.00, 7257.33, 12.69, '4', 1670.24, 2450242.08, '119.020.4.06.104.20.0047', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (879, 29, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujiaire', 'FW10C1H-2A1N /FL10C1H-2A1N', 'FW10C1H-2A1N /FL10C1H-2A1N', 'Non-Inverter', 887.00, 8617.00, 9.72, '2', 2590.04, 3799588.68, '119.020.2.07.091.20.0048', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (880, 29, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujiaire', 'FW15C1H-2A1N /FL15C1H-2A1N', 'FW15C1H-2A1N /FL15C1H-2A1N', 'Non-Inverter', 1030.00, 10556.73, 10.25, '3', 3007.60, 4412149.20, '119.020.3.08.099.20.0049', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (881, 29, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujiaire', 'FW20C1H-2A1N /FL20C1H-2A1N', 'FW20C1H-2A1N /FL20C1H-2A1N', 'Non-Inverter', 1630.00, 15910.16, 9.76, '2', 4759.60, 6982333.20, '119.020.2.09.091.20.0050', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (882, 29, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Fujiaire', 'FW25C1H-2A1N /FL25C1H-2A1N', 'FW25C1H-2A1N /FL25C1H-2A1N', 'Non-Inverter', 2000.00, 22768.27, 11.38, '4', 5840.00, 8567280.00, '119.020.4.10.104.20.0051', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (883, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-05J2KG-ID (I) / RAS-05J2AG-ID (O)', 'RAS-05J2KG-ID (I) / RAS-05J2AG-ID (O)', 'Non-Inverter', 353.60, 4617.23, 12.99, '4', 1032.51, 1514695.10, '118.040.4.10.104.20.0052', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (884, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-09J2KG-ID (I) / RAS-09J2AG-ID (O)', 'RAS-09J2KG-ID (I) / RAS-09J2AG-ID (O)', 'Non-Inverter', 780.10, 8591.32, 10.99, '4', 2277.89, 3341667.56, '118.040.4.11.104.20.0053', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (885, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-012J2KG-ID (I) / RAS-012J2AG-ID (O)', 'RAS-012J2KG-ID (I) / RAS-012J2AG-ID (O)', 'Non-Inverter', 1080.50, 11934.34, 11.03, '4', 3155.06, 4628473.02, '118.040.4.12.104.20.0054', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (886, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-018J2KG-ID (I) / RAS-018J2AG-ID (O)', 'RAS-018J2KG-ID (I) / RAS-018J2AG-ID (O)', 'Non-Inverter', 1500.60, 17071.55, 11.36, '4', 4381.75, 6428030.18, '118.040.4.13.104.20.0055', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (887, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-XN5WKJ; CU/CS-KN5WKJ', 'CU/CS-XN5WKJ; CU/CS-KN5WKJ', 'Non-Inverter', 375.20, 5045.00, 13.44, '4', 1095.58, 1607221.73, '119.006.4.30.104.20.0056', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (888, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-PN5WKJ; CU/CS-LN5WKJ; CU/CS-YN5WKJ', 'CU/CS-PN5WKJ; CU/CS-LN5WKJ; CU/CS-YN5WKJ', 'Non-Inverter', 413.70, 4770.00, 11.53, '4', 1208.00, 1772141.87, '119.006.4.31.104.20.0057', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (889, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-XN7WKJ; CU/CS-KN7WKJ', 'CU/CS-XN7WKJ; CU/CS-KN7WKJ', 'Non-Inverter', 593.20, 6928.00, 11.67, '4', 1732.14, 2541055.25, '119.006.4.32.104.20.0058', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (890, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-PN7WKJ; CU/CS-LN7WKJ', 'CU/CS-PN7WKJ; CU/CS-LN7WKJ', 'Non-Inverter', 597.10, 6719.00, 11.25, '4', 1743.53, 2557761.44, '119.006.4.33.104.20.0059', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (891, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-YN7WKJ', 'CU/CS-YN7WKJ', 'Non-Inverter', 664.90, 7173.00, 10.79, '4', 1941.51, 2848192.24, '119.006.4.34.104.20.0060', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (892, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-XN9WKJ; CU/CS-KN9WKJ', 'CU/CS-XN9WKJ; CU/CS-KN9WKJ', 'Non-Inverter', 729.40, 8726.00, 11.96, '4', 2129.85, 3124487.02, '119.006.4.35.104.20.0061', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (893, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-PN9WKJ; CU/CS-LN9WKJ', 'CU/CS-PN9WKJ; CU/CS-LN9WKJ', 'Non-Inverter', 726.90, 8204.00, 11.28, '4', 2122.55, 3113777.92, '119.006.4.36.104.20.0062', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (894, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-YN9WKJ', 'CU/CS-YN9WKJ', 'Non-Inverter', 781.00, 8421.00, 10.78, '4', 2280.52, 3345522.84, '119.006.4.37.104.20.0063', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (895, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-PN12WKJ; CU/CS-LN12WKJ', 'CU/CS-PN12WKJ; CU/CS-LN12WKJ', 'Non-Inverter', 1018.10, 11563.00, 11.35, '4', 2972.85, 4361173.88, '119.006.4.38.104.20.0064', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (896, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-YN12WKJ', 'CU/CS-YN12WKJ', 'Non-Inverter', 1034.20, 11100.00, 10.73, '4', 3019.86, 4430140.49, '119.006.4.39.104.20.0065', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (897, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-PN18WKJ; CU/CS-LN18WKJ', 'CU/CS-PN18WKJ; CU/CS-LN18WKJ', 'Non-Inverter', 1594.90, 17733.00, 11.14, '4', 4657.11, 6831977.44, '119.006.4.40.104.20.0066', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (898, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-YN18WKJ', 'CU/CS-YN18WKJ', 'Non-Inverter', 1634.50, 17479.00, 10.71, '4', 4772.74, 7001609.58, '119.006.4.41.104.20.0067', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (899, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-PN24WKJ; CU/CS-LN24WKJ', 'CU/CS-PN24WKJ; CU/CS-LN24WKJ', 'Non-Inverter', 2113.40, 22945.00, 10.86, '4', 6171.13, 9053044.78, '119.006.4.42.104.20.0068', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (900, 18, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CU/CS-YN24WKJ', 'CU/CS-YN24WKJ', 'Non-Inverter', 2111.80, 22543.00, 10.68, '4', 6166.46, 9046190.95, '119.006.4.43.104.20.0069', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (901, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC05NAS/I;GWC05NAS/O', 'GWC05NAS/I;GWC05NAS/O', 'Non-Inverter', 374.90, 4604.20, 12.28, '4', 1094.71, 1605936.64, '113.030.4.23.104.20.0070', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (902, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC07NAS/I;GWC07NAS/O', 'GWC07NAS/I;GWC07NAS/O', 'Non-Inverter', 580.90, 6670.94, 11.50, '4', 1696.23, 2488366.48, '113.030.4.24.104.20.0071', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (903, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC09NAS/I;GWC09NAS/O', 'GWC09NAS/I;GWC09NAS/O', 'Non-Inverter', 773.30, 8655.96, 11.19, '4', 2258.04, 3312538.81, '113.030.4.25.104.20.0072', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (904, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC12NAS/I;GWC12NAS/O', 'GWC12NAS/I;GWC12NAS/O', 'Non-Inverter', 1053.90, 11799.70, 11.19, '4', 3077.39, 4514528.20, '113.030.4.26.104.20.0073', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (905, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC18NAS/I;GWC18NAS/O', 'GWC18NAS/I;GWC18NAS/O', 'Non-Inverter', 1671.70, 17490.10, 10.48, '4', 4881.36, 7160960.99, '113.030.4.27.104.20.0074', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (906, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC24NAS/I;GWC24NAS/O', 'GWC24NAS/I;GWC24NAS/O', 'Non-Inverter', 2061.40, 21473.00, 10.41, '4', 6019.29, 8830295.50, '113.030.4.28.104.20.0075', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (907, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC05LWS/I;GWC05LWS/O', 'GWC05LWS/I;GWC05LWS/O', 'Non-Inverter', 328.90, 4526.10, 13.75, '4', 960.39, 1408889.20, '113.030.4.29.104.20.0076', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (908, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC07LWS/I;GWC07LWS/O', 'GWC07LWS/I;GWC07LWS/O', 'Non-Inverter', 542.60, 6605.50, 12.18, '4', 1584.39, 2324303.06, '113.030.4.30.104.20.0077', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (909, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Gree', 'GWC09LWS/I;GWC09LWS/O', 'GWC09LWS/I;GWC09LWS/O', 'Non-Inverter', 703.50, 8412.40, 11.94, '4', 2054.22, 3013540.74, '113.030.4.31.104.20.0078', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (910, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG ', 'S3-Q12JA (S13EV4 NINJAC; S13EV4 UINJAC)', 'S3-Q12JA (S13EV4 NINJAC; S13EV4 UINJAC)', 'Inverter', 1080.60, 12310.96, 14.16, '4', 3155.35, 4628901.38, '118.004.4.46.104.20.0079', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (911, 16, 241086, 0, NULL, NULL, NULL, NULL, 1, 'LG ', 'S3-Q18KL (S19EV4 NINKAC; S19EV4 UINKAC)', 'S3-Q18KL (S19EV4 NINKAC; S19EV4 UINKAC)', 'Inverter', 1512.30, 18026.93, 14.46, '4', 4415.92, 6478148.77, '118.004.4.47.104.20.0080', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (912, 20, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Akari', 'A-12D7LWi / A-12D7LWk', 'A-12D7LWi / A-12D7LWk', 'Non-Inverter', 1050.20, 11360.10, 10.82, '4', 3066.58, 4498678.73, '119.010.4.11.104.20.0081', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (913, 6, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Sharp', 'AH-A9UCY /AU-A9UCY;AH-A9VEY /AU-A9VEY', 'AH-A9UCY /AU-A9UCY;AH-A9VEY /AU-A9VEY', 'Non-Inverter', 719.30, 9239.03, 12.81, '4', 2100.36, 3081222.25, '118.008.4.48.104.20.0082', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (914, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-05NVB2', 'CSC-05NVB2', 'Non-Inverter', 440.20, 5117.70, 11.62, '4', 1285.38, 1885658.33, '135.029.4.16.104.20.0083', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (915, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CHOL-05L', 'CHOL-05L', 'Non-Inverter', 440.20, 5117.70, 11.62, '4', 1285.38, 1885658.33, '135.029.4.17.104.20.0084', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (916, 35, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Changhong', 'CSC-09NVB2', 'CSC-09NVB2', 'Non-Inverter', 818.80, 8975.80, 10.96, '4', 2390.90, 3507444.43, '135.029.4.18.104.20.0085', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (917, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-05J2KG-ID (I)RAS-05J2AG-ID (O)', 'RAS-05J2KG-ID (I)RAS-05J2AG-ID (O)', 'Non-Inverter', 353.60, 4617.23, 12.99, '4', 1032.51, 1514695.10, '118.040.4.14.104.20.0086', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (918, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-09J2KG-ID (I)RAS-09J2AG-ID (O)', 'RAS-09J2KG-ID (I)RAS-09J2AG-ID (O)', 'Non-Inverter', 780.10, 8591.32, 10.99, '4', 2277.89, 3341667.56, '118.040.4.15.104.20.0087', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (919, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-012J2KG-ID (I)RAS-012J2AG-ID (O)', 'RAS-012J2KG-ID (I)RAS-012J2AG-ID (O)', 'Non-Inverter', 1080.50, 11934.34, 11.03, '4', 3155.06, 4628473.02, '118.040.4.16.104.20.0088', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (920, 43, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Toshiba', 'RAS-018J2KG-ID (I)RAS-018J2AG-ID (O)', 'RAS-018J2KG-ID (I)RAS-018J2AG-ID (O)', 'Non-Inverter', 1500.60, 17071.55, 11.36, '4', 4381.75, 6428030.18, '118.040.4.17.104.20.0089', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (921, 49, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-12CSA', 'TAC-12CSA', 'Non-Inverter', 1113.60, 11234.00, 10.09, '3', 3251.71, 4770261.50, '118.050.3.01.099.20.0090', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (922, 49, 241086, 0, NULL, NULL, NULL, NULL, 1, 'TCL', 'TAC-18CSA', 'TAC-18CSA', 'Non-Inverter', 1546.50, 17173.40, 11.10, '4', 4515.78, 6624649.26, '118.050.4.02.104.20.0091', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (923, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'DR Kuhler ', 'GWC12NAS/I;GWC12NAS/O', 'GWC12NAS/I;GWC12NAS/O', 'Non-Inverter', 1060.80, 11696.80, 11.02, '4', 3097.54, 4544085.31, '113.030.4.32.104.20.0092', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (924, 36, 241086, 0, NULL, NULL, NULL, NULL, 1, 'DR Kuhler ', 'GWC18NAS/I;GWC18NAS/O', 'GWC18NAS/I;GWC18NAS/O', 'Non-Inverter', 1691.00, 17721.50, 10.48, '4', 4937.72, 7243635.24, '113.030.4.33.104.20.0093', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (925, 50, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR10TYEAEWKN (INDOOR), AR10TYEAEWKX (OUTDOOR),', 'AR10TYEAEWKN (INDOOR), AR10TYEAEWKX (OUTDOOR),', 'Inverter', 689.60, 9508.20, 16.49, '4', 2013.63, 2953998.14, '118.001.4.37.104.20.0085', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (926, 50, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR13TYEAEWKN (INDOOR),AR13TYEAEWKX(OUTDOOR)', 'AR13TYEAEWKN (INDOOR),AR13TYEAEWKX(OUTDOOR)', 'Inverter', 1050.20, 11571.00, 13.08, '4', 3066.58, 4498678.73, '118.001.4.38.104.20.0086', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (927, 50, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR18TYEAEWKN (INDOOR),AR18TYEAEWKX (OUTDOOR)', 'AR18TYEAEWKN (INDOOR),AR18TYEAEWKX (OUTDOOR)', 'Inverter', 1734.80, 18531.70, 14.33, '4', 5065.62, 7431258.67, '118.001.4.39.104.20.0087', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (928, 50, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR10TYGZEWKN (INDOOR),AR10TYGZEWKX (OUTDOOR)', 'AR10TYGZEWKN (INDOOR),AR10TYGZEWKX (OUTDOOR)', 'Inverter', 951.40, 9854.40, 12.77, '4', 2778.09, 4075455.10, '118.001.4.40.104.20.0088', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (929, 50, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR13TYGZEWKN (INDOOR),AR13TYGZEWKX (OUTDOOR)', 'AR13TYGZEWKN (INDOOR),AR13TYGZEWKX (OUTDOOR)', 'Inverter', 1155.90, 12383.10, 13.21, '4', 3375.23, 4951459.48, '118.001.4.41.104.20.0089', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (930, 50, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR18TYGZEWKN (INDOOR),AR18TYGZEWKX (OUTDOOR)', 'AR18TYGZEWKN (INDOOR),AR18TYGZEWKX (OUTDOOR)', 'Inverter', 1573.80, 18845.80, 14.77, '4', 4595.50, 6741592.63, '118.001.4.42.104.20.0090', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (931, 50, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR05NRFLDWKNSE/AR05NRFLDWKXSE', 'AR05NRFLDWKNSE/AR05NRFLDWKXSE', 'Non-Inverter', 389.70, 5015.71, 12.82, '4', 1137.92, 1669334.51, '118.051.4.01.104.20.0094', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (932, 50, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR09NRFLDWKNSE/AR09NRFLDWKXSE ', 'AR09NRFLDWKNSE/AR09NRFLDWKXSE ', 'Non-Inverter', 831.50, 8953.29, 10.74, '4', 2427.98, 3561846.66, '118.051.4.02.104.20.0095', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (933, 50, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', ' AR12NRFLDWKNSE/AR12NRFLDWKXSE', ' AR12NRFLDWKNSE/AR12NRFLDWKXSE', 'Non-Inverter', 1088.60, 11981.61, 10.99, '4', 3178.71, 4663170.50, '118.051.4.03.104.20.0096', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (934, 50, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR07NRFLDWKNSE/AR07NRFLDWKXSE ', 'AR07NRFLDWKNSE/AR07NRFLDWKXSE ', 'Non-Inverter', 643.30, 6922.85, 10.73, '4', 1878.44, 2755665.61, '118.051.4.04.104.20.0097', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (935, 50, 241086, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', ' AR18NRFLDWKNSE/AR18NRFLDWKXSE', ' AR18NRFLDWKNSE/AR18NRFLDWKXSE', 'Non-Inverter', 1637.60, 18171.20, 11.08, '4', 4781.79, 7014888.86, '118.051.4.05.104.20.0098', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (936, 96, 241196, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q06WA', 'T06EV4 NWAT / T06EV4 UWAT;  T06EV4 NWAH / T06EV4 UWAH;  E06SV4 NWAT / E06SV4 UWAT', 'Inverter', 493.50, 6299.05, 12.95, '4', 1441.02, 2081841.59, '118.004.4.48.104.20.0099', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (937, 96, 241196, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'S3-Q09WA', 'T10EV4 NWAT / T10EV4 UWAT;  T10EV4 NWAH / T10EV4 UWAH;  E10SV4 NWAT / E10SV4 UWAT', 'Inverter', 969.70, 9926.53, 11.52, '4', 2831.52, 4090702.72, '118.004.4.49.104.20.0100', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (938, 96, 241196, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'E06SV4 NWAC / E06SV4 UWAC;  E06SV5 NWAC / E06SV5 UWAC;  S06EV4 NWAC / S06EV4 UWAC;  T06EV4 NWAC / T06EV4 UWAC', 'E06SV4 NWAC / E06SV4 UWAC;  E06SV5 NWAC / E06SV5 UWAC;  S06EV4 NWAC / S06EV4 UWAC;  T06EV4 NWAC / T06EV4 UWAC', 'Inverter', 474.50, 6485.95, 14.36, '4', 1385.54, 2001689.64, '118.052.4.03.104.20.0101', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (939, 96, 241196, 0, NULL, NULL, NULL, NULL, 1, 'LG', 'E10SV4 NWAC / E10SV4 UWAC;  E10SV5 NWAC / E10SV5 UWAC;  S10EV4 NWAC / S10EV4 UWAC;  T10EV4 NWAC / T10EV4 UWAC', 'E10SV4 NWAC / E10SV4 UWAC;  E10SV5 NWAC / E10SV5 UWAC;  S10EV4 NWAC / S10EV4 UWAC;  T10EV4 NWAC / T10EV4 UWAC', 'Inverter', 921.50, 10040.55, 12.57, '4', 2690.78, 3887369.87, '118.052.4.04.104.20.0102', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (940, 50, 241196, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR05TGHQASINSE / AR05TGHQASIXSE', 'AR05TGHQASINSE / AR05TGHQASIXSE', 'Non-Inverter', 345.60, 4543.01, 13.08, '4', 1009.15, 0.00, '118.051.4.06.104.20.0103', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (941, 50, 241196, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR09TGHQASINSE / AR09TGHQASIXSE', 'AR09TGHQASINSE / AR09TGHQASIXSE', 'Non-Inverter', 767.10, 9039.69, 11.76, '4', 2239.93, 3236029.76, '118.051.4.07.104.20.0104', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (942, 50, 241196, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR12TGHQASINSE / AR12TGHQASIXSE', 'AR12TGHQASINSE / AR12TGHQASIXSE', 'Non-Inverter', 1016.00, 11537.07, 11.34, '4', 2966.72, 4286020.38, '118.051.4.08.104.20.0105', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (943, 50, 241196, 0, NULL, NULL, NULL, NULL, 1, 'Samsung', 'AR18TGHQASINSE / AR18TGHQASIXSE', 'AR18TGHQASINSE / AR18TGHQASIXSE', 'Non-Inverter', 1483.70, 17040.21, 10.79, '4', 4332.40, 6259024.06, '118.051.4.09.104.20.0106', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (944, 1, 241196, 0, NULL, NULL, NULL, NULL, 1, 'Panasonic', 'CS/CU-ZN7WKP', 'CS/CU-ZN7WKP', 'Non-Inverter', 674.50, 7278.50, 10.79, '4', 1969.54, 2845394.44, '118.009.4.41.104.20.0107', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (945, 97, 241196, 0, NULL, NULL, NULL, NULL, 1, 'Hisense', 'AN05CEG AN05CDG', 'AN05CEG AN05CDG', 'Non-Inverter', 423.10, 5014.78, 11.80, '4', 1235.45, 1784857.50, '118.049.4.01.104.20.0108', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (946, 97, 241196, 0, NULL, NULL, NULL, NULL, 1, 'Hisense', 'AN09CDG', 'AN09CDG', 'Non-Inverter', 825.30, 8973.93, 10.85, '4', 2409.88, 3481547.86, '118.049.4.02.104.20.0109', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (947, 97, 241196, 0, NULL, NULL, NULL, NULL, 1, 'Hisense', 'AN12CDG', 'AN12CDG', 'Non-Inverter', 979.00, 11529.53, 11.76, '4', 2858.68, 4129935.00, '118.049.4.03.104.20.0110', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (948, 97, 241196, 0, NULL, NULL, NULL, NULL, 1, 'Hisense', 'AN18CDG', 'AN18CDG', 'Non-Inverter', 1631.60, 11766.87, 10.88, '4', 4764.27, 6882943.76, '118.049.4.04.104.20.0111', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (949, 101, 241202, 101, 'http://localhost/ebtke/source/product-attach1/Foto_pengondisi-udara-ac20210907063715495759.png', 'http://localhost/ebtke/source/product-attach2/KodeProd_pengondisi-udara-ac20210907063715711243.png', NULL, NULL, 1, 'adwad', 'asd', 'awda', 'Inverter', 23.00, 2323.00, 123.00, '5', 123.00, 0.00, '123', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (950, 101, 241202, 101, 'http://localhost/ebtke/source/product-attach1/Foto_pengondisi-udara-ac20210907063725995942.png', 'http://localhost/ebtke/source/product-attach2/KodeProd_pengondisi-udara-ac20210907063725887452.png', NULL, NULL, 1, 'adwad', 'asd', 'awda', 'Inverter', 23.00, 2323.00, 123.00, '5', 123.00, 0.00, '123', 'EER', NULL);
INSERT INTO `product_pengondisi-udara-ac` VALUES (951, 21, 241197, 0, NULL, NULL, NULL, NULL, 1, 'Vitae corporis eveni', 'Dolore est voluptatu', 'Sed nisi numquam tem', 'Non-Inverter', 8.00, 42.00, 28.00, '3', 54.00, 0.00, 'Eum sed dolores pers', 'EER', 'Reprehenderit aute ');
INSERT INTO `product_pengondisi-udara-ac` VALUES (952, 96, 241197, 0, 'http://localhost/ebtke/source/product-attach1/Foto_pengondisi-udara-ac20211004102915936169.pdf', 'http://localhost/ebtke/source/product-attach2/KodeProd_pengondisi-udara-ac20211004102915714464.pdf', 'http://localhost/ebtke/source/product-attach3/SHE_pengondisi-udara-ac20211004102915646222.pdf', NULL, 1, 'Proident vel incidi', 'Aperiam laborum offi', 'Velit aut est qui l', 'Inverter', 49.00, 18.00, 10.00, '1', 23.00, 33228.10, 'Accusamus sit ullam', 'EER', 'Consectetur praesen');
INSERT INTO `product_pengondisi-udara-ac` VALUES (953, 49, 241197, 0, 'http://localhost/ebtke/source/product-attach1/Foto_pengondisi-udara-ac20211004103026366469.pdf', 'http://localhost/ebtke/source/product-attach2/KodeProd_pengondisi-udara-ac2021100410302643275.pdf', 'http://localhost/ebtke/source/product-attach3/SHE_pengondisi-udara-ac20211004103027421968.pdf', NULL, 1, 'Id autem consequuntu', 'Ut occaecat ipsam ut', 'Reiciendis sunt dist', 'Non-Inverter', 14.00, 74.00, 6.00, '4', 79.00, 114131.30, 'Sed modi unde quia c', 'CSPF', 'Minus aspernatur vol');
INSERT INTO `product_pengondisi-udara-ac` VALUES (954, 25, 241197, 0, 'http://localhost/ebtke/source/product-attach1/Foto_pengondisi-udara-ac20211004105253553806.pdf', 'http://localhost/ebtke/source/product-attach2/KodeProd_pengondisi-udara-ac20211004105253409336.pdf', 'http://localhost/ebtke/source/product-attach2/SHE_pengondisi-udara-ac20211004105254293962.pdf', NULL, 1, 'Fugit in aliqua At', 'Aute eum sit volupta', 'Quidem labore quia e', 'Non-Inverter', 0.00, 17.00, 61.00, '2', 68.00, 98239.60, 'Itaque aut incidunt', 'EER', 'Iusto maiores in nih');

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
