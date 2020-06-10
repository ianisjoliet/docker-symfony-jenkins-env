CREATE DATABASE IF NOT EXISTS `project_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `project_db`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `login` varchar(64) DEFAULT NULL,
    `password` varchar(255) DEFAULT NULL,
    `nom` varchar(64) DEFAULT NULL,
    `prenom` varchar(64) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;