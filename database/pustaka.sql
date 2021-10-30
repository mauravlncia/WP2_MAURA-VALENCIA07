-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Okt 2021 pada 08.09
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_penerbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_penerbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'statistika dengan program komputer', 1, 'ahmad kholiqul amin', 'deep publish', 2014, '9786022809432', 6, 1, 1, 'img1557402555.jpg'),
(2, 'mudah belajar kmputer untuk anak', 1, 'bambang agus setiawan', 'huta media', 2012, '9786025118500', 6, 3, 1, 'img1557402397.jpg'),
(5, 'PHP komplet', 1, 'jubilee', 'Elex media komputindo', 2017, '8346753547', 5, 1, 1, 'img15555522493.jpg'),
(10, 'detektif conan ep 200', 9, 'okigawa sasuke', 'cultura', 2016, '874387583987', 5, 0, 0, 'img1557143678.jpg'),
(14, 'bahasa indonesia', 2, 'umri nur\'aini dan indriyani', 'pusat perbukaan ', 2015, '757554724884', 3, 0, 0, 'img15574520123.jpg'),
(15, 'komunikasi lintas budaya kolaborasi codeigniter', 5, 'Dr.dedy kurnia', 'published', 2015, '878674646488', 5, 0, 0, 'img1557145299.jpg'),
(16, 'kolaborasi codeigniter dan ajax dalam perancangan', 1, 'anton subagia', 'elex media komputindo', 2017, '43345356577', 5, 0, 0, 'img15571083245.jpg'),
(17, 'from hobby to money', 4, 'deasylawati', 'elex media komputindo', 2015, '8796868787879', 5, 0, 0, 'img15571115647.jpg'),
(18, 'buku saku pramuka', 8, 'rudi himawan', 'pusat perbukaan ', 2016, '97868687979787', 6, 0, 0, 'img155745123098.jpg'),
(19, 'rahasia keajaiban bumi', 3, 'nurul ihsan', 'luxima', 2014, '565756565768868', 5, 0, 0, 'img155740967.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'komputer'),
(2, 'bahasa'),
(3, 'sains'),
(4, 'hobby'),
(5, 'komunikasi'),
(6, 'hukum'),
(7, 'agama'),
(8, 'populer'),
(9, 'komik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
