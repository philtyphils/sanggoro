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

 Date: 09/05/2021 02:15:56
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
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 1, 'Membuat Syntax Highlighter Pada Website', 'membuat-syntax-highlighter-pada-website', '2021/03/membuat-syntax-highlighter-pada-website', '<p><b>Sanggoro</b> - <i>Syntax Highlighter</i> adalah sebuah fitur yang biasa digunakan oleh developer/coder untuk mempermudah dalam penulisan sebuah kode. Karena fitur <i>syntax highlighter</i> ini akan memberikan warna yang bebeda-beda pada setiap kode yang bersifat <i>function</i>, <i>class</i>, <i>variabel</i> dan lain lain. Jika, kalian seorang developer pasti tidak asing lagi akan fitur ini.</p>\r\n            <p>Karena banyak kemudahan yang didapatkan dari fitur ini, sekarang kita dapat menggunakan fitur <i>syntax highlighter</i> pada website atau blog kita sendiri. Salah satunya dengan menggunakan <a href=\'https://highlightjs.org/\' alt=\"highligh.js link download\" target=\"_blank\" rel=\"nofollow\">highlight.js</a>.</p>\r\n            <p>Dalam pembuatan website ini pun saya juga mencoba menggunakan <a href=\'https://highlightjs.org/\' alt=\"highligh.js link download\" target=\"_blank\" rel=\"nofollow\">highlight.js</a>. Namun, karena pertimbagan pagespeed, saya memutuskan untuk menggunakan <i>Syntax Highlighter</i> online saja.</br/>Jika ingin mencobanya bisa mengunjungi link <a href=\"http://hilite.me/\" alt=\"Syntax Highlighter Online\" rel=\"nofollow\">http://hilite.me/</a>, pada website tersebut kita hanya perlu untuk pengcopy pastekan kodingan kita kedalam form pada website tersebut dan <i>Syntax Highlighter</i> akan digenerate secara otomatis, seperti contoh dibawah ini:</p><div style=\"background: #272822; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;\"><table><tr><td><pre style=\"margin: 0; line-height: 125%;color:#ccc\"> 1\r\n 2\r\n 3\r\n 4\r\n 5\r\n 6\r\n 7\r\n 8\r\n 9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n16\r\n17\r\n18\r\n19\r\n20\r\n21\r\n22\r\n23\r\n24\r\n25\r\n26\r\n27\r\n28\r\n29\r\n30\r\n31\r\n32\r\n33</pre></td><td><pre style=\"margin: 0; line-height: 125%\">    <span style=\"color: #f92672\">from</span> <span style=\"color: #f8f8f2\">datetime</span> <span style=\"color: #f92672\">import</span> <span style=\"color: #f8f8f2\">datetime</span>\r\n    <span style=\"color: #f92672\">import</span> <span style=\"color: #f8f8f2\">xlrd</span><span style=\"color: #f92672\">,</span> <span style=\"color: #f8f8f2\">re</span>\r\n    <span style=\"color: #f92672\">import</span> <span style=\"color: #f8f8f2\">mysql.connector</span>\r\n     \r\n    <span style=\"color: #66d9ef\">def</span> <span style=\"color: #a6e22e\">dms2dd</span><span style=\"color: #f8f8f2\">(degrees,</span> <span style=\"color: #f8f8f2\">minutes,</span> <span style=\"color: #f8f8f2\">seconds,</span> <span style=\"color: #f8f8f2\">direction):</span>\r\n        <span style=\"color: #f8f8f2\">dd</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">float(degrees)</span> <span style=\"color: #f92672\">+</span> <span style=\"color: #f8f8f2\">float(minutes)</span><span style=\"color: #f92672\">/</span><span style=\"color: #ae81ff\">60</span> <span style=\"color: #f92672\">+</span> <span style=\"color: #f8f8f2\">float(seconds)</span><span style=\"color: #f92672\">/</span><span style=\"color: #f8f8f2\">(</span><span style=\"color: #ae81ff\">60</span><span style=\"color: #f92672\">*</span><span style=\"color: #ae81ff\">60</span><span style=\"color: #f8f8f2\">)</span>\r\n        <span style=\"color: #66d9ef\">if</span> <span style=\"color: #f8f8f2\">direction</span> <span style=\"color: #f92672\">==</span> <span style=\"color: #e6db74\">&#39;BB&#39;</span> <span style=\"color: #f92672\">or</span> <span style=\"color: #f8f8f2\">direction</span> <span style=\"color: #f92672\">==</span> <span style=\"color: #e6db74\">&#39;LS&#39;</span><span style=\"color: #f8f8f2\">:</span>     \r\n            <span style=\"color: #f8f8f2\">dd</span> <span style=\"color: #f92672\">*=</span> <span style=\"color: #f92672\">-</span><span style=\"color: #ae81ff\">1</span>\r\n        <span style=\"color: #66d9ef\">return</span> <span style=\"color: #f8f8f2\">dd</span>\r\n     \r\n    <span style=\"color: #66d9ef\">def</span> <span style=\"color: #a6e22e\">dd2dms</span><span style=\"color: #f8f8f2\">(deg):</span>\r\n        <span style=\"color: #f8f8f2\">d</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">int(deg)</span>\r\n        <span style=\"color: #f8f8f2\">md</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">abs(deg</span> <span style=\"color: #f92672\">-</span> <span style=\"color: #f8f8f2\">d)</span> <span style=\"color: #f92672\">*</span> <span style=\"color: #ae81ff\">60</span>\r\n        <span style=\"color: #f8f8f2\">m</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">int(md)</span>\r\n        <span style=\"color: #f8f8f2\">sd</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">(md</span> <span style=\"color: #f92672\">-</span> <span style=\"color: #f8f8f2\">m)</span> <span style=\"color: #f92672\">*</span> <span style=\"color: #ae81ff\">60</span>\r\n        <span style=\"color: #66d9ef\">return</span> <span style=\"color: #f8f8f2\">[d,</span> <span style=\"color: #f8f8f2\">m,</span> <span style=\"color: #f8f8f2\">sd]</span>\r\n     \r\n    <span style=\"color: #66d9ef\">def</span> <span style=\"color: #a6e22e\">parse_dms</span><span style=\"color: #f8f8f2\">(dms):</span>\r\n        <span style=\"color: #f8f8f2\">dms</span>   <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">dms</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">strip()</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">replace(</span><span style=\"color: #e6db74\">&quot;,&quot;</span><span style=\"color: #f8f8f2\">,</span><span style=\"color: #e6db74\">&quot;.&quot;</span><span style=\"color: #f8f8f2\">)</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">replace(</span><span style=\"color: #e6db74\">&quot;-&quot;</span><span style=\"color: #f8f8f2\">,</span><span style=\"color: #e6db74\">&quot;&quot;</span><span style=\"color: #f8f8f2\">)</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">replace(</span><span style=\"color: #e6db74\">&quot;’&quot;</span><span style=\"color: #f8f8f2\">,</span><span style=\"color: #e6db74\">&quot;&#39;&quot;</span><span style=\"color: #f8f8f2\">)</span>\r\n        <span style=\"color: #f8f8f2\">parts</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">re</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">split(</span><span style=\"color: #e6db74\">&#39;[°º⁰˚</span><span style=\"color: #ae81ff\">&#39;</span><span style=\"color: #e6db74\">&quot;]+&#39;</span><span style=\"color: #f8f8f2\">,</span> <span style=\"color: #f8f8f2\">dms)</span> \r\n        <span style=\"color: #f8f8f2\">parts[</span><span style=\"color: #ae81ff\">3</span><span style=\"color: #f8f8f2\">]</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">parts[</span><span style=\"color: #ae81ff\">3</span><span style=\"color: #f8f8f2\">]</span><span style=\"color: #f92672\">.</span><span style=\"color: #f8f8f2\">strip()</span>\r\n        <span style=\"color: #75715e\">#print(parts)</span>\r\n        <span style=\"color: #f8f8f2\">lat</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">dms2dd(parts[</span><span style=\"color: #ae81ff\">0</span><span style=\"color: #f8f8f2\">],</span> <span style=\"color: #f8f8f2\">parts[</span><span style=\"color: #ae81ff\">1</span><span style=\"color: #f8f8f2\">],</span> <span style=\"color: #f8f8f2\">parts[</span><span style=\"color: #ae81ff\">2</span><span style=\"color: #f8f8f2\">],</span> <span style=\"color: #f8f8f2\">parts[</span><span style=\"color: #ae81ff\">3</span><span style=\"color: #f8f8f2\">])</span>\r\n        <span style=\"color: #66d9ef\">return</span> <span style=\"color: #f8f8f2\">lat</span>\r\n     \r\n    <span style=\"color: #66d9ef\">def</span> <span style=\"color: #a6e22e\">floatHourToTime</span><span style=\"color: #f8f8f2\">(fh):</span>\r\n        <span style=\"color: #f8f8f2\">h,</span> <span style=\"color: #f8f8f2\">r</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">divmod(fh,</span> <span style=\"color: #ae81ff\">1</span><span style=\"color: #f8f8f2\">)</span>\r\n        <span style=\"color: #f8f8f2\">m,</span> <span style=\"color: #f8f8f2\">r</span> <span style=\"color: #f92672\">=</span> <span style=\"color: #f8f8f2\">divmod(r</span><span style=\"color: #f92672\">*</span><span style=\"color: #ae81ff\">60</span><span style=\"color: #f8f8f2\">,</span> <span style=\"color: #ae81ff\">1</span><span style=\"color: #f8f8f2\">)</span>\r\n        <span style=\"color: #66d9ef\">return</span> <span style=\"color: #f8f8f2\">(</span>\r\n            <span style=\"color: #f8f8f2\">int(h),</span>\r\n            <span style=\"color: #f8f8f2\">int(m),</span>\r\n            <span style=\"color: #f8f8f2\">int(r</span><span style=\"color: #f92672\">*</span><span style=\"color: #ae81ff\">60</span><span style=\"color: #f8f8f2\">),</span>\r\n        <span style=\"color: #f8f8f2\">)</span>\r\n</pre></td></tr></table></div>', 'sanggoro - Syntax highlighter adalah sebuah fitur yang bisa kita manfaatkan untuk mempermudah dalam penulisan sebuah kode, dikarena fitur ini akan memberikan warna yang berbeda-beda pada sebuah kode function, class, variabel dan lain sebaginya.', 'Syntax Highlighter, Syntax Highlighter Online, Membuat sysntax Highlighter', 'Y', 2021, '2021-03-04 16:39:39', '2021-03-04 16:39:39');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taggables
-- ----------------------------
INSERT INTO `taggables` VALUES (1, 1, 1, '2021-02-25 12:16:01', '2021-02-25 12:16:01');
INSERT INTO `taggables` VALUES (2, 2, 1, '2021-02-25 12:16:01', '2021-02-25 12:16:01');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
