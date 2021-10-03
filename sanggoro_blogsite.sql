/*
 Navicat Premium Data Transfer

 Source Server         : Mysql-localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : sanggoro_blogsite

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 28/09/2021 00:58:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Programming', 'Programming', '#4ca5d0', '2021-02-24 08:33:27', '2021-02-24 08:33:27');
INSERT INTO `categories` VALUES (2, 'Penetration tester', 'Penetration-tester', '#e82c0c', '2021-02-24 08:33:27', '2021-02-24 08:33:27');
INSERT INTO `categories` VALUES (3, 'DevSecOps', 'Development-Security-Operataions', '#6ca338', '2021-02-24 08:33:27', '2021-02-24 08:33:27');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for form_contact
-- ----------------------------
DROP TABLE IF EXISTS `form_contact`;
CREATE TABLE `form_contact`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (6, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (7, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (9, '2021_02_23_143342_create_post_table', 1);
INSERT INTO `migrations` VALUES (10, '2021_02_24_034214_create_categories_table', 1);
INSERT INTO `migrations` VALUES (11, '2021_02_24_095712_create_tags_table', 2);
INSERT INTO `migrations` VALUES (12, '2021_02_24_100152_create_taggables_table', 2);
INSERT INTO `migrations` VALUES (13, '2021_05_16_222904_create_form_contact_table', 3);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_year` year NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 1, 'Membuat Syntax Highlighter Pada Website', 'membuat-syntax-highlighter-pada-website', '2021/03/membuat-syntax-highlighter-pada-website', '<p><b>Sanggoro</b> - <i>Syntax Highlighter</i> adalah sebuah fitur yang biasa digunakan oleh developer/coder untuk mempermudah dalam penulisan sebuah kode. Karena fitur <i>syntax highlighter</i> ini akan memberikan warna yang bebeda-beda pada setiap kode yang bersifat <i>function</i>, <i>class</i>, <i>variabel</i> dan lain lain. Jika, kalian seorang developer pasti tidak asing lagi akan fitur ini.</p>\r\n            <p>Karena banyak kemudahan yang didapatkan dari fitur ini, sekarang kita dapat menggunakan fitur <i>syntax highlighter</i> pada website atau blog kita sendiri. Salah satunya dengan menggunakan <a href=\'https://highlightjs.org/\' alt=\"highligh.js link download\" target=\"_blank\" rel=\"nofollow\">highlight.js</a>.</p>\r\n            <p>Dalam pembuatan website ini pun saya juga mencoba menggunakan <a href=\'https://highlightjs.org/\' alt=\"highligh.js link download\" target=\"_blank\" rel=\"nofollow\">highlight.js</a>. Namun, karena pertimbagan pagespeed, saya memutuskan untuk menggunakan <i>Syntax Highlighter</i> online saja.</br/>Jika ingin mencobanya bisa mengunjungi link <a href=\"http://hilite.me/\" alt=\"Syntax Highlighter Online\" rel=\"nofollow\">http://hilite.me/</a>, pada website tersebut kita hanya perlu untuk pengcopy pastekan kodingan kita kedalam form pada website tersebut dan <i>Syntax Highlighter</i> akan digenerate secara otomatis, seperti contoh dibawah ini:</p><div style=\"background: #272822; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;\"><table><tr><td><pre style=\"margin: 0; line-height: 125%;color:#ccc\"> 1\r\n 2\r\n 3\r\n 4\r\n 5\r\n 6\r\n 7\r\n 8\r\n 9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\n17\r\n18\r\n19\r\n20\r\n21\r\n22\r\n23\r\n24\r\n25\r\n26\r\n27\r\n28\r\n29\r\n30\r\n31\r\n32\r\n33</pre></td><td><pre style=\"margin: 0; line-height: 125%\">    <span style=\"color: #f92672\">from</span> <span style=\"color: #f8f8f2\">datetime</span> <span style=\"color: #f92672\">import</span> <span style=\"color: #f8f8f2\">datetime</span>\r\n    <span style=\"color: #f92672\">import</span> <span style=\"color: #f8f8f2\">xlrd</span><span style=\"color: #f92672\">,</span> <span style=\"color: #f8f8f2\">re</span>\r\n    <span style=\"color: #f92672\">import</span> <span style=\"color: #f8f8f2\">mysql.connector</span>\r\n     \r\n    <span style=\"color: #66d9ef\">def</span> <span style=\"color: #a6e22e\">dms2dd</span><span style=\"color: #f8f8f2\">(degrees,</span> <span style=\"color: #f8f8f2\">minutes,</span> <span style=\"color: #f8f8f2\">seconds,</span> <span style=\"color: #f8f8f2\">direction):</span>\r\n        <span style=\"color: #f8f8f2\">dd</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">float(degrees)</span> <span style=\"color: #f92672\">+</span> <span style=\"color: #f8f8f2\">float(minutes)</span><span style=\"color: #f92672\">/</span><span style=\"color: #ae81ff\">60</span> <span style=\"color: #f92672\">+</span> <span style=\"color: #f8f8f2\">float(seconds)</span><span style=\"color: #f92672\">/</span><span style=\"color: #f8f8f2\">(</span><span style=\"color: #ae81ff\">60</span><span style=\"color: #f92672\">*</span><span style=\"color: #ae81ff\">60</span><span style=\"color: #f8f8f2\">)</span>\r\n        <span style=\"color: #66d9ef\">if</span> <span style=\"color: #f8f8f2\">direction</span> <span style=\"color: #f92672\">==</span> <span style=\"color: #e6db74\">&#39;BB&#39;</span> <span style=\"color: #f92672\">or</span> <span style=\"color: #f8f8f2\">direction</span> <span style=\"color: #f92672\">==</span> <span style=\"color: #e6db74\">&#39;LS&#39;</span><span style=\"color: #f8f8f2\">:</span>     \r\n            <span style=\"color: #f8f8f2\">dd</span> <span style=\"color: #f92672\">*=</span> <span style=\"color: #f92672\">-</span><span style=\"color: #ae81ff\">1</span>\r\n        <span style=\"color: #66d9ef\">return</span> <span style=\"color: #f8f8f2\">dd</span>\r\n     \r\n    <span style=\"color: #66d9ef\">def</span> <span style=\"color: #a6e22e\">dd2dms</span><span style=\"color: #f8f8f2\">(deg):</span>\r\n        <span style=\"color: #f8f8f2\">d</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">int(deg)</span>\r\n        <span style=\"color: #f8f8f2\">md</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">abs(deg</span> <span style=\"color: #f92672\">-</span> <span style=\"color: #f8f8f2\">d)</span> <span style=\"color: #f92672\">*</span> <span style=\"color: #ae81ff\">60</span>\r\n        <span style=\"color: #f8f8f2\">m</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">int(md)</span>\r\n        <span style=\"color: #f8f8f2\">sd</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">(md</span> <span style=\"color: #f92672\">-</span> <span style=\"color: #f8f8f2\">m)</span> <span style=\"color: #f92672\">*</span> <span style=\"color: #ae81ff\">60</span>\r\n        <span style=\"color: #66d9ef\">return</span> <span style=\"color: #f8f8f2\">[d,</span> <span style=\"color: #f8f8f2\">m,</span> <span style=\"color: #f8f8f2\">sd]</span>\r\n     \r\n    <span style=\"color: #66d9ef\">def</span> <span style=\"color: #a6e22e\">parse_dms</span><span style=\"color: #f8f8f2\">(dms):</span>\r\n        <span style=\"color: #f8f8f2\">dms</span>   <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">dms</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">strip()</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">replace(</span><span style=\"color: #e6db74\">&quot;,&quot;</span><span style=\"color: #f8f8f2\">,</span><span style=\"color: #e6db74\">&quot;.&quot;</span><span style=\"color: #f8f8f2\">)</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">replace(</span><span style=\"color: #e6db74\">&quot;-&quot;</span><span style=\"color: #f8f8f2\">,</span><span style=\"color: #e6db74\">&quot;&quot;</span><span style=\"color: #f8f8f2\">)</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">replace(</span><span style=\"color: #e6db74\">&quot;’&quot;</span><span style=\"color: #f8f8f2\">,</span><span style=\"color: #e6db74\">&quot;&#39;&quot;</span><span style=\"color: #f8f8f2\">)</span>\r\n        <span style=\"color: #f8f8f2\">parts</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">re</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">split(</span><span style=\"color: #e6db74\">&#39;[°º⁰˚</span><span style=\"color: #ae81ff\">&#39;</span><span style=\"color: #e6db74\">&quot;]+&#39;</span><span style=\"color: #f8f8f2\">,</span> <span style=\"color: #f8f8f2\">dms)</span> \r\n        <span style=\"color: #f8f8f2\">parts[</span><span style=\"color: #ae81ff\">3</span><span style=\"color: #f8f8f2\">]</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">parts[</span><span style=\"color: #ae81ff\">3</span><span style=\"color: #f8f8f2\">]</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">strip()</span>\r\n        <span style=\"color: #75715e\">#print(parts)</span>\r\n        <span style=\"color: #f8f8f2\">lat</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">dms2dd(parts[</span><span style=\"color: #ae81ff\">0</span><span style=\"color: #f8f8f2\">],</span> <span style=\"color: #f8f8f2\">parts[</span><span style=\"color: #ae81ff\">1</span><span style=\"color: #f8f8f2\">],</span> <span style=\"color: #f8f8f2\">parts[</span><span style=\"color: #ae81ff\">2</span><span style=\"color: #f8f8f2\">],</span> <span style=\"color: #f8f8f2\">parts[</span><span style=\"color: #ae81ff\">3</span><span style=\"color: #f8f8f2\">])</span>\r\n        <span style=\"color: #66d9ef\">return</span> <span style=\"color: #f8f8f2\">lat</span>\r\n     \r\n    <span style=\"color: #66d9ef\">def</span> <span style=\"color: #a6e22e\">floatHourToTime</span><span style=\"color: #f8f8f2\">(fh):</span>\r\n        <span style=\"color: #f8f8f2\">h,</span> <span style=\"color: #f8f8f2\">r</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">divmod(fh,</span> <span style=\"color: #ae81ff\">1</span><span style=\"color: #f8f8f2\">)</span>\r\n        <span style=\"color: #f8f8f2\">m,</span> <span style=\"color: #f8f8f2\">r</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">divmod(r</span><span style=\"color: #f92672\">*</span><span style=\"color: #ae81ff\">60</span><span style=\"color: #f8f8f2\">,</span> <span style=\"color: #ae81ff\">1</span><span style=\"color: #f8f8f2\">)</span>\r\n        <span style=\"color: #66d9ef\">return</span> <span style=\"color: #f8f8f2\">(</span>\r\n            <span style=\"color: #f8f8f2\">int(h),</span>\r\n            <span style=\"color: #f8f8f2\">int(m),</span>\r\n            <span style=\"color: #f8f8f2\">int(r</span><span style=\"color: #f92672\">*</span><span style=\"color: #ae81ff\">60</span><span style=\"color: #f8f8f2\">),</span>\r\n        <span style=\"color: #f8f8f2\">)</span>\r\n</pre></td></tr></table></div>', 'sanggoro - Syntax highlighter adalah sebuah fitur yang bisa kita manfaatkan untuk mempermudah dalam penulisan sebuah kode, dikarena fitur ini akan memberikan warna yang berbeda-beda pada sebuah kode function, class, variabel dan lain sebaginya.', 'Syntax Highlighter, Syntax Highlighter Online, Membuat sysntax Highlighter', 'Y', 2021, '2021-03-04 16:39:39', '2021-03-04 16:39:39');
INSERT INTO `posts` VALUES (2, 1, 'Lorem Ipsum', 'lorem-ipsum', '2021/05/lorem-ipsum', '<h2>Sample Lorem Ipsum Generator<br></h2><h2>1. Paragraph one<br></h2><p><b>Lorem ipsum</b> dolor sit amet, consectetur adipiscing elit. Sed in luctus \r\ntellus. Praesent tempus neque vel ante venenatis efficitur. Nunc mauris \r\nturpis, condimentum sed augue et, maximus accumsan est. Quisque eu elit \r\nauctor, fermentum sapien non, auctor neque. Donec id ex libero. Donec et\r\n dolor aliquet, sollicitudin justo ac, dapibus lorem. Mauris luctus \r\nbibendum maximus. Proin imperdiet luctus magna vitae fermentum. Vivamus \r\nmi ligula, congue laoreet augue sit amet, lobortis posuere dolor. \r\nQuisque quis dolor et libero ultrices scelerisque nec a mi. Integer vel \r\nsemper lacus, sed pretium erat. Fusce cursus sed mauris a iaculis. Sed a\r\n nunc arcu. Proin malesuada nibh fringilla dictum vestibulum. Aenean \r\ntincidunt metus urna, et luctus est viverra id. Donec egestas pharetra \r\npurus eget eleifend.\r\n</p><div><br><h3>2. Paragraph Two<br></h3><p>Vestibulum egestas nibh commodo urna rhoncus, a consectetur eros \r\neuismod. Suspendisse orci lectus, consectetur in neque a, mollis aliquet\r\n justo. Ut magna mauris, sodales non urna sed, interdum bibendum ipsum. \r\nUt semper nisl bibendum, cursus mi eu, finibus mauris. Curabitur egestas\r\n elementum lacinia. Nulla sit amet faucibus dolor, sed viverra lacus. \r\nVestibulum vitae vulputate nisi. Pellentesque consectetur risus euismod \r\nfelis pretium consequat. Interdum et malesuada fames ac ante ipsum \r\nprimis in faucibus. Fusce arcu mauris, consequat ut eleifend at, commodo\r\n et mi.\r\n</p><p><br></p><h3>3. Paragraph Three</h3><p>Praesent egestas nibh hendrerit dolor ullamcorper rutrum ut ut libero. \r\nEtiam et elit et ligula placerat vestibulum. Donec ipsum mi, lacinia eu \r\nest id, molestie luctus nibh. Morbi faucibus egestas quam, ut \r\npellentesque felis ultrices eu. Duis eros elit, feugiat at vestibulum \r\nvitae, pellentesque id ligula. Sed eget lorem non sapien eleifend \r\nullamcorper. Aliquam scelerisque mauris fringilla fringilla auctor. Nunc\r\n a purus ac orci placerat congue. Proin vulputate porttitor ex, eget \r\ndignissim tortor elementum vitae. Praesent purus elit, malesuada ut enim\r\n id, commodo viverra mauris. Proin sed sem odio. Integer auctor \r\nhendrerit turpis a fermentum. Nulla tincidunt, tellus et imperdiet \r\nplacerat, tellus leo commodo mi, eget vulputate eros tortor faucibus \r\nmagna.</p><p><br></p><h3>4. Paragraph Four</h3><p>Sed venenatis convallis sapien vel laoreet. Class aptent taciti sociosqu\r\n ad litora torquent per conubia nostra, per inceptos himenaeos. Cras \r\nullamcorper ornare gravida. Etiam ac arcu ac mauris bibendum tristique \r\nac non dolor. Vestibulum suscipit sapien ut nibh pellentesque, nec \r\nmalesuada lectus condimentum. Donec urna dolor, finibus sed tellus ut, \r\nposuere accumsan felis. Aliquam eget enim enim. Suspendisse finibus \r\nnulla sit amet velit posuere porta. Quisque quis egestas enim.\r\n</p><p><br></p><h3>5. Paragraph Five</h3><p>Praesent congue est vitae ultricies scelerisque. Nullam scelerisque arcu\r\n nisi, non maximus purus fermentum et. Suspendisse eget blandit velit. \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus \r\nfelis molestie, eleifend tortor vel, ullamcorper sapien. Vestibulum \r\nimperdiet mattis massa, in sollicitudin neque lobortis vel. Integer \r\nfinibus lectus mi, fermentum consectetur orci efficitur mattis. Donec \r\nnisi sapien, gravida ac vulputate vitae, pellentesque eu urna. Aenean eu\r\n massa accumsan, aliquet massa non, semper massa. Ut lobortis ipsum vel \r\nlectus dignissim, sed porttitor purus venenatis. Aliquam at tortor sit \r\namet metus elementum ultrices. Morbi magna arcu, placerat mattis diam \r\nid, convallis condimentum quam. Aenean vel porta tortor, sit amet \r\ninterdum dui.\r\n</p>\r\n</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum, Generate Lorem Ipsum', 'Y', 2021, '2021-05-15 04:11:08', '2021-05-15 21:53:25');
INSERT INTO `posts` VALUES (3, 2, 'Crest Pratictioner Security Analyst Notes', 'crest-pratictioner-security-analyst-notes', '2021/05/crest-pratictioner-security-analyst-notes', '<h2>A2 - Law &amp; Complience</h2><h3>Computer Misuse Act 1990</h3><p><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Akses tidak sah adalah istilah kuncinya. Itu artinya Anda membutuhkan izin.\r\n</span></span></span></p><p><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Di bawah Computer Misuse Act 1990, berikut ini adalah pelanggaran:</span></span></span></p><ul><li><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Akses tidak sah ke materi komputer.</span></span></span></span></span></span></li><li><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Akses tidak sah dengan maksud untuk melakukan atau memfasilitasi pelaksanaan pelanggaran lebih lanjut.</span></span></span></span></span></span></span></span></span></li><li><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Modifikasi materi komputer yang tidak sah.</span></span></span></span></span></span></span></span></span></span></span></span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span> </span></span></span></li></ul><div><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Pelanggaran ini berpotensi memiliki cakupan yang luas: bahkan menebak sandi untuk mengakses email web orang lain\r\nakun dapat dituntut sebagai pelanggaran akses tidak sah ke materi komputer.\r\nKetika perusahaan melakukan pengujian penetrasi, kontrak harus ditandatangani sebelum pengujian dimulai, untuk\r\nmemastikan bahwa tindakan perusahaan penguji diotorisasi. Ini juga harus berurusan dengan masalah tanggung jawab: apa\r\nterjadi jika penguji menghapus bagian penting dari situs web organisasi dan organisasi menderita\r\nkerugian? Pastikan Anda tidak keluar dari ruang lingkup (ikuti pengalihan?).\r\nUndang-undang tersebut diubah dengan The Police and Justice Act 2006, yang meningkatkan hukuman.</span></span></span></span></span></span></div><div><br><h3><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Computer Misuse Act 1990</span></span></span></span></span></span></h3></div><div><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Setiap orang berhak untuk menghormati kehidupan pribadi dan keluarganya, rumah dan korespondensinya.</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"1\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"2\"><span>Tidak akan ada campur tangan otoritas publik dengan pelaksanaan hak ini kecuali seperti yang ada di</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"3\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"4\"><span>sesuai dengan hukum dan diperlukan dalam masyarakat demokratis demi keamanan nasional, publik</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"5\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"6\"><span>keamanan atau kesejahteraan ekonomi negara, untuk pencegahan kekacauan atau kejahatan, untuk perlindungan</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"7\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"8\"><span>kesehatan atau moral, atau untuk perlindungan hak dan kebebasan orang lain.</span></span></span></span></span></span></span></span></span></div><div><br><h3><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"8\"><span>Data Protection Act 1998 </span></span></span> </span></span></span></span></span></span></h3><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Mendapatkan data pribadi secara tidak sah.</span></span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"1\"><span>Bagian ini membuatnya menjadi pelanggaran bagi orang (Pihak Lain),</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"2\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"3\"><span>seperti peretas dan peniru identitas, di luar organisasi untuk mendapatkan akses tidak sah ke pribadi</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"4\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"5\"><span>data.</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"6\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"7\"><span>Pastikan Anda tidak menyimpan catatan apa pun yang akan dianggap tindakan lebih lama dari yang diperlukan - misalnya, buktikan</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"8\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"9\"><span>dapat diakses dan tidak membuat cadangan catatan tersebut.</span></span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"10\"><span>Pengontrol data mungkin ingin mempekerjakan Anda untuk menguji yang mereka miliki</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"11\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"12\"><span>langkah-langkah yang tepat untuk mengamankan data.<br><br></span></span></span><h2>Police and Justice Act 2006</h2><ul><li><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Membuat amandemen Computer Misuse Act 1990</span></span></span></li><li>P<span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>eningkatan sanksi Undang-Undang Penyalahgunaan Komputer.</span></span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"1\"><span>(Membuat akses komputer yang tidak sah menjadi cukup serius untuk jatuh</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"2\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"3\"><span>di bawah ekstradisi)</span></span></span></span></span></span></li><li><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"3\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Membuatnya ilegal untuk melakukan serangan DOS.</span></span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"1\"><span>Serangan Denial of Service - Serangan semacam itu ilegal.</span></span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"2\"><span>Mereka dilarang</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"3\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"4\"><span>di Skotlandia pada tahun 2007 dan di Inggris dan Wales pada tahun 2008 ketika bagian 3 dari Undang-Undang Penyalahgunaan Komputer dibuat</span></span><span class=\"JLqJ4b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"5\"><span>\r\n</span></span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"6\"><span>diamandemen (oleh Police and Justice Act 2006).</span></span></span></span></span></span></span></span></span></li><li><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"3\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"6\"><span><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\"><span>Membuat ilegal untuk memasok dan memiliki alat peretasan.</span></span></span> </span></span></span> </span></span></span> </span></span></span></li></ul><span class=\"VIiyi\" lang=\"id\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"id\" data-language-to-translate-into=\"en\" data-phrase-index=\"12\"><span></span></span></span> </div>', 'CREST diakui oleh industri jasa profesional dan pembeli sebagai indikasi terbaik dari pengetahuan, keterampilan, dan kompetensi.', 'CPSA notes, CPSA tips, Certification CPSA', 'Y', 2021, '2021-05-15 04:11:08', '2021-05-18 08:30:51');

-- ----------------------------
-- Table structure for taggables
-- ----------------------------
DROP TABLE IF EXISTS `taggables`;
CREATE TABLE `taggables`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taggables
-- ----------------------------
INSERT INTO `taggables` VALUES (1, 1, 1, '2021-02-25 12:16:01', '2021-02-25 12:16:01');
INSERT INTO `taggables` VALUES (2, 3, 1, '2021-02-25 12:16:01', '2021-02-25 12:16:01');
INSERT INTO `taggables` VALUES (19, 1, 2, '2021-05-15 21:53:25', '2021-05-15 21:53:25');
INSERT INTO `taggables` VALUES (20, 2, 2, '2021-05-15 21:53:25', '2021-05-15 21:53:25');
INSERT INTO `taggables` VALUES (21, 3, 2, '2021-05-15 21:53:25', '2021-05-15 21:53:25');
INSERT INTO `taggables` VALUES (22, 4, 2, '2021-05-15 21:53:25', '2021-05-15 21:53:25');
INSERT INTO `taggables` VALUES (23, 5, 2, '2021-05-15 21:53:25', '2021-05-15 21:53:25');
INSERT INTO `taggables` VALUES (28, 2, 3, '2021-05-18 08:30:52', '2021-05-18 08:30:52');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, 'PHP', 'PHP', '2021-02-25 12:14:36', '2021-02-25 12:14:36');
INSERT INTO `tags` VALUES (2, 'Vulnerable', 'Vulnerable', '2021-02-25 12:14:36', '2021-02-25 12:14:36');
INSERT INTO `tags` VALUES (3, 'Laravel', 'Laravel', '2021-02-25 12:14:36', '2021-02-25 12:14:36');
INSERT INTO `tags` VALUES (4, 'Github', 'Github', '2021-02-25 12:14:36', '2021-02-25 12:14:36');
INSERT INTO `tags` VALUES (5, 'Jenkins', 'Jenkins', '2021-02-25 12:14:36', '2021-02-25 12:14:36');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@admin.com', NULL, '$2y$10$5pCDSRNfNJoii.1Y/fzIM.hGfooO4L.jSPbqVNG0tuj4yJry1zMVO', NULL, '2021-05-09 19:13:39', '2021-05-09 19:13:39');
INSERT INTO `users` VALUES (2, 'gmjOJPco', 'gmjOJPco@burpcollaborator.net', NULL, '$2y$10$bETSMEgW/UHjfAiDYda18.aRJJnPPIgQyZWFAvblIsHBs.m4xFHbO', NULL, '2021-05-16 21:39:44', '2021-05-16 21:39:44');

SET FOREIGN_KEY_CHECKS = 1;
