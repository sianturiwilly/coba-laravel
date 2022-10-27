-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 04:42 AM
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
(1, 'Web Programming', 'web-programming', '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(2, 'Web Design', 'web-design', '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(3, 'Personal', 'personal', '2022-10-22 08:19:21', '2022-10-22 08:19:21');

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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Minus qui molestiae saepe reprehenderit.', 'asperiores-deserunt-sapiente-rem-omnis-aut', NULL, 'Porro doloribus totam quia est facilis. Voluptate facilis quia molestias voluptatem. Adipisci sed recusandae laboriosam aut ducimus. Sed assumenda iusto nulla.', '<p>Dignissimos delectus velit numquam amet vero earum. Magni officiis et voluptatem cum iure. Quo qui et earum ab possimus nihil.</p><p>Officiis qui nam unde omnis. Dolor ut explicabo ut alias sint ea. Qui qui soluta molestiae dolorem.</p><p>Asperiores asperiores dolor ipsa quam dolorem corrupti reiciendis. Similique culpa voluptates ratione cum expedita accusantium incidunt fugit. Officia et quia sunt optio asperiores blanditiis quis. Neque voluptas hic consequuntur.</p><p>Officia sunt nam id tempora animi aliquam impedit. Ut eligendi non nam qui fugit quis est. Consequatur similique itaque culpa quaerat quo aliquid.</p><p>Nulla nemo inventore quis sit officia. Inventore perspiciatis ratione porro possimus sit porro vero. Officia quae quaerat quaerat quas vel earum tempora.</p><p>Necessitatibus provident aut rerum autem sapiente laborum. Nesciunt necessitatibus nesciunt totam voluptas voluptate facere nam id. Itaque et voluptatem molestiae molestiae eveniet quia consequatur et. Et fuga ut ut molestiae eligendi repellendus.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(2, 1, 1, 'Corporis perspiciatis placeat quasi porro facilis fugiat ut quia.', 'magnam-culpa-eveniet-voluptate-doloremque-facere-dolores-cum', NULL, 'Quaerat qui doloremque sunt maiores non inventore et hic. Deserunt qui necessitatibus cupiditate maiores beatae eum quidem.', '<p>Ut rerum sed est. Voluptas fugiat vel velit molestiae. Reiciendis aut ad quis quod repellendus quisquam. Voluptatem id fuga rem qui ut illum.</p><p>Nobis et esse blanditiis sunt alias ut. Eos magni itaque aut dolorem aspernatur voluptatum. Ut sed aspernatur veniam nisi velit et modi. Eum debitis quisquam vitae nostrum impedit doloremque aut.</p><p>Similique atque doloremque omnis ullam consequuntur. Similique in dolorem nihil vitae ut. Dolores itaque unde earum similique tempora. In placeat aperiam suscipit animi consequatur nihil voluptas.</p><p>Similique perferendis sequi laboriosam adipisci. Sint illo qui repellendus illum aliquid. Voluptatem reprehenderit illum dolores eum soluta ab quidem. Enim voluptatem eius veniam velit perspiciatis.</p><p>Est tenetur adipisci deserunt fugit corrupti facilis incidunt. Beatae quis occaecati libero voluptatibus sunt. Molestiae velit aspernatur fuga quia eius aut praesentium rem. Itaque sint sit at necessitatibus.</p><p>Cum possimus officiis veritatis impedit libero. Qui enim odio aut similique occaecati. Consequatur voluptas ab dolorum quia. Voluptatibus praesentium laborum illo soluta et aut vel.</p><p>Quos dolore ratione minima mollitia. Cupiditate ipsum nam est eos adipisci aut. Quia totam reprehenderit ut sequi veritatis et autem. Odio eum natus ut.</p><p>Voluptas dicta cumque quas aut. Ad iste quas repellendus quos culpa qui. Iste dolor alias libero nobis accusantium.</p><p>Tempora rem sit ea molestiae modi. Occaecati distinctio ipsum ipsum dolore sint sit. Consequatur omnis illo et.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(3, 2, 3, 'Mollitia porro at alias.', 'qui-occaecati-officiis-rem-doloremque-quam-repellat', NULL, 'Reiciendis repellendus itaque maxime. Aperiam voluptas ut molestiae eum repudiandae laudantium eius. A doloribus debitis harum laboriosam sed eveniet reprehenderit.', '<p>Saepe sit debitis nihil ullam sequi. Adipisci illo id ducimus rerum. Placeat sed ducimus vel delectus.</p><p>Consequuntur quia velit dolor fugiat quas ut et. Maiores nobis provident vitae unde inventore ad. In id occaecati et aut adipisci. Modi illum qui illo numquam quas.</p><p>Molestiae eos aut quam quos rerum. Quidem totam voluptatem sit omnis quos pariatur nostrum voluptatem. Deleniti qui maiores nihil placeat iusto.</p><p>Quis aut quia error tenetur quaerat. Voluptas qui facilis quidem perferendis. Quo est in minus quis maxime. A consequatur architecto iusto.</p><p>Qui dolores molestiae mollitia. Iure nisi molestiae maxime nesciunt itaque a libero. Asperiores odit ullam vel eius.</p><p>Voluptatibus et amet voluptatem suscipit ratione distinctio. Eos ducimus quia esse hic. Eligendi nihil rerum exercitationem quia consequatur ea debitis.</p><p>Sequi ducimus et mollitia facilis. Sunt culpa saepe facilis autem. Est aliquid voluptas rerum optio quo sunt.</p><p>Nemo pariatur sequi saepe fugit rem autem recusandae rerum. Quis dicta nobis fugit perferendis assumenda omnis error. Quod et in reprehenderit quis corrupti et possimus ut. Quo occaecati vero temporibus ut quod ut.</p><p>Ut dignissimos qui praesentium repellendus facilis dolore consequuntur saepe. Dignissimos quaerat sit libero eum enim odio.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(4, 1, 2, 'Voluptate porro non provident blanditiis.', 'delectus-quod-aut-et-recusandae-at-et-adipisci', NULL, 'Doloribus unde officiis perferendis officiis quia sequi quas. Expedita ut aspernatur temporibus laborum. Quo rem odio qui et qui accusamus et. Accusamus ut voluptates et reprehenderit esse.', '<p>Consectetur ut et enim autem suscipit illo. Sint aliquam autem corrupti omnis harum repellat nesciunt facilis. Id sit odio tempore distinctio hic.</p><p>In sed pariatur sapiente nihil repellendus eum eius. Iusto dicta tenetur dolores. Minima accusamus cumque tempora tenetur. Et nulla quis voluptatibus nostrum dolorem esse voluptates magni.</p><p>Qui possimus harum itaque nesciunt sed et. Quis assumenda possimus eos ut eveniet. Et qui id provident totam debitis excepturi ipsum.</p><p>Alias quidem maiores ab aut nisi quis et. Porro aut temporibus iste possimus eum. Dolores mollitia libero repellat deleniti voluptas asperiores.</p><p>Dolores delectus voluptas quo laboriosam. Consequatur laboriosam facilis doloremque mollitia voluptatem. Accusamus voluptatum et id natus. Et rem libero sed enim debitis maiores.</p><p>Dolorum sed quidem blanditiis et suscipit. Eligendi nisi expedita qui ducimus quas pariatur. Natus doloribus facere ipsum laboriosam. Veritatis et ea ipsa omnis quisquam.</p><p>Non nemo ex voluptatem aliquam voluptas tempora iure. Et et hic distinctio enim magnam sit. Earum pariatur corporis culpa corporis repudiandae.</p><p>Et quo architecto qui atque cupiditate perspiciatis sit et. Nostrum consectetur eum voluptas. Aperiam iure facere debitis ex qui. Impedit qui quisquam repellendus et mollitia beatae dolore sunt.</p><p>Voluptatibus voluptatem natus ut dolor quo perspiciatis dolorem. Dolorem voluptatem error ullam corporis aperiam tempore quia dolore. Et tenetur sit cupiditate ea ipsam quo cum.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(5, 2, 3, 'Deleniti est sapiente voluptatem et ipsum laborum commodi ipsum.', 'inventore-sunt-similique-omnis-quibusdam', NULL, 'Eum maiores praesentium deserunt culpa excepturi est et. Dolores officiis qui harum vitae non facilis minus ut. Quibusdam sequi omnis saepe temporibus vel hic.', '<p>Excepturi quia ipsa assumenda voluptatibus vel neque enim. Minus inventore quasi voluptatem omnis. Ut ab eos quas sunt illo impedit dolor. Eius deleniti sapiente delectus commodi debitis dolor quia.</p><p>Rerum velit eaque blanditiis ea mollitia voluptatem voluptatem enim. Labore rem nam explicabo sed velit sit voluptatem. Eius sunt est magnam et.</p><p>Rerum quae consequatur eos vel possimus est magni. Totam architecto quia unde quibusdam magnam. Assumenda et corporis quia. Saepe et sunt omnis similique.</p><p>Et cum iure quae ipsam aut labore iste nesciunt. Odit quia repudiandae fugiat corrupti quod quaerat.</p><p>Amet aut in quia laboriosam dolores laudantium fugiat non. Cupiditate libero omnis repudiandae rem odio non minima. Ut non est quae porro. Sed et porro quaerat recusandae ex nostrum ut. Labore optio cumque voluptas nobis cumque aut nesciunt sit.</p><p>Omnis reiciendis explicabo fuga delectus. Id quos laborum blanditiis est. Deleniti porro temporibus et et provident.</p><p>Perferendis vel autem soluta. Qui voluptas eveniet sunt. Corrupti sit officia minus aut quos facere occaecati. Voluptas blanditiis fugit illo est.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(6, 1, 3, 'Vero alias et labore et.', 'molestias-quas-iure-est', NULL, 'Aut aspernatur aut quia ut. Exercitationem voluptas quisquam aut odit deserunt. Voluptas ut fuga aliquam quia dolore.', '<p>Debitis repellat velit inventore perspiciatis. Possimus quia placeat eos aut. Veritatis mollitia rerum debitis enim. Velit et et quo.</p><p>Aliquid autem laborum aperiam eum voluptatem quis veritatis. Aut molestias similique animi similique et et autem. Vel hic deserunt et et voluptatem aut. Iure dolorem itaque ex eligendi.</p><p>Consectetur eum iste occaecati aut quia rerum. Consequatur distinctio porro nobis deleniti cum. Accusantium alias ad voluptas et.</p><p>Vitae perferendis aperiam illo sed. Soluta aspernatur ratione nesciunt. Sint placeat quae quibusdam. Quis modi aut voluptates odit id aperiam tenetur.</p><p>Ut a nostrum tenetur et consequuntur et. Et placeat a adipisci necessitatibus illo unde consequatur. Praesentium velit at rerum et quia. Sed dolorum rerum omnis voluptas.</p><p>Numquam voluptas natus eius quos id iste magnam. Eaque nesciunt rem omnis et consectetur voluptate. Aspernatur at qui odit dicta non nihil et. Ullam laboriosam amet odio et ratione.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(7, 2, 1, 'Molestiae eos sapiente earum sint autem architecto rerum qui.', 'autem-ea-doloribus-et-aspernatur-praesentium', NULL, 'Quia accusantium et et accusamus. Accusamus aut itaque deleniti. Et quasi accusantium odio ut quia.', '<p>Sunt minus a earum explicabo neque iste rerum et. Dolor autem unde odit esse. Recusandae possimus cumque ut quos. Excepturi quas quia minima unde.</p><p>Nisi quibusdam voluptatem autem harum itaque qui autem. Repellendus delectus dignissimos enim sed reprehenderit vel rerum. Hic ipsum quia vel accusantium exercitationem.</p><p>Eos a eaque dignissimos libero cum. Enim et eum praesentium. Molestiae qui optio harum.</p><p>Quae ut velit sit nostrum. Dolores quisquam veritatis quisquam autem. Eaque accusantium est nesciunt et ut eaque aliquam omnis.</p><p>Pariatur omnis vel et impedit itaque voluptate. Rerum excepturi nulla sit ab iure fuga sed tenetur. Quidem ab possimus alias corrupti.</p><p>Non adipisci porro qui necessitatibus voluptatem. Nemo itaque facere beatae autem sunt et maxime in. Beatae natus officia nulla ea. Vel consectetur ipsum inventore ut.</p><p>Et accusantium veniam quia est cum voluptatibus. Quis minima nihil officiis nisi inventore laborum quam labore. Et iure saepe in in vitae.</p><p>Quia et rerum aut eaque qui nihil. Nihil cumque ab ut nemo.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(8, 1, 2, 'Dolores qui harum sit cum dolores sit et.', 'iusto-molestiae-qui-aperiam-necessitatibus', NULL, 'Sed quidem sapiente sequi cumque magni. Consequatur enim quis libero rerum odio repudiandae qui. Qui dolorem iure voluptatem et sed architecto. Eum sequi consequatur et.', '<p>Autem eum quam eligendi aut libero occaecati. Quasi ut dolores adipisci non odio molestias. Dolore sunt et minus optio maiores fugiat. Ab qui et numquam aut.</p><p>Rerum numquam voluptatem voluptatum dolores. Voluptatem dolorem temporibus vel vero. Facilis ea similique sed vitae ipsam blanditiis dolorum. Voluptatem velit autem suscipit nam eius nihil.</p><p>Rem voluptates vero eligendi quibusdam. Rerum molestias repellendus ea eum rerum ut. Aut voluptatem rem neque dolorem aut nihil.</p><p>Sint dicta minus iste at dignissimos qui. Et repudiandae molestiae amet amet cumque non praesentium. Ullam corrupti veritatis reiciendis rerum expedita eligendi ut.</p><p>Molestiae maxime numquam et et tempora. Est dolorum facilis autem quasi sit aliquid nobis. Reiciendis ab ratione debitis.</p><p>Occaecati quidem suscipit provident modi aliquid. Magnam fugiat incidunt reiciendis quae est est earum. Consectetur deserunt voluptatibus quos eos.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(9, 2, 1, 'Alias quibusdam veniam eum.', 'recusandae-nam-aut-minus-reprehenderit-officia-similique', NULL, 'Ut earum architecto illo veritatis. Nisi cupiditate ipsam corporis perspiciatis commodi mollitia repudiandae. Suscipit assumenda veniam qui et unde officiis rerum minima. Ratione quo quasi dolore ex pariatur. Maiores quia reprehenderit inventore officia.', '<p>Dolorem deserunt nemo voluptatem reiciendis exercitationem. Suscipit quia nihil sunt.</p><p>Laudantium ab atque voluptates est possimus. Ut cum eos veritatis et dolorum dicta sed quisquam. Eaque quisquam dolor delectus tempora. Similique quasi mollitia omnis.</p><p>Sapiente qui et quas accusamus expedita qui. Quia qui eveniet ut laborum expedita est. Aperiam praesentium dolore nihil quam quidem incidunt. Est laboriosam et suscipit aut ut ea at.</p><p>Doloribus ut dicta rerum ut et qui a. Deleniti quo quis natus sit at quidem. Veritatis officiis et tenetur molestiae blanditiis. Magnam minus voluptatum quam qui.</p><p>Totam optio maiores a corporis delectus nihil adipisci accusamus. Pariatur sit in eaque consequatur. Excepturi earum quas reprehenderit consequatur.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(10, 1, 2, 'Incidunt laboriosam cum velit.', 'numquam-numquam-omnis-error', NULL, 'Aliquam expedita natus nihil doloremque delectus magnam et aut. Necessitatibus mollitia sapiente necessitatibus culpa corrupti et. Et dolore tempora minima iste voluptas deleniti et. Ad consequatur animi tempora autem culpa laborum.', '<p>Esse accusamus et ut dolor officiis provident illo. Ut magni aut voluptate. Quisquam vitae error tempora blanditiis dolorum quos. Cupiditate sed officiis repellendus dolores aliquam.</p><p>Repudiandae quasi aut illo distinctio est et maiores. Est quia modi omnis est architecto quia. Quibusdam vel facilis reiciendis qui ut molestiae adipisci. Ut quia nobis hic quis ea.</p><p>Laudantium ut ut enim quia aliquid et enim officia. Omnis id incidunt nihil non id id fugit. Explicabo nihil nostrum aliquid sequi dolorum suscipit repellat. Magni aspernatur eos aut.</p><p>Numquam et repellat ab numquam beatae et. Praesentium odio corrupti tempore a nesciunt aut. Et quia qui non laudantium consequatur consequuntur ipsa. Quis non provident ea quaerat impedit similique consequatur.</p><p>Deserunt natus labore delectus impedit corrupti incidunt voluptatem. Quod qui libero ea dolor quia dolorem. Maiores nemo dicta rerum et perferendis numquam. Optio eaque ut esse quo reprehenderit veritatis eum.</p><p>Eum vero accusamus consequatur fuga adipisci est. Dolores est quae accusantium ut. Asperiores praesentium blanditiis unde recusandae id.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(11, 2, 3, 'Facilis repellat id quae ea.', 'et-dolores-neque-minima', NULL, 'Eum et earum occaecati eveniet. Cumque sequi explicabo praesentium nemo. Eos consequatur nulla sunt rerum sed vel delectus consequatur. Provident ut et est quae sed eaque enim.', '<p>Aut id facilis enim reprehenderit earum facere. Sint quia excepturi eveniet adipisci aut voluptatem rerum. Neque est et dolores atque totam. Deleniti et explicabo suscipit laboriosam id.</p><p>Quis qui maxime et sapiente occaecati. Voluptatem quae delectus fugiat dolore. Non qui et magnam ea sint velit et maiores.</p><p>Velit in hic est rerum dolores. Non saepe aut quo dolor dolorem voluptatem placeat qui. Et quaerat eaque ut. Quo omnis officiis voluptatum illum et maxime.</p><p>Natus eum ex ut rerum itaque voluptas necessitatibus. Rerum aperiam at accusamus sapiente doloremque quis consequatur. Sunt voluptas magni ex velit incidunt.</p><p>Dignissimos ipsa nisi fugiat qui alias suscipit. Eveniet enim pariatur voluptatum aperiam ut.</p><p>Voluptas aliquam ea mollitia illum fugit accusamus. Cupiditate inventore et totam repudiandae. Fugit qui blanditiis sed libero incidunt. Quia est voluptas iste quidem.</p><p>Laborum quam inventore quibusdam et assumenda. Excepturi molestiae repellat et aliquam.</p><p>Cupiditate voluptas quis voluptas saepe neque. Eos quos aspernatur magni dolor voluptas harum et aut. Ut fugiat sed perspiciatis qui. Optio velit soluta voluptas cupiditate.</p><p>Quasi sit vel dolorem omnis ad excepturi voluptatem asperiores. Non ullam illum sit quo earum itaque quis. Non minima accusamus harum.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(12, 2, 2, 'Culpa et et.', 'velit-aut-modi-omnis-voluptatem-aliquid-consectetur', NULL, 'Consequatur animi vel ipsa quidem libero aliquam exercitationem omnis. Quasi voluptatum fugiat voluptates. Earum voluptatem quos quas dolore vitae est. Facilis aspernatur in sed impedit autem. Eius soluta eius ab accusantium magni aut.', '<p>Sed eveniet porro sit vero repellat rerum est. Illo consequuntur voluptates vero sunt. Nulla suscipit illo molestias.</p><p>Corrupti est voluptate quia rerum. Molestias et cum ut eaque et alias odit. Asperiores cupiditate nostrum beatae et corrupti doloremque. Aliquid sed fugiat deserunt alias et quia.</p><p>Et animi maiores ut vero rerum placeat voluptas. Ab fuga iusto non porro. Dicta maxime vel quia quia.</p><p>Aut autem nulla molestiae nulla. Velit expedita dolores nobis velit voluptatem rerum. Corrupti sapiente veniam magnam autem eos voluptates.</p><p>Nobis et inventore rem autem odio molestias autem. Repudiandae dolorem impedit recusandae quia ut ut. Quam possimus molestias aspernatur eius.</p><p>Fugit nihil eum unde qui quod modi. Officia est consequatur adipisci excepturi sequi aut. Esse nesciunt veritatis aut ut. Iusto quibusdam qui maxime dolore. Enim et a error molestias.</p><p>Et dicta et ullam dolorum quas magnam in consequatur. In rerum molestiae harum eius iure fuga voluptatem nulla. Autem nihil necessitatibus repudiandae sed nihil maiores dolor.</p><p>Quam cum nobis cupiditate reiciendis aut. Optio quasi quis doloribus excepturi ut est. Delectus alias alias ea commodi.</p><p>Odio nulla omnis adipisci iure. Eaque qui consequatur eum voluptate et. Sunt et eligendi praesentium nihil a qui culpa. Amet provident doloremque dolores ut.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(13, 1, 1, 'Enim tenetur sunt fugiat ut consequuntur placeat in provident.', 'rerum-deleniti-nihil-veritatis', NULL, 'Voluptates porro quia esse sit vel deleniti deserunt. Reiciendis nostrum voluptatum nobis illo voluptatem delectus omnis. Id sed nesciunt autem ut.', '<p>Nihil natus dolorem ratione sed sint minus. Ipsa possimus harum repellat nulla.</p><p>A rem excepturi reiciendis debitis sit. Et tenetur sit ex aspernatur hic aperiam. Atque dolorem ex odit accusantium ipsum tenetur sed.</p><p>Distinctio corporis in voluptatibus est. Ut quis minus placeat qui. Dolor nesciunt et fuga rerum delectus.</p><p>Aliquid qui at provident voluptatum. Similique similique minima rerum explicabo dolor aperiam. Delectus error doloribus dolor eum occaecati molestiae voluptas.</p><p>Magni est animi eligendi ad. Consectetur similique rerum omnis eligendi rerum nostrum. Dolorem et vitae aut cupiditate dolorum qui. Cum atque voluptatem molestiae sed.</p><p>Reiciendis soluta incidunt repudiandae ab amet ab eius. Minus nostrum blanditiis aliquam totam optio atque cupiditate. Enim iusto voluptatem sit libero soluta ad nemo. Unde sint in sint. Libero veniam nulla placeat voluptas aliquid et.</p><p>Quo ea in recusandae accusantium. Impedit possimus aut odit qui adipisci. Fuga et officiis quo voluptatem. Voluptatem et iure et dolores quidem totam reiciendis rerum.</p><p>Omnis beatae quo perferendis accusantium sit expedita dolores. Corporis omnis provident dolorem possimus labore. Nisi quidem facilis ducimus et eveniet temporibus explicabo unde.</p><p>Quia consequatur expedita voluptatem dolore adipisci. Omnis tempore dolorem inventore consequuntur quos voluptatem beatae quae. Sit dolorem ut ipsam quia quia iste.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(14, 2, 3, 'Dolorem cum quo culpa qui incidunt.', 'velit-soluta-earum-facilis-architecto-totam-in', NULL, 'Eum tenetur libero fugiat et. Repudiandae optio odit nobis voluptatem illo. Soluta quis nihil eius.', '<p>Iure sit eum aliquid animi. Ipsam magnam cupiditate modi ratione possimus consequuntur. Sit culpa dolores aut.</p><p>Doloremque quo dolorem est. Ipsa omnis est natus corrupti. Sunt nulla eum fugit dolorem reiciendis. Quod ut labore aspernatur minima ad aut est.</p><p>Amet facere est non. Autem alias voluptatem deserunt aut mollitia aspernatur. Et dolores aut delectus deserunt quas repudiandae. Vero accusamus velit nobis quisquam.</p><p>Dolore autem commodi nostrum voluptas. Ut assumenda cum itaque. Porro consequatur nemo exercitationem eveniet.</p><p>Veniam rem saepe et voluptas. Voluptas culpa in iusto quod. Rem ipsum maxime voluptas. Ex nihil accusantium accusamus quasi qui magnam.</p><p>Iusto itaque quis enim. Quos in sit eos doloremque. Quia rerum hic culpa necessitatibus laborum.</p><p>Quae et libero suscipit enim numquam. Et nihil excepturi maiores et ab qui. Eveniet est et dolor iure voluptatum debitis illo. Officia exercitationem et sed natus incidunt in aliquid. Harum repudiandae nobis eum dolore corrupti atque.</p><p>Soluta cumque commodi quasi possimus. Id distinctio quasi sunt consectetur dicta. Ut earum voluptatem eum.</p><p>Quibusdam nihil autem enim voluptate excepturi. Veritatis iure assumenda rem perspiciatis sequi in. Alias velit itaque necessitatibus fugiat soluta fugit ut rerum.</p><p>Nulla inventore doloremque rerum est dicta iusto repudiandae. Ullam vel molestiae et deleniti. Quod molestiae et corporis. Perspiciatis qui aut et eaque vitae.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(15, 1, 3, 'Reiciendis sed sed est iusto quaerat laudantium natus.', 'voluptatum-suscipit-est-aperiam-sequi', NULL, 'Ut nemo cumque sed est incidunt amet possimus. Labore est nam velit quo. Dolor id enim dolorem quos quaerat accusamus quibusdam. Error inventore quod nam eum. Quis et praesentium autem adipisci blanditiis vel unde non.', '<p>Odit magnam non aliquam est. Voluptas laborum est ipsa et. Modi facilis quaerat sapiente error. Quibusdam qui iste qui reprehenderit.</p><p>Quasi voluptas accusamus rerum perferendis omnis. Vel aperiam sit vel harum veniam. Neque tempore ex sit qui excepturi sed officia enim.</p><p>Recusandae quidem qui saepe suscipit. Tempora quas in minus deserunt reiciendis aliquid quaerat. Deleniti ab aut culpa laborum ut cupiditate assumenda. Dolores sed deleniti in laudantium consequuntur.</p><p>Nesciunt dignissimos quia ea. Quos omnis illum ea praesentium facilis cumque magni.</p><p>Voluptatem eos quo porro est quis et debitis. Id aut sed repellendus blanditiis quam.</p><p>Rerum vel quae dolores dolor reiciendis. Libero qui dignissimos voluptas dolores. Qui nemo ut deleniti eaque sequi consequuntur. Accusamus dolore voluptas omnis ullam ut ipsam.</p><p>Rem doloribus nesciunt reprehenderit dolores. Accusamus fuga nemo accusantium voluptatem. Aliquam repudiandae vero distinctio cum eum. Autem labore repellendus debitis maxime recusandae.</p><p>Ipsam aperiam vel magni. Et ducimus natus consequatur. Quo ea architecto tenetur nesciunt similique accusamus qui. Fuga velit nihil possimus deleniti.</p>', NULL, '2022-10-22 08:19:21', '2022-10-22 08:19:21'),
(16, 1, 3, 'Odio nostrum ea odit odit eius facilis.', 'explicabo-ad-quisquam-minus-quisquam', NULL, 'Mollitia non commodi facere rem unde ratione. Blanditiis et eius optio rerum possimus quia recusandae. Non soluta et quae exercitationem.', '<p>Voluptatem qui aut explicabo. Beatae ullam et explicabo ut ut molestiae. Nesciunt ut ipsum laudantium. Eos et pariatur et.</p><p>Molestiae dolorem aspernatur aliquam sint. Atque et sequi autem voluptatem qui et soluta.</p><p>Animi sint vel qui ullam et. Quidem itaque repudiandae voluptas quisquam accusantium aspernatur quibusdam. Nam iusto itaque aliquid ex est. Recusandae non vel quasi qui dolorum repellendus atque.</p><p>Dolor qui consequatur ut repudiandae. Aliquam nulla quas quia iste quo placeat quam. Pariatur voluptas laudantium et.</p><p>Consequuntur suscipit dolor velit sequi laudantium. Deleniti est blanditiis quos facilis fugiat quis ducimus. In odit voluptatum nesciunt qui sint natus. Praesentium id et error maiores.</p><p>Adipisci nobis facilis quos omnis aliquid occaecati accusantium. Impedit vitae ex corporis voluptates. Repudiandae totam in et aut voluptatem occaecati omnis. Dolores est explicabo quia et saepe blanditiis qui est.</p>', NULL, '2022-10-22 08:19:22', '2022-10-22 08:19:22'),
(17, 1, 2, 'Similique quas dolores quisquam.', 'quibusdam-dolorum-aperiam-aut-consequatur-rem-optio-ad', NULL, 'Perferendis deserunt laboriosam nostrum et magnam placeat unde consectetur. Et ut quae corporis impedit eum. Id et placeat reiciendis magnam. Id laborum itaque laborum quo labore ut hic.', '<p>Et vitae architecto ut nihil et consectetur recusandae. Quibusdam nisi voluptas nobis architecto et voluptates. Delectus illum laborum quas consequuntur corporis nemo. Magnam sunt quia sapiente.</p><p>Nihil omnis quasi praesentium cum atque. Nihil repudiandae ab sunt. Nam magni illum qui qui reiciendis accusamus ea nisi.</p><p>Labore dolores quo illo ea illum iste. Magnam dolorem quidem sit et inventore expedita inventore. Et non accusamus qui omnis dolor eveniet. Perspiciatis id non consequatur.</p><p>A similique iste aut iste consequatur labore non. Et voluptatem amet mollitia quia molestias earum. Eum nisi odio fugit dolor voluptatem id aut.</p><p>Minima voluptas veniam ipsa. Dolorum voluptatum rerum a. Vitae aut iste voluptas illum molestias nam quis sit. Est quis porro ex voluptatibus ab ea deserunt ut. Ex in unde et nemo.</p>', NULL, '2022-10-22 08:19:22', '2022-10-22 08:19:22'),
(18, 2, 1, 'Non quis esse eveniet cum et ipsa.', 'consequatur-a-quia-necessitatibus-quo-explicabo', NULL, 'Ipsam illo fugiat est perferendis. Vero eum et iste nihil atque. Beatae commodi at reprehenderit commodi odio repudiandae. Eos eum quos quis architecto perferendis dignissimos.', '<p>Voluptatibus ipsam fugit quia consequatur ipsam sunt enim. Sit nihil sed consequatur aperiam iure natus voluptas. Sit sapiente neque eos sunt incidunt. Cum autem qui quod velit itaque nobis.</p><p>Quam soluta provident officiis a sint omnis voluptatum rerum. Voluptas voluptas repellat est nulla quia. Aut atque fuga laboriosam minima qui vel iure.</p><p>Ea voluptatem et magni maxime odit. Ullam necessitatibus nobis porro. Veniam dicta nam itaque nihil fuga ut cupiditate architecto.</p><p>Quos dignissimos est ipsam optio. Est velit veniam quia sapiente ut. Fuga sint sit tenetur aliquam neque. Consequatur aspernatur cupiditate nemo deleniti.</p><p>Eius veritatis ut vel blanditiis. Natus quia provident eos cum voluptatem omnis. Consectetur quod facere et debitis reprehenderit ea necessitatibus. Aut quis similique quis nisi in ipsum aut.</p><p>Suscipit ut exercitationem voluptatum corporis fuga. Consequatur tempora voluptas repudiandae. Est ratione temporibus et consequatur doloremque.</p><p>Sunt facilis molestiae labore distinctio. Aut magni dolor exercitationem iure unde eum fugiat. Accusamus in repellat vel. Velit aperiam saepe modi similique.</p>', NULL, '2022-10-22 08:19:22', '2022-10-22 08:19:22'),
(19, 2, 2, 'Autem omnis reprehenderit occaecati.', 'aut-aspernatur-quo-voluptatem-id-tenetur-rerum-aut', NULL, 'Ullam ducimus adipisci officiis veniam sint. Pariatur pariatur dolorem impedit ad sint. Dolor maiores dolores nisi magni. Id sunt ullam et architecto.', '<p>Accusantium illo eum impedit. Velit quos ut provident maiores quisquam officia. Distinctio mollitia deleniti aperiam voluptas sit dolorum laudantium. Sequi expedita atque asperiores delectus tempora magnam.</p><p>Recusandae facilis quibusdam eum et. Enim rerum repellendus porro quae explicabo vero saepe. Libero eum quas natus consequatur facilis vero velit. Dolor cupiditate quisquam delectus earum ad.</p><p>Et eos nisi similique enim commodi corrupti. Sed quisquam rerum praesentium qui placeat dolorem qui. Magni quibusdam dolorem et quam adipisci.</p><p>Eos autem cupiditate vitae quas ea consequuntur nemo. A optio ipsa perferendis laudantium dolore. Repellat iste at facilis vel ipsa rerum. Pariatur cumque sint nobis tempore nostrum consequatur.</p><p>Et saepe commodi quia sint. Modi voluptatum est sit consequuntur illum doloremque dolores. Eum non fuga eum eum fugiat earum et.</p><p>Et non sit doloremque aut delectus. Voluptates non dolor quia itaque. Reiciendis aut porro qui minus beatae. Ea voluptatibus aut fuga dicta quia consequatur saepe.</p><p>Nam repudiandae dolores sunt et assumenda quia et. Et dolor voluptatum quod aspernatur nostrum qui id ab. Qui aut a non unde quasi reprehenderit pariatur. Nobis consequatur deleniti voluptas blanditiis. Enim optio tempore unde ut vitae ut iste quas.</p>', NULL, '2022-10-22 08:19:22', '2022-10-22 08:19:22'),
(20, 2, 1, 'Eius ut iusto ab rem amet unde beatae.', 'aspernatur-deserunt-sunt-libero-est', NULL, 'Fuga sed quo iure molestias vero quia aut. Quia expedita fugiat voluptatem et aliquam necessitatibus architecto est. Repellat placeat dolorem ab est. Facilis error reiciendis necessitatibus sint similique et corrupti. Ut aut repellendus magni deleniti accusantium hic consectetur.', '<p>Eligendi sint ipsa blanditiis qui. Incidunt consequatur consequuntur quisquam est nesciunt.</p><p>Odio velit iusto similique molestias. Eos dolorem sint labore sint odio. Possimus in eius quisquam voluptatem.</p><p>Aut molestiae ut molestiae nulla voluptatem iusto. Officiis adipisci mollitia nemo explicabo. Est et veniam debitis voluptatum debitis.</p><p>Delectus suscipit quis occaecati eligendi eveniet. Veritatis perspiciatis molestiae perferendis at. Et ut qui aliquam enim qui nisi et.</p><p>Quam aut ullam rem eos optio. Sapiente rerum porro sunt. Maxime culpa aliquam est saepe non.</p><p>Blanditiis dolorem sunt consequatur. Et qui ut qui unde tenetur tempora debitis. Saepe velit quos qui quaerat aspernatur. Quisquam optio saepe totam labore nobis. Dolores voluptates autem qui molestias iste.</p><p>Ut non molestias iure dolores est provident non. Sed voluptas sed et quam velit. Velit minus libero optio sed tenetur est.</p>', NULL, '2022-10-22 08:19:22', '2022-10-22 08:19:22');

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
(1, 'Willi Sianturi', 'willisianturi', 'prajudiwilliam10@gmail.com', '$2y$10$42U6JtbAZibyvcAn1dvrr.3M1I3669ead9wj9lhyaX8pThOvisoDy', NULL, NULL, '2022-10-22 08:19:18', '2022-10-22 08:19:18'),
(2, 'Cahyanto Wasita', 'ika.riyanti', 'emin.anggriawan@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-22 08:19:20', '9jzvPKO4CP', '2022-10-22 08:19:20', '2022-10-22 08:19:20'),
(3, 'Rahayu Dian Rahmawati', 'yuliarti.prayitna', 'liman.novitasari@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-22 08:19:20', 'NeKFC26Qmf', '2022-10-22 08:19:20', '2022-10-22 08:19:20'),
(4, 'Galang Dabukke', 'kmangunsong', 'lintang15@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-22 08:19:20', 'InbGR90upa', '2022-10-22 08:19:20', '2022-10-22 08:19:20');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
