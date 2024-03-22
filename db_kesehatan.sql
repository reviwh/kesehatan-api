-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 22 Mar 2024 pada 12.06
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kesehatan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `name` varchar(60) NOT NULL,
  `no_bp` char(10) NOT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`name`, `no_bp`, `no_hp`, `email`, `created_at`) VALUES
('Ahmad', '1234567890', '081234567890', 'ahmad@gmail.com', '2024-03-21 03:39:42'),
('Rina', '3948322929', '081234567891', 'rina@gmail.com', '2024-03-16 17:00:00'),
('Siti', '3948322930', '081234567892', 'siti@gmail.com', '2024-03-16 17:00:00'),
('Mamat', '3948322931', '081234567893', 'mamat@gmail.com', '2024-03-16 17:00:00'),
('Suluh', '3948322932', '081234567894', 'suluh@gmail.com', '2024-03-16 17:00:00'),
('Siti Nur', '3948322933', '081234567895', 'sitinur@gmail.com', '2024-03-16 17:00:00'),
('Rizki', '3948322934', '081234567896', 'rizki@gmail.com', '2024-03-16 17:00:00'),
('Dadang', '3948322935', '081234567897', 'dadang@gmail.com', '2024-03-16 17:00:00'),
('Satria', '3948322936', '081234567898', 'satria@gmail.com', '2024-03-16 17:00:00'),
('Putri', '3948322937', '081234567899', 'putri@gmail.com', '2024-03-16 17:00:00'),
('Andi', '3948322938', '081234567810', 'andi@gmail.com', '2024-03-16 17:00:00'),
('Deni', '3948322939', '081234567811', 'deni@gmail.com', '2024-03-16 17:00:00'),
('Irfan', '3948322940', '081234567812', 'irfan@gmail.com', '2024-03-16 17:00:00'),
('Syahrul', '3948322941', '081234567813', 'syahrul@gmail.com', '2024-03-16 17:00:00'),
('Ayu', '3948322942', '081234567814', 'ayu@gmail.com', '2024-03-16 17:00:00'),
('Nur', '3948322943', '081234567815', 'nur@gmail.com', '2024-03-16 17:00:00'),
('Rafi', '3948322944', '081234567816', 'rafi@gmail.com', '2024-03-16 17:00:00'),
('Muhammad', '3948322945', '081234567817', 'muhammad@gmail.com', '2024-03-16 17:00:00'),
('Ria', '3948322946', '081234567818', 'ria@gmail.com', '2024-03-16 17:00:00'),
('Firdaus', '3948322947', '081234567819', 'firdaus@gmail.com', '2024-03-16 17:00:00'),
('Budi', '3948322948', '081234567820', 'budi@gmail.com', '2024-03-16 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(32) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`news_id`, `title`, `body`, `image`, `date`) VALUES
(1, 'Keluarga Asal Malang Donorkan Jenazah dan Kornea Mata untuk Dunia Pendidikan Kesehatan', 'MALANG, KOMPAS.com - Debora Hartati, anak pertama dari almarhum Hana Rosilawati (76) mengikhlaskan tubuh ibunya didonorkan untuk kepentingan dunia pendidikan kesehatan. Selain itu, kornea mata dari Hana juga ditransplantasi kepada orang lain.\r\nDebora mengatakan, ibunya itu meninggal di Rumah Sakit Panti Nirmala pada Kamis (5/10/2023) sekitar pukul 23.00 WIB. Semasa hidup, ibunya telah berwasiat untuk mendonorkan tubuhnya dan kornea mata. \r\n\"Sudah ada wasiat, saya sudah diberitahu tentang calon donor mata dan jenazah. Itu adalah hak pribadi. Jadi keluarga tidak keberatan,\" kata Debora melalui pesan WhatsApp secara singkat pada Selasa (10/10/2023).\r\nSelain ibunya, Debora Hartati dan bapaknya, Soesanto berencana akan mengikuti jejak dari almarhum Hana. Kepala Laboratorium Anatomi Fakultas Kedokteran (FK) Universitas Brawijaya (UB), Nurul Hidayati mengatakan, donor tubuh yang dilakukan almarhum Hana berangkat dari kesukarelaan atau keinginan diri sendiri semasa hidup. \r\nSuami dari almarhum Hana yakni Soesanto memiliki kedekatan dengan salah satu profesor yang ada di FK UB. Dari komunikasi yang terjalin, FK UB menyambut baik untuk bisa memfasilitasi keinginan almarhum Hana. Kemudian, terjadi kesepakatan antara almarhum Hana dengan FK UB. \r\n\"Sudah dilakukan ketika beliau masih hidup, jadi ketika beliau masih hidup memberikan akad kepada kami dan ini justru saya waktu itu dosen masih baru masuk, jadi waktu itu dipegang oleh Prof Lukito beliau senior kami yang sudah pensiun, jadi sudah lama sekali,\" katanya.\r\nSelain ibunya, Debora Hartati dan bapaknya, Soesanto berencana akan mengikuti jejak dari almarhum Hana. \r\nKepala Laboratorium Anatomi Fakultas Kedokteran (FK) Universitas Brawijaya (UB), Nurul Hidayati mengatakan, donor tubuh yang dilakukan almarhum Hana berangkat dari kesukarelaan atau keinginan diri sendiri semasa hidup. \r\nSuami dari almarhum Hana yakni Soesanto memiliki kedekatan dengan salah satu profesor yang ada di FK UB. Dari komunikasi yang terjalin, FK UB menyambut baik untuk bisa memfasilitasi keinginan almarhum Hana. Kemudian, terjadi kesepakatan antara almarhum Hana dengan FK UB. \r\n\"Sudah dilakukan ketika beliau masih hidup, jadi ketika beliau masih hidup memberikan akad kepada kami dan ini justru saya waktu itu dosen masih baru masuk, jadi waktu itu dipegang oleh Prof Lukito beliau senior kami yang sudah pensiun, jadi sudah lama sekali,\" katanya.\r\nProses kesepakatan itu juga telah melalui legalitas hukum secara tertulis bersama notaris. \r\n\"Dengan menempuh legalitasnya, jalur hukumnya, melalui kesepakatan dengan perantara notaris, jadi ada kesepakatan tertulis antara beliau yang menyumbangkan diri dengan pihak kami yang menerima dan dalam kesepakatan itu juga menggunakan peruntukan yang sesuai dikehendaki beliau,\" katanya. \r\nSelain itu, peruntukan kepentingan jenazah Hana hanya untuk mempelajari anatomi atau struktur tubuh manusia. Selain itu, jenazah Hana tidak diberikan perlakuan dengan reaksi-reaksi kimia atau hal-hal lainnya yang menyebabkan percepatan kerusakan tubuh. \r\n\"Untuk ilmu pengetahuan dan spesifiknya hanya untuk anatomi, dan tidak untuk lainnya, jadi mempelajari struktur tubuh manusia, sehingga jenazah tidak diberikan perlakuan atau reaksi-reaksi kimia atau apa pun,\" katanya.\r\nBeberapa program studi kesehatan yang membutuhkan pembelajaran anatomi tubuh seperti kedokteran, perawat, kebidanan dan lainnya. Menurutnya, mempelajari struktur tubuh manusia dengan kondisi yang asli dan dari media bergambar berbeda. \r\n\"Karena kalau untuk mempelajari dari media bergambar atau teknologi sekalipun itu orisinalitasnya enggak akan sampai menyerupai, kalau pakai teknologi hanya skema, tapi kalau keaslian yang tidak pernah bisa ditiru itu memang tubuh manusia itu, dan tubuh manusia juga ada variasinya, itu yang tidak bisa digantikan,\" katanya. \r\nJenazah Hana juga sudah diserahkan kepada Laboratorium Anatomi FK UB. Tubuh dari almarhum Hana akan menjadi media pembelajaran dengan jangka waktu 5 - 10 tahun. \r\nBila nantinya jenazah Hana tidak dapat dipergunakan lagi dalam dunia pendidikan kesehatan, maka akan dilakukan proses pemakaman. \r\n\"Ketika sudah tidak bisa dipergunakan maka tentu akan dimakamkan, atau mengikuti background agama dan kultur yang dipegang oleh jenazah. Yang kedua mengikuti ketentuan etik legalnya,\" katanya.', 'image-1.jpg', '2023-10-10'),
(2, 'Peringati Hari Santri Nasional, Gerakan Amanah Beri Edukasi Kesehatan Kulit di Puluhan Pesantren', 'Liputan6.com, Jakarta - Infeksi jamur pada kulit lebih banyak terjadi saat keadaan lembap, apalagi di negara tropis beriklim panas dan lembap seperti di Indonesia. Sebab, jamur dapat bertahan hidup di tempat yang hangat dan lembap. \r\nInfeksi jamur kulit pun dapat berkembang pada daerah yang berkeringat yang tidak mendapatkan banyak aliran udara, misalnya area kaki, selangkangan, dan lipatan kulit.\r\nDokter Spesialis Kulit anggota Ikatan Dokter Indonesia (IDI), dr. Galih Sari Damayanti, menekankan pentingnya menjaga kebersihan lingkungan dan personal care untuk menjaga kesehatan kulit.\r\n“Peran edukasi dan promosi kesehatan mengenai perilaku hidup bersih dan sehat demi mewujudkan kesehatan kulit yang bebas dari penyakit, termasuk infeksi jamur, sangatlah penting,\" jelas dr. Galih Sari Damayanti.\r\nLebih lanjut, ia mengatakan bahwa edukasi yang diberikan tidak hanya dalam upaya pencegahan, namun juga dalam mengenali berbagai gambaran penyakit jamur pada kulit dan pengobatan yang komprehensif.\r\n\"Jika Anda terinfeksi penyakit jamur pada kulit, jangan tunda untuk segera berobat, dan lakukan pengobatan hingga tuntas,” sambungnya.\r\nBerdasarkan data penelitian Jurnal Unpad JSK Volume 6 No. 2 Desember Tahun 2021, tingkat prevalensi infeksi jamur di pesantren cukup tinggi, yaitu 37,9 persen. Hal ini menunjukkan bahwa para santri lebih rentan atau berisiko terinfeksi gangguan kesehatan kulit.\r\nDalam rangka merayakan Hari Santri Nasional 2023 yang jatuh pada 22 Oktober, Kalbe melalui Kalpanax menggelar kampanye gerakan Amanah (aksi muslim antisipasi masalah) di puluhan pesantren di 26 kota di Indonesia.\r\nAcara ini digelar sebagai kegiatan edukasi kesehatan kulit dan penyerahan donasi obat-obatan dan vitamin. \r\n“Kami dari Kalbe selaku perusahaan kesehatan di Indonesia berkomitmen untuk mendukung pemerintah dalam menjaga kesehatan masyarakat. Kesehatan kulit para santri pun harus dijaga, dan ini menjadi perhatian Kalbe melalui brand Kalpanax,” ujar General Manager Commercial Kalbe Consumer Health, Kustanto Pramono, dalam keterangan tertulisnya, Senin (30/10/2023).\r\nAjak Para Santri Menjaga Kebersihan dan Merawat Kesehatan Tubuh\r\nKomitmen ini dituangkan dalam program CSR Kalpanax berupa gerakan Amanah. Melalui edukasi pola hidup bersih dan sehat (PHBS) yang juga dianjurkan dalam agama Islam, seperti dicontohkan Rasulullah yang selalu tampil bersih dan wangi.\r\nKustanto mengatakan bahwa gerakan Amanah mengedukasi santri untuk lebih memahami arti kebersihan dan kesehatan kulit, cara hidup sehat, serta tata laksana pengobatan jamur yang efektif jika kulit terinfeksi.\r\n“Gerakan Amanah mengajarkan kita dan para santri dalam menjaga kebersihan dan merawat kesehatan tubuh kita, khususnya kulit,” tutur duta Amaanah, Ustaz Solmed.\r\nHarapannya, kampanye gerakan Amanah ini mengedukasi 50.000 santri dalam negeri, agar dapat lebih mengoptimalkan konsentrasi para santri dalam menimba ilmu untuk meraih cita-cita.\r\nEdukasi Kesehatan Kulit Rutin Dilakukan\r\nEdukasi kesehatan kulit merupakan aktivitas rutin yang dilakukan Kalpanax dan tahun ini dipilih pesantren sebagai lokasi acara. Berdasarkan data Kementerian Agama, pada tahun 2022/2023 terdapat 39.043 pondok pesantren di Indonesia, dengan jumlah 4.080.000 santri atau rata-rata menampung 104 santri per pesantren, sedangkan pesantren skala besar dapat menampung hingga 3000 santri.\r\nPara santri diimbau untuk melakukan tata cara hidup bersih dan sehat dalam Islam, juga menerapkan pengobatan yang efektif untuk infeksi kulit akibat jamur. \r\nPada agenda gerakan Amanah ini tidak hanya dilakukan edukasi kesehatan kulit, namun Kalbe melalui brand Kalpanax juga memberikan sejumlah donasi untuk seluruh siswa-siswi Pondok Pesantren Assalafi Al Fithrah Semarang. Di antaranya, berupa produk obat dan vitamin Kalbe, handuk, kaos, hingga layanan pemeriksaan dan konsultasi kesehatan kulit di lokasi acara.', 'image-2.jpg', '2023-10-30'),
(3, 'Seminar dan Edukasi Kesehatan untuk 150 Perusahaan di Kota Bandung', 'Liputan6.com, Jakarta - Dalam rangka memberikan edukasi kesehatan kepada masyarakat, Primaya Hospital bekerjasama dengan BPJS Ketenagakerjaan menyelenggarakan seminar dan edukasi kesehatan di Kota Bandung. Kegiatan ini diikuti oleh 150 peserta yang merupakan perwakilan dari berbagai perusahaan di area Kota Bandung.\r\n\r\nDihadirkan tiga dokter spesialis sebagai narasumber yaitu dr. Regi Septian, Sp. U dari Primaya Hospital Bekasi Utara untuk membahas layanan urologi, dr. Akbar Supermas Putera, Sp.B dari Primaya Hospital Sukabumi dengan topik layanan trauma, dan dr. Christina Sitorus, SpOG dari Smart Fertility Clinic yang membahas seputar fertilitas.\r\n\r\n1. “Teknologi Terkini Penatalaksanaan Batu Ginjal” (Urologi) oleh dr. Regi Septian, Sp.U Gangguan urologi mempengaruhi kehidupan jutaan orang di seluruh dunia setiap tahunnya.\r\n\r\nPada Asian Journal of Urology disebutkan bahwa ditemukan prevalensi urolitiasis sebesar 5% - 19,1% di Asia Barat, Asia Tengara, Asia Selatan bahkan di beberapa negara maju seperti Korea Selatan dan Jepang. Melihat pentingnya kesadaran akan hal tersebut, Primaya Hospital memberikan edukasi seputar teknologi terkini dan penanganan penyakit urologi. Pada sesi ini dijelaskan tentang penatalaksanaan penyakit batu ginjal yang dapat dilaksanakan di Primaya Hospital Bekasi Utara.\r\n\r\nPrimaya Hospital Bekasi Utara menyediakan layanan urologi yang komprehensif dengan berbagai teknik mulai dari konservatif, terapi non-invasif, minimal-invasif seperti seperti extracorporeal shockwave lithotripsy (ESWL), ureteroskopi (URS), dan Percutaneous nephrolithotomy (PCNL), hingga yang invasif seperti Retrograde intrarenal surgery (RIRS) sesuai dengan guideline terkini.\r\n\r\n2. Penatalaksanaan Nyeri Perut Akut Pada Unit Gawat Darurat” (Trauma) oleh dr Akbar Supermas Putera, Sp. B Badan Penyelenggara Jaminan Sosial Ketenagakerjaan mencatat jumlah kecelakaan kerja di Indonesia terdapat 239.000 klaim kasus kecelakaan kerja yang terjadi hingga Agustus 2023. Trauma tumbul abdomen adalah trauma yang disebabkan oleh benturan benda tumpul pada perut.\r\n\r\nTrauma ini dapat disebabkan oleh sejumlah faktor seperti kecelakaan lalu lintas, pukulan keras pada perut atau kecelakaan saat bekerja. Berdasarkan SATS, nyeri hebat (skor ≥8 dari 10) harus dilakukan penatalaksanaan oleh dokter untuk memulai pengobatan dalam waktu 10 menit setelah gejala datang, karena nyeri yang tidak ditangani memiliki banyak konsekuensi negatif, termasuk hasil buruk dari insiden akut dengan penyembuhan yang tertunda dan peningkatan nyeri.\r\n\r\n“Primaya Hospital merupakan salah satu mitra strategis BPJS Ketenagakerjaan dan telah memberi kontribusi positif bagi peserta yang membutuhkan layanan berkualitas. Oleh karenanya para pekerja dapat menikmati layanan kesehatan terbaik dari Primaya Hospital sebagai dampak dari kerja sama yang telah terjalin bila mengalami kasus kecelakaan kerja,” ujar Teguh Setiawan, Wakil Kepala Kantor Wilayah Bidang Pelayanan BPJS Ketenagakerjaan Jawa Barat\r\n\r\n3. “Apakah cadangan sel telur dan usia wanita yang mempengaruhi peluang kehamilan?” (Fertilitas) dr. Christina Sitorus, SpOG Di Indonesia kejadian infertilitas terjadi sekitar 10-15% atau 4-6 juta pasangan dari 39,8 juta pasangan usia subur dan memerlukan pengobatan infertilitas untuk akhirnya bisa mendapatkan keturunan dan memerlukan bantuan dengan Program Bayi Tabung.\r\n\r\nCadangan sel telur dan usia sangat mempengaruhi dengan program kehamilan yang akan dilakukan.Hal tersebut dikarenakan kualitas sel telur akan berkurang seiring bertambahnya usia.\r\n\r\nSmart Fertility Clinic menawarkan pemeriksaan awal seperti pemeriksaan AMH untuk mengetahui cadangan sel telur dan Analisa Sperma untuk mengetahui kualitas sperma. Melalui hasil dari kedua pemeriksaan tersebut pasien dapat menentukan program kehamilan dapat disesuikan dengan kebutuhan pasien.\r\n\r\nSelain itu Smart Fertility Clinic Bekasi Utara merupakan salah satu klinik fertilitas terlengkap dan menjadi satu-satunya di Bekasi yang memiliki Time Lapse Incubator serta teknologi terkini yaitu ICSI, IMSI, analisa kromosom modern dengan metode PGTA/PGT-M, ERA / MIRA untuk Embryo Transfer yang optimal , Embryo - Sperm - Oocyte Preservation dan sebagainya\r\n\r\n“Primaya Hospital turut berupaya dalam menghimbau masyarakat akan pentingnya menjaga kesehatan dan memberikan solusi kesehatan terpercaya. Semoga seminar kesehatan yang kami laksanakan secara berkala di berbagai kota di Indonesia dapat bermanfaat bagi peserta dan meningkatkan kesadaran masyarakat akan pentingnya menjaga Kesehatan,” kata Leona A. Karnali, CEO Primaya Hospital.', 'image-3.jpg', '2023-12-15'),
(4, '5 Tips Jaga Kesehatan Jantung Selama Puasa ala Dosen UM Surabaya', 'KOMPAS.com - Kesehatan jantung perlu dijaga setiap saat, termasuk saat menjalankan ibadah puasa Ramadhan. \r\nDosen Fakultas Ilmu Kesehatan (FIK) UM Surabaya, Fatin Lailatul Badriyah memberikan 5 tips berpuasa agar jantung tetap sehat. Pertama adalah mengatur porsi makan.\r\n\"Saat berbuka puasa makan secukupnya saja, tidak perlu berlebihan, sehingga seseorang terlalu kenyang, karena hal itu akan membantu meringankan faktor risiko penyakit jantung dan pembuluh darah,\" kata dia dilansir dari laman UM Surabaya, Rabu (13/3/2024). \r\nKedua, perbanyak makan sayur dan buah. Itu karena sayur dan buah rendah kalori dan kaya akan serat. \r\n\"Sayur dan buah adalah sumber vitamin dan mineral yang sangat baik. Kandungan-kandungan tersebut merupakan komponen untuk sel sel jantung, sehingga membantu tubuh mencegah terjadinya penyakit jantung,\" ungkap dia. \r\nKetiga, konsumsi gandum utuh sebagai sumber karbohidrat dan serat. \r\nDia menyebut, gandum utuh dan biji-bijian yang utuh merupakan sumber serat baik yang berperan mengatur tekanan daerah dan kesehatan jantung. \r\nKeempat, menghindari lemak tidak sehat. Itu karena sangat penting untuk membantu menurunkan kadar kolesterol di dalam tubuh.\r\n\"Tingginya kadar kolesterol bisa menimbulkan plak di pembuluh darah yang disebut atherosclerosis. Hal ini bisa meningkatkan risiko kamu mengalami penyakit jantung, seperti serangan jantung atau stroke,\" tegas dia. \r\nKelima, pilih protein yang rendah lemak, seperti daging tanpa kulit atau lemak, ikan, telur, kacang kedelai, tahu, tempe, susu skim atau rendah lemak.\r\n\"Dengan sumber protein yang rendah lemak ini, akan membantu tubuh seseorang mengurangi asupan lemak dan kolesterol yang bisa menimbulkan penyakit jantung,\" pungkas dia.', 'image-4.jpg', '2024-03-13'),
(5, 'Tips Jaga Kesehatan Menjelang dan Selama Berpuasa ala Pakar Unair', 'KOMPAS.com - Sebentar lagi Bulan Ramadhan tiba. Umat Muslim akan menjalankan ibadah puasa selama satu bulan kedepan. Agar bisa menjalankan ibadah puasa dengan lancar, ada beberapa tips menjaga kesehatan yang disampaikan pakar Ilmu Kedokteran Fisik dan Rehabilitas Fakultas Kedokteran (FK) Universitas Airlangga (Unair), dr Abdul Jabbar Al Hayyan. Menjaga kesehatan menjelang dan selama menjalankan ibadah puasa penting karena masyarakat kerap kali lalai dalam menjaga kesehatan tubuhnya. dr Hayyan mengatakan, salah satu hal penting yang dapat dipersiapkan menjelang bulan Ramadhan yakni kecukupan nutrisi dalam tubuh dan mengatur jadwal harian selama satu bulan penuh selama berpuasa.\r\nMisalnya, dalam sehari manusia membutuhkan 2.100 kkal, maka selama berpuasa jumlah tersebut dibagi menjadi dua kali waktu makan. \r\n\"Yakni, pada waktu sahur dan berbuka puasa. Pembagian ini berguna untuk menjaga ketercukupan gizi dan energi dalam tubuh saat menjalankan puasa,\" terang Hayyan seperti dikutip dari laman Unair, Sabtu (9/3/2024). \r\nDr Hayyan menambahkan, mengatur jadwal harian juga salah satu hal yang penting selama berpuasa. Salah satunya, dengan cara mengatur pelaksanaan aktivitas-aktivitas yang berat selama berpuasa. Hal ini mencegah terjadinya kelelahan yang berlebihan dan meningkatkan rasa lapar saat menjalankan ibadah puasa. Contohnya, jika kegiatan rutinitas sehari-hari di luar bulan puasa ada yang membutuhkan tenaga dan energi yang banyak. Maka kegiatan tersebut dapat reschedule di waktu mendekati berbuka puasa atau setelah berbuka puasa. Dokter Persatuan Sepak Bola Surabaya (Persebaya) ini menerangkan, selain menjaga nutrisi tubuh dan mengatur jadwal harian, konsultasi kesehatan dini juga menjadi hal esensial selama berpuasa. Terutama, orang yang memiliki riwayat penyakit tertentu. Meskipun terdengar remeh namun konsultasi dini dengan dokter dapat memastikan tubuh dalam keadaan yang fit selama menjalankan ibadah puasa. Konsultasi tidak hanya dilakukan oleh orang yang memiliki riwayat penyakit namun juga orang yang sehat sekalipun. Contohnya, orang dengan penyakit diabetes harus melakukan konsultasi kepada dokter yang merawatnya. \r\n\"Dengan itu, dapat mengetahui perubahan-perubahan apa saja yang perlu dilakukan selama bulan Ramadhan seperti timing penggunaan insulin pada orang diabetes,\" paparnya.\r\nDr Hayyan menegaskan, menjaga kesehatan tubuh tak hanya menjelang berpuasa namun juga saat berpuasa. Menurutnya, pada dasarnya tidak ada pantangan makanan tertentu yang harus dihindari kecuali apabila orang dengan penyakit tertentu.', 'image-5.jpg', '2024-03-09'),
(6, 'Psikolog Unair: Gunakan Medsos Lebih 5 Jam Ganggu Kesehatan Mental', 'KOMPAS.com - Pakar Psikologi Universitas Airlangga (Unair), Atika Dian Ariana menyatakan, kecanduan media sosial (medsos) dapat diklasifikasikan sebagai bagian dari problematic internet use atau problematik penggunaan internet yang berlebihan. Hal itu ditandai dengan indikator seperti durasi, intensitas, dan frekuensi penggunaan yang melebihi batas wajar. Faktor-faktor lain termasuk obsesi, pengabaian terhadap hal-hal di luar medsos, dan kehilangan kontrol.\r\nMenurut dia, penggunaan medsos yang melebihi 5 jam sehari dapat dianggap sebagai problematik, terutama jika seseorang kehilangan kontrol dan terobsesi untuk terus mengakses platform tersebut. \r\n\"Faktor lain yang mencakup kecanduan media sosial adalah pengabaian terhadap aktivitas di dunia nyata, di mana individu lebih memilih untuk terlibat dalam kehidupan maya daripada kehidupan nyata,\" kata dia dilansir dari laman Unair, Selasa (5/3/2024). \r\nAtika menyoroti penggunaan internet yang berlebihan dapat berdampak negatif pada kesehatan fisik dan mental. Faktor-faktor seperti terlalu lama terpapar layar, posisi duduk yang tidak sehat, dan kurangnya aktivitas fisik dapat menyebabkan masalah fisik, seperti gangguan tidur dan kelelahan mata. Secara mental, penggunaan medsos berlebihan dapat menyebabkan depresi, kecemasan, dan OCD (Obsessive Compulsive Disorder), karena ada ketidakmampuan mengontrol perilaku berulang untuk mengakses medsos dan seterusnya.\r\nAtika menekankan terapi psikologis yang umumnya digunakan untuk mengatasi kecanduan, baik itu substance maupun non-substance, lebih berfokus pada modifikasi perilaku. Hal ini melibatkan psikoedukasi dan pembentukan pola pikir yang lebih sehat. Terapi juga mencakup identifikasi alasan di balik penggunaan media sosial sebagai koping serta memberikan alternatif coping yang lebih sehat. \r\n\"Terapi psikologis yang biasanya digunakan untuk kecanduan, lebih banyak berbasis terapi perilaku. Ada beberapa modifikasi perilaku yang biasanya diberikan kepada individu yang kecanduan, termasuk diiringi dengan psikoedukasi. Jadi kita percaya perilaku itu sebenarnya adalah produk dari pola pikir,\" jelas dia.\r\n\"Pentingnya memberikan alternatif bagi individu yang cenderung menggunakan medsos sebagai solusi atas masalah atau stres yang mereka hadapi. Strategi coping yang terus-menerus menggunakan medsos dapat memperburuk masalah kesehatan mental mereka,\" tutup dia.\r\n', 'image-6.jpg', '2024-03-05'),
(7, 'Tips Jaga Kesehatan Tubuh Selama Puasa ala Pakar Unair', 'KOMPAS.com - Bulan Ramadhan dinanti seluruh umat muslim di dunia. Meski begitu, masih banyak orang yang lalai menjaga kesehatan tubuh saat puasa Ramadhan. Demi menjaga tubuh tetap bugar saat Ramadhan, Pakar Ilmu Kedokteran Fisik dan Rehabilitas Fakultas Kedokteran (FK) Universitas Airlangga (Unair), Abdul Jabbar Al Hayyan memberikan tipsnya.\r\nDia menyebut, salah satu hal penting yang dapat dipersiapkan menjelang bulan Ramadhan, yakni kecukupan nutrisi dalam tubuh. Lalu, harus bisa mengatur jadwal harian selama satu bulan penuh selama berpuasa. \r\n\"Misalnya, dalam sehari manusia membutuhkan 2.100 kkal, maka selama berpuasa jumlah tersebut dibagi menjadi dua kali waktu makan. Yakni, pada waktu sahur dan berbuka puasa. Pembagian ini berguna untuk menjaga ketercukupan gizi dan energi dalam tubuh saat menjalankan puasa,\" kata dia dikutip dari laman Unair, Selasa (12/3/2024). \r\nTak lupa, mengatur jadwal harian juga salah satu hal penting selama berpuasa Ramadhan. Salah satunya, mengatur aktivitas-aktivitas berat selama berpuasa. Hal ini mencegah terjadinya kelelahan berlebihan dan meningkatkan rasa lapar saat menjalankan ibadah puasa. \r\n\"Misalnya, jika kegiatan rutinitas sehari-hari di luar bulan puasa ada yang membutuhkan tenaga dan energi yang banyak, maka kegiatan tersebut dapat reschedule di waktu mendekati berbuka puasa atau setelah berbuka puasa,\" jelas dia. \r\nDia juga menerangkan selain menjaga nutrisi tubuh dan mengatur jadwal harian, konsultasi kesehatan dini menjadi hal esensial selama berpuasa. Khususnya, bagi orang yang memiliki riwayat penyakit tertentu. Meskipun terdengar remeh, konsultasi dini dengan dokter dapat memastikan tubuh kita dengan keadaan fit selama menjalankan ibadah puasa. Konsultasi tidak hanya dilakukan oleh orang yang memiliki riwayat penyakit namun juga orang sehat sekalipun.\r\n\"Contohnya, orang dengan penyakit diabetes harus melakukan konsultasi kepada dokter yang merawatnya. Dengan itu, dapat mengetahui perubahan-perubahan apa saja yang perlu dilakukan selama bulan Ramadhan seperti timing penggunaan insulin pada orang diabetes,\" ucap dia.\r\nHayyan menegaskan menjaga kesehatan tubuh tak hanya menjelang berpuasa, tapi juga saat berpuasa. Dia menyatakan, pada dasarnya tidak ada pantangan makanan tertentu yang harus dihindari, kecuali apabila orang dengan penyakit tertentu. Namun, dia mengimbau setiap penyajian makanan mengandung komposisi lengkap dan seimbang. Yakni, karbohidrat, protein, lemak, vitamin, mineral dan serat.\r\n', 'image-7.jpg', '2024-03-12'),
(8, 'Menunda Tugas Akhir Bisa Pengaruhi Kesehatan Mental Mahasiswa', 'KOMPAS.com - Tugas akhir menjadi salah satu persyaratan yang harus diselesaikan oleh mahasiswa sebelum dinyatakan lulus oleh suatu universitas. Dalam perjalanan menyelesaikan tugas tersebut, mahasiswa akan mengalami berbagai dinamika.\r\nMulai daru proses penulisan, pengumpulan data, bimbingan, hingga ujian. Tak jarang, hal ini menimbulkan dampak pada kesehatan mental. Dosen Psikologi Universitas Muhammadiyah Malang (UMM), Nandy Agustin Syakarofath menyatakan, ada banyak faktor yang bisa menurunkan kesehatan mental di tengah pengerjaan tugas akhir. Meski demikian, faktor utama yang berkontribusi paling besar adalah penundaan terus-menerus dalam pengerjaannya. \r\n\"Ini menyebabkan banyak hal yang harus diselesaikan menumpuk dan membuat tanggungan tugas akhir semakin berat,\" ucap dia dilansir dari laman UMM, Kamis (29/2/2024). \r\nTak hanya soal penundaan, bilang dia, pola hidup kurang baik seperti sering begadang juga ikut mempengaruhi hal ini. Kurangnya waktu istirahat, membuat mahasiswa sulit berkosentrasu. Bahkan hingga merasa pusing dan merasakan berbagai keluhan lainnya. Perlu diperhatikan juga bahwa kesehatan fisik dan asupan gizi juga turut berpengaruh. \r\n\"Jangan lupa, jika kita jatuh sakit maka akan sulit untuk menulis atau datang bimbingan,\" jelas dia. \r\nKarenanya, menurut Nandy, cara menjaga kesehatan mental agar tetap stabil atau semakin baik di tengah tugas akhir adalah dengan menghindari prokrastinasi atau penundaan. \r\n\"Misalnya, saat menghadapi kesulitan menulis skripsi, segera mencari solusi atau insight saat bimbingan,\" ujar dia.\r\nSelain itu, dia juga memaparkan pentingnya support system ditengah penyelesaian tugas akhir. Baik dari orangtua, sahabat, ataupun pasangan. Meski demikian, yang paling menentukan keberhasilan tugas ini adalah diri sendiri. \r\n\"Yang utama adalah diri sendiri. Jangan terlalu bergantung pada orang lain, karena mereka hanya bisa memberikan dukungan berupa semangat dan tugas akhir sifatnya tanggung jawab pribadi,\" ungkap dia. \r\nNandy berpesan agar mahasiswa semester akhir bisa terus semangat, fokus dan selalu mengingat tujuan dari berkuliah. Mahasiswa jangan sampai terlena dengan hal-hal di luar tugas utama.\r\n\"Menjaga kesehatan mental tetap sehat di tengah tugas akhir itu sama seperti menjaga kesehatan fisik. Harus senantiasa dilakukan dan tidak perlu menunggu waktu tertentu,\" tutup dia.\r\n', 'image-8.jpg', '2024-02-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(32) NOT NULL,
  `password` char(72) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `name`, `email`) VALUES
('cakra', '$2y$10$Pp1OnuBTTNrVBrBOWqwlNuap4MuZF8A39eFwaq5EmHZEwN.gkddtC', 'M. Cakra Adhana', 'cakra@gmail.com'),
('daftar', '$2y$10$vsLp85swLL9eenlpE1SydOb8ObCAWMn.bFrS/ZvIhzabYn6l5JCj2', 'daftar', 'daftar'),
('reviwh', '$2y$10$ji1fcUZT7HQjFSSl5LL3f.p67J.tB1uOOaOb1YBKChhNQmGOF8Zoq', 'Revi Wardana Putra', 'reviwh@gmail.com'),
('test1', '$2y$10$kocLuav2VLygsEtS./debeesWpAwFYVFJTGYNjofZMMi1mX1UOZdq', 'Testerteron', 'example.net'),
('test5', '$2y$10$H9o2MaKugHeLPxhODDuFHOiA5kD1T0PMtWQ8ZMO0BvhyolJqEDMBy', 'test ', 'test5'),
('tester69', '$2y$10$.L6jcOJ7KTRtCVJBLB7Vc.MerkpexndzYAcenVRiY51xQac7oRPKO', 'Rei', 'KwokKwok@wkwk.hh');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`no_bp`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
