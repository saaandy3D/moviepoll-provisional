--
-- Database: movie_poll
--
DROP DATABASE movie_poll;
CREATE DATABASE IF NOT EXISTS movie_poll DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE movie_poll;

/* ユーザーに権限の付与 */
CREATE USER IF NOT EXISTS 'sandy'@'localhost' IDENTIFIED BY 'pwd';
GRANT ALL ON movie_poll.* TO 'sandy'@'localhost';

--
-- Database: `movie_poll`
--

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY COMMENT 'コメントID',
  `topic_id` int(10) NOT NULL COMMENT 'トピックID',
  `star` int(1) NOT NULL COMMENT '評価（星1:0, 星2:1, 星3:2）',
  `body` varchar(500) DEFAULT NULL COMMENT '感想（本文）',
  `user_id` varchar(10) NOT NULL COMMENT '作成したユーザーID',
  `del_flg` int(1) NOT NULL DEFAULT '0' COMMENT '削除フラグ(1: 削除、0: 有効)',
  `updated_by` varchar(20) NOT NULL DEFAULT 'pollapp' COMMENT '最終更新者',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最終更新日時'
);

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY COMMENT 'トピックID',
  `title` varchar(50) NOT NULL COMMENT '映画タイトル',
  `release_date` varchar(15) NOT NULL COMMENT '公開日',
  `published` int(1) NOT NULL COMMENT '公開状態(1: 公開、0: 非公開)',
  `views` int(10) NOT NULL DEFAULT '0' COMMENT 'PV数',
  `star_1` int(10) NOT NULL DEFAULT '0' COMMENT '星1',
  `star_2` int(10) NOT NULL DEFAULT '0' COMMENT '星2',
  `star_3` int(10) NOT NULL DEFAULT '0' COMMENT '星3',
  `user_id` varchar(10) NOT NULL COMMENT '作成したユーザーID',
  `del_flg` int(1) NOT NULL DEFAULT '0' COMMENT '削除フラグ(1: 削除、0: 有効)',
  `updated_by` varchar(20) NOT NULL DEFAULT 'pollapp' COMMENT '最終更新者',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最終更新日時'
);

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(10) PRIMARY KEY COMMENT 'ユーザーID',
  `pwd` varchar(60) NOT NULL COMMENT 'パスワード',
  `nickname` varchar(10) NOT NULL COMMENT '画面表示用名',
  `del_flg` int(1) NOT NULL DEFAULT '0' COMMENT '削除フラグ(1: 削除、0: 有効)',
  `updated_by` varchar(20) NOT NULL DEFAULT 'pollapp' COMMENT '最終更新者',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最終更新日時'
);


START TRANSACTION;

SET time_zone = "+09:00";

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `topic_id`, `star`, `body`, `user_id`, `del_flg`) VALUES
(1, 1, 2, 'とても面白かった。', 'test', 0),
(2, 1, 1, 'キュンキュンできます。', 'test', 0),
(3, 1, 1, '見ていて飽きない！！。', 'test', 0),
(4, 1, 1, 'あんまりかな。', 'test', 0),
(5, 1, 2, '最初はいいや、大好きな大好きな作品になりました。爽子がすっごく良い子で、でも芯がぶれなくて、しっかりしてて、本当に大好き。
風早くんも、最初は優しいだけの男の子かと思っていたけど、自分をしっかり持っていて、一途で、でも頑固や未完成の部分も露出していて、そこがまた魅力的で、本当に大好きになりました。
ちづやあやねちゃん、龍、ピンなど、どれをとっても好きな人物で、みんなそれぞれ良い仲間で、本当に魅力的な人物がいっぱいこ魅力的な作品でした。。', 'test', 0),
(6, 1, 0, 'はい。そうでしょうね。', 'test', 0),
(7, 2, 1, 'It’s smart, light on gore, but heavy on tension. It knows its premise and fully embraces it. Never does it feel the need to give us tedious and uninteresting exposition nor does it overstay its welcome.', 'test', 0),
(8, 2, 1, 'まあまあかな。', 'test', 0),
(9, 2, 0, '終わり方が雑すぎる。', 'test', 0);

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `release_date`, `published`, `views`, `star_1`, `star_2`, `star_3`, `user_id`, `del_flg`) VALUES
(1, '君に届け', '2010年9月25日', 1, 8, 1, 3, 2, 'test', 0),
(2, 'A Quite Place', '2018年4月6日', 1, 9, 1, 2, 0, 'test', 0);

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `pwd`, `nickname`, `del_flg`) VALUES
('test', '$2y$10$n.PPvod4ai0r0qpqn5DurenOoxTyRhvef3S7DxoMu5BLRspG5oiBK', 'テストユーザー', 0);


COMMIT;



