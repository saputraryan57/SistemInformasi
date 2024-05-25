-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 25 Bulan Mei 2024 pada 10.52
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudang_sepatu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('qoOWGkVPQtijlCSr4tW1t72SfeIHMqW4ThEGYxY6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkpVQ1JQREVERDlvUVpHYldpUkJUb0htbWtkaU9hMmg4Q3J0TWdsSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFuc2Frc2lQZGYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716631026);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_detail_transaksi_pembelian`
--

CREATE TABLE `tabel_detail_transaksi_pembelian` (
  `id_detail_transaksi_pembelian` int NOT NULL,
  `id_transaksi_pembelian` int NOT NULL,
  `id_produk` int NOT NULL,
  `jumlah` int NOT NULL,
  `harga_satuan` int NOT NULL,
  `id_user` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tabel_detail_transaksi_pembelian`
--

INSERT INTO `tabel_detail_transaksi_pembelian` (`id_detail_transaksi_pembelian`, `id_transaksi_pembelian`, `id_produk`, `jumlah`, `harga_satuan`, `id_user`, `created_at`, `updated_at`) VALUES
(551, 331, 1, 16, 460000, 441, NULL, '2024-05-24 23:50:03'),
(552, 332, 2, 15, 2700000, 442, NULL, NULL),
(554, 333, 3, 3, 1600000, 443, '2024-05-25 02:16:13', '2024-05-25 02:16:13'),
(555, 334, 4, 6, 1800000, 444, '2024-05-25 02:16:41', '2024-05-25 02:27:36'),
(556, 334, 5, 5, 1000000, 444, '2024-05-25 02:51:11', '2024-05-25 02:55:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pemasok`
--

CREATE TABLE `tabel_pemasok` (
  `id_pemasok` int NOT NULL,
  `nama_pemasok` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `nomor_telepon` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tabel_pemasok`
--

INSERT INTO `tabel_pemasok` (`id_pemasok`, `nama_pemasok`, `alamat`, `nomor_telepon`, `email`, `created_at`, `updated_at`) VALUES
(221, 'Ivan', 'Jl Karanglo No 3', '814562873', 'ivan123@gmaill.com', NULL, NULL),
(222, 'Ghulam', 'Malang', '812335773', 'Ghulam66@gmail.com', NULL, '2024-05-25 01:32:50'),
(227, 'Zidan', 'Batu', '08112158188', 'zidanuy@gmail.com', '2024-05-25 01:43:12', '2024-05-25 01:43:12'),
(228, 'Satria', 'Blitar', '0856735456', 'satria89@gmail.com', '2024-05-25 01:44:10', '2024-05-25 01:44:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_produk`
--

CREATE TABLE `tabel_produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `merk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `ukuran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `warna` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `stok` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tabel_produk`
--

INSERT INTO `tabel_produk` (`id_produk`, `nama_produk`, `merk`, `jenis_kelamin`, `ukuran`, `warna`, `harga_beli`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(1, 'Sepatu Badminton', 'Lining', 'Laki-Laki', '43', 'Merah', 350000, 450000, 20, NULL, NULL),
(2, 'Sepatu Badminton', 'Yonex', 'Laki-Laki', '42', 'Biru', 2500000, 2700000, 20, NULL, '2024-05-24 23:06:42'),
(3, 'Sepatu Futsal', 'Nike', 'Laki-Laki', '41', 'Putih', 1500000, 1600000, 5, '2024-05-24 15:52:47', '2024-05-24 23:06:53'),
(4, 'Sepatu Sepak Bola', 'Adidas', 'Perempuan', '41', 'Pink', 1700000, 1800000, 17, '2024-05-25 01:31:54', '2024-05-25 01:31:54'),
(5, 'Sepatu Voli', 'Asics', 'Laki-Laki', '43', 'Hitam', 2000000, 2200000, 10, '2024-05-25 02:32:34', '2024-05-25 02:32:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi_pembelian`
--

CREATE TABLE `tabel_transaksi_pembelian` (
  `id_transaksi_pembelian` int NOT NULL,
  `id_pemasok` int NOT NULL,
  `total_pembelian` int NOT NULL,
  `status_pembayaran` enum('Lunas','Belum_Lunas') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tabel_transaksi_pembelian`
--

INSERT INTO `tabel_transaksi_pembelian` (`id_transaksi_pembelian`, `id_pemasok`, `total_pembelian`, `status_pembayaran`, `created_at`, `updated_at`) VALUES
(331, 221, 11, 'Lunas', NULL, '2024-05-24 17:01:13'),
(332, 222, 15, 'Lunas', NULL, NULL),
(333, 227, 3, 'Lunas', '2024-05-25 02:12:14', '2024-05-25 02:12:14'),
(334, 228, 5, 'Lunas', '2024-05-25 02:13:15', '2024-05-25 02:13:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id_user` int NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `jabatan_user` enum('Admin','Kasir') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `tabel_user`
--

INSERT INTO `tabel_user` (`id_user`, `nama_user`, `username`, `password`, `jabatan_user`, `created_at`, `updated_at`) VALUES
(441, 'Ryan', 'Ryan123', 'ryan1234', 'Admin', NULL, NULL),
(442, 'ikbar', 'ikbar87', 'ikbarfc', 'Admin', NULL, '2024-05-24 17:10:30'),
(443, 'Yusuf', 'Yusuf87', 'arema87', 'Admin', '2024-05-25 02:14:35', '2024-05-25 02:14:35'),
(444, 'Raya', 'Rayaaa', 'raya456', 'Kasir', '2024-05-25 02:15:17', '2024-05-25 02:15:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tabel_detail_transaksi_pembelian`
--
ALTER TABLE `tabel_detail_transaksi_pembelian`
  ADD PRIMARY KEY (`id_detail_transaksi_pembelian`),
  ADD KEY `id_transaksi_pembelian` (`id_transaksi_pembelian`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tabel_pemasok`
--
ALTER TABLE `tabel_pemasok`
  ADD PRIMARY KEY (`id_pemasok`);

--
-- Indeks untuk tabel `tabel_produk`
--
ALTER TABLE `tabel_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `tabel_transaksi_pembelian`
--
ALTER TABLE `tabel_transaksi_pembelian`
  ADD PRIMARY KEY (`id_transaksi_pembelian`),
  ADD KEY `id_pemasok` (`id_pemasok`);

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tabel_detail_transaksi_pembelian`
--
ALTER TABLE `tabel_detail_transaksi_pembelian`
  MODIFY `id_detail_transaksi_pembelian` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=558;

--
-- AUTO_INCREMENT untuk tabel `tabel_pemasok`
--
ALTER TABLE `tabel_pemasok`
  MODIFY `id_pemasok` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT untuk tabel `tabel_produk`
--
ALTER TABLE `tabel_produk`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tabel_transaksi_pembelian`
--
ALTER TABLE `tabel_transaksi_pembelian`
  MODIFY `id_transaksi_pembelian` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_detail_transaksi_pembelian`
--
ALTER TABLE `tabel_detail_transaksi_pembelian`
  ADD CONSTRAINT `tabel_detail_transaksi_pembelian_ibfk_1` FOREIGN KEY (`id_transaksi_pembelian`) REFERENCES `tabel_transaksi_pembelian` (`id_transaksi_pembelian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabel_detail_transaksi_pembelian_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tabel_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabel_detail_transaksi_pembelian_ibfk_3` FOREIGN KEY (`id_produk`) REFERENCES `tabel_produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tabel_transaksi_pembelian`
--
ALTER TABLE `tabel_transaksi_pembelian`
  ADD CONSTRAINT `tabel_transaksi_pembelian_ibfk_1` FOREIGN KEY (`id_pemasok`) REFERENCES `tabel_pemasok` (`id_pemasok`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
