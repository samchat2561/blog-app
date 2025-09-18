-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2025 at 10:25 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel12_blog_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('blog-app-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1757935101),
('blog-app-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1757935101;', 1757935101),
('blog-app-cache-da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:2;', 1757772418),
('blog-app-cache-da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1757772418;', 1757772418),
('blog-app-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1757955321),
('blog-app-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1757955321;', 1757955321),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1758188525),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1758188525;', 1758188525),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1758165261),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1758165261;', 1758165261);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `content`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'นักพัฒนาซอฟต์แวร์ (Software Developer)', 'software-developer', '<p><strong>นักพัฒนาซอฟต์แวร์ (Software Developer) </strong><br>คือผู้ที่รับผิดชอบตั้งแต่การวิเคราะห์ความต้องการของผู้ใช้ไปจนถึงการออกแบบ, สร้าง, ทดสอบ, และแก้ไขซอฟต์แวร์ โดยอาจหมายถึงการพัฒนาแอปพลิเคชัน, ระบบ, หรือโปรแกรมต่างๆ การทำงานนี้ต้องการทั้งทักษะทางเทคนิค (เช่น การเขียนโค้ด) และทักษะด้านการสื่อสารและบริหารจัดการ.</p>', 'categories/images/01K5DDCQFTQD1FBNVCYH2W4VGH.webp', 1, '2025-09-13 04:31:55', '2025-09-18 03:20:22'),
(2, 'วิศวกรรมซอฟต์แวร์ (Software Engineering)', 'software-engineering', '<p>วิศวกรรมซอฟต์แวร์ (Software Engineering) คือศาสตร์ที่ประยุกต์หลักการทางวิศวกรรมเพื่อสร้างซอฟต์แวร์คุณภาพสูง โดยครอบคลุมกระบวนการทั้งหมดตั้งแต่การเก็บความต้องการ, ออกแบบ, พัฒนา, ทดสอบ, บำรุงรักษา ไปจนถึงการจัดการโครงการ ให้มีประสิทธิภาพ, เชื่อถือได้, และตรงตามความต้องการของผู้ใช้ เป็นสาขาสำคัญในวิทยาการคอมพิวเตอร์ ที่มุ่งผลิตบุคลากรที่มีความเชี่ยวชาญในการสร้างสรรค์และจัดการซอฟต์แวร์ให้ตอบสนองความท้าทายของเทคโนโลยีที่ซับซ้อนขึ้นในปัจจุบัน</p>', 'categories/images/01K5DDFXQYR13XBTKSYYCYE47V.jpg', 1, '2025-09-14 19:15:01', '2025-09-18 03:22:06'),
(3, 'วิทยาการคอมพิวเตอร์ (Computer Science)', 'computer-science', '<p>วิทยาการคอมพิวเตอร์ (Computer Science: CS) เป็นศาสตร์ที่ศึกษาทฤษฎีการคำนวณและการประมวลผลข้อมูล รวมถึงการออกแบบซอฟต์แวร์ ฮาร์ดแวร์ และระบบเครือข่าย สาขาวิชานี้ใช้หลักการทางคณิตศาสตร์ วิศวกรรมศาสตร์ และตรรกะเพื่อวิเคราะห์และแก้ไขปัญหา สร้างอัลกอริทึม และพัฒนาเทคโนโลยีใหม่ๆ เช่น ปัญญาประดิษฐ์ (AI) ผู้เรียนจะได้รับทักษะในการคิดเชิงระบบ การวิเคราะห์ การออกแบบโปรแกรม และการแก้ปัญหาอย่างมีระบบ</p>', 'categories/images/01K5DDEKA9TWR1A7MH5MSN8T7R.png', 1, '2025-09-15 10:43:06', '2025-09-18 03:21:23'),
(4, 'วิศวกรรมคอมพิวเตอร์ (Computer Engineer) ', 'computer-engineer', '<p>วิศวกรรมคอมพิวเตอร์ (Computer Engineering) เป็นสาขาวิชาที่ผสมผสานความรู้ด้านวิศวกรรมไฟฟ้าและวิทยาการคอมพิวเตอร์ เพื่อออกแบบ พัฒนา และบำรุงรักษาระบบคอมพิวเตอร์ที่ซับซ้อน ครอบคลุมทั้งส่วนฮาร์ดแวร์ ซอฟต์แวร์ และเครือข่าย ผู้เรียนจะได้ศึกษาทั้งพื้นฐานการเขียนโปรแกรม ฮาร์ดแวร์ อิเล็กทรอนิกส์ ระบบปฏิบัติการ และโครงสร้างคอมพิวเตอร์ เพื่อนำไปประยุกต์ใช้ในการแก้ไขปัญหาทางเทคนิค สร้างสรรค์นวัตกรรม และประกอบอาชีพหลากหลาย เช่น วิศวกรระบบ วิศวกรฮาร์ดแวร์ หรือนักพัฒนาซอฟต์แวร์.</p>', 'categories/images/01K5DDFC2XBCXT4844JGA619ZJ.png', 1, '2025-09-15 10:55:54', '2025-09-18 09:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_13_063107_create_categories_table', 2),
(5, '2025_09_13_063149_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `detail_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tags` json DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `image`, `detail_image`, `preview_text`, `detail_text`, `tags`, `user_id`, `category_id`, `published_at`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'นักพัฒนาเว็บไซต์ (Web Developer)', 'web-developer', 'posts/images/01K5DDVECA5DZ0NM23H5GZBA9H.jpg', 'posts/images/01K5DDJ53HWM9VBP88QAMZVEWQ.jpg', 'Web Developer หรือนักพัฒนาเว็บไซต์ คือ ผู้สร้างและดูแลเว็บไซต์ ตั้งแต่ส่วนที่ผู้ใช้มองเห็น (Front-End) ไปจนถึงระบบหลังบ้าน (Back-End) ', '<p>Web Developer หรือนักพัฒนาเว็บไซต์ คือ ผู้สร้างและดูแลเว็บไซต์ ตั้งแต่ส่วนที่ผู้ใช้มองเห็น (Front-End) ไปจนถึงระบบหลังบ้าน (Back-End) โดยใช้ภาษาโปรแกรมต่างๆ เช่น HTML, CSS, JavaScript, Python โดยทำงานร่วมกับ Web Designer ที่ออกแบบรูปลักษณ์เว็บไซต์ เพื่อให้เว็บไซต์ทำงานได้อย่างมีประสิทธิภาพ รวดเร็ว ปลอดภัย และรองรับการใช้งานบนอุปกรณ์หลากหลายรูปแบบ.</p>', '[\"PHP\", \"Laravel\", \"NodeJS\", \"NuxtJS\", \"NextJS\"]', 2, 1, '2025-09-13 14:07:35', 1, '2025-09-13 07:07:39', '2025-09-18 06:05:01'),
(2, 'DevOps ', 'devops', 'posts/images/01K5DQA9G65DC1XEZ78VMAH57Y.png', 'posts/images/01K5DQA9G8BQJYX8XYM0PKTZ6W.jpg', 'DevOps เป็นการรวมแนวคิด, แนวปฏิบัติ, และเครื่องมือที่ช่วยให้ทีมพัฒนาซอฟต์แวร์ (Development) และทีมปฏิบัติการ (Operations)', '<p>DevOps เป็นการรวมแนวคิด, แนวปฏิบัติ, และเครื่องมือที่ช่วยให้ทีมพัฒนาซอฟต์แวร์ (Development) และทีมปฏิบัติการ (Operations) ทำงานร่วมกันได้อย่างราบรื่น โดยมีเป้าหมายเพื่อส่งมอบซอฟต์แวร์และบริการให้ลูกค้าได้อย่างรวดเร็วและมีคุณภาพสูงขึ้น ผ่านการทำงานร่วมกัน, การทำงานอัตโนมัติ, และการปรับปรุงวงจรการพัฒนาอย่างต่อเนื่อง.</p>', '[\"Agile\", \"scrum\"]', 1, 1, '2025-09-18 13:13:43', 1, '2025-09-18 06:13:48', '2025-09-18 06:13:48'),
(3, 'Quality Assurance Engineering', 'quality-assurance-eng', 'posts/images/01K5E0RYM0AGZ2E7X4Q9VNQKN6.png', 'posts/images/01K5E0RYMFGRNHCMRXNN1JAWB6.jpg', 'Quality Assurance (QA) Engineering คือ วิศวกรรมที่มุ่งเน้นการสร้างความมั่นใจในคุณภาพของผลิตภัณฑ์หรือบริการ โดยการตรวจสอบและปรับปรุงกระบวนการพัฒนาตั้งแต่ต้นจนจบ', '<p>Quality Assurance (QA) Engineering คือ วิศวกรรมที่มุ่งเน้นการสร้างความมั่นใจในคุณภาพของผลิตภัณฑ์หรือบริการ โดยการตรวจสอบและปรับปรุงกระบวนการพัฒนาตั้งแต่ต้นจนจบ เพื่อป้องกันและแก้ไขข้อบกพร่องก่อนผลิตภัณฑ์จะส่งถึงมือผู้ใช้ ทำให้ผลิตภัณฑ์มีคุณภาพตามมาตรฐานและความต้องการ.</p>', '[\"Software Developer\", \"Computer Science\", \"Software Engineering\"]', 1, 2, '2025-09-18 15:58:58', 1, '2025-09-18 08:59:05', '2025-09-18 09:43:47'),
(4, 'Embedded Engineering', 'embedded-engineering', 'posts/images/01K5E1DC540XA7E89XGB0CARH7.webp', 'posts/images/01K5E1DC56P7E0FZBY3MJNCRBD.jpg', 'Embedded Systems Engineering (วิศวกรรมระบบสมองกลฝังตัว) คือสาขาวิศวกรรมที่เน้นการออกแบบและพัฒนาระบบคอมพิวเตอร์เฉพาะทาง (Embedded Systems)', '<p>Embedded Systems Engineering (วิศวกรรมระบบสมองกลฝังตัว) คือสาขาวิศวกรรมที่เน้นการออกแบบและพัฒนาระบบคอมพิวเตอร์เฉพาะทาง (Embedded Systems) ซึ่งประกอบด้วยฮาร์ดแวร์และซอฟต์แวร์ที่ฝังรวมกันในอุปกรณ์หรือผลิตภัณฑ์ เพื่อให้ทำงานตามฟังก์ชันที่กำหนดไว้ เช่น ระบบควบคุมในรถยนต์ เครื่องใช้ไฟฟ้าอัจฉริยะ อุปกรณ์ทางการแพทย์ และอุปกรณ์ IoT</p>', '[\"Software Engineering\", \"Software Developer\", \"Computer Engineering\", \"Computer Science\"]', 1, 2, '2025-09-18 16:10:10', 1, '2025-09-18 09:10:14', '2025-09-18 09:11:40'),
(5, 'Software Architecture Engineer', 'software-architecture-eng', 'posts/images/01K5E23SYKA5XZP50SRSYM08K8.png', 'posts/images/01K5E23SYN4TRSS5T8WTTZFD30.png', 'Software Architecture Engineering (วิศวกรรมสถาปัตยกรรมซอฟต์แวร์) คือ กระบวนการออกแบบ วางแผน และจัดโครงสร้างระบบซอฟต์แวร์โดยรวม', '<p>Software Architecture Engineering (วิศวกรรมสถาปัตยกรรมซอฟต์แวร์) คือ กระบวนการออกแบบ วางแผน และจัดโครงสร้างระบบซอฟต์แวร์โดยรวม ซึ่งรวมถึงการกำหนดส่วนประกอบหลัก ความสัมพันธ์ระหว่างส่วนประกอบเหล่านั้น เทคโนโลยีที่ใช้ และหลักการออกแบบ เพื่อให้ซอฟต์แวร์มีประสิทธิภาพ ตอบสนองความต้องการทางธุรกิจและข้อกำหนดด้านคุณภาพ เช่น ความยืดหยุ่น ความปลอดภัย และความสามารถในการบำรุงรักษา.</p>', '[\"Computer Engineering\", \"Computer Science\", \"Software Developer\", \"Software Engineering\"]', 1, 2, '2025-09-18 16:22:26', 1, '2025-09-18 09:22:29', '2025-09-18 09:29:36'),
(6, 'Computer programmer', 'computer-programmer', 'posts/images/01K5E2TAEFTP6S1YP1MN7C4FP2.jpg', 'posts/images/01K5E2TAEQPNWWQQ9QXT598JP5.png', 'Computer programmer (คอมพิวเตอร์โปรแกรมเมอร์) คือ ผู้ที่เขียนโค้ดหรือชุดคำสั่งเพื่อให้คอมพิวเตอร์ทำงานตามที่ต้องการ โดยใช้ภาษาโปรแกรมต่าง ๆ', '<p>Computer programmer (คอมพิวเตอร์โปรแกรมเมอร์) คือ ผู้ที่เขียนโค้ดหรือชุดคำสั่งเพื่อให้คอมพิวเตอร์ทำงานตามที่ต้องการ โดยใช้ภาษาโปรแกรมต่าง ๆ เช่น Python, Java, C++ เพื่อสร้าง พัฒนา แก้ไข และทดสอบซอฟต์แวร์ แอปพลิเคชัน หรือระบบคอมพิวเตอร์</p>', '[\"Computer Engineering\", \"Computer Science\", \"Software Developer\", \"Software Engineering\"]', 1, 3, '2025-09-18 16:34:43', 1, '2025-09-18 09:34:47', '2025-09-18 09:34:47'),
(7, 'Computer hardware engineer', 'computer-hardware', 'posts/images/01K5E371GKD09HGYQP205P6YNP.png', 'posts/images/01K5E371GNMFD00NQ3ECSDWF2N.jpg', 'Computer hardware engineer (วิศวกรฮาร์ดแวร์คอมพิวเตอร์) คือผู้ที่รับผิดชอบในการ ออกแบบ พัฒนา ทดสอบ และผลิตระบบและส่วนประกอบฮาร์ดแวร์ของคอมพิวเตอร์ ', '<p>Computer hardware engineer (วิศวกรฮาร์ดแวร์คอมพิวเตอร์) คือผู้ที่รับผิดชอบในการ ออกแบบ พัฒนา ทดสอบ และผลิตระบบและส่วนประกอบฮาร์ดแวร์ของคอมพิวเตอร์ เช่น โปรเซสเซอร์ หน่วยความจำ แผงวงจร เราเตอร์ และอุปกรณ์อื่น ๆ โดยต้องมีความรู้เชิงลึกเกี่ยวกับสถาปัตยกรรมคอมพิวเตอร์ วงจรอิเล็กทรอนิกส์ และการทำงานของฮาร์ดแวร์ เพื่อให้มั่นใจว่าส่วนประกอบเหล่านี้ทำงานได้อย่างมีประสิทธิภาพและเข้ากันได้กับซอฟต์แวร์.</p>', '[\"Computer Engineering\", \"Computer Science\", \"Software Developer\", \"Software Engineering\"]', 1, 4, '2025-09-18 16:41:38', 1, '2025-09-18 09:41:44', '2025-09-18 09:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('mZUQesoDMoC4ZieCOyErizmuKUCi2TR6vGeB45cM', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoieVB5Uk5ZNE1hOUVoRUJ5OGpBeExXOGVNeGZMVWNCVWFyZVltMXFhWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly9ibG9nLWFwcC50ZXN0L3Bvc3RzP2NhdGVnb3J5U2x1Zz1zb2Z0d2FyZS1lbmdpbmVlcmluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkUDVQQmQ5S0hIWThta3l6Q2xpMHRZT2xjUU8vUm44cFNhTkpNcmRLYmdFNVF4VlZhREtPbkMiO3M6NjoidGFibGVzIjthOjI6e3M6NDA6ImRkYzFkMDhlYmVmYTY1MjI5MDNhYjFmMzdjM2NiOGFjX2NvbHVtbnMiO2E6Njp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6InRpdGxlIjtzOjU6ImxhYmVsIjtzOjU6IlRpdGxlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJzbHVnIjtzOjU6ImxhYmVsIjtzOjQ6IlNsdWciO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6ImltYWdlIjtzOjU6ImxhYmVsIjtzOjU6IkltYWdlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo5OiJpc19hY3RpdmUiO3M6NToibGFiZWwiO3M6OToiSXMgYWN0aXZlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fX1zOjQwOiJhNjA3Y2RhNzNjYmRlNDQ2ZjhiYjY0Y2NkNzU2MDZlZV9jb2x1bW5zIjthOjg6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJ0aXRsZSI7czo1OiJsYWJlbCI7czo1OiJUaXRsZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoic2x1ZyI7czo1OiJsYWJlbCI7czo0OiJTbHVnIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJpbWFnZSI7czo1OiJsYWJlbCI7czo1OiJJbWFnZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTQ6ImNhdGVnb3J5LnRpdGxlIjtzOjU6ImxhYmVsIjtzOjg6IkNhdGVnb3J5IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMjoicHVibGlzaGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEyOiJQdWJsaXNoZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjk6ImlzX2FjdGl2ZSI7czo1OiJsYWJlbCI7czo5OiJJcyBhY3RpdmUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo2O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aTo3O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJVcGRhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9fX1zOjg6ImZpbGFtZW50IjthOjA6e319', 1758190969);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Test', 'admin@gmail.com', NULL, '$2y$12$P5PBd9KHHY8mkyzCli0tYOlcQO/Rn8pSaNJMrdKbgE5QxVVaDKOnC', NULL, '2025-09-12 22:42:07', '2025-09-12 22:42:07'),
(2, 'John Doe', 'john@gmail.com', NULL, '$2y$12$Kt27rRkl20eZ25GtAyE.deGQfhponx5/FNMRGQHxhm1XGgOosf0fO', NULL, '2025-09-13 05:50:34', '2025-09-13 05:50:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
