-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 11:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(2, 'Personal', 'personal', '2022-10-17 20:56:33', '2022-10-17 20:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_17_072417_create_posts_table', 1),
(6, '2022_10_17_133954_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Voluptas voluptas neque provident a ut in.', 'minima-mollitia-eveniet-veniam-itaque', 'Et sed est nisi modi magnam nostrum voluptatibus tempora. Voluptas quia aliquam sit ut quisquam.', 'Labore aperiam ullam non animi qui dignissimos esse sed. Ipsum rem tenetur nemo est eligendi asperiores dolor. Nobis est neque error voluptatem. Aliquid sed aut rem. Magnam ut id sit velit corrupti aut maiores neque. Tenetur itaque error quia aut inventore. Adipisci neque et eos.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(2, 2, 2, 'Suscipit tenetur mollitia nostrum.', 'nesciunt-ut-aut-reprehenderit', 'Sed voluptatem quia ea. Perspiciatis nihil quas ratione enim hic. Accusantium alias dolorum est eum voluptas sit. Quos deserunt sint repellendus placeat accusamus tenetur.', 'Eos iusto minima doloremque temporibus dignissimos aut. Et pariatur officia sunt nisi. Sapiente ut inventore eum sit eius. Laudantium amet suscipit at qui est expedita qui. Et quia tempore laborum nihil neque dolor. Illo aut ut dignissimos veniam voluptas. Iste placeat non mollitia suscipit. Quasi consequuntur quidem quidem quisquam rerum repellat.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(3, 2, 2, 'Dolore doloremque aut quia.', 'doloremque-autem-sint-dolore', 'Voluptas ut enim totam saepe et voluptatem. Vitae rerum eum aut alias eveniet culpa. Quod sint ullam error voluptate ut voluptates. Quasi nobis similique eos.', 'Ex veniam non dicta quas. Porro repudiandae porro dolorem. Aliquam vero earum sed rerum ut et consequatur recusandae. Omnis qui et qui assumenda aut dolorum accusantium. Quas sed ex alias quae repellat inventore. Culpa incidunt delectus sed. Quibusdam eos aliquam sequi ducimus consequatur velit recusandae.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(4, 2, 1, 'Vel fugit aliquid consectetur et ad.', 'saepe-quaerat-possimus-omnis-iste-sit-deserunt-id-nobis', 'Autem eius enim veniam et laudantium quas eveniet. Rerum et eum esse quis. Totam quo cupiditate accusantium libero. Amet numquam sint in.', 'Adipisci et aut ut sequi nihil alias quia. Qui excepturi suscipit aut. Provident et voluptas sed et ut architecto voluptatem cum. Natus amet fugit voluptas distinctio. Sunt et aut consequatur dolorem rerum rerum.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(5, 1, 2, 'Maxime officia molestiae error et.', 'at-quia-optio-est-alias-veritatis-placeat-alias', 'Molestiae ad molestiae provident rerum. Qui non temporibus quaerat ducimus. Doloremque ut error cum in aut quae quia. Qui tenetur quasi possimus eveniet.', 'Sit unde quaerat enim et accusamus ea. Tempore voluptatem unde eum eaque. Repellendus libero qui voluptatem aperiam. Cupiditate laboriosam rem assumenda rem aut quia.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(6, 1, 3, 'Expedita sapiente magni unde.', 'aut-maxime-nesciunt-quas-veritatis-nobis', 'Animi sequi omnis ipsum dolores dicta velit quaerat harum. Eos quaerat ipsam officiis dolores. Laudantium praesentium ratione deleniti voluptatem. Autem in est ipsum beatae neque pariatur nostrum quisquam.', 'Nihil aut in rerum iusto dignissimos maiores ea. Veniam fugit voluptatem sunt. Veritatis atque consequatur sed ratione nisi impedit voluptatem. Cum officia sit omnis sed cum sint. Libero maxime ut quas aliquid. Sed ut qui accusamus commodi eum. Enim sunt sit et. Laboriosam hic possimus impedit est aliquid omnis. Non nobis eum eum eveniet totam consequatur dolores. Occaecati dolore aut alias voluptatem sapiente nesciunt sed. Dolor eligendi eveniet id animi reiciendis placeat commodi. Eligendi itaque alias iste vero et aperiam.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(7, 2, 2, 'Aliquid vitae culpa mollitia autem illum velit.', 'aliquid-et-cum-aut-velit-ducimus-ducimus', 'Est est odio velit illo velit. Optio fuga consequuntur minus harum at officia dolor voluptas.', 'Autem sequi eius nihil sed. Et error maxime consectetur non. Aut doloremque aut iusto nesciunt. Excepturi enim autem similique. Accusamus totam neque autem. Natus culpa aliquam repellendus eveniet mollitia at veniam. Aut sunt repellat molestias nihil. Quam deleniti dolores possimus nemo voluptatem et eos. Laboriosam nam quam non architecto voluptatem possimus qui officiis.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(8, 2, 1, 'In hic quia accusantium veniam molestiae fugit sint voluptates consequatur.', 'quaerat-officiis-in-molestiae-qui', 'Laboriosam quia ratione quaerat repellat error ipsam officia odit. Nemo earum labore similique vitae. Quis ducimus accusamus non. Iure voluptas aut odit.', 'Iure porro nostrum distinctio itaque aut ut id. Explicabo alias architecto et quia laboriosam. Sit quis qui eos et. Minus ipsa animi non voluptas repudiandae. Soluta iusto qui dolor consequatur laudantium et. Inventore quos sint aspernatur quasi beatae quam sit omnis. Quia dignissimos totam modi reprehenderit asperiores. Non numquam sequi aspernatur excepturi quasi eveniet. Harum voluptatem qui dolores.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(9, 2, 1, 'Quo quo libero sint consectetur ipsum quos placeat voluptatem.', 'hic-id-aut-ut-est', 'Voluptatem neque ut vel quam pariatur. Blanditiis quibusdam et voluptas culpa. Illo porro reiciendis quis quia nulla voluptatibus. Quo nulla non ad.', 'Tempore saepe id voluptate et placeat. Facere dicta dolor molestiae natus. Animi suscipit inventore aut voluptatem accusamus. Maiores nesciunt facilis praesentium et. Maiores soluta ullam aperiam pariatur. Voluptas molestiae et et culpa numquam ex. Dolores ut aliquam labore nisi. Vitae ipsam aliquam soluta ea suscipit voluptatem quibusdam esse. Harum vel molestias voluptatem et. Non maxime ea id sequi. Et odit iste repudiandae in. Quaerat vel quae quasi molestias quia optio.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(10, 1, 3, 'Ut provident exercitationem.', 'ut-et-nesciunt-ad-quia-itaque-praesentium-dolores', 'Ea sapiente nesciunt est quam et laborum. Aut maiores ullam itaque voluptatem. Placeat labore voluptas libero ut nesciunt.', 'Consequuntur porro nesciunt impedit et consectetur rerum. Quisquam facere distinctio dolor saepe accusamus. Quia aut aut beatae dolor illum et sint. Fugit omnis voluptate non.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(11, 2, 3, 'Exercitationem ullam eligendi ullam ut pariatur non occaecati.', 'qui-reprehenderit-et-voluptas-suscipit', 'Et ipsa inventore voluptas similique quisquam dignissimos. Earum aliquam nam sit asperiores. Voluptatem dolorem aliquam explicabo dolor eligendi a itaque culpa. Praesentium qui minima ab similique quo officiis.', 'Et eveniet laboriosam a est. Minima fuga alias totam et nemo itaque. Non enim animi dolore ducimus dolorem atque. Dolores temporibus corporis itaque fugit vitae nihil eos. Pariatur voluptatem nemo ipsum non. Reiciendis minima veritatis et atque et.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(12, 1, 2, 'Deserunt voluptatum et qui.', 'fugiat-et-quia-reiciendis-dolor-voluptas-quia-libero', 'Harum facere amet molestias in earum. Atque in fuga ut quia. Sunt culpa fuga odit non voluptate et libero.', 'Officia quaerat perferendis fugiat. Odio commodi voluptas autem laborum voluptas. Recusandae officia quos omnis beatae. Fugiat quos et iste doloribus aspernatur ex. Dolor quidem autem eum. Sed unde eius sed nemo laudantium provident aut. Saepe est ut natus sapiente aut fuga.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(13, 2, 1, 'Dolor placeat praesentium velit laudantium autem.', 'deleniti-et-temporibus-numquam-animi-repellat-possimus-omnis', 'Ut quis sequi est quia omnis necessitatibus est. Rem perspiciatis recusandae qui adipisci. Totam consequatur soluta sed dolor accusantium est. Aliquam exercitationem repudiandae tenetur est velit aut.', 'Maxime iusto aut iste. Et fugiat consequuntur sequi. Iste sapiente officia aut tempore possimus. Voluptate ut alias ex. Aliquid nisi qui nobis consequuntur ipsum. Non fugit odit consequuntur distinctio quo non impedit. Possimus ex ad numquam dolorem corporis necessitatibus est.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(14, 2, 1, 'Iste aut enim rerum aliquam.', 'et-explicabo-quibusdam-quos-nobis-id-accusantium', 'Est omnis est qui reprehenderit nam illum suscipit. Consequuntur velit et sint fugit voluptatum. Quibusdam quibusdam repellendus autem at. Explicabo quisquam saepe sed aliquam sed sed corporis.', 'Aut nostrum explicabo et est error. Consequatur praesentium ullam iusto aut. Voluptas est architecto omnis dolores. Qui ea omnis molestiae occaecati optio dolores odit. Recusandae consequatur magnam laudantium consequuntur voluptas assumenda quia. Quia sit rerum laborum culpa cupiditate adipisci eum qui. Dolor praesentium eveniet qui qui enim repellendus sint aut. Sequi dolores accusamus eum vitae explicabo. Commodi aspernatur aut non. Quisquam suscipit dolor nesciunt dolor dolor quis dolorem rerum.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(15, 2, 1, 'Porro vero nam laudantium iure dignissimos aspernatur est in maiores asperiores.', 'cum-aut-accusamus-recusandae-non-placeat-est-quisquam-sunt', 'Nihil ducimus et ipsa vel fugiat assumenda et expedita. Nobis quasi delectus distinctio pariatur voluptates. Rerum recusandae sit quis dignissimos dolores itaque ex non.', 'Pariatur voluptas laudantium vel. Ipsum corrupti ab pariatur sapiente. Reiciendis earum porro et tempora molestias sit rerum. Quia dolor asperiores inventore recusandae sapiente. Deserunt et quisquam odit ullam voluptatum. Ea minus minus et ut consequatur sint ad. Explicabo architecto sequi illo sed minima quidem esse. Consequatur tenetur nemo hic ut quis atque qui.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(16, 2, 2, 'Odio est nemo neque et sit iste exercitationem.', 'est-non-in-itaque-ipsa', 'Voluptatem vero molestiae natus saepe exercitationem deserunt. Quo provident libero dolor temporibus voluptatem.', 'Similique qui repellendus numquam quaerat aperiam nam atque exercitationem. Velit aut laudantium repellendus omnis magni incidunt explicabo. Sint omnis doloribus aut fuga. Ab libero est fugiat quasi. Error reprehenderit et magni est hic impedit. Non porro qui minima modi qui. Ut quia consequatur est culpa eum. Doloribus fugit repudiandae quis non. Sed voluptate quos rerum sequi eaque praesentium quos. Sunt nihil est sunt est voluptas facilis ut.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(17, 2, 3, 'Et adipisci placeat commodi totam.', 'qui-aut-sequi-ea-quo-aliquid', 'Dolores ex sequi modi sequi reprehenderit. Natus ut enim sunt quibusdam qui. Ullam ipsam numquam reprehenderit magnam inventore eius earum. Omnis aut et a qui.', 'Iusto dolores qui tempora doloremque illo. Aut eum nam voluptatem velit maxime sunt. Sapiente eius voluptatem temporibus enim. Ea dolorem nesciunt autem id. Et ea praesentium alias provident unde. Molestiae in voluptate praesentium voluptatem sint. Optio cum culpa blanditiis labore ducimus reprehenderit nostrum. Eius placeat culpa excepturi quisquam voluptatem et fuga. Non in ea incidunt repudiandae ipsam dolores asperiores.', NULL, '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(18, 1, 2, 'Officia ea.', 'ea-modi-minus-odit-voluptatem-aut', 'Ea mollitia sint qui nesciunt quae voluptatem similique blanditiis. Voluptatum eveniet quidem reprehenderit amet ut. Nostrum ea in quam vel numquam omnis.', 'Non vel ut est libero sed. Voluptatibus asperiores est aliquam incidunt expedita. Aspernatur perferendis quasi quod tempore rerum. Eius id temporibus fugit quia. Corrupti eveniet mollitia qui voluptas sapiente et quod totam. Iste sunt harum aut optio laborum odit fugit. Tempore accusantium animi quae ea.', NULL, '2022-10-17 20:56:34', '2022-10-17 20:56:34'),
(19, 1, 3, 'Voluptatem saepe numquam qui consequatur quis rerum.', 'vitae-ullam-ipsa-accusamus-pariatur-ut-dolor', 'Sunt ut et iste impedit animi mollitia nesciunt consequuntur. Voluptas suscipit consequuntur corrupti recusandae. Culpa sit provident et dolores.', 'Perferendis pariatur dolor consequatur consequatur. Impedit amet tenetur esse. Omnis maxime et quis. Ut architecto atque iusto. Accusantium reiciendis neque aut numquam saepe. Nam consequuntur necessitatibus quis et. Impedit qui suscipit aut accusantium officia possimus eaque.', NULL, '2022-10-17 20:56:34', '2022-10-17 20:56:34'),
(20, 2, 3, 'Doloribus magnam nulla accusamus similique non soluta veritatis laboriosam et.', 'ad-quae-enim-reprehenderit-ut-id', 'Iste velit repellat rem. Quis eveniet modi molestiae occaecati quis recusandae ut. Perferendis aspernatur qui unde optio et. Voluptatem aut assumenda cupiditate hic voluptatem eveniet quos distinctio.', 'Ut hic vel culpa qui vero. Mollitia tempore omnis modi perferendis maiores. Reprehenderit ut eos error ut. Et nisi esse et. Dolores ex esse impedit laudantium. Magnam necessitatibus ab dolores rerum fugiat quo. Dignissimos dolor commodi deleniti quasi quis optio libero. Quibusdam assumenda repellendus aut in alias.', NULL, '2022-10-17 20:56:34', '2022-10-17 20:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mutia Maryati S.Pt', 'saputra.ellis', 'mrahmawati@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-17 20:56:33', 'BES2b3hcvJ', '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(2, 'Eko Firmansyah', 'sakura16', 'pfarida@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-17 20:56:33', 'Rlx5eLW056', '2022-10-17 20:56:33', '2022-10-17 20:56:33'),
(3, 'Uchita Usamah S.Farm', 'farhunnisa.pertiwi', 'zpangestu@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-17 20:56:33', 'nwRwqWIUJG', '2022-10-17 20:56:33', '2022-10-17 20:56:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
