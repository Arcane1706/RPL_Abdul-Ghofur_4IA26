-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Nov 2025 pada 02.27
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chantikdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatlogs`
--

CREATE TABLE `chatlogs` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `chatlogs`
--

INSERT INTO `chatlogs` (`id`, `question`, `answer`, `timestamp`, `username`) VALUES
(78, 'apa itu ssd', 'SSD adalah singkatan dari **Solid State Drive**.  Ini adalah perangkat penyimpanan data yang menggunakan memori flash untuk menyimpan data secara permanen, berbeda dengan hard disk drive (HDD) yang menggunakan piringan magnetik yang berputar.\n\nBerikut beberapa poin penting tentang SSD:\n\n* **Kecepatan:** SSD jauh lebih cepat daripada HDD dalam hal kecepatan baca dan tulis data.  Ini karena SSD mengakses data secara elektronik, tanpa ketergantungan pada komponen mekanik yang bergerak.\n* **Ketahanan:** SSD lebih tahan terhadap guncangan dan getaran dibandingkan HDD karena tidak memiliki bagian yang bergerak.\n* **Keheningan:** SSD beroperasi secara hening karena tidak memiliki bagian yang bergerak.\n* **Konsumsi daya:** SSD biasanya mengkonsumsi daya lebih rendah daripada HDD.\n* **Harga:** SSD umumnya lebih mahal per gigabyte daripada HDD, meskipun harganya terus menurun.\n* **Kapasitas:** SSD tersedia dalam berbagai kapasitas, mulai dari beberapa gigabyte hingga beberapa terabyte.\n* **Umur pakai:** SSD memiliki jumlah siklus tulis terbatas, meskipun jumlah ini cukup tinggi untuk penggunaan sehari-hari.  Namun, pengurangan kinerja dapat terjadi setelah banyak siklus tulis.\n\n\nSingkatnya, SSD menawarkan kinerja yang jauh lebih unggul daripada HDD, tetapi dengan harga yang lebih tinggi.  Perbedaan kecepatannya sangat terasa pada waktu booting sistem operasi, loading aplikasi, dan transfer file yang besar.\n', '2025-06-29 22:48:35', 'arcane173'),
(82, 'apasi itu ssd', 'SSD adalah singkatan dari **Solid State Drive**.  Ini adalah perangkat penyimpanan data yang menggunakan memori flash untuk menyimpan data secara permanen, berbeda dengan hard disk drive (HDD) yang menggunakan piringan magnetik yang berputar.  Keunggulan utama SSD adalah kecepatan baca dan tulis yang jauh lebih tinggi daripada HDD, serta ketahanan terhadap guncangan dan kebisingan yang lebih baik karena tidak memiliki bagian yang bergerak.\n', '2025-06-30 19:05:57', 'arcane1706'),
(84, 'berikan kodingan kalkulator menggunakan python', 'Berikut beberapa contoh kode Python untuk kalkulator, dengan tingkat kompleksitas yang berbeda:\n\n**1. Kalkulator Sederhana (menggunakan `if-elif-else`):**\n\nKode ini hanya melakukan operasi aritmatika dasar (+, -, *, /) dan menangani kesalahan pembagian dengan nol.\n\n```python\ndef kalkulator_sederhana():\n    \"\"\"Melakukan operasi aritmatika dasar.\"\"\"\n    try:\n        num1 = float(input(\"Masukkan angka pertama: \"))\n        operator = input(\"Masukkan operator (+, -, *, /): \")\n        num2 = float(input(\"Masukkan angka kedua: \"))\n\n        if operator == \'+\':\n            hasil = num1 + num2\n        elif operator == \'-\':\n            hasil = num1 - num2\n        elif operator == \'*\':\n            hasil = num1 * num2\n        elif operator == \'/\':\n            if num2 == 0:\n                raise ZeroDivisionError(\"Tidak bisa membagi dengan nol!\")\n            hasil = num1 / num2\n        else:\n            print(\"Operator tidak valid!\")\n            return\n\n        print(\"Hasil:\", hasil)\n\n    except ValueError:\n        print(\"Input tidak valid. Masukkan angka!\")\n    except ZeroDivisionError as e:\n        print(e)\n\nkalkulator_sederhana()\n```\n\n**2. Kalkulator yang Lebih Maju (menggunakan dictionary):**\n\nKode ini menggunakan dictionary untuk menyimpan operasi, sehingga lebih mudah untuk menambahkan operasi baru.\n\n```python\ndef kalkulator_maju():\n    \"\"\"Melakukan operasi aritmatika dasar dan menangani lebih banyak kesalahan.\"\"\"\n    operasi = {\n        \'+\': lambda x, y: x + y,\n        \'-\': lambda x, y: x - y,\n        \'*\': lambda x, y: x * y,\n        \'/\': lambda x, y: x / y if y != 0 else float(\'inf\'), # Mengatasi pembagian nol dengan infinity\n        \'**\': lambda x, y: x**y # Tambahan: Perpangkatan\n    }\n\n    try:\n        num1 = float(input(\"Masukkan angka pertama: \"))\n        operator = input(\"Masukkan operator (+, -, *, /, **): \")\n        num2 = float(input(\"Masukkan angka kedua: \"))\n\n        if operator in operasi:\n            hasil = operasi[operator](num1, num2)\n            if hasil == float(\'inf\'):\n                print(\"Tidak bisa membagi dengan nol!\")\n            else:\n                print(\"Hasil:\", hasil)\n        else:\n            print(\"Operator tidak valid!\")\n\n    except ValueError:\n        print(\"Input tidak valid. Masukkan angka!\")\n    except Exception as e:\n        print(f\"Terjadi kesalahan: {e}\")\n\nkalkulator_maju()\n```\n\n**3. Kalkulator dengan Looping (untuk perhitungan berulang):**\n\nKode ini memungkinkan pengguna untuk melakukan beberapa perhitungan tanpa harus menjalankan program berulang kali.\n\n```python\ndef kalkulator_looping():\n    \"\"\"Kalkulator dengan kemampuan melakukan perhitungan berulang.\"\"\"\n    while True:\n        kalkulator_maju()  # Menggunakan fungsi kalkulator_maju dari contoh sebelumnya\n        lanjut = input(\"Ingin melakukan perhitungan lagi? (y/n): \")\n        if lanjut.lower() != \'y\':\n            break\n\nkalkulator_looping()\n```\n\nPilih kode yang sesuai dengan kebutuhan Anda.  Kode-kode di atas sudah termasuk penanganan kesalahan yang lebih baik.  Ingat untuk menjalankan kode ini di interpreter Python.\n', '2025-07-22 18:56:09', 'arcane173');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'arcane173', '$2y$10$M3LBOgQ/1cVyMVTn7tPEG.redZSkm1YhwCyWAk85m3XEmppSi6x4u', '2025-06-25 20:43:12'),
(2, 'arcane1706', '$2y$10$05zVxCevTMfSQXwsaMMOxeBK6A07Uo3mzeHbULK4L.ep1ysJ/Z/76', '2025-06-25 20:55:44'),
(6, 'admin', '$2y$10$TjF6NlQiZMl0C7k6gSy33ekasddQlmR7YsmOaagpaQPJ3mxnr1dda', '2025-06-29 22:41:52'),
(7, 'ghofur', '$2y$10$JF3OuQtnv5yfqdUHF5SybOoYbeztV7Z9ishjsnDASwrOv9HfpTSPS', '2025-11-11 09:09:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chatlogs`
--
ALTER TABLE `chatlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chatlogs`
--
ALTER TABLE `chatlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
