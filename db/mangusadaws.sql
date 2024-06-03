SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `dokter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesialis` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_poliklinik` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_dokters`
--

CREATE TABLE `jadwal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_dokter` bigint(20) NOT NULL,
  `hari` tinyint(4) NOT NULL,
  `mulai` time NOT NULL,
  `selesai` time NOT NULL,
  `max` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jaminans`
--

CREATE TABLE `jaminan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rm` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jns_kelamin` int(11) NOT NULL,
  `tmp_lahir` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftarans`
--

CREATE TABLE `pendaftaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomer` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `polikliniks`
--

CREATE TABLE `poliklinik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Indexes for table `dokters`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_dokters`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jaminans`
--
ALTER TABLE `jaminan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasiens`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftarans`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polikliniks`
--
ALTER TABLE `poliklinik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `dokters`
--
ALTER TABLE `dokter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwal_dokters`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jaminans`
--
ALTER TABLE `jaminan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendaftarans`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polikliniks`
--
ALTER TABLE `poliklinik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;


INSERT INTO pasien (`id`, `rm`, `nik`, `nama`, `jns_kelamin`, `tmp_lahir`, `tgl_lahir`, `alamat`) VALUES
("1", "510303200000023", "5102044311820002", "Ni Nyoman Mariawati", "2", "Baturiti", "1982-11-03", "Jl Raya Baturiti no 98 Tabanan"),
("2", "510303200000156", "5171021206790001", "Ajitapa", "1", "Denpasar", "1979-06-12", "Jl Raya Kapal no 12 Mengwi");

INSERT INTO jaminan (`id`, `nama`, `type`) VALUES
("1", "Umum", "abc"),
("2", "BPJS", "abc"),
("3", "Prudential", "abc"),
("4", "Sequislife", "abc"),
("5", "AXA", "abc"),
("6", "Allianz", "abc");

INSERT INTO poliklinik (`id`, `nama`, `type`) VALUES
("1", "Klinik Umum", "reguler"),
("2", "Klinik Mata", "reguler"),
("3", "Klinik THT", "reguler"),
("4", "Klinik Anak", "eksekutif"),
("5", "Klinik Obgyn", "eksekutif");

INSERT INTO dokter (`id`, `nama`, `spesialis`, `id_poliklinik`) VALUES
("1", "dr. Wayan Astawa", "Sp. A", "4"),
("2", "dr. DA Santi", "Sp. A", "4"),
("3", "dr. IB Adiaksa", "Sp. A", "4"),
("4", "dr. Jepri Hendra", "Sp. A", "4"),
("5", "dr. Budiman", "Sp. A", "4"),
("6", "dr. IGA Rusmini", "Sp. OG", "5"),
("7", "dr. Nurayanti", "Sp. OG", "5"),
("8", "dr. Gunadi", "Sp. OG", "5"),
("9", "dr. IGN Sumerta", "Sp. OG", "5"),
("10", "dr. Donyarta", "Sp. OG", "5");

INSERT INTO jadwal (`id`, `id_dokter`, `hari`, `mulai`, `selesai`, `max`) VALUES
("1", "1", "1", "09:00", "13:00", "50"),
("2", "2", "1", "13:00", "17:00", "50"),
("3", "3", "1", "17:00", "21:00", "50"),
("4", "4", "2", "09:00", "13:00", "50"),
("5", "1", "2", "13:00", "17:00", "50"),
("6", "5", "2", "17:00", "21:00", "50"),
("7", "1", "3", "09:00", "13:00", "50"),
("8", "4", "3", "13:00", "17:00", "50"),
("9", "3", "3", "17:00", "21:00", "50"),
("10", "4", "4", "09:00", "13:00", "50"),
("11", "2", "4", "13:00", "17:00", "50"),
("12", "5", "4", "17:00", "21:00", "50"),
("13", "2", "5", "09:00", "13:00", "50"),
("14", "3", "5", "13:00", "17:00", "50"),
("15", "5", "5", "17:00", "21:00", "50"),
("16", "6", "1", "09:00", "13:00", "50"),
("17", "7", "1", "13:00", "17:00", "50"),
("18", "8", "1", "17:00", "21:00", "50"),
("19", "9", "2", "09:00", "13:00", "50"),
("20", "7", "2", "13:00", "17:00", "50"),
("21", "10", "2", "17:00", "21:00", "50"),
("22", "6", "3", "09:00", "13:00", "50"),
("23", "9", "3", "13:00", "17:00", "50"),
("24", "10", "3", "17:00", "21:00", "50"),
("25", "8", "4", "09:00", "13:00", "50"),
("26", "10", "4", "13:00", "17:00", "50"),
("27", "9", "4", "17:00", "21:00", "50"),
("28", "7", "5", "09:00", "13:00", "50"),
("29", "6", "5", "13:00", "17:00", "50"),
("30", "8", "5", "17:00", "21:00", "50");

COMMIT;

