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

 Date: 23/03/2022 15:49:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fom_inpeksi_role
-- ----------------------------
DROP TABLE IF EXISTS `fom_inpeksi_role`;
CREATE TABLE `fom_inpeksi_role`  (
  `id_form_role` bigint(255) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_form_role`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fom_inpeksi_role
-- ----------------------------
INSERT INTO `fom_inpeksi_role` VALUES (1, 'Informasi Umum  (form 1)');
INSERT INTO `fom_inpeksi_role` VALUES (2, 'Data Ritel');
INSERT INTO `fom_inpeksi_role` VALUES (3, 'Pengalaman terhadap Label Tanda Hemat Energi');
INSERT INTO `fom_inpeksi_role` VALUES (4, 'Detail produk AC');
INSERT INTO `fom_inpeksi_role` VALUES (5, 'Pemeriksaan visual + entri data ketidaksesuaian (3) - LABEL LAMA');
INSERT INTO `fom_inpeksi_role` VALUES (6, 'Compliance LTHE');
INSERT INTO `fom_inpeksi_role` VALUES (7, 'Aktifkan Rekaman Sampel Uji Petik');
INSERT INTO `fom_inpeksi_role` VALUES (8, 'Compliance Regulasi Lainnya');
INSERT INTO `fom_inpeksi_role` VALUES (9, 'Pemeriksaan visual + entri data ketidaksesuaian (3) - LABEL BARU');
INSERT INTO `fom_inpeksi_role` VALUES (10, 'Informasi Umum  (form 4)');
INSERT INTO `fom_inpeksi_role` VALUES (11, 'Pemeriksaan visual + entri data ketidaksesuaian (form 4)\r\n\r\n\r\n\r\n\r\n\r\n\r\n');
INSERT INTO `fom_inpeksi_role` VALUES (12, 'Entry Tambahan');

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
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of form_inpeksi
-- ----------------------------
INSERT INTO `form_inpeksi` VALUES (1, 1, 'Tanggal & waktu', 'Auto-populated', 'Mandatory', 'Saat mulai mengisi, atau saat formulir dikirimkan', '1');
INSERT INTO `form_inpeksi` VALUES (2, 1, 'Nama Inspektur', 'Auto-populated', 'Mandatory', NULL, '1');
INSERT INTO `form_inpeksi` VALUES (3, 1, 'ID Inspektur', 'Auto-populated', 'Mandatory', 'Dapat diberikan account ID spesifik, atau dari ID unik yang disediakan KESDM (apabila ada)', '1');
INSERT INTO `form_inpeksi` VALUES (4, 2, 'Tipe Lokasi Pengawasan', 'Drop down menu\r\n', 'Mandatory', NULL, '1');
INSERT INTO `form_inpeksi` VALUES (5, 2, 'Nama Lokasi Pengawasan', 'Manual entry', 'Mandatory', 'Integrasi lokasi Google Maps', '1');
INSERT INTO `form_inpeksi` VALUES (6, 2, 'Alamat Lokasi Pengawasan', 'Manual entry', 'Optional', NULL, '1');
INSERT INTO `form_inpeksi` VALUES (7, 2, 'Wilayah Lokasi Pengawasan', 'Drop down menu or auto-populated (?) based on location', 'Mandatory', '\"Jabodetabek\nJawa Tengah\nJawa Timur\nDI Yogyakarta\nKalimantan\nKepulauan Maluku\nBali & Nusa Tenggara\nPapua\nSulawesi\nSumatera\"\r\n', '1');
INSERT INTO `form_inpeksi` VALUES (8, 2, 'Nama Tenaga Penjual', 'Manual entry', 'Mandatory', '\"Warung\nPasar tradisional\nToko\nDealer/Distributor\nChain\nDepartment store\nHypermarket\nGeneral store\nSupermarket\"\r\n', '1');
INSERT INTO `form_inpeksi` VALUES (9, 2, 'Lampirkan foto tampak depan Lokasi Pengawasan', 'Photo', 'Mandatory', NULL, '1');
INSERT INTO `form_inpeksi` VALUES (11, 3, 'Apakah tenaga penjual familiar dengan LTHE?', 'Drop down menu', 'Mandatory', 'Ya Sedikit Tidak', '1');
INSERT INTO `form_inpeksi` VALUES (12, 3, 'Seberapa seringkah tenaga penjual menemukan produk tanpa LTHE?', 'Drop down menu', 'Optional', 'Tidak pernah Jarang Sering Sangat sering', '1');
INSERT INTO `form_inpeksi` VALUES (13, 3, 'Apakah yang dilakukan oleh pihak ritel saat produk tanpa LTHE ditemukan?', 'Drop down menu', 'Mandatory', 'Mengembalikan produk pada pemasok untuk mencantumkan label Menahan produk sampai produk pengganti berlabel diterima dari pemasok Tidak melakukan apa-apa - menjual produk seadanya', '1');
INSERT INTO `form_inpeksi` VALUES (14, 3, 'Apakah konsumen menanyakan tentang LTHE?', 'Drop down menu', 'Mandatory', 'Ya Sering Kadang-kadang Tidak pernah', '1');
INSERT INTO `form_inpeksi` VALUES (15, 3, 'Apakah pramuniaga ritel dapat menjelaskan arti LTHE dengan benar?', 'Drop down menu', 'Mandatory', 'Ya Sebagian  Tidak', '1');
INSERT INTO `form_inpeksi` VALUES (16, 4, 'Produk', 'Drop down menu', 'Mandatory', 'AC Lampu Swabalast CFL Kulkas Penanak Nasi Kipas Angin', '1');
INSERT INTO `form_inpeksi` VALUES (17, 4, 'Merek', 'Pre-populated from registry', 'Mandatory', 'Or allow for manual entry if no registration', '1');
INSERT INTO `form_inpeksi` VALUES (18, 4, 'Kapasitas Pengenal (PK)', 'Drop down', 'Mandatory', '1/2 3/4 1 1.5 2 2.5 3', '1');
INSERT INTO `form_inpeksi` VALUES (19, 4, 'Teknologi', 'Drop down', 'Mandatory', 'Standard, fixed speed Inverter', '1');
INSERT INTO `form_inpeksi` VALUES (20, 4, 'Manufaktur / importir', 'Pre-populated from registry', 'Mandatory', 'Or allow for manual entry if no registration', '1');
INSERT INTO `form_inpeksi` VALUES (21, 4, 'Kode atau Tanggal Produksi', 'Manual entry', 'Mandatory', 'Can this be obtained? Is it necessary?', '1');
INSERT INTO `form_inpeksi` VALUES (22, 4, 'Negara Asal', 'Manual entry', 'Mandatory', '', '1');
INSERT INTO `form_inpeksi` VALUES (23, 4, 'Harga', 'Manual entry', 'Mandatory', '', '1');
INSERT INTO `form_inpeksi` VALUES (24, 4, 'Model', 'Manual entry', 'Optional', '', '1');
INSERT INTO `form_inpeksi` VALUES (25, 5, 'Lampirkan foto LTHE', 'Photo', 'Mandatory', '', '1');
INSERT INTO `form_inpeksi` VALUES (26, 5, 'Nomor Registrasi', 'Manual entry, then \"easy fill\"', 'Mandatory', 'Fitur lookup sudah diaktifkan disini, kalau tidak ditemukan, buka pilihan \"tidak ditemukan\"', '1');
INSERT INTO `form_inpeksi` VALUES (27, 5, 'Jumlah Bintang', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (28, 5, 'Nilai Efisiensi Energi, EER', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (29, 5, 'Model Unit Dalam', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (30, 5, 'Model Unit Luar', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (31, 5, 'Daya', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (32, 6, 'LTHE tercantum pada produk', 'Drop down menu', 'Mandatory', 'Yes No', '1');
INSERT INTO `form_inpeksi` VALUES (33, 6, 'LTHE tercantum pada kotak kemasan', 'Drop down menu', 'Mandatory', 'Yes No', '1');
INSERT INTO `form_inpeksi` VALUES (34, 6, 'Visibilitas LTHE', 'Drop down menu', 'Mandatory', 'Label jelas dan mudah terlihat Label kabur atau rusak karena tindakan produsen atau importir Label kabur atau rusak karena tindakan pengecer Label sebagian atau seluruhnya ditutupi oleh label lain atau informasi pemasaran Tidak berlaku - label tidak dibub', '1');
INSERT INTO `form_inpeksi` VALUES (35, 6, 'Kesesuaian visual LTHE', 'Drop down menu', 'Mandatory', 'Label terlihat benar dan sesuai dengan persyaratan Desain label salah (warna, ukuran, dll) Label tampaknya palsu Label tidak sesuai dengan model fisik produk Tidak berlaku - label tidak dibubuhkan', '1');
INSERT INTO `form_inpeksi` VALUES (36, 6, 'Ketidaksesuaian LTHE, dijelaskan', 'Manual entry', 'Optional', 'Jelaskan secara manual, ketidaksesuaian yang ditemukan', '1');
INSERT INTO `form_inpeksi` VALUES (37, 6, 'Tinjauan inspeksi LTHE', 'Drop down menu', 'Mandatory', 'Label dan produk tampak sesuai Label atau produk tampak mencurigakan dan memerlukan penyelidikan lebih lanjut Label atau produk tampak mencurigakan dan direkomendasikan untuk pengujian verifikasi', '1');
INSERT INTO `form_inpeksi` VALUES (38, 6, 'Tuliskan penjelasan apabila label atau produk mencurigakan', 'Manual entry', 'Optional', 'Aktif untuk isian Tinjauan inspeksi selain \"Label dan produk tampak sesuai\"', '1');
INSERT INTO `form_inpeksi` VALUES (39, 8, 'Label SNI tercantum dan dapat terbaca jelas', 'Drop down menu', 'Mandatory', 'Ya Tidak yakin Tidak', '1');
INSERT INTO `form_inpeksi` VALUES (40, 8, 'Ekolabel tercantum dan dapat terbaca jelas', 'Drop down menu', 'Mandatory', 'Ya Tidak yakin Tidak', '1');
INSERT INTO `form_inpeksi` VALUES (41, 8, 'Kartu garansi tercantum dan dapat terbaca jelas', 'Drop down menu', 'Mandatory', 'Ya Tidak yakin Tidak', '1');
INSERT INTO `form_inpeksi` VALUES (42, 8, 'Label produk dalam Bahasa Indonesia', 'Drop down menu', 'Mandatory', 'Ya Tidak yakin Tidak', '1');
INSERT INTO `form_inpeksi` VALUES (43, 7, 'Apakah ada produk dari kunjungan Lokasi Pengawasan yang dipilih untuk uji petik?', 'Drop down menu', 'Mandatory', 'Ya Tidak', '1');
INSERT INTO `form_inpeksi` VALUES (44, 7, '(Apabila Ya) Pilih dari Entri Data yang Direkam', 'Single or multiple', 'Mandatory', 'Pilihan, produk yang direkam (Merek, 4 digit nomor SHE terakhir); Formulir Pendataan Uji Petik dibuka untuk tiap Entri Data yg dipilih', '1');
INSERT INTO `form_inpeksi` VALUES (45, 7, '(Aktifkan Entri Tambahan untuk Entri Data yg dipilih) Lab Uji Tujuan', 'Drop down menu', 'Optional', 'Qualis TUV Rheinland B2TKE-BRIN B4T-Kemenperin', '1');
INSERT INTO `form_inpeksi` VALUES (46, 7, '(Aktifkan Entri Tambahan untuk Entri Data yg dipilih) Cara Pengiriman', 'Drop down menu', 'Mandatory', 'Diantar langsung Pengiriman jarak dekat Pengiriman jarak jauh', '1');
INSERT INTO `form_inpeksi` VALUES (47, 7, 'Lampirkan foto Formulir Transmisi', 'Photo', 'Optional', '', '1');
INSERT INTO `form_inpeksi` VALUES (48, 7, 'Lampirkan foto Bukti Pembayaran', 'Photo', 'Optional', '', '1');
INSERT INTO `form_inpeksi` VALUES (49, 7, 'Lampirkan foto Kemasan Tersegel', 'Photo', 'Optional', '', '1');
INSERT INTO `form_inpeksi` VALUES (51, 5, 'Kapasitas Pendinginan', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (53, 9, 'Lampirkan foto LTHE', 'Photo', 'Mandatory', '', '1');
INSERT INTO `form_inpeksi` VALUES (54, 9, 'Nomor SHE', 'Manual entry, then \"easy fill\"', 'Mandatory', 'Fitur lookup sudah diaktifkan disini, kalau tidak ditemukan, buka pilihan \"tidak ditemukan\"', '1');
INSERT INTO `form_inpeksi` VALUES (55, 9, 'Jumlah Bintang', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (56, 9, 'Nilai Efisiensi Energi, CSPF', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (57, 9, 'Model Unit Dalam', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (58, 9, 'Model Unit Luar', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (59, 9, 'Daya', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (60, 9, 'Kapasitas Pendinginan', 'Pre-populated from registry', 'Mandatory', 'Buka pilihan manual entry apabila tidak sesuai', '1');
INSERT INTO `form_inpeksi` VALUES (61, 10, 'Produk', 'Drop down menu', 'Mandatory', '\"AC', '4');
INSERT INTO `form_inpeksi` VALUES (62, 10, 'Lampu Swabalast CFL', NULL, NULL, NULL, '4');
INSERT INTO `form_inpeksi` VALUES (63, 10, 'Tanggal & waktu', 'Auto-populated', 'Mandatory', 'Saat mulai mengisi, atau saat formulir dikirimkan', '4');
INSERT INTO `form_inpeksi` VALUES (64, 10, 'Nama Inspektur', 'Auto-populated (?)', 'Mandatory', '', '4');
INSERT INTO `form_inpeksi` VALUES (65, 10, 'ID Inspektur', 'Auto-populated (?)', 'Mandatory', 'Dapat diberikan account ID spesifik, atau dari ID unik yang disediakan KESDM (apabila ada)', '4');
INSERT INTO `form_inpeksi` VALUES (66, 11, 'Kapasitas Pengenal (PK)', 'Drop down', 'Mandatory', NULL, '4');
INSERT INTO `form_inpeksi` VALUES (67, 11, 'Teknologi', 'Drop down', 'Mandatory', NULL, '4');
INSERT INTO `form_inpeksi` VALUES (68, 11, 'Manufaktur / importir', 'Pre-populated from registry', 'Mandatory', NULL, '4');
INSERT INTO `form_inpeksi` VALUES (69, 11, 'Kode atau Tanggal Produksi', 'Manual entry', 'Mandatory', NULL, '4');
INSERT INTO `form_inpeksi` VALUES (70, 11, 'Negara Asal', 'Manual entry', 'Mandatory', NULL, '4');
INSERT INTO `form_inpeksi` VALUES (71, 11, 'Harga', 'Manual entry', 'Mandatory', NULL, '4');
INSERT INTO `form_inpeksi` VALUES (72, 11, 'Merek', 'Pre-populated from registry', 'Mandatory', NULL, '4');
INSERT INTO `form_inpeksi` VALUES (73, 12, '(Aktifkan Entri Tambahan untuk Entri Data yg dipilih) Lab Uji Tujuan', 'Multiple entry, rank by order', 'Mandatory', '\"Qualis\nTUV Rheinland\nB2TKE-BRIN\nB4T-Kemenperin\"\r\n', '4');
INSERT INTO `form_inpeksi` VALUES (74, 12, '(Aktifkan Entri Tambahan untuk Entri Data yg dipilih) Tanggal Pengujian', 'Manual entry', 'Mandatory', NULL, '4');

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
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of form_lab
-- ----------------------------
INSERT INTO `form_lab` VALUES (1, 1, 'Record ID', 'Auto-populated (?)', 'Mandatory', 'Hanya aktif dari sampel uji yang diunggah dan dipilih untuk uji petik pada Formulir 1, atau aktivasi khusus dari Tim Pengawasan DJEBTKE', '2');
INSERT INTO `form_lab` VALUES (2, 1, 'Laboratorium Pengujian', 'Auto-populated', 'Mandatory', '', '2');
INSERT INTO `form_lab` VALUES (3, 1, 'Tanggal & Waktu Inspeksi Sampel', 'Auto-populated', 'Mandatory', 'Saat mulai mengisi, atau saat formulir dikirimkan', '2');
INSERT INTO `form_lab` VALUES (4, 1, 'Nama Petugas Pemeriksa', 'Auto-populated (?)', 'Mandatory', '', '2');
INSERT INTO `form_lab` VALUES (5, 1, 'Nama Petugas Persetujuan', 'Auto-populated (?)', 'Mandatory', '', '2');
INSERT INTO `form_lab` VALUES (7, 2, 'Merek', 'Auto-populated', 'Display only', NULL, '2');
INSERT INTO `form_lab` VALUES (8, 2, 'Metrik 1: Kapasitas\r\n', 'Auto-populated\r\n', 'Display only\r\n', NULL, '2');
INSERT INTO `form_lab` VALUES (9, 2, 'Metrik 2: Teknologi', 'Auto-populated\r\n', 'Display only\r\n', NULL, '2');
INSERT INTO `form_lab` VALUES (10, 2, 'Manufaktur / importir', 'Auto-populated\r\n', 'Display only\r\n', NULL, '2');
INSERT INTO `form_lab` VALUES (11, 2, 'Kode atau Tanggal Produksi\r\n', 'Auto-populated\r\n', 'Display only\r\n', NULL, '2');
INSERT INTO `form_lab` VALUES (12, 2, 'Negara Asal\r\n', 'Auto-populated\r\n', 'Display only\r\n', NULL, '2');
INSERT INTO `form_lab` VALUES (13, 3, 'Kondisi kemasan produk AC tidak rusak\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (14, 3, 'Periksa kondisi fisik produk AC secara visual seperti bodi unit indoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (15, 3, 'Kondisi fin atau sirip alat penukar kalor tidak rusak, deformasi, berubah warna pada unit indoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (16, 3, 'Kondisi kipas pada unit indoor tidak retak, rusak atau menyentuh bagian lainnya\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (17, 3, 'Tidak ada komponen aksesoris yang hilang atau tidak lengkap seperti yang dijelaskan di dalam buku petunjuk pengoperasian. Seperti installing holder, screw, remote control dan lain-lain\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (18, 3, 'Pastikan terdapat penutup katub atau tidak ada kerusakan pada ulir sambungan pipa antara unit indoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (19, 3, 'Pipa penghubung tube refrigerant antara unit indoor dan outdoor tidak penyok\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (20, 4, 'Kondisi kemasan produk AC tidak rusak\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (21, 4, 'Periksa kondisi fisik produk AC secara visual seperti bodi unit outdoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (22, 4, 'Kondisi fin atau sirip alat penukar kalor tidak rusak, deformasi, berubah warna pada unit outdoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (23, 4, 'Kondisi kipas pada unit outdoor tidak retak, rusak atau menyentuh bagian lainnya\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (24, 4, 'Pastikan terdapat penutup katub atau tidak ada kerusakan pada ulir sambungan pipa antara unit outdoor\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (25, 4, 'Pipa 2 way dan 3 way valve dalam keadaan tertutup (Tidak ada kebocoran gas)\r\n', 'Checklist\r\n', 'Mandatory\r\n', '\"Baik\nTidak baik\"\r\n', '2');
INSERT INTO `form_lab` VALUES (26, 5, 'Hasil penilaian\r\n', 'Drop down menu\r\n', 'Mandatory\r\n', '\"Baik, dapat dilanjutkan ke pengecekan kondisi pengujian\nTidak diterima, unit dikemas kembali untuk dikembalikan\"\r\n', '2');
INSERT INTO `form_lab` VALUES (27, 5, 'Keterangan tambahan\r\n', 'Manual entry\r\nManual entry & drop down menu\r\n', 'Optional\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (28, 6, 'Berat unit indoor, sebelum', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (29, 6, 'Berat unit indoor, sesudah', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (30, 6, 'Berat unit outdoor, sebelum', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (31, 6, 'Berat unit outdoor, sesudah', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (32, 6, 'Pipa tembaga sepanjang 7,5 m ± 10 cm', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (33, 6, 'Pasang Thermokopel pada unit Indoor dan Outdoor', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (34, 6, 'Instalasi unit (jarak unit indoor ke dinding 300 - 400 mm)', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (35, 6, 'Instalasi unit (jarak unit indoor ke lantai 1400 - 1500 mm)', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (36, 6, 'Instalasi unit (jarak unit outdoor ke dinding 500 mm)', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (37, 6, 'Instalasi unit (jarak unit outdoor ke lantai 750 - 1000 mm)', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (38, 6, 'Instalasi pemasangan air sampler unit Indoor (Metode Air Enthalpy)', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (39, 6, 'Instalasi pemasangan air sampler unit Outdoor (Metode Air Enthalpy)', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (40, 6, 'Proses pemvakuman', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (41, 6, 'Test kebocoran pipa', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (42, 6, 'Kondisi Temperatur Pengujian', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (43, 6, 'Indoor Chamber: TDB (27?), TWB (19?) Outdoor Chamber: TDB (35?), TWB (24?)', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (44, 6, '\"Atur AC pada posisi:\n? Mode : Cool\n? Kecepatan fan : Maksimum\n? Posisi pengarah hembusan udara : Maksimum\n? Temperatur Remote Control : Suhu terendah/minimum\"\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (45, 6, 'Jaga perbedaan tekanan air discharge AC yang diuji di dalam receiving chamber dan ruang chamber sebesar 0 Pa\r\n', 'Manual entry & drop down menu\r\n', 'Mandatory\r\n', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (46, 7, 'Hasil penilaian\r\n', 'Drop down menu\r\n', 'Mandatory\r\n', '\"Baik, pengujian dapat dimulai\nTidak diterima, unit dikemas kembali untuk dikembalikan\"\r\n', '2');
INSERT INTO `form_lab` VALUES (47, 7, 'Keterangan tambahan\r\n', 'Manual entry\r\n', 'Optional\r\n', NULL, '2');
INSERT INTO `form_lab` VALUES (48, 8, 'Nomor seri unit indoor', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (49, 8, 'Nomor seri unit outdoor', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (50, 8, 'Kapasitas normal (Btu/h)', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (51, 8, 'Daya normal (W)', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (52, 8, 'Kapasitas maksimum (Btu/h)', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (53, 8, 'Daya maksimum (W)', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (54, 8, 'Tegangan (V)', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (56, 8, 'Fase', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (57, 8, 'Hz', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (58, 8, 'Current (A)', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (59, 8, 'Berat unit indoor (kg)', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (60, 8, 'Berat unit outdoor (kg)', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (61, 8, 'Dimensi unit indoor (mm, W*H*D)', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (62, 8, 'Dimensi unit outdoor (mm, W*H*D)', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (63, 8, 'Tipe refrigeran', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (65, 11, 'Informasi sampel sudah sesuai', 'Drop down menu', 'Mandatory', 'Ya', '2');
INSERT INTO `form_lab` VALUES (67, 6, 'Kecepatan aliran udara (air velocity) antara 15m/dt - 35m/dt dengan mengatur nozzle pada receiving chamber\r\n', 'Manual entry & drop down menu', 'Mandatory', '\"Sesuai\nTidak sesuai\"\r\n', '2');
INSERT INTO `form_lab` VALUES (68, 13, 'Record ID', 'Auto-populated (?)', 'Mandatory', 'Hanya aktif dari sampel uji telah diperiksa dan diunggah melalui Formulir 2, atau aktivasi khusus dari Tim Pengawasan DJEBTKE', '3');
INSERT INTO `form_lab` VALUES (69, 13, 'Laboratorium Pengujian', 'Auto-populated', 'Mandatory', '', '3');
INSERT INTO `form_lab` VALUES (70, 13, 'Tanggal Penerimaan Sampel Uji', 'Manual entry', 'Mandatory', 'Saat mulai mengisi, atau saat formulir dikirimkan', '3');
INSERT INTO `form_lab` VALUES (71, 13, 'Nama Petugas Penguji', 'Auto-populated (?)', 'Mandatory', '', '3');
INSERT INTO `form_lab` VALUES (72, 13, 'Nama Petugas Pemeriksa', 'Auto-populated (?)', 'Mandatory', '', '3');
INSERT INTO `form_lab` VALUES (73, 14, 'Informasi sampel sudah sesuai', 'Drop down menu', 'Mandatory', '\"Ya', '3');
INSERT INTO `form_lab` VALUES (74, 8, 'Muatan refrigeran', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (75, 8, 'Tipe refrigeran', 'Manual entry', 'Mandatory', NULL, '3');
INSERT INTO `form_lab` VALUES (76, 9, 'Time (min)', '', '', '', '3');
INSERT INTO `form_lab` VALUES (77, 9, 'Voltage (V)\r\n', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (78, 9, 'Frequency (Hz)\r\n', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (79, 9, 'Current (A)\r\n', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (80, 9, 'Dry-bulb temperature, air entering, indoor side  (oC)\r\n', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (81, 9, 'Wet-bulb temperature, air entering, indoor side (oC)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (82, 9, 'Dry-bulb & Wet-bulb temperature outdoor side (oC)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (83, 9, 'Standard airflow rate (m3/s)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (84, 9, 'Airflow rate (m3/s)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (85, 9, 'Dry bulb temperature, air leaving, indoor side (oC)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (86, 9, 'Wet bulb temperature, air leaving, indoor side (oC)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (87, 9, 'Test Unit Static Pressure (Pa)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (88, 9, 'Atmospheric pressure (kPa)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (89, 9, 'Indoor unit fan speed (RPM)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (90, 9, 'Inverter compressor set* (Hz)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (91, 9, 'Total cooling capacity (Btu/h),[W]', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (92, 9, 'Latent cooling capacity (Btu/h)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (93, 9, 'Sensible cooling capacity (Btu/h)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (94, 9, 'Sensible heat ratio (%)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (95, 9, 'Effective Power input (W)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (96, 9, 'EER (Btu/h/W)', NULL, NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (97, 10, 'EER (Btu/h/W)', 'Entri tersedia\r\n', NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (98, 10, 'CSPF (Wh/Wh)', 'Entri tersedia\r\n', NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (99, 10, 'Variasi hasil pengujian terhadap EER SHE (%)', 'Hitung dengan formula', NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (100, 10, 'Variasi hasil pengujian terhadap CSPF SHE (%)', 'Hitung dengan formula		\r\n', NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (101, 10, 'Variasi hasil pengujian terhadap EER Nameplate (%)', 'Hitung dengan formula		\r\n', NULL, NULL, '3');
INSERT INTO `form_lab` VALUES (102, 10, 'Variasi hasil pengujian terhadap CSPF Nameplate (%)', 'Hitung dengan formula		\r\n', NULL, NULL, '3');

-- ----------------------------
-- Table structure for form_lab_role
-- ----------------------------
DROP TABLE IF EXISTS `form_lab_role`;
CREATE TABLE `form_lab_role`  (
  `id_form_lab_role` bigint(255) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_form_lab_role`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of form_lab_role
-- ----------------------------
INSERT INTO `form_lab_role` VALUES (1, 'Informasi Umum (form 2)');
INSERT INTO `form_lab_role` VALUES (2, 'Detil produk');
INSERT INTO `form_lab_role` VALUES (3, 'Cek Fisik, Unit Indoor');
INSERT INTO `form_lab_role` VALUES (4, 'Cek Fisik, Unit Outdoor');
INSERT INTO `form_lab_role` VALUES (5, 'Hasil Final Cek Fisik');
INSERT INTO `form_lab_role` VALUES (6, 'Pengecekan Pra-Pengujian\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n');
INSERT INTO `form_lab_role` VALUES (7, 'Hasil Final Cek Pra-Pengujian\r\n\r\n');
INSERT INTO `form_lab_role` VALUES (8, 'Data name plate produk');
INSERT INTO `form_lab_role` VALUES (9, 'Hasil pengujian full-load				\r\n');
INSERT INTO `form_lab_role` VALUES (10, 'Rekap hasil pengujian				\r\n');
INSERT INTO `form_lab_role` VALUES (11, 'Periksa Kesesuaian (form 2)');
INSERT INTO `form_lab_role` VALUES (13, 'Informasi umum (form 3)');
INSERT INTO `form_lab_role` VALUES (14, 'Periksa Kesesuaian (form 3)');

SET FOREIGN_KEY_CHECKS = 1;
