-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 01:45 PM
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
(1, 'Web Programming', 'web-programming', '2022-10-18 07:11:45', '2022-10-18 07:11:45'),
(2, 'Web Design', 'web-design', '2022-10-18 07:11:45', '2022-10-18 07:11:45'),
(3, 'Personal', 'personal', '2022-10-18 07:11:45', '2022-10-18 07:11:45');

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
(1, 2, 3, 'Corporis facere autem nulla.', 'quod-esse-dicta-ut-praesentium-consequuntur-nesciunt-ut', 'Praesentium occaecati non ratione necessitatibus dolorum et. Ex vel odit vero aperiam atque praesentium quas sint. Cupiditate consequatur et ut.', '<p>Eos laborum fuga temporibus est et aspernatur. Sunt laboriosam deleniti corrupti ut perferendis qui. Sunt enim rerum at dolore. Quibusdam a accusamus omnis saepe.</p><p>Est et ut occaecati iusto officiis voluptates. Perferendis ut explicabo dolores unde consequatur distinctio aut. Sint alias quos voluptatum ex. Recusandae natus aut consequatur et odio.</p><p>Dolores ad in dolor similique. Dolore itaque ipsa saepe distinctio eum. Rerum omnis cupiditate culpa natus placeat vel numquam culpa. Eum porro et natus aut beatae dolor at.</p><p>Aut ullam quo perferendis praesentium labore quibusdam neque. Sit deserunt voluptate dolores aut qui. Eum pariatur optio est.</p><p>Quibusdam nisi quisquam ut asperiores rerum voluptatem. Sapiente exercitationem quasi quo autem qui consequatur. Eum aut aut quo vero sed delectus facilis libero. Aut ipsa quis enim inventore. Qui recusandae qui unde culpa dolores necessitatibus sed.</p>', NULL, '2022-10-18 07:11:45', '2022-10-18 07:11:45'),
(2, 2, 3, 'Magni eos quos molestiae molestiae similique.', 'iusto-hic-autem-debitis-sit-praesentium', 'Eos facere quod aliquid quis id. Sint modi sit quibusdam repellat natus. Cum molestias ipsum exercitationem rem reiciendis. Officiis ea et facilis laudantium omnis dolore.', '<p>Et quia reprehenderit voluptas perferendis facilis ut ipsam animi. Necessitatibus minima in libero maxime ratione itaque.</p><p>Distinctio distinctio modi molestias et quia. Explicabo in dolores ut deserunt molestiae necessitatibus. Aliquam consequatur voluptas excepturi et iure. Ipsa ut repellendus sint voluptas ullam at reiciendis.</p><p>Laudantium dolores ab assumenda aut eum mollitia molestias. Ea dolor similique laboriosam cumque. Ipsa enim sed et et. Quia ratione esse et labore quidem ratione.</p><p>Est et rerum tempora reprehenderit deserunt itaque. Ducimus magni blanditiis suscipit voluptas sed suscipit dolore. Ut quam doloribus perspiciatis nam quisquam praesentium. Est iure odio quibusdam iusto.</p><p>Nam nam officiis deserunt hic provident laudantium ut. Sed provident ea nam consequatur aspernatur. Harum nulla excepturi odio. Quos id tempora qui laboriosam voluptatibus harum labore.</p><p>Corrupti nihil laborum nesciunt voluptate. Eius in dolorem et sint fugit.</p><p>Fugit aut eum quas. Ratione aut saepe autem modi nobis vitae autem. Perferendis quia id cupiditate quo reiciendis saepe. Consequuntur voluptate sit iusto fugiat ut sunt.</p>', NULL, '2022-10-18 07:11:45', '2022-10-18 07:11:45'),
(3, 2, 2, 'Et animi quia quod.', 'quaerat-laudantium-ad-dolorem-nesciunt-veritatis', 'Dolorem dolores explicabo nisi error voluptatem asperiores. Aut dolorum et dolorem doloribus expedita ratione sapiente. Quia quia dolorem perferendis autem eum quaerat.', '<p>Et saepe rem blanditiis et incidunt consectetur perspiciatis eum. Ipsa repellendus consequatur illo quae quod. Nulla dolorem eligendi minus rerum quaerat aut at. Voluptatem veritatis laboriosam velit voluptas.</p><p>Reiciendis at fuga adipisci fugit. Quisquam vitae non voluptas tempore dolorem totam. Animi et itaque perspiciatis tempora iure sunt amet aut. Non facere natus voluptatem. Voluptas id quo inventore assumenda.</p><p>Voluptatum est voluptate placeat saepe voluptas. Minima tempore enim molestiae sit accusamus culpa. Omnis occaecati aut maiores omnis.</p><p>Harum perferendis similique vitae a assumenda ad fugit. Voluptatem et qui quibusdam. Expedita et eaque id blanditiis quia adipisci aut.</p><p>Laudantium quidem consequatur et quia possimus. Sunt nam dolores voluptatem aliquam.</p><p>Et et cupiditate vitae omnis quia. Et sit quam eos aut et id. Reiciendis ad aut non sit. Voluptatem deserunt occaecati quo debitis natus.</p><p>Ipsa nihil doloribus et officia. Corporis cupiditate consequatur magnam aut autem.</p>', NULL, '2022-10-18 07:11:45', '2022-10-18 07:11:45'),
(4, 1, 3, 'Optio velit deserunt magnam iure voluptatem laboriosam.', 'rem-voluptatem-ut-perspiciatis-autem', 'Error sit odit quia eos aut repellat laborum. Tempora consequatur quibusdam nostrum enim similique aut. Sit similique neque vero maxime qui. Quas quam nihil aliquid sit reiciendis.', '<p>Et tenetur ut rerum non. Sit et provident provident recusandae qui odio. Minima quia occaecati rerum.</p><p>Non impedit sint voluptas deleniti omnis. Soluta in vel distinctio eos ipsum autem. Voluptas accusantium molestiae cupiditate quibusdam maiores aut. Qui et sunt et aliquid.</p><p>Eius et esse harum eveniet. Ea minus sequi consequuntur. Molestiae ut esse ipsum laudantium ipsam rem. Sed molestiae repudiandae nihil.</p><p>Eos non sapiente et in sit. Quia reiciendis cupiditate non saepe sint. Sint qui voluptatem aut dignissimos rerum.</p><p>Dolorem molestias quidem et rerum veritatis et officia dignissimos. Libero consequatur accusantium veniam eum. Eos natus error odit impedit ratione eum velit.</p><p>Dolores quam explicabo doloremque sequi natus quos eius quia. Officia ea exercitationem asperiores. Labore quia placeat impedit sit libero.</p><p>Quam perspiciatis saepe magnam officiis incidunt. Dicta similique asperiores quis iste enim magnam. Aut atque aspernatur quo autem consequatur. Dolores excepturi maxime sapiente nisi adipisci asperiores.</p><p>Qui aperiam minus recusandae porro odio architecto. Facilis velit et distinctio libero.</p><p>Officiis voluptas quidem repudiandae molestiae amet neque enim delectus. Repudiandae aut saepe fugiat quo architecto qui ut et. Debitis sed eaque eveniet optio cupiditate libero vero. Facilis ut facere nihil architecto nemo occaecati aperiam.</p>', NULL, '2022-10-18 07:11:45', '2022-10-18 07:11:45'),
(5, 1, 3, 'Veritatis eaque consequatur aliquam.', 'provident-quia-corporis-maiores-voluptatem-tenetur-rerum-et', 'Et perferendis atque et ad aut. Doloremque facilis facere qui minima.', '<p>Sit ullam fuga at in hic asperiores rerum. Sapiente aut nobis autem autem amet. Omnis suscipit quasi facere sed et.</p><p>Commodi velit non sapiente voluptas voluptatem. Soluta excepturi quaerat eveniet. Nisi illo consectetur cum quaerat eaque dolorem est.</p><p>Fugiat quo qui voluptatem necessitatibus sunt eius cupiditate. Odio in soluta dolores omnis illum itaque molestias.</p><p>Fuga eveniet enim sunt aut dolorum consequatur dolor. Modi consequuntur magnam et vero et. Ut blanditiis deserunt ut. Et ipsam non at alias explicabo et.</p><p>Et sint qui ducimus libero tempora nulla tenetur aut. At veniam quo id perferendis qui consequuntur.</p><p>Sit neque optio illum et sed culpa. Consectetur voluptate qui itaque est. Autem error sed numquam accusamus et culpa quo.</p><p>Eum nesciunt non est tempore quidem. Eaque et et illum cum fuga quaerat. Quisquam tenetur animi et temporibus animi.</p><p>Incidunt perspiciatis facere accusamus impedit voluptas voluptas. Sit necessitatibus et vero quod. A provident numquam reiciendis quasi maiores rem beatae. Debitis mollitia et at ut.</p><p>Et consequatur delectus non molestias illum enim quidem. Velit rem voluptas expedita molestiae cumque odio. Accusamus vel id quisquam iste. Tempore est quibusdam autem dolores laborum sit accusamus. Nostrum voluptates enim dolorum rerum aut.</p><p>Unde quam vel rerum consequatur veniam non. Praesentium voluptatem repellat dolor aperiam.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(6, 1, 3, 'Alias et et ut beatae quam.', 'temporibus-aspernatur-rem-illum-impedit-ea-et-laudantium', 'Et in debitis repudiandae temporibus. Exercitationem sed provident tempore omnis repudiandae. Ipsa non eos asperiores. Sit in temporibus expedita sequi quia.', '<p>Distinctio repudiandae nisi qui voluptatum dolore fugiat corporis architecto. Quia omnis nam deleniti consequatur accusantium corporis possimus. Sint nisi voluptatem sint ipsam similique aut necessitatibus.</p><p>Architecto vel amet magni occaecati explicabo quam laudantium. Sit hic ratione aperiam sequi. Dolores ipsam ab facere vitae iusto aut sit. Eum recusandae amet eum nihil sed pariatur facilis.</p><p>Et nihil culpa similique voluptatem et quis. Quia consequatur vitae perferendis. Explicabo atque adipisci sint placeat tempora et. Qui unde qui quia qui ratione. Provident reprehenderit ut nulla placeat earum dolor et vel.</p><p>Nemo voluptatem error est voluptatem a et. Similique ullam incidunt occaecati et quia eos et reprehenderit. In consectetur et reiciendis voluptates non sint. Possimus optio corrupti est dolorem consequatur vel incidunt ipsum.</p><p>Ullam quia cumque sed aut et et. Aut quae perspiciatis ratione dicta quas. Numquam earum ipsa sit officiis dolorum.</p><p>Officia officia earum voluptatum reiciendis autem ab blanditiis. Quam est cupiditate voluptatum. Est labore voluptatem voluptate quod recusandae et. Eos porro occaecati aut voluptatibus.</p><p>Doloremque sed vitae sed eligendi. Quia blanditiis veniam omnis. Nobis et et sit ut. Ut autem in possimus quo repellendus nemo aut.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(7, 2, 1, 'Aut temporibus dicta sit animi enim et.', 'ut-qui-natus-voluptate', 'Voluptates et laborum perferendis et fugiat nemo dolor. Est alias ea est nam voluptates.', '<p>Quaerat et totam maxime placeat ipsam. Corrupti ut molestias in. Ipsum blanditiis animi beatae et aut. Occaecati deserunt fuga voluptatem qui.</p><p>Enim sit ratione harum libero soluta. Magni minus ea iusto porro non ea qui. Quas nobis laboriosam ut dolor laborum ut.</p><p>Id sit molestiae sed odio. Ipsa nihil aut dignissimos sit. Dignissimos qui voluptas enim modi. Dolor dicta non dignissimos aut incidunt adipisci aliquam. In est et atque nihil unde earum molestiae.</p><p>Assumenda ipsa et temporibus doloremque et eum accusamus qui. Eligendi quia est et nulla et. Cupiditate quis est numquam a hic non labore. Provident praesentium aut dolores totam qui est qui.</p><p>Nostrum beatae qui iusto. Eum debitis voluptates sunt et fuga corrupti. Omnis voluptates rerum quo excepturi. Architecto sint quaerat placeat maxime omnis et eveniet. Ipsum qui velit voluptate accusantium amet praesentium repudiandae.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(8, 1, 1, 'Quis qui nostrum quia nesciunt harum sed.', 'provident-ipsa-et-eligendi-esse-atque-impedit-et', 'Est nulla eius adipisci aut earum. Sit et qui eaque cum quidem qui id. Aut laboriosam doloremque libero quaerat. In veniam quam ex libero iusto consequatur voluptas sunt.', '<p>Omnis eum quis officia nesciunt molestiae necessitatibus nemo. Est atque et libero et commodi ab. Cum possimus laudantium et neque.</p><p>Incidunt cumque corrupti fugit sit doloremque. Praesentium provident sed asperiores rerum quasi fugiat atque mollitia. Aut harum distinctio dicta quasi et. Temporibus aut in veritatis a ullam blanditiis hic. Necessitatibus explicabo et fugiat nihil.</p><p>Quisquam non corrupti magnam dolores qui dicta. Eos aut inventore repudiandae sunt rerum facilis maiores illo. Omnis quia ipsum excepturi illum. Earum odit consectetur id.</p><p>Placeat hic corporis nemo voluptates tempore optio. Velit esse eveniet fugiat. Possimus unde sunt autem at et exercitationem ipsa. In libero aut saepe et neque blanditiis voluptatem error.</p><p>Molestias omnis qui perferendis cum cum. Aut culpa minus impedit quia similique repudiandae eligendi eos. Officiis ut beatae qui perferendis rerum quasi eos maxime.</p><p>Non eum qui laboriosam qui id. Labore doloribus fugiat molestiae similique itaque sit. Voluptas et excepturi nihil dicta.</p><p>Voluptate quia vero dolorem nisi velit officiis voluptatum. Et qui unde cumque labore ea. Doloremque rerum quia sed quisquam nostrum exercitationem. Inventore non ut ut non exercitationem at aspernatur.</p><p>Aliquam sed voluptatem occaecati est dolor quos ullam quis. Cupiditate dolorum fugiat qui consequuntur. Quos rem alias unde minima placeat voluptas.</p><p>Non voluptas quis amet similique. Ipsum ea necessitatibus ipsam corporis omnis magni. Molestiae id recusandae maxime sapiente voluptatum. Quo autem rerum quos corrupti eum provident facilis. Aut aut earum quis aut dolor.</p><p>Dolorum harum magni placeat repellendus. Corporis quidem quo assumenda possimus. Enim nostrum provident corrupti ut est in odit.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(9, 2, 3, 'Qui ut.', 'minima-rem-assumenda-et-eius-nesciunt', 'Nihil nam ea dolorem facilis. Reiciendis esse explicabo veniam atque nihil voluptas. Eos voluptate recusandae ut officia. Distinctio voluptatem dolorum velit tempore delectus non ab.', '<p>Laudantium dolor consectetur quia provident sint. Sunt voluptatem molestias aliquid optio deserunt quos recusandae possimus. Modi aut saepe quis quia libero ullam excepturi sint. Aspernatur voluptatibus aut iste dolores consequatur.</p><p>Eos nobis omnis nisi est. Quia dignissimos nemo eveniet nulla laudantium. Autem minima deleniti et perspiciatis ut fugit. Non velit id optio quasi ea pariatur omnis.</p><p>Quam sequi cupiditate pariatur in est aliquam exercitationem. Voluptatum consequatur quos quibusdam sed. Architecto ex quasi repellendus omnis id. Est unde et ut rerum excepturi dolores animi minus.</p><p>Nihil eum ipsum impedit optio animi soluta. Repellat doloremque consequatur qui facilis.</p><p>Reprehenderit velit aspernatur et quia ipsa facere enim. Magnam est vel quia optio eaque. Est et quia deleniti qui explicabo nisi ut.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(10, 1, 1, 'Ducimus rerum maxime modi porro totam voluptatem non atque.', 'qui-quidem-dolore-voluptates-sit-aut', 'Praesentium assumenda veritatis laboriosam natus ab in. Officia sit perspiciatis qui non sit. Odio laudantium assumenda quia reiciendis ex praesentium animi inventore. Consequuntur cumque omnis sed.', '<p>Soluta nihil impedit et occaecati distinctio. Distinctio consequatur odio et et soluta at qui. Veniam occaecati ab at.</p><p>Ab ut voluptatem ab eligendi voluptatem aperiam repellendus. Voluptatem officia vel eligendi nulla molestias optio sunt. Quidem non quae ipsa tempora neque. Quis occaecati reprehenderit reiciendis id.</p><p>Eveniet quia eveniet dignissimos qui eos. Ratione nesciunt quia aut sequi. Aliquam dignissimos fugiat consectetur ipsum esse et odit optio. Minus possimus rerum itaque id eligendi sapiente dicta.</p><p>Fugiat necessitatibus delectus error quia. Voluptas libero tempora exercitationem ad. Consectetur et illo quod dolor est. Corporis qui ipsum nihil.</p><p>Officiis aut tempore possimus cum sed illum deleniti odit. Dolores magni impedit doloribus non reiciendis.</p><p>Ut praesentium quidem dignissimos cupiditate dolore minus ad maiores. Dolorem id recusandae earum et ducimus occaecati. Adipisci aliquam animi corrupti voluptate et ut facere temporibus.</p><p>Dolore sit quidem illo voluptatem repellendus necessitatibus et. Et voluptates et debitis sit dolores aut omnis expedita. In assumenda voluptatum eos praesentium illum. Nobis cupiditate aut vitae a.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(11, 1, 2, 'Numquam nam in nulla rerum sed temporibus.', 'suscipit-deserunt-rerum-vitae', 'Sed perspiciatis consequuntur unde in sed et et quo. Optio qui numquam dolore placeat tenetur sed dolorem. Suscipit autem sunt omnis maxime omnis ab aut. Ad eum impedit a ducimus.', '<p>Quidem maiores vero nihil ipsa dolores. Molestiae sit numquam at quam dignissimos.</p><p>Ut omnis reiciendis est dignissimos. Id accusantium vitae culpa porro asperiores error et saepe. Atque esse fugit commodi et.</p><p>Voluptate ipsam in molestias ut nobis. Qui blanditiis nostrum eos rerum debitis labore. Voluptatem enim ut fuga in exercitationem dolor. Quis exercitationem veniam officia et atque quo.</p><p>Ut quaerat iusto et numquam pariatur soluta quisquam et. Ipsam id minus natus nam delectus odio cupiditate. Quia maiores aperiam sint nam deserunt ut atque.</p><p>Est mollitia eveniet quia culpa ea laudantium et. Suscipit aliquid beatae rerum saepe ut at id. Ipsa iusto eaque temporibus nihil consequatur atque. Ipsum et dolores accusamus possimus accusantium nisi delectus. Ut ullam non molestias aut sunt quo.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(12, 1, 1, 'Corporis eaque ea.', 'ut-porro-suscipit-et-dicta-aliquam-nam-porro', 'Fugit nihil earum similique quae ex. Nesciunt esse qui officia maxime laborum maxime. Esse sed dolorum sit praesentium. Consequatur magni labore sapiente.', '<p>Explicabo corrupti sequi tempora quidem nihil in. Eum perspiciatis soluta optio debitis reprehenderit aut voluptatum. Ipsum maxime fugit nulla autem aut delectus. Facilis ex ab rem officia quia id et dignissimos.</p><p>Quis asperiores sint non neque consequatur iste fugiat. Consequatur in est est quia hic. Quidem voluptas consequuntur reiciendis sit molestiae quasi omnis labore. Deserunt dolor vel error est.</p><p>Nesciunt vitae ullam numquam quis. Corporis blanditiis suscipit et dolorem. Officia consequatur explicabo sed nulla eum. Aut et qui ut et numquam recusandae qui.</p><p>Ut enim beatae voluptatem et. Consequatur id atque temporibus occaecati alias explicabo. Itaque consequatur ipsam est et est illo ullam. Nisi at beatae voluptas ratione.</p><p>Rerum est soluta officiis et neque. Maiores odio dolores quis minus. Quia magnam quam voluptatum dicta.</p><p>Doloremque quas voluptatum assumenda numquam velit et minus. Nam repellendus voluptatem quo rerum adipisci occaecati minus. Minus minus maiores ut dolor vitae.</p><p>Animi facilis delectus doloremque dolorum magnam reiciendis. Dolorum ut numquam natus porro repellat. Incidunt fugiat quia id ipsam numquam ea.</p><p>Ut quasi explicabo dolore possimus. Pariatur placeat a consectetur et aut earum. Ipsam sed sunt neque dignissimos est.</p><p>Repudiandae molestias dignissimos vel voluptatem. Enim doloribus nemo fuga ea laborum. Quisquam et deserunt nobis quae sit enim earum voluptate.</p><p>Fugiat eos et dolorum neque ab aliquid quia. Ducimus laudantium et hic tenetur aut minus nesciunt. Possimus dolores accusamus qui rem earum.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(13, 1, 2, 'Facilis eos.', 'illo-atque-cumque-hic-in-dicta-blanditiis', 'Possimus eaque nesciunt ullam quaerat voluptatem sint. Laudantium labore eveniet qui harum aliquid quia nemo. Voluptate quidem fuga autem quae. Saepe laboriosam tenetur quia ex quia ex.', '<p>Totam facere sint est minima quo. Temporibus est doloribus nihil consequatur qui vitae. Recusandae eos nesciunt enim autem omnis quo.</p><p>Sint sit iste voluptatem blanditiis dolores. Perspiciatis quidem et recusandae iure. Qui nostrum ullam vel tempora.</p><p>Vero ea ea sit. Rerum consectetur sequi molestiae ea eum assumenda. Magni sit exercitationem error repellat minus nihil.</p><p>Sit labore voluptas quia eos quidem suscipit. Cumque voluptates eius culpa. Voluptates animi at nobis ratione.</p><p>Enim et repellat suscipit aut laborum delectus quod. Et aliquid excepturi qui itaque ea ab. Quo earum aperiam saepe. Incidunt aut delectus repellendus deserunt ut.</p><p>Dolorum reiciendis eos delectus expedita dignissimos. Minima atque quos maxime et enim saepe. Dolores illo et ab sed quia cum eveniet sunt.</p><p>Ut minus occaecati consectetur harum doloremque. Et et quos soluta vel consequatur. Repellat itaque omnis sint aliquam velit similique. Aut repellat et vero voluptatem non voluptatibus.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(14, 2, 1, 'Voluptatum veritatis magni.', 'quam-velit-enim-voluptatem-sunt-nam-sit', 'Deserunt et id animi deserunt. Sint corporis deleniti ut est corrupti id molestiae. Et sunt corporis in itaque. Quisquam voluptatem aliquid impedit nisi quia id.', '<p>Sit velit nemo nihil aut necessitatibus aut odio. Hic nihil fuga eos est reiciendis est. Aliquid totam provident officiis cupiditate facilis deleniti vero.</p><p>Nostrum pariatur dolores est nobis dolorum est quos. Quo quisquam ut voluptates et non nostrum est. Tenetur officiis et ea sit deserunt reprehenderit et.</p><p>Culpa ab et praesentium ex. Saepe facere vel perspiciatis ut voluptas. Ipsa nisi molestiae tenetur fuga suscipit aut temporibus.</p><p>Dolores harum accusantium quia ut et. Voluptatem ea sint aspernatur ex aliquam veniam soluta nostrum. Ipsam nostrum culpa molestiae et. Doloribus voluptatibus earum quae fuga non et.</p><p>Veniam magnam sunt cumque. Qui reiciendis sunt at dolores odio officia. Repellat in repudiandae nemo molestiae nobis vero. Quia deleniti deserunt doloribus sit nobis sapiente ut.</p><p>Id possimus non sit repellendus quia consectetur minus. Ipsa dolor quisquam eum hic. Et velit et quaerat aperiam quos.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(15, 1, 3, 'Iusto et impedit est.', 'voluptatem-ipsam-atque-ullam-recusandae-vitae', 'Inventore laudantium sapiente non asperiores qui ratione molestias ea. Consequuntur voluptates consectetur ut ab debitis dignissimos. Voluptatibus et enim ullam aut velit. Recusandae enim ullam numquam quidem quae modi.', '<p>Aut et sit rerum asperiores quaerat natus aliquam. At doloribus quia fuga ipsa eligendi. Quisquam amet in totam fugit molestiae. At dolorum cupiditate sunt tenetur minus numquam occaecati.</p><p>Velit tenetur quas non sed dolores id. Quae aspernatur earum dolorem voluptates quae fuga quod incidunt. Quo qui facere quidem.</p><p>Eum odio illo excepturi mollitia cum. In aut modi aliquam similique cupiditate fugiat iure. Quos et illum beatae pariatur saepe dolores. Dolores eligendi incidunt amet quas quas qui.</p><p>Temporibus quo dolores aut sint. Aliquam qui atque dolorem vel rerum dolore eos. Dolores vero officia libero reiciendis iure magnam nihil.</p><p>Veniam vero nemo eius. Consequatur aut et officiis accusamus veniam. Voluptatibus quia cumque animi quia qui. Et omnis nihil commodi.</p><p>Dignissimos vel culpa et qui possimus enim. Illum rem nisi et quo voluptatem tempora vel. Et sequi voluptatum quod dolorem aspernatur explicabo distinctio nulla.</p><p>Repellat placeat voluptatibus neque consequuntur non repudiandae. Distinctio harum ut non suscipit in. Ad eos qui vero excepturi fugiat quis architecto. Quam voluptatum aut molestiae perspiciatis et.</p><p>Aliquam inventore sit eius corporis et dolores voluptate. Est sunt et deserunt et. Mollitia repellat numquam voluptatem expedita. Assumenda qui accusantium aperiam rerum aut.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(16, 1, 3, 'Iure quia velit laudantium.', 'molestiae-suscipit-rerum-nam', 'Id pariatur et aspernatur iure corporis eum consectetur autem. Perspiciatis repellendus nihil sit pariatur amet. Non non voluptatem ducimus fuga occaecati deserunt. Dolorem ex dolor voluptatum odio amet. Labore ea est libero dolores ad aut consequatur.', '<p>Voluptatem minima est dicta tempora. Necessitatibus id inventore quas numquam reiciendis vero vel. Et ea repellat quos officia. Hic esse praesentium quo maiores eveniet numquam.</p><p>Et qui assumenda laboriosam. Sapiente labore non et velit consectetur. Qui temporibus ducimus exercitationem aliquid nisi eaque est.</p><p>Doloremque qui sed nam in omnis. Tempore temporibus omnis iure mollitia deleniti voluptate. Consequatur quibusdam alias iure maxime voluptatem nisi non.</p><p>Neque aperiam impedit in illum delectus facilis possimus rerum. Harum corrupti voluptatum et cumque qui explicabo. Rerum voluptatem repellat illum ipsum et aliquid minus. Rerum praesentium odio veritatis ut ut asperiores.</p><p>Voluptatum laudantium accusantium dolorem culpa voluptatem adipisci qui. Possimus vel vero excepturi. Dignissimos non omnis dolore similique consectetur. Dolor tempora qui magnam omnis velit ad repellendus.</p><p>Aperiam excepturi ea ratione perferendis ut. Omnis repellat iste exercitationem tenetur nihil. Mollitia dicta repellat molestias libero. Possimus sapiente itaque rem dolore.</p><p>Illum qui in dolor. Laudantium quae quia consequatur eligendi deserunt id. Minus illum rerum nulla laudantium reprehenderit voluptatum. Molestias odit consequatur dolores.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(17, 2, 3, 'Dolores sequi quidem eligendi dolorum.', 'delectus-est-aut-voluptatem', 'Tenetur perspiciatis eos magnam odio consequatur accusamus dolor. Velit officia aut unde rem exercitationem. Beatae sit consequatur fugiat nisi. Ut maiores aut eum accusamus magnam possimus temporibus.', '<p>A et ut maxime aut aut voluptatem. Laudantium vitae dicta veritatis consectetur id nemo. Tempore sit inventore nisi molestiae corrupti. Error ut quia quaerat molestiae molestiae adipisci ipsam.</p><p>Omnis vitae illum iure dolores et. Fugiat sunt rem iure ea.</p><p>Amet temporibus saepe ipsa maxime iusto voluptates quam. Tempora blanditiis error vel id. Repudiandae nesciunt nihil ut nisi in sed neque explicabo.</p><p>Occaecati non eveniet omnis vel veritatis animi. Accusantium expedita est perferendis incidunt omnis occaecati temporibus. Eos quasi sit quaerat ad quae soluta.</p><p>Tenetur culpa commodi illo animi nemo ullam. Autem quia dolorem sed fugit animi. Quos provident et id numquam blanditiis nihil. Tenetur ratione sunt minima eius sequi nulla quia. Nam rerum sint impedit amet aliquid.</p><p>Quidem excepturi exercitationem voluptas quisquam et. Veniam facere quam error necessitatibus. Aliquam dolor aliquid hic. Blanditiis totam excepturi occaecati minus dolore iure laboriosam.</p><p>Aliquam necessitatibus qui quam rerum. Et omnis molestiae nihil id fugit ullam. Vitae in enim dolor nulla fugit. Et maiores unde sint qui.</p><p>Voluptates quia libero et ducimus corporis voluptas. Provident facilis aperiam voluptate perspiciatis. Ab eum nostrum quia sit quos.</p><p>Ducimus et iure facilis suscipit dolorem ipsa rerum. Dolor tenetur repellendus quae voluptate. Occaecati quis harum dicta fugit et et soluta.</p><p>Tempore qui est illo corporis sed in cum. Sequi quos eveniet a quae perspiciatis. Accusamus atque id minus voluptatem vitae sint est omnis.</p>', NULL, '2022-10-18 07:11:46', '2022-10-18 07:11:46'),
(18, 2, 1, 'Adipisci deleniti.', 'quos-aut-nobis-quis-consequatur-voluptatem', 'Totam dolor enim eum praesentium. Reprehenderit dolores debitis assumenda aliquid est iure. Qui natus est libero ipsum sint. At in culpa asperiores eum debitis placeat.', '<p>Et labore adipisci iure dolor eum sequi quisquam. Dolor et distinctio asperiores dolorem. Asperiores possimus magni vel praesentium facere est. Cumque voluptas iste alias deleniti perferendis asperiores.</p><p>Expedita ea id quae consequatur aut distinctio beatae aliquam. Occaecati fuga impedit omnis quod ullam numquam cupiditate. Blanditiis quia voluptas voluptatem voluptas quo sint omnis.</p><p>Quis ab temporibus rerum et qui vel accusamus. Qui est consequuntur aut ex enim molestiae omnis doloremque. Eum error velit et et eos culpa delectus. Aut rerum tempora mollitia ea.</p><p>Ullam nihil officiis fugiat voluptate qui impedit. Numquam voluptatem rerum debitis dolores ducimus iusto. Quos harum similique dignissimos et voluptatibus. Est odit est suscipit aut omnis possimus magni itaque.</p><p>Est accusamus qui dicta possimus. Commodi sed laudantium aliquid totam sed dignissimos. Autem quidem qui reprehenderit quia necessitatibus et consequuntur quidem. Nesciunt officia tenetur molestiae quo ducimus. Nam quia est nesciunt sit.</p><p>Id architecto sed rerum. Debitis laboriosam quo animi velit. Velit consequatur minima ex aut dolorem reiciendis explicabo.</p><p>Eveniet esse quod repudiandae quaerat. Labore et nulla dolor a reprehenderit repudiandae. Suscipit aut voluptatem sunt rerum.</p><p>Omnis dolores voluptatem laudantium sit et. Perspiciatis nihil culpa et blanditiis ratione. Quia magni culpa occaecati aliquam officia. Rem libero dolores distinctio molestiae.</p>', NULL, '2022-10-18 07:11:47', '2022-10-18 07:11:47'),
(19, 1, 1, 'Accusantium excepturi sed qui dolores eos et rem repellendus amet.', 'veniam-doloribus-velit-velit-sint-est-vitae-quia', 'Sed rerum hic non molestiae explicabo repellendus fugit quia. Cumque repellat neque et. Voluptatem in corporis vitae.', '<p>Nisi odit sit vel quaerat adipisci voluptatum quia ut. Illum ducimus ea tenetur aperiam dolores. Sit in modi ut labore et. Rerum et ut culpa rerum.</p><p>Est dolorem ut quae veniam dicta ipsum quos. Ut aut rerum reiciendis placeat placeat exercitationem. Aspernatur doloribus natus amet. Autem necessitatibus voluptatibus blanditiis libero.</p><p>Laborum corporis fuga laudantium eos numquam blanditiis nisi. Itaque quod id qui. Quis recusandae qui et. Illum exercitationem consequatur dolor voluptas.</p><p>Eos voluptatem consequatur quia magnam nobis maiores similique. Voluptas et veniam cupiditate ad sit. Rerum error quaerat incidunt et quo deserunt.</p><p>Eligendi provident ut molestiae ratione incidunt ipsam. Autem eius voluptatibus occaecati perferendis aut aut sed. Officia voluptatem assumenda veritatis nesciunt aliquam doloremque harum dolores.</p><p>Quam aut laboriosam qui enim. Sit delectus vitae neque ex sapiente officiis. Magnam eligendi rerum consequatur ipsum consectetur quia nihil. Tenetur reiciendis quis sequi fugit nobis ut.</p><p>Corporis non magnam facere quaerat laborum. Dolorem blanditiis qui quibusdam aut officia. Reprehenderit perspiciatis dolor quos mollitia adipisci. Aspernatur perspiciatis quaerat sed porro fuga commodi ut.</p><p>Laboriosam laboriosam facilis amet sint. Dolore enim id ex nam velit. Impedit ut explicabo et officia et reiciendis.</p>', NULL, '2022-10-18 07:11:47', '2022-10-18 07:11:47'),
(20, 2, 1, 'Incidunt quia a provident est adipisci.', 'blanditiis-quam-illo-itaque-ea-rerum-velit-tempore', 'Aspernatur dolor dolores natus nesciunt rerum nulla. Dolorem aliquid asperiores odio doloribus aliquid cumque sed.', '<p>Earum ut voluptates ut quia aspernatur quos. Assumenda commodi sint reiciendis soluta ab beatae. Hic unde id nobis pariatur libero id quo. Eos voluptatibus eligendi et quis labore facere. Id dolorem blanditiis non.</p><p>Ex omnis provident necessitatibus quos necessitatibus magni. Culpa illo quam earum quisquam corrupti. Debitis nihil nobis tenetur architecto. Eius et asperiores qui quia modi.</p><p>Aut quia eos odit voluptatum. Explicabo id voluptas qui voluptas ratione.</p><p>Consectetur quia est ut voluptatem reiciendis aut molestiae. Non illo qui numquam in ut. Dolorem omnis commodi aut cupiditate.</p><p>Dolorem et dolore soluta reprehenderit possimus. Voluptatem esse amet quisquam harum. Velit molestiae ut voluptate quidem animi mollitia. Nulla sed provident velit.</p><p>Mollitia sed enim quasi cupiditate itaque ratione itaque. Consequatur id illo sed qui. Repellendus quia sed quasi nobis id.</p><p>Excepturi qui occaecati impedit quibusdam. Velit corporis odit quis. Omnis itaque rerum et eaque aut accusantium fuga. Aut ut sunt eius omnis et sed.</p>', NULL, '2022-10-18 07:11:47', '2022-10-18 07:11:47');

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
(1, 'Bagya Salahudin', 'hani87', 'husada@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-18 07:11:45', '11YSfa4ey8', '2022-10-18 07:11:45', '2022-10-18 07:11:45'),
(2, 'Maria Mayasari M.Pd', 'dwinarno', 'gsuryatmi@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-18 07:11:45', 'hKVWe5dHue', '2022-10-18 07:11:45', '2022-10-18 07:11:45'),
(3, 'Hendri Gandewa Nainggolan S.Ked', 'mandasari.suci', 'haryanto.balidin@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-18 07:11:45', 'VUmsKvF2GY', '2022-10-18 07:11:45', '2022-10-18 07:11:45');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
