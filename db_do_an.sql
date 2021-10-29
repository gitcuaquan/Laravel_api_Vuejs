-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2021 lúc 09:33 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_do_an`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(39, '2014_10_12_000000_create_users_table', 1),
(40, '2014_10_12_100000_create_password_resets_table', 1),
(41, '2019_08_19_000000_create_failed_jobs_table', 1),
(42, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(43, '2021_10_17_023618_update_users_table', 1),
(44, '2021_10_17_095055_create_comments_table', 1),
(45, '2021_10_18_105344_create_timekeepings_table', 1),
(46, '2021_10_19_064723_create_uploads_table', 1),
(47, '2021_10_26_074705_create_products_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(16, 'App\\Models\\User', 2, 'APPQUASAR', '2144a51631745abee330c164e004995f98289c085605c1fcd65ffd70bcaa0043', '[\"*\"]', '2021-10-20 06:40:16', '2021-10-20 06:38:01', '2021-10-20 06:40:16'),
(83, 'App\\Models\\User', 7, 'APPQUASAR', '0afce189b82563c5b41089ddbf3254ae04544989a81dcfc5ea1f547cb0d99fce', '[\"*\"]', '2021-10-23 07:43:23', '2021-10-23 07:43:16', '2021-10-23 07:43:23'),
(84, 'App\\Models\\User', 4, 'APPQUASAR', '330dfdbf3156269536da682955218d199c50c169088563c56543a02499b8f277', '[\"*\"]', '2021-10-23 07:47:27', '2021-10-23 07:43:38', '2021-10-23 07:47:27'),
(142, 'App\\Models\\User', 1, 'APPQUASAR', '9223ba836dff282911d5375a23c0b93a38fba9c3373e6f52cdec0c8fd12b16a4', '[\"*\"]', '2021-10-28 20:40:07', '2021-10-28 20:40:03', '2021-10-28 20:40:07'),
(143, 'App\\Models\\User', 8, 'APPQUASAR', '0d01adefb7132320107ea9a5ea76d3307b65a985c49ab8df51e19e8301d03a62', '[\"*\"]', NULL, '2021-10-28 20:40:16', '2021-10-28 20:40:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `category`, `price`, `quantity`, `status`, `description`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'Dignissimos est.', '1951606', '4', '228479811', 34, '1', 'Nihil sint ut quasi consequatur fugit quia. Et est quia voluptatem atque harum. Quaerat repudiandae voluptatem ut iusto magni.', 'https://via.placeholder.com/640x480.png/0099aa?text=velit', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(2, 'Quidem officia.', '2180021', '2', '395734185', 69, '0', 'Quasi doloremque eaque qui ut tempora atque sint. Rerum accusantium occaecati eligendi voluptas. Consequatur corporis qui vel ex et aperiam cupiditate.', 'https://via.placeholder.com/640x480.png/00aabb?text=omnis', '2021-10-26 01:04:35', '2021-10-27 01:51:00'),
(3, 'Libero ut provident.', '7866555', '4', '212078874', 31, '0', 'Consectetur sed eos exercitationem deleniti. Perspiciatis et error quidem et sequi. Necessitatibus consectetur est laborum quis officiis aut quidem.', 'https://via.placeholder.com/640x480.png/0011aa?text=libero', '2021-10-26 01:04:35', '2021-10-27 01:51:00'),
(4, 'Et quos omnis.', '6726143', '2', '338991034', 27, '1', 'Aut expedita quod dolorum quod quia enim molestias quo. Eligendi non dolorem nemo praesentium veniam. Ratione qui quo vel porro quis aut eos. Molestias est deserunt rerum iste inventore ut.', 'https://via.placeholder.com/640x480.png/008888?text=maiores', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(5, 'Doloremque dolores.', '8307309', '4', '305369252', 24, '0', 'Quo placeat facilis quae quaerat facilis illum quas. Ab non doloribus enim adipisci aut quis iure. Qui et dolorum sit modi.', 'https://via.placeholder.com/640x480.png/009955?text=omnis', '2021-10-26 01:04:35', '2021-10-27 01:51:01'),
(6, 'Odio est aliquid.', '8666778', '4', '226720066', 13, '1', 'Natus temporibus est culpa quos dolor alias ut. Beatae quibusdam voluptatibus pariatur odit iusto. Ipsum culpa esse perspiciatis fugiat veritatis soluta sunt. Quis quis et consequatur molestiae.', 'https://via.placeholder.com/640x480.png/0055ff?text=nesciunt', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(7, 'Necessitatibus qui.', '5733707', '2', '566076089', 4, '1', 'Saepe magni voluptas neque quaerat quos temporibus. Cum ratione minima consequatur ducimus mollitia. Voluptatem impedit eum recusandae omnis ad ut. Rerum sit cupiditate quibusdam ut.', 'https://via.placeholder.com/640x480.png/002233?text=labore', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(8, 'Repudiandae.', '6014499', '2', '438681964', 85, '1', 'Sit consequatur ratione nobis. Quisquam unde distinctio vel. Quam sapiente neque error saepe rerum vel.', 'https://via.placeholder.com/640x480.png/0066aa?text=ex', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(9, 'Sit libero tenetur.', '7482256', '5', '359404055', 7, '0', 'Consequatur aut dolor culpa quia nostrum qui nisi. Ad quam cumque ratione eum.', 'https://via.placeholder.com/640x480.png/00dd99?text=alias', '2021-10-26 01:04:35', '2021-10-27 01:51:04'),
(10, 'Nisi eligendi.', '8670300', '4', '596208733', 84, '0', 'Et quis similique aperiam et et. Enim et officia quia expedita asperiores necessitatibus nulla. Aspernatur quibusdam ullam officia praesentium assumenda.', 'https://via.placeholder.com/640x480.png/008844?text=consequuntur', '2021-10-26 01:04:35', '2021-10-27 01:51:05'),
(11, 'Ratione molestiae.', '5950607', '5', '357477902', 70, '0', 'Aliquid atque explicabo voluptatem autem est laboriosam. Magnam doloribus iusto quis consequatur occaecati. Optio quia similique autem sit atque magni.', 'https://via.placeholder.com/640x480.png/0033ee?text=nulla', '2021-10-26 01:04:35', '2021-10-27 01:51:07'),
(12, 'Aut quo quam.', '9827399', '3', '496689705', 45, '1', 'Repellat quia et et quod. Animi mollitia dolor neque repellendus voluptatem. Incidunt aut ullam qui illum rem minus omnis. Voluptatem perferendis ea accusantium repellat. Id ut impedit non et.', 'https://via.placeholder.com/640x480.png/00ee33?text=quidem', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(13, 'Distinctio vitae et.', '2673122', '4', '527098988', 68, '1', 'Eius sequi doloremque sed officia qui occaecati. Vitae illum esse et rerum laboriosam ut fuga. Similique quae deleniti explicabo magnam nihil est quo.', 'https://via.placeholder.com/640x480.png/003355?text=minus', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(14, 'Exercitationem quos.', '5016414', '1', '472666238', 67, '0', 'Et quaerat omnis velit. Tempore inventore voluptatem eius architecto laboriosam sint dolorem. Voluptatem ea ipsam ut totam. Sequi est eaque occaecati voluptatibus reiciendis.', 'https://via.placeholder.com/640x480.png/00aa66?text=est', '2021-10-26 01:04:35', '2021-10-27 01:51:08'),
(15, 'Nam ex atque.', '6676027', '5', '582527505', 82, '1', 'Qui inventore dolorum voluptatibus. Omnis sed dolorum qui. Sunt expedita eum eum totam reiciendis eos est. Rerum veritatis sunt veritatis recusandae corporis.', 'https://via.placeholder.com/640x480.png/0044bb?text=blanditiis', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(16, 'Eum rerum eum rerum.', '3824838', '4', '249702747', 28, '1', 'Quo in repudiandae id sint voluptas. Soluta voluptatum odio quaerat sint et non quia aut. Autem quo consequuntur rerum expedita praesentium dolores molestiae dolorem.', 'https://via.placeholder.com/640x480.png/000000?text=beatae', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(17, 'Perferendis aut.', '9939321', '5', '343567319', 87, '1', 'Modi voluptatem quia ad et iste quod. Consectetur animi id est. Aliquid in est quia culpa laboriosam mollitia dolorum. Nihil amet eum perferendis hic. Ex doloremque et ullam amet neque est ratione.', 'https://via.placeholder.com/640x480.png/008800?text=voluptas', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(18, 'Voluptatem fugit.', '9851228', '4', '216856410', 98, '1', 'Quaerat explicabo perspiciatis in dolore et assumenda eos sint. Quia necessitatibus ratione minus occaecati. Perspiciatis eveniet aut dignissimos delectus in consequatur non.', 'https://via.placeholder.com/640x480.png/0088ee?text=quia', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(19, 'Quis sit doloremque.', '5250637', '2', '554328703', 8, '1', 'Quis enim consequatur veniam rerum. Id aut eos sit et placeat voluptatibus reprehenderit. Consequatur vel quaerat dolorem in.', 'https://via.placeholder.com/640x480.png/00cc44?text=suscipit', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(20, 'Eum distinctio ut.', '3290015', '2', '527767372', 72, '1', 'Omnis accusantium id est error velit quasi. Voluptas rerum vel recusandae esse. Ut hic earum impedit et ex. Quia praesentium inventore et sit aut.', 'https://via.placeholder.com/640x480.png/00ddff?text=veritatis', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(21, 'Officia cum.', '6126132', '3', '348167789', 37, '1', 'Iusto aut soluta laudantium modi quo quia eum. Placeat nihil officiis fugiat beatae ipsum ipsum. Natus sunt nam ea qui dolor sunt atque.', 'https://via.placeholder.com/640x480.png/006622?text=asperiores', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(22, 'A minus velit qui.', '3547041', '1', '429863930', 68, '1', 'Sed et sequi dicta omnis. Sequi amet ratione sit asperiores ducimus cupiditate. Minus eligendi ut non omnis libero beatae.', 'https://via.placeholder.com/640x480.png/0088ff?text=sint', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(23, 'Delectus ad non.', '3879835', '1', '476239089', 76, '1', 'Voluptas eaque enim hic non corporis voluptatibus doloremque ipsum. Pariatur ex et aut nihil. Sunt laboriosam nisi doloremque voluptatum quia qui.', 'https://via.placeholder.com/640x480.png/00cccc?text=necessitatibus', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(24, 'Illum ut rerum.', '1939171', '5', '532131563', 91, '1', 'Deleniti iure voluptatibus sit aut. Doloremque a dolorum ipsa repudiandae repellat commodi culpa at.', 'https://via.placeholder.com/640x480.png/00ee22?text=autem', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(25, 'Consectetur.', '8940928', '4', '358295595', 66, '1', 'Magni voluptas eligendi consequatur. Recusandae sunt quos id voluptas dignissimos. Voluptatem veritatis minima aperiam et adipisci delectus.', 'https://via.placeholder.com/640x480.png/007700?text=quis', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(26, 'Perferendis.', '7652421', '2', '306363178', 92, '1', 'Assumenda iusto et vel iure sunt. Ratione est est occaecati eos architecto unde earum. Consectetur autem similique nostrum voluptatibus.', 'https://via.placeholder.com/640x480.png/00aa77?text=iusto', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(27, 'Eum natus iure.', '8861372', '1', '253981136', 91, '1', 'Voluptatum architecto non accusamus perspiciatis maxime optio vel excepturi. Sit unde vero quae. Ut doloribus quas reprehenderit quisquam.', 'https://via.placeholder.com/640x480.png/00bbcc?text=ut', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(28, 'Maiores aut et.', '3537926', '5', '515251528', 28, '1', 'Nobis quasi omnis temporibus sunt. Similique illo qui et laudantium mollitia. Est ipsam a dolores libero itaque et.', 'https://via.placeholder.com/640x480.png/005599?text=ipsam', '2021-10-26 01:04:35', '2021-10-27 01:50:57'),
(29, 'Sed in dolorem.', '6110297', '5', '412323143', 97, '1', 'Est quod quia unde quas in similique. Natus asperiores quia incidunt eum quam quos. Nostrum nihil itaque eius optio adipisci necessitatibus assumenda aliquam.', 'https://via.placeholder.com/640x480.png/00ee11?text=suscipit', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(30, 'Totam ut aut qui.', '3498060', '3', '490894396', 75, '1', 'Distinctio deserunt ipsa sint ipsam nobis. Et cupiditate quisquam ipsa maiores perferendis repudiandae temporibus. Aut nihil asperiores deserunt occaecati. Ipsum laudantium aut eum eos dolore aut.', 'https://via.placeholder.com/640x480.png/005522?text=suscipit', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(31, 'Ipsa magnam hic.', '5456401', '4', '237692982', 78, '1', 'Enim aut aspernatur omnis blanditiis vel porro. Est voluptates minus animi asperiores dolores omnis id. Suscipit modi non qui neque.', 'https://via.placeholder.com/640x480.png/00aaaa?text=aut', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(32, 'Ab aliquid officia.', '3955169', '5', '376691963', 13, '1', 'Hic voluptatem nemo eos. Non autem nobis ipsam dolores incidunt sit ipsa assumenda. Omnis sed incidunt suscipit.', 'https://via.placeholder.com/640x480.png/00ddcc?text=est', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(33, 'Delectus voluptates.', '7689817', '1', '200354369', 7, '1', 'Sed dolorum sed aut quo doloribus fuga. In consectetur quas rem itaque non earum tempore voluptatem. Sunt quia ut non nostrum et.', 'https://via.placeholder.com/640x480.png/000022?text=ut', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(34, 'Assumenda et nobis.', '7820907', '1', '289855476', 35, '1', 'Occaecati debitis ut quae qui itaque incidunt a earum. Similique earum animi et. Sed et nesciunt non modi omnis quo. Hic exercitationem debitis nemo maiores.', 'https://via.placeholder.com/640x480.png/0000bb?text=fugit', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(35, 'Veritatis vel ut.', '6017648', '1', '387333899', 53, '1', 'Qui qui ipsa delectus et est. Alias atque temporibus est. Rerum aut ratione rerum aut suscipit in neque. Sed vitae ducimus nisi odio eum. Quo totam cumque temporibus praesentium.', 'https://via.placeholder.com/640x480.png/003355?text=architecto', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(36, 'Dolores impedit at.', '7090075', '1', '214383193', 91, '1', 'Qui commodi quia commodi ad nulla ab velit eligendi. Et ea possimus labore reprehenderit ad qui deserunt. Iusto excepturi architecto blanditiis pariatur iure dolor.', 'https://via.placeholder.com/640x480.png/0033bb?text=non', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(37, 'Dolorum eligendi.', '4948062', '2', '377373157', 51, '1', 'Quaerat mollitia doloribus neque in voluptas cupiditate. Minima qui totam culpa suscipit. Quisquam ex quo impedit. Rerum pariatur et sit ut.', 'https://via.placeholder.com/640x480.png/00aa99?text=eum', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(38, 'Amet iure eveniet.', '5094912', '3', '321082563', 33, '1', 'Voluptate consequatur qui consequatur sunt temporibus nam nobis. Voluptas fugiat quia aut cumque. Numquam itaque adipisci voluptatem ea quisquam nihil dolores.', 'https://via.placeholder.com/640x480.png/0077ee?text=in', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(39, 'Voluptates.', '5620951', '3', '278546452', 35, '1', 'Consequatur id voluptatem laborum at nostrum sit. Atque ad dicta omnis dolorem et asperiores.', 'https://via.placeholder.com/640x480.png/00ee44?text=inventore', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(40, 'Maxime architecto.', '9858636', '3', '214395382', 34, '1', 'Sit accusamus molestiae ipsa fugit necessitatibus et. Vel voluptatem ut perferendis. Facilis asperiores veniam nobis dolor nam exercitationem. Quod ut beatae animi corrupti.', 'https://via.placeholder.com/640x480.png/0066ff?text=rem', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(41, 'Maiores optio optio.', '5581238', '2', '306789549', 10, '1', 'Et omnis numquam et quidem dolorem ea. Ipsum est et ut accusamus est omnis est. Alias tempora quas et mollitia fuga.', 'https://via.placeholder.com/640x480.png/00ccbb?text=quisquam', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(42, 'Itaque ex quibusdam.', '6987745', '3', '514178268', 80, '1', 'Quisquam quia est aut omnis aliquam ratione. Odit quibusdam et ipsum voluptatum incidunt ipsa ipsum dignissimos. Sint veritatis adipisci ullam in.', 'https://via.placeholder.com/640x480.png/007788?text=repellat', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(43, 'Autem id tenetur.', '2836666', '5', '228811204', 86, '1', 'Iusto maxime voluptates blanditiis quos esse architecto. Optio ut vitae minima. Non delectus veritatis molestias quae incidunt. Pariatur tempore at distinctio sit.', 'https://via.placeholder.com/640x480.png/00cccc?text=nobis', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(44, 'Reprehenderit.', '5378517', '2', '285373807', 90, '1', 'Quisquam similique laudantium delectus maiores. Dolor perferendis delectus molestiae qui. Est voluptas consequuntur eaque est optio omnis tenetur officia. Sed a aliquam nihil non consectetur.', 'https://via.placeholder.com/640x480.png/00aaaa?text=hic', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(45, 'Minus voluptas amet.', '9326781', '5', '550869339', 91, '1', 'Adipisci necessitatibus aut voluptas. Excepturi eaque delectus optio sint quod ut porro architecto. Quasi sed id est.', 'https://via.placeholder.com/640x480.png/002244?text=provident', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(46, 'Porro repellendus.', '5560574', '4', '430702497', 63, '1', 'Aut aspernatur laboriosam ut iste. Impedit in recusandae assumenda labore ea nemo.', 'https://via.placeholder.com/640x480.png/002277?text=tenetur', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(47, 'Et earum ut maiores.', '7333966', '4', '462211264', 19, '1', 'Qui quaerat minus et expedita voluptas dolorem cum. Adipisci aut est et dolorum saepe nisi alias. Quam natus assumenda quia fugit doloremque enim.', 'https://via.placeholder.com/640x480.png/00bb44?text=unde', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(48, 'Quo facilis et.', '4996745', '2', '327337208', 84, '1', 'Necessitatibus aut quis dolorem est ipsum. Blanditiis architecto in hic minus. Quia eveniet ut sunt reprehenderit. Beatae dolorem quibusdam maiores est soluta quaerat sapiente.', 'https://via.placeholder.com/640x480.png/00bb77?text=laboriosam', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(49, 'Enim explicabo.', '2409778', '1', '231553791', 88, '1', 'Est explicabo aliquam nisi est aut non. Mollitia ut ut sed. Assumenda consequatur molestiae earum velit. Nihil at occaecati distinctio ut doloremque repudiandae nisi.', 'https://via.placeholder.com/640x480.png/00cc88?text=quia', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(50, 'Numquam nam eveniet.', '4810050', '1', '269438493', 8, '1', 'Culpa at ex non officia dolorem repellat. Illo perferendis tenetur ipsa suscipit. Dignissimos repellat perspiciatis ut expedita ut.', 'https://via.placeholder.com/640x480.png/00ffee?text=aut', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(51, 'Nemo incidunt dicta.', '9531556', '1', '467475617', 20, '1', 'Odio non unde aliquam quia similique. Voluptatem impedit sed perspiciatis. Doloribus et qui cupiditate eum numquam. Iste aliquid nulla perferendis dolores.', 'https://via.placeholder.com/640x480.png/00ccee?text=mollitia', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(52, 'Amet omnis deleniti.', '3943564', '1', '233336422', 44, '1', 'Voluptatem quis corporis veniam dignissimos soluta est dolore. Non earum soluta aut expedita. Ab rerum sint rem mollitia alias. Et minima laudantium sint omnis.', 'https://via.placeholder.com/640x480.png/006688?text=odio', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(53, 'Eos sint beatae.', '2522691', '4', '499325540', 19, '1', 'Et hic neque et aut dolorum aut maxime. Necessitatibus in quis itaque reprehenderit. Et in perferendis qui suscipit reprehenderit blanditiis.', 'https://via.placeholder.com/640x480.png/0055dd?text=debitis', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(54, 'Consequatur iusto.', '7180468', '2', '280798031', 77, '1', 'Sed ipsa quod officiis est eum. Autem quia voluptas assumenda rerum doloremque voluptas. Tempora ut dolor pariatur a. Consequuntur beatae qui voluptate at molestias vero.', 'https://via.placeholder.com/640x480.png/0011aa?text=similique', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(55, 'Nesciunt dolor qui.', '4220362', '5', '461073623', 15, '1', 'Porro voluptatum minus explicabo fuga maiores non qui. Sed hic temporibus eum rerum vel consequatur id eligendi. Numquam facilis ducimus repellendus harum. Esse et inventore qui tempore.', 'https://via.placeholder.com/640x480.png/001144?text=fugiat', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(56, 'In saepe similique.', '2509789', '5', '483064730', 13, '1', 'Vitae nesciunt consectetur aut maiores est. Inventore sed aperiam temporibus corrupti atque dicta. Culpa voluptatem laborum nam qui et nihil repellat.', 'https://via.placeholder.com/640x480.png/00aa55?text=dolores', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(57, 'Sed unde.', '5959617', '3', '247545537', 71, '1', 'Dicta dolores mollitia consequatur ullam omnis odit. Asperiores doloribus repellendus nemo sunt. Pariatur quia itaque eos accusantium necessitatibus. Voluptatem nesciunt voluptate similique commodi.', 'https://via.placeholder.com/640x480.png/0044dd?text=libero', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(58, 'Ipsa nostrum quod.', '3805596', '3', '555533074', 66, '1', 'Velit ut ut quia ut et blanditiis vero. Sit quia esse libero non aut ut. Repudiandae et nisi qui. Eligendi non quae quia et eius est.', 'https://via.placeholder.com/640x480.png/00dd33?text=modi', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(59, 'Officia architecto.', '2357864', '4', '530381664', 2, '1', 'Libero mollitia rerum neque sunt dicta alias. Corporis consequatur explicabo tempore quia magni. Sunt omnis ratione dolores est consectetur voluptate. Ut aut aut sunt ipsam.', 'https://via.placeholder.com/640x480.png/00cc44?text=dolorem', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(60, 'Autem vero rem.', '8754589', '1', '250763519', 92, '1', 'Dignissimos voluptatibus ipsum sit aut deleniti tempora. Dolorem tenetur et voluptate vel vitae. Ipsa consequatur saepe omnis. Maiores qui et aliquid modi voluptas odit qui.', 'https://via.placeholder.com/640x480.png/00aa99?text=cum', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(61, 'Doloremque.', '7616624', '1', '206317835', 13, '1', 'Tempore et eligendi vel facilis odit. Dolor provident iusto enim accusantium. Enim qui itaque quod qui corporis adipisci quia. Commodi et blanditiis non.', 'https://via.placeholder.com/640x480.png/00ffff?text=dolor', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(62, 'Assumenda expedita.', '7643073', '5', '395632900', 19, '1', 'Ad earum occaecati eum suscipit inventore. Aliquid cum delectus ea perspiciatis dicta. Vitae dolor et eligendi qui.', 'https://via.placeholder.com/640x480.png/00ee22?text=aliquam', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(63, 'Hic ipsum eveniet.', '8767200', '2', '461576147', 8, '1', 'Quos nesciunt consectetur beatae doloremque. Repellat quia commodi minima molestias. Officiis a voluptas commodi ut illum.', 'https://via.placeholder.com/640x480.png/00eeaa?text=veritatis', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(64, 'Qui ipsam.', '9313889', '3', '262264730', 47, '1', 'Minima blanditiis quas nesciunt maxime. Ducimus et ratione aut sed. Voluptatibus officiis consequatur in veniam mollitia qui.', 'https://via.placeholder.com/640x480.png/00bbaa?text=voluptas', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(65, 'In atque quisquam.', '6069888', '5', '364240714', 49, '1', 'Assumenda quos aspernatur dolor suscipit dolores blanditiis nostrum magni. Sed aut voluptatem ut numquam perferendis possimus.', 'https://via.placeholder.com/640x480.png/008877?text=perferendis', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(66, 'Delectus enim ipsum.', '2851062', '3', '562469339', 11, '1', 'Nihil id tempora asperiores excepturi qui sit provident. Dolorem ad ea nihil fugit non sit laborum. Pariatur minima dolor molestias quo eius atque aut. Aut sit in aut architecto.', 'https://via.placeholder.com/640x480.png/008811?text=quia', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(67, 'Facilis est quis.', '1753593', '1', '318742171', 55, '1', 'Culpa voluptatem aut et qui. Aliquam aut debitis et optio consequatur omnis. Dolores et sint quia.', 'https://via.placeholder.com/640x480.png/0022aa?text=aut', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(68, 'Magni aut sed.', '3476849', '5', '578937184', 63, '1', 'Rerum adipisci exercitationem necessitatibus. Aperiam iusto perferendis in ut dolore non ipsum.', 'https://via.placeholder.com/640x480.png/00ff55?text=commodi', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(69, 'Delectus alias ut.', '8940969', '2', '476739778', 30, '1', 'Sequi voluptatem praesentium possimus in ipsam. Doloribus aut ducimus est possimus. Itaque expedita impedit quo molestiae earum quis saepe.', 'https://via.placeholder.com/640x480.png/008855?text=sapiente', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(70, 'Beatae libero.', '8153485', '1', '558957911', 4, '1', 'Ipsum ipsam commodi natus accusamus. Facilis consequatur nam nesciunt pariatur. Qui quia in voluptate similique esse veritatis. Qui voluptatem rerum impedit mollitia sunt eaque.', 'https://via.placeholder.com/640x480.png/0077bb?text=aut', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(71, 'Necessitatibus.', '6920889', '4', '494585640', 93, '1', 'Aut est quaerat dolores ut et quibusdam blanditiis. Quia aliquam quis debitis reiciendis. Quisquam ut excepturi voluptatum facere ipsa quisquam enim in.', 'https://via.placeholder.com/640x480.png/003366?text=maiores', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(72, 'Fugit quia non ex.', '8039928', '4', '220829916', 1, '1', 'Culpa earum et provident. Officia quia dolores placeat non. Qui sint perferendis velit id excepturi ducimus. Eum quasi eligendi accusamus sunt.', 'https://via.placeholder.com/640x480.png/00ee77?text=commodi', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(73, 'Voluptatem et.', '8887335', '1', '342104044', 64, '1', 'Est laudantium commodi laudantium corporis in doloremque. Distinctio tenetur qui quidem ea corporis quae voluptas. Mollitia quisquam totam nobis et qui labore.', 'https://via.placeholder.com/640x480.png/00ee33?text=maxime', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(74, 'Sit sunt eligendi a.', '9638810', '5', '456281186', 15, '1', 'Iusto ea sed officia aut minus eaque unde. Aut ipsam corporis ut dignissimos. Dolorum porro qui nulla hic ipsum et porro. Provident error eveniet laboriosam.', 'https://via.placeholder.com/640x480.png/00ccbb?text=adipisci', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(75, 'Voluptates rerum.', '9029989', '2', '465291376', 7, '1', 'Et cum aut incidunt earum. At minima voluptatem rerum neque est. Autem praesentium sint repellat rerum aut nemo.', 'https://via.placeholder.com/640x480.png/00ffcc?text=sit', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(76, 'Vel ipsa minus.', '4393766', '5', '333871103', 17, '1', 'Neque id voluptatibus sed eum culpa nesciunt. Dolorum voluptatem voluptas quo quo. Id sunt pariatur voluptatem.', 'https://via.placeholder.com/640x480.png/00ee00?text=veritatis', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(77, 'Sed sint molestiae.', '1974963', '4', '478582796', 47, '1', 'Minima perferendis tempore beatae ratione. Omnis illum quod cumque. Aliquam ut repellat expedita cumque qui. Sint possimus aspernatur repellendus.', 'https://via.placeholder.com/640x480.png/00eebb?text=accusantium', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(78, 'Quibusdam a atque.', '6174413', '4', '487047221', 20, '1', 'Soluta quis accusamus perferendis magnam. Enim ducimus aperiam ullam nobis nihil. Rerum aliquid blanditiis est. Sed sed reiciendis non dolores rerum odit.', 'https://via.placeholder.com/640x480.png/006699?text=est', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(79, 'Possimus.', '2406497', '5', '418362349', 89, '1', 'Maxime voluptatibus itaque labore rem repellat nulla cum et. Vero quia ut aut. Aspernatur vel amet doloribus est corporis. Qui earum quos numquam unde qui qui tenetur.', 'https://via.placeholder.com/640x480.png/000055?text=totam', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(80, 'Illum voluptas.', '6408095', '1', '490735998', 92, '1', 'Quia aut quasi ullam tempora occaecati recusandae et ut. Doloribus quis optio animi. Atque et in eaque quaerat et. Consequatur sequi sequi minus hic non.', 'https://via.placeholder.com/640x480.png/00ee22?text=quia', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(81, 'Blanditiis ipsa non.', '7078103', '3', '390937815', 84, '1', 'Molestiae illo aut at eius amet. Qui cupiditate dignissimos velit molestiae repellendus voluptatem aut qui. Aperiam velit unde expedita ea repellendus.', 'https://via.placeholder.com/640x480.png/000011?text=saepe', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(82, 'Sit provident qui.', '9106384', '3', '445136890', 37, '1', 'Reprehenderit odio quod sit placeat a. Quibusdam porro quia cum et non. Quas aliquid qui repellat rem est quidem laudantium et. Placeat reprehenderit esse voluptatem delectus similique eos.', 'https://via.placeholder.com/640x480.png/00ff66?text=error', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(83, 'Voluptatem.', '9428775', '1', '258244192', 78, '1', 'Dolor veniam ut et et error eveniet necessitatibus. Voluptatem repellendus veniam dicta architecto commodi. Illum quo possimus et vitae in.', 'https://via.placeholder.com/640x480.png/003344?text=animi', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(84, 'Accusamus occaecati.', '2505648', '1', '505690315', 6, '1', 'Officia tenetur qui blanditiis accusantium non incidunt. Cum quod aliquid dicta fuga et reprehenderit qui. Sunt voluptatibus non minus dolorem. Quis sint assumenda animi.', 'https://via.placeholder.com/640x480.png/001100?text=eaque', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(85, 'Harum laboriosam.', '7641806', '4', '241212846', 16, '1', 'Quam eum distinctio et sed qui odio. Nulla veritatis quia optio voluptatem in blanditiis. Quibusdam vero sit repellat quo.', 'https://via.placeholder.com/640x480.png/00dd33?text=non', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(86, 'Qui optio.', '5896072', '5', '342602883', 55, '1', 'Laborum repudiandae soluta vel ratione. Eos doloremque eum nulla iure ut cupiditate. Beatae quis consequatur nesciunt doloribus est magnam sit.', 'https://via.placeholder.com/640x480.png/004422?text=nihil', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(87, 'Voluptatem dolorem.', '1477230', '2', '227690753', 74, '1', 'Vero quas nam est molestiae quidem saepe. Eum voluptatum veritatis laudantium corporis exercitationem eligendi totam. Velit omnis aut provident quia.', 'https://via.placeholder.com/640x480.png/00ee22?text=adipisci', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(88, 'Ut atque quod rem.', '7130575', '2', '483537790', 57, '1', 'Nisi occaecati debitis consequatur dolorem rem voluptatem voluptate. Nobis non et nulla impedit illo consequuntur. Ut quo debitis impedit aut rem.', 'https://via.placeholder.com/640x480.png/00ffee?text=nisi', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(89, 'Corporis reiciendis.', '4163703', '5', '281579301', 48, '1', 'Nihil ut vel rerum earum laboriosam laborum. Praesentium sit sunt mollitia ipsum ipsam temporibus. Illum facilis aliquid facilis et nisi ab dicta.', 'https://via.placeholder.com/640x480.png/0011ee?text=minus', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(90, 'Nulla deleniti est.', '8994853', '4', '476655020', 19, '1', 'Sequi modi voluptatem reiciendis similique iure vel sed. Quidem et ad reiciendis veritatis ullam. Ullam eos sunt culpa. Dolor corporis omnis praesentium. Mollitia ea debitis quas.', 'https://via.placeholder.com/640x480.png/0055ff?text=natus', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(91, 'Dolor et eius.', '8931479', '4', '431641888', 53, '1', 'Ab optio quia in et nisi vero. Ut iure saepe alias dignissimos. Aut mollitia facere praesentium non. Sunt atque rerum cumque inventore dolorem excepturi aspernatur.', 'https://via.placeholder.com/640x480.png/00ccbb?text=et', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(92, 'Impedit assumenda.', '3498359', '4', '445057870', 59, '1', 'Ea sed reiciendis accusamus praesentium sunt. Aut itaque facilis omnis nemo praesentium perferendis accusantium nulla. Consequatur consequatur fugit corporis sit dolorem.', 'https://via.placeholder.com/640x480.png/002211?text=quam', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(93, 'Recusandae.', '8829259', '4', '234519765', 63, '1', 'Dolorum repellat labore est harum ut aut. Ut molestiae doloribus quibusdam accusantium sunt quod. Perferendis voluptatibus qui laborum suscipit.', 'https://via.placeholder.com/640x480.png/005533?text=incidunt', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(94, 'Fugit quos.', '3282191', '3', '458065798', 49, '1', 'Eligendi quo optio deleniti velit pariatur. Laboriosam harum omnis magnam a in et. Ea omnis dolorum ad aut minima. Veritatis omnis alias eos porro porro nostrum commodi.', 'https://via.placeholder.com/640x480.png/0088aa?text=qui', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(95, 'Totam aut rerum.', '5201144', '5', '263774949', 58, '1', 'Harum nostrum sed sunt quo. Cumque et facilis esse unde adipisci ducimus quam. Soluta corrupti natus sunt ut.', 'https://via.placeholder.com/640x480.png/00ff55?text=occaecati', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(96, 'Animi in aut vel.', '1795495', '5', '388877656', 96, '1', 'Qui quia veritatis sit inventore fugit. Sunt fuga maiores et placeat. Ipsa veritatis veritatis et ad velit sint culpa.', 'https://via.placeholder.com/640x480.png/008811?text=provident', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(97, 'Sit quibusdam est.', '6070310', '3', '293366427', 30, '1', 'Consequuntur possimus qui autem ea repudiandae esse sint omnis. Veniam voluptas veniam sit unde vitae aspernatur voluptas. Delectus reiciendis tempore mollitia necessitatibus.', 'https://via.placeholder.com/640x480.png/00aa88?text=explicabo', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(98, 'Ducimus nostrum.', '2884198', '3', '281437807', 77, '1', 'Alias autem laborum exercitationem repellat voluptatem dolor. A dolorem occaecati pariatur corrupti. Voluptas exercitationem ex repudiandae maxime.', 'https://via.placeholder.com/640x480.png/008822?text=provident', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(99, 'Autem aut commodi.', '9750316', '2', '483667341', 88, '1', 'Id esse et et nisi est a. Praesentium commodi corporis iure similique deleniti nisi. Et labore amet nobis ipsum.', 'https://via.placeholder.com/640x480.png/009944?text=rerum', '2021-10-26 01:04:36', '2021-10-27 01:50:57'),
(100, 'Sed accusantium.', '3784728', '5', '213226167', 5, '1', 'Facilis sit aut reiciendis recusandae. Consequuntur optio tenetur iure molestiae qui saepe. Aliquid asperiores omnis dolorum quam beatae minima hic.', 'https://via.placeholder.com/640x480.png/0066bb?text=error', '2021-10-26 01:04:36', '2021-10-27 01:50:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `timekeepings`
--

CREATE TABLE `timekeepings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `uploads`
--

