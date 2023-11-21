CREATE TABLE `users` (
  `id` bigint PRIMARY KEY AUTO_INCREMENT,
  `email` varchar(100) UNIQUE COMMENT '이메일',
  `password` varchar(255) COMMENT '비밀번호',
  `name` varchar(50) COMMENT '이름',
  `phone` varchar(20) COMMENT '전화번호',
  `role` varchar(10) COMMENT '회원권한',
  `isDeleted` boolean COMMENT '탈퇴여부',
  `created_at` datetime DEFAULT "now()",
  `modified_at` datetime DEFAULT "now()"
);

CREATE TABLE `boards` (
  `id` bigint PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50) COMMENT '게시판명',
  `maker` bigint COMMENT '만든사람',
  `auth_role` varchar(10) COMMENT '접근권한',
  `isDeleted` boolean COMMENT '삭제여부',
  `created_at` datetime DEFAULT "now()",
  `modified_at` datetime DEFAULT "now()"
);

CREATE TABLE `posts` (
  `id` bigint PRIMARY KEY AUTO_INCREMENT,
  `board` bigint COMMENT '게시판',
  `author` bigint COMMENT '작성자',
  `title` varchar(255) COMMENT '게시글명',
  `content` text COMMENT '게시글내용',
  `isDeleted` boolean COMMENT '삭제여부',
  `created_at` datetime DEFAULT "now()",
  `modified_at` datetime DEFAULT "now()"
);

CREATE TABLE `comments` (
  `id` bigint PRIMARY KEY AUTO_INCREMENT,
  `parents` bigint COMMENT '부모댓글',
  `post` bigint COMMENT '게시글',
  `author` bigint COMMENT '작성자',
  `content` varchar(255) COMMENT '댓글내용',
  `isDeleted` boolean COMMENT '삭제여부',
  `created_at` datetime DEFAULT "now()",
  `modified_at` datetime DEFAULT "now()"
);

CREATE TABLE `tags` (
  `id` bigint PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50) COMMENT '태그명',
  `isDeleted` boolean COMMENT '삭제여부',
  `created_at` datetime DEFAULT "now()",
  `modified_at` datetime DEFAULT "now()"
);

CREATE TABLE `attach_files` (
  `id` bigint PRIMARY KEY AUTO_INCREMENT,
  `uuid` uuid COMMNET 'uuid',
  `post` bigint COMMENT '게시글',
  `original_name` varchar(255) COMMENT '원 파일명',
  `changed_name` varchar(255) COMMENT '바꾼파일명',
  `file_path` varchar(255) COMMENT '파일저장경로',
  `isDeleted` boolean COMMENT '삭제여부',
  `created_at` datetime DEFAULT "now()",
  `modified_at` datetime DEFAULT "now()"
);

CREATE TABLE `posts_tags` (
  `post_id` bigint COMMENT '게시글',
  `tag_id` bigint COMMENT '태그',
  PRIMARY KEY (`post_id`, `tag_id`)
);

ALTER TABLE `boards` ADD FOREIGN KEY (`maker`) REFERENCES `users` (`id`);

ALTER TABLE `posts` ADD FOREIGN KEY (`board`) REFERENCES `boards` (`id`);

ALTER TABLE `posts` ADD FOREIGN KEY (`author`) REFERENCES `users` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`parents`) REFERENCES `comments` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`post`) REFERENCES `posts` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`author`) REFERENCES `users` (`id`);

ALTER TABLE `attach_files` ADD FOREIGN KEY (`post`) REFERENCES `posts` (`id`);

ALTER TABLE `posts_tags` ADD FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `posts_tags` ADD FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
