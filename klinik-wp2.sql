-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Nov 2024 pada 13.33
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinik-wp2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berobat`
--

CREATE TABLE `berobat` (
  `id_berobat` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `tgl_berobat` date NOT NULL,
  `subjective` varchar(200) NOT NULL,
  `objective` varchar(200) NOT NULL,
  `asesment` varchar(200) NOT NULL,
  `plan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berobat`
--

INSERT INTO `berobat` (`id_berobat`, `id_pasien`, `id_dokter`, `tgl_berobat`, `subjective`, `objective`, `asesment`, `plan`) VALUES
(2, 1, 3, '2022-09-28', 'Panas', '0', 'test', 'test 1'),
(5, 4, 1, '2022-09-28', 'badan panas sudah 3 hari', 'suhu 38 \r\ntd sistole = 80\r\ntd diastole = 100', 'demam tinggi', 'beri obat paracetamol \r\ncontrol ulang jika masih panas 1 minggu kedepan'),
(6, 1, 1, '2022-09-28', 'Batuk', '0', 'Sakit Kepala', 'Rawat Jalan'),
(8, 4, 3, '2022-09-28', 'Muntah', '0', 'Hamil', 'Rawat Inap'),
(9, 6, 3, '2022-09-28', 'Panas', '0', 'Covid', 'Rawat Jalan'),
(10, 7, 3, '2022-09-29', 'Flu', '0', 'Covid', 'Rawat Jalan'),
(11, 6, 1, '2024-10-30', '', '0', '', ''),
(13, 8, 2, '2024-11-05', '', '0', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berobat_ranap`
--

CREATE TABLE `berobat_ranap` (
  `id_berobat` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `tgl_berobat` date NOT NULL,
  `subjective` varchar(200) NOT NULL,
  `hasil_diagnosa` varchar(200) NOT NULL,
  `penatalaksanaan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berobat_ranap`
--

INSERT INTO `berobat_ranap` (`id_berobat`, `id_pasien`, `id_dokter`, `tgl_berobat`, `subjective`, `hasil_diagnosa`, `penatalaksanaan`) VALUES
(1, 6, 3, '2024-11-05', 'test', '2', 'Rawat Jalan'),
(2, 9, 1, '2024-11-06', 'sakit kepala', 'pusing', 'Rawat Jalan'),
(3, 9, 2, '2024-11-07', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `spesialisasi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `spesialisasi`) VALUES
(1, 'dr. Airena Niza Nugroho', 'bedah'),
(2, 'drg. Beta Cyndiana', 'Gigi'),
(3, 'dr. Briantono Indroprasto Widodo', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`) VALUES
(1, 'Paracetamol'),
(3, 'Amongus'),
(5, 'Parahmen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(40) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `umur` int(2) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `nomor_telpon` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `umur`, `alamat`, `nomor_telpon`, `email`) VALUES
(1, 'Bisma', 'L', 23, 'jln gas', '0813134124', 'andi@gmail.com'),
(4, 'Ahong', 'L', 22, 'jln gas', '08123193', 'rend@gmail.com'),
(5, 'Hafif', 'L', 25, '', '', ''),
(6, 'Rendy', 'L', 23, '', '', ''),
(7, 'Aryo', 'P', 20, '', '', ''),
(8, 'Andika', 'L', 18, '', '', ''),
(9, 'taufiq', 'L', 23, '', '', ''),
(12, 'ega', 'L', 23, 'jln gas alam', '08139596862', 'ega@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep_obat`
--

CREATE TABLE `resep_obat` (
  `id_resep` int(11) NOT NULL,
  `id_berobat` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `resep_obat`
--

INSERT INTO `resep_obat` (`id_resep`, `id_berobat`, `id_obat`) VALUES
(1, 2, 3),
(2, 2, 5),
(3, 5, 1),
(4, 5, 5),
(5, 6, 5),
(6, 9, 1),
(7, 9, 5),
(8, 10, 1),
(9, 10, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep_obat_ranap`
--

CREATE TABLE `resep_obat_ranap` (
  `id_resep` int(11) NOT NULL,
  `id_berobat` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `resep_obat_ranap`
--

INSERT INTO `resep_obat_ranap` (`id_resep`, `id_berobat`, `id_obat`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin'),
(4, 'taufiq', '202cb962ac59075b964b07152d234b70', 'taufiq');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berobat`
--
ALTER TABLE `berobat`
  ADD PRIMARY KEY (`id_berobat`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indeks untuk tabel `berobat_ranap`
--
ALTER TABLE `berobat_ranap`
  ADD PRIMARY KEY (`id_berobat`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `resep_obat`
--
ALTER TABLE `resep_obat`
  ADD PRIMARY KEY (`id_resep`),
  ADD KEY `id_berobat` (`id_berobat`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indeks untuk tabel `resep_obat_ranap`
--
ALTER TABLE `resep_obat_ranap`
  ADD PRIMARY KEY (`id_resep`),
  ADD KEY `id_berobat` (`id_berobat`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berobat`
--
ALTER TABLE `berobat`
  MODIFY `id_berobat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `berobat_ranap`
--
ALTER TABLE `berobat_ranap`
  MODIFY `id_berobat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `resep_obat`
--
ALTER TABLE `resep_obat`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `resep_obat_ranap`
--
ALTER TABLE `resep_obat_ranap`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `berobat`
--
ALTER TABLE `berobat`
  ADD CONSTRAINT `berobat_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`),
  ADD CONSTRAINT `berobat_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`);

--
-- Ketidakleluasaan untuk tabel `resep_obat`
--
ALTER TABLE `resep_obat`
  ADD CONSTRAINT `resep_obat_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`),
  ADD CONSTRAINT `resep_obat_ibfk_2` FOREIGN KEY (`id_berobat`) REFERENCES `berobat` (`id_berobat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