INSERT INTO `uploads` (`id`, `img_name`, `url`, `created_at`, `updated_at`) VALUES
(1, '1634717560_bg3.jpg', 'uploads/1634717560_bg3.jpg', '2021-10-20 01:12:40', '2021-10-20 01:12:40'),
(2, '1634719521_anhy.png', 'uploads/1634719521_anhy.png', '2021-10-20 01:45:21', '2021-10-20 01:45:21'),
(3, '1634720004_bg-1.jpg', 'uploads/1634720004_bg-1.jpg', '2021-10-20 01:53:24', '2021-10-20 01:53:24'),
(4, '1634720290_bg2.jpg', 'uploads/1634720290_bg2.jpg', '2021-10-20 01:58:10', '2021-10-20 01:58:10'),
(5, '1634804280_bg-1.jpg', 'uploads/1634804280_bg-1.jpg', '2021-10-21 01:18:00', '2021-10-21 01:18:00'),
(6, '1634806093_bg3.jpg', 'uploads/1634806093_bg3.jpg', '2021-10-21 01:48:13', '2021-10-21 01:48:13'),
(39, 'logo_1635428253_blob.png', 'uploads/logo_1635428253_blob.png', '2021-10-28 06:37:33', '2021-10-28 06:37:33'),
(47, 'banner_1635432567_blob.png', 'uploads/banner_1635432567_blob.jpg', '2021-10-28 07:49:27', '2021-10-28 07:49:27'),
(48, 'banner_1635432578_blob.png', 'uploads/banner_1635432578_blob.jpg', '2021-10-28 07:49:38', '2021-10-28 07:49:38'),
(51, 'banner_1635476422_blob.png', 'uploads/banner_1635476422_blob.jpg', '2021-10-28 20:00:22', '2021-10-28 20:00:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `address`, `avatar`, `admin`, `phone`) VALUES
(1, 'Tạ Mạnh Quân', 'taquan@gmail.com', NULL, '$2y$10$PPl.C2.SvwHNNS6pgSjOYeQQiClco2wiZNWumsnTL5GxWQF8gWsbS', NULL, '2021-10-20 01:01:07', '2021-10-20 01:01:07', 'Việt Nam', '', 3, '098xxxxxx'),
(4, 'Nguyễn Linh', 'nguyenlinh@gmail.com', NULL, '$2y$10$E5Q.zcSLLsIVQPLKhKwNxuVeUqoRMTP3068PaoftTotaI/lIcy0ie', NULL, '2021-10-20 01:53:28', '2021-10-20 01:53:28', 'hải Phòng', 'uploads/1634720004_bg-1.jpg', 2, '0982315950'),
(7, 'Vũ linh', 'linh2k@gmail.com', NULL, '$2y$10$oir.Gq8f9jZZJEW492tuJOunatJZw50zN9X7XesHKMRR8YANE92Cm', NULL, '2021-10-21 01:48:15', '2021-10-23 07:35:03', 'Bà Rịa-Vũng tàu', 'uploads/1634806093_bg3.jpg', 1, '0987654653'),
(8, 'Tạ Mạnh Quân', 'taquan2@gmail.com', NULL, '$2y$10$qOcJ7mrsJjwEIKFcMxzJHOYLJ9XMNwX9L0rrznmjhJxntm.3bYpw2', NULL, '2021-10-21 01:54:01', '2021-10-21 01:54:01', 'Việt Nam', 'https://pdp.edu.vn/wp-content/uploads/2021/05/hinh-anh-avatar-de-thuong.jpg', 0, '098xxxxxx');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `timekeepings`
--
ALTER TABLE `timekeepings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `timekeepings`
--
ALTER TABLE `timekeepings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
