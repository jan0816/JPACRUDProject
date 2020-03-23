-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema JamesBeardDB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `JamesBeardDB` ;

-- -----------------------------------------------------
-- Schema JamesBeardDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `JamesBeardDB` DEFAULT CHARACTER SET utf8 ;
USE `JamesBeardDB` ;

-- -----------------------------------------------------
-- Table `JamesBeardCO`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `JamesBeardCO` ;

CREATE TABLE IF NOT EXISTS `JamesBeardCO` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nominated_year` INT NULL,
  `nomination_title` VARCHAR(150) NULL,
  `name` VARCHAR(100) NOT NULL,
  `cuisine_type` VARCHAR(80) NULL,
  `address` VARCHAR(100) NULL,
  `chef_hospitality_group` VARCHAR(200) NULL,
  `website` VARCHAR(200) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS jamesbeard@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'jamesbeard'@'localhost' IDENTIFIED BY 'jamesbeard';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'jamesbeard'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `JamesBeardCO`
-- -----------------------------------------------------
START TRANSACTION;
USE `JamesBeardDB`;
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (1, 2020, 'Best New Restaurant', 'Sunday Vinyl', 'European-style wine bar', '1803 16th Street, Denver, CO 80202', 'Chef Lachlan Mackinnon-Patterson & Frasca Hospitality Group', 'https://www.sundayvinyl.com/');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (2, 2020, 'Outstanding Bar Program', 'Williams & Graham', 'Speakeasy', '3160 Tejon St., Denver, CO 80211', 'Sean Kenyon', 'https://williamsandgraham.com/');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (3, 2020, 'Outstanding Restaurant', 'Frasca Food & Wine', 'Nothern Italian- Friulano', '1738 Pearl St., Boulder, CO, 80302', 'Chef Lachlan Mackinnon-Patterson & Frasca Hospitality Group', 'www.frascafoodandwine.com');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (4, 2020, 'Outstanding Restaurant', 'Sushi Den', 'Japanese & Sushi', '1487 S. Pearl St., Denver, CO, 80210', 'Chef Toshihiro Kizaki', 'https://www.sushiden.net/');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (5, 2020, 'Outstanding Wine Program', 'Element 47', 'Colorado Contemporary', '675 E Durant Ave., Aspen, CO, 81611', 'The Little Nell', 'https://www.thelittlenell.com/dining/element-47');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (6, 2020, 'Outstanding Wine, Beer or Spirits Producer', 'Leopold Bros', 'Distillery', '5285 Joliet Street, Denver, CO, 80239', 'Scott and Todd Leopold', 'https://www.leopoldbros.com/home');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (7, 2020, 'Rising Star Chef of the Year', 'Spuntino', 'Italian', '2639 W. 32nd Ave., Denver, CO 80211', 'Chef Austin Nickel', 'http://www.spuntinodenver.com/#/home');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (8, 2020, 'Outstanding Restauranteur', 'Rioja, Bistro Vendome, Stoic & Genuine, and others', 'Mediterranean-influenced', 'Many across Denver metro area', 'Chef Jennifer Jasinki and Beth Gruitch of Crafted Concepts', 'http://www.craftedconceptsdenver.com/restaurants.html');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (9, 2020, 'Best Chef: Mountain', 'Bar Dough', 'Italian', '2227 W. 32nd Ave., Denver, CO 80211', 'Chef Carrie Baird', 'http://www.bardoughdenver.com/');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (10, 2020, 'Best Chef: Mountain', 'Annette', 'American', 'Stanley Marketplace, 2501 Dallas St., Ste. 108, Aurora, CO 80010', 'Chef Caroline Glover', 'http://www.annettescratchtotable.com/');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (11, 2020, 'Best Chef: Mountain', 'Beckon', 'Scandanavian', '2843 Larimer St.\nDenver, CO 80205', 'Chef Duncan Holmes', 'https://www.beckon-denver.com/');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (12, 2020, 'Best Chef: Mountain', 'Hop Alley', 'Chinese', '3500 Larimer St., Denver , CO 80205', 'Chef Tommy Lee', 'http://hopalleydenver.com/');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (13, 2020, 'Best Chef: Mountain', 'Four by Brother Luck', 'Farm to Table', '321 North Tejon Street, Colorado Springs, CO 80903 ', 'Chef Brother Luck', 'https://www.fourbybrotherluck.com/');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (14, 2020, 'Best Chef: Mountain', 'Bin 707 Foodbar, Taco Party', 'Seasonal Colorado', '225 N. 5th st. #105, Grand Junction, CO', 'Chef Josh Niernberg', 'http://www.bin707.com/#the-kitchen');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (15, 2020, 'Best Chef: Mountain', 'Spuntino', 'Italian', '2639 W. 32nd Ave., Denver, CO 80211', 'Chef Cindhura Reddy', 'http://www.spuntinodenver.com/#/home');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (16, 2020, 'Best Chef: Mountain', 'Super Mega Bien', 'Latin American', 'The Ramble Hotel, 1260 25th St.\n, Denver, CO 80205', 'Chef Dana Rodriguez', 'https://supermegabien.com/');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (17, 2020, 'Best Chef: Mountain', 'the Wolf\'s Tailor', 'Asian Italian Fusion', '4058 Tejon St., Denver, CO 80211', 'Chef Kelly Whitaker', 'thewolfstailor.com');
INSERT INTO `JamesBeardCO` (`id`, `nominated_year`, `nomination_title`, `name`, `cuisine_type`, `address`, `chef_hospitality_group`, `website`) VALUES (18, 2020, 'Best Chef: Mountain', 'Penrose Room at the Broadmoor', 'Contemporary European', '1 Lake Avenue, Colorado Springs, CO 80906', 'Chef Luis Young', 'https://www.broadmoor.com/dining/penrose-room/');

COMMIT;

