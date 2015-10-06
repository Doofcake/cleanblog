-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2015 at 09:09 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cleanblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `author_id`   INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_name` VARCHAR(255)     NOT NULL,
  PRIMARY KEY (`author_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 3;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`) VALUES
  (1, 'Doof'),
  (2, 'Mumble');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id`          INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id`        INT(10) UNSIGNED NOT NULL,
  `post_title`       VARCHAR(255)     NOT NULL,
  `post_description` VARCHAR(255)     NOT NULL,
  `post_text`        TEXT             NOT NULL,
  `post_created`     DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`),
  KEY `author_id` (`author_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = latin1
  AUTO_INCREMENT = 3;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `author_id`, `post_title`, `post_description`, `post_text`, `post_created`) VALUES
  (1, 1, 'Elu on lahe', 'Mida veel tahta',
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam imperdiet at diam non tincidunt. Donec facilisis nisl arcu. Duis id tincidunt lorem. Pellentesque gravida, ante sed auctor tempus, ipsum leo auctor elit, quis iaculis tellus nibh at magna. Vestibulum quis arcu ac mi iaculis bibendum. Cras nisl mi, varius a enim id, ullamcorper posuere libero. Vestibulum luctus ac nisl aliquam congue. Proin quis sagittis neque. Maecenas sed laoreet odio. Sed ante nibh, fringilla id aliquam eu, venenatis id ex. Sed tincidunt porttitor augue at fermentum.\n\nEtiam et accumsan lectus. Cras eu nisl varius, elementum turpis vel, porta risus. Nulla quis nibh in tortor sagittis convallis sed in nunc. Phasellus non erat a felis egestas pretium et lacinia justo. Nam maximus tellus sed magna condimentum, at iaculis sem tristique. Nunc faucibus commodo elit, eu sollicitudin lorem faucibus in. Etiam euismod nisi egestas, tempus tellus at, porta dolor. Donec tincidunt sem vel rutrum semper. Pellentesque orci erat, venenatis non viverra ac, viverra eu magna. In vulputate dolor ac arcu sodales maximus. Duis eget mi sagittis, interdum mauris ac, sagittis quam.\n\nSuspendisse vitae nulla est. Nulla sem massa, porttitor at hendrerit ac, euismod sit amet ipsum. Nullam euismod mattis commodo. Vestibulum blandit massa sit amet mattis aliquet. Cras accumsan, metus vitae tristique dictum, augue mauris dignissim lacus, a gravida sem nulla vitae ligula. Duis dictum, purus ut congue semper, lacus tellus volutpat velit, in ultricies metus est quis odio. Sed elementum dignissim lectus non cursus. Fusce congue eros erat, elementum imperdiet neque accumsan ac. Phasellus tortor leo, feugiat ac vehicula eget, euismod nec nulla. Aliquam condimentum lectus in purus ultricies ullamcorper. Integer sit amet enim ex.\n\nAliquam vitae turpis in nibh aliquam sollicitudin et non quam. Sed venenatis a nisl tempus posuere. Fusce semper, ligula sed venenatis aliquet, leo nibh maximus nisl, vel pulvinar nisi dui eget erat. Suspendisse ullamcorper tellus vel sapien pharetra porta. Aenean sed porttitor orci. Maecenas ut sollicitudin dui. Suspendisse viverra lectus sapien, viverra rhoncus dolor consectetur in. Fusce ac arcu nisi. Nam porttitor hendrerit sollicitudin. Curabitur dignissim, lorem id egestas eleifend, metus orci feugiat neque, vitae venenatis lacus lacus sit amet odio. Suspendisse potenti. Maecenas eleifend eu ante eget molestie.\n\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque pulvinar mollis est euismod feugiat. Aenean id varius dolor, vel porta ligula. Fusce nec maximus orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam id justo vitae orci ultricies consequat ut et purus. Quisque efficitur maximus enim, a scelerisque dolor scelerisque in. Donec porta posuere ligula, non vestibulum urna. Etiam eu mauris iaculis, aliquet leo sit amet, sagittis tortor. Quisque in erat eu erat lobortis ultricies sed non ex. Phasellus id malesuada orci. Maecenas molestie rutrum orci, sit amet malesuada leo. Donec elementum est vel elit viverra fringilla. Phasellus a urna justo.',
   '2015-10-06 20:32:36'),
  (2, 2, 'Lorem Ipsum', 'Ehh',
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam imperdiet at diam non tincidunt. Donec facilisis nisl arcu. Duis id tincidunt lorem. Pellentesque gravida, ante sed auctor tempus, ipsum leo auctor elit, quis iaculis tellus nibh at magna. Vestibulum quis arcu ac mi iaculis bibendum. Cras nisl mi, varius a enim id, ullamcorper posuere libero. Vestibulum luctus ac nisl aliquam congue. Proin quis sagittis neque. Maecenas sed laoreet odio. Sed ante nibh, fringilla id aliquam eu, venenatis id ex. Sed tincidunt porttitor augue at fermentum.\n\nEtiam et accumsan lectus. Cras eu nisl varius, elementum turpis vel, porta risus. Nulla quis nibh in tortor sagittis convallis sed in nunc. Phasellus non erat a felis egestas pretium et lacinia justo. Nam maximus tellus sed magna condimentum, at iaculis sem tristique. Nunc faucibus commodo elit, eu sollicitudin lorem faucibus in. Etiam euismod nisi egestas, tempus tellus at, porta dolor. Donec tincidunt sem vel rutrum semper. Pellentesque orci erat, venenatis non viverra ac, viverra eu magna. In vulputate dolor ac arcu sodales maximus. Duis eget mi sagittis, interdum mauris ac, sagittis quam.\n\nSuspendisse vitae nulla est. Nulla sem massa, porttitor at hendrerit ac, euismod sit amet ipsum. Nullam euismod mattis commodo. Vestibulum blandit massa sit amet mattis aliquet. Cras accumsan, metus vitae tristique dictum, augue mauris dignissim lacus, a gravida sem nulla vitae ligula. Duis dictum, purus ut congue semper, lacus tellus volutpat velit, in ultricies metus est quis odio. Sed elementum dignissim lectus non cursus. Fusce congue eros erat, elementum imperdiet neque accumsan ac. Phasellus tortor leo, feugiat ac vehicula eget, euismod nec nulla. Aliquam condimentum lectus in purus ultricies ullamcorper. Integer sit amet enim ex.\n\nAliquam vitae turpis in nibh aliquam sollicitudin et non quam. Sed venenatis a nisl tempus posuere. Fusce semper, ligula sed venenatis aliquet, leo nibh maximus nisl, vel pulvinar nisi dui eget erat. Suspendisse ullamcorper tellus vel sapien pharetra porta. Aenean sed porttitor orci. Maecenas ut sollicitudin dui. Suspendisse viverra lectus sapien, viverra rhoncus dolor consectetur in. Fusce ac arcu nisi. Nam porttitor hendrerit sollicitudin. Curabitur dignissim, lorem id egestas eleifend, metus orci feugiat neque, vitae venenatis lacus lacus sit amet odio. Suspendisse potenti. Maecenas eleifend eu ante eget molestie.\n\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque pulvinar mollis est euismod feugiat. Aenean id varius dolor, vel porta ligula. Fusce nec maximus orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam id justo vitae orci ultricies consequat ut et purus. Quisque efficitur maximus enim, a scelerisque dolor scelerisque in. Donec porta posuere ligula, non vestibulum urna. Etiam eu mauris iaculis, aliquet leo sit amet, sagittis tortor. Quisque in erat eu erat lobortis ultricies sed non ex. Phasellus id malesuada orci. Maecenas molestie rutrum orci, sit amet malesuada leo. Donec elementum est vel elit viverra fringilla. Phasellus a urna justo.',
   '2015-10-06 20:35:07');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
