/*
  author: Raihan Nayeem
  mysql version: 8.0.13
  Date created: 04-03-2019
 */

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `Department`;
DROP TABLE IF EXISTS `Person`;
DROP TABLE IF EXISTS `Staff`;
DROP TABLE IF EXISTS `Professor`;
DROP TABLE IF EXISTS `Student`;
DROP TABLE IF EXISTS `StudentDepartment`;
DROP TABLE IF EXISTS `GolfCart`;
DROP TABLE IF EXISTS `Driver`;
DROP TABLE IF EXISTS `Location`;
DROP TABLE IF EXISTS `Ride`;
DROP TABLE IF EXISTS `RideRating`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `Department` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Person`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `fname` VARCHAR(100) NOT NULL,
    `lname` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `phone` VARCHAR(100) DEFAULT NULL,
    `subtype` INT NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `Staff` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `position` VARCHAR(55) DEFAULT NULL,
    `isAdmin` TINYINT(1) DEFAULT FALSE,
    `department_id` INT DEFAULT NULL,
    CONSTRAINT `fk_Staff_Person`
      FOREIGN KEY (`id`)
      REFERENCES `Person` (`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION,
    CONSTRAINT `fk_Staff_Department`
      FOREIGN KEY (`department_id`)
      REFERENCES `Department` (`id`)
      ON DELETE SET NULL
      ON UPDATE NO ACTION,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Professor` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(55) DEFAULT NULL,
    `isFullTime` TINYINT(1) NOT NULL,
    `department_id` INT DEFAULT NULL,
    CONSTRAINT `fk_Professor_Person`
      FOREIGN KEY (`id`)
      REFERENCES `Person` (`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION,
    CONSTRAINT `fk_Professor_Department`
      FOREIGN KEY (`department_id`)
      REFERENCES `Department` (`id`)
      ON DELETE SET NULL
      ON UPDATE NO ACTION,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Student` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `birthdate` DATE DEFAULT NULL,
    `gradYear` YEAR NOT NULL,
    `department_id` INT DEFAULT NULL,
    CONSTRAINT `fk_Student_Person`
      FOREIGN KEY (`id`)
      REFERENCES `Person` (`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION,
    PRIMARY KEY (`id`)
);

CREATE TABLE `StudentDepartment`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `student_id` INT NOT NULL,
  `department_id` INT NOT NULL,
    CONSTRAINT `fk_StudentDepartment_Student`
      FOREIGN KEY (`student_id`)
      REFERENCES `Student` (`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION,
    CONSTRAINT `fk_StudentDepartment_Department`
      FOREIGN KEY (`department_id`)
      REFERENCES `Department` (`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION,
  PRIMARY KEY (`id`)
);

CREATE TABLE `GolfCart` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `make` VARCHAR(100) DEFAULT NULL,
    `model` VARCHAR(100) DEFAULT NULL,
    `numSeats` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Driver` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `dateHired` DATE DEFAULT NULL,
    `licenseNum` INT NOT NULL,
    `golfcart_id` INT DEFAULT NULL,
    CONSTRAINT `fk_Driver_Person`
      FOREIGN KEY (`id`)
      REFERENCES `Person` (`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION,
    CONSTRAINT `fk_Driver_GolfCart`
      FOREIGN KEY (`golfcart_id`)
      REFERENCES `GolfCart` (`id`)
      ON DELETE SET NULL
      ON UPDATE NO ACTION,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Location` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `longitude` VARCHAR(100) DEFAULT NULL,
    `latitude` VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `Ride` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `startTime` DATETIME NOT NULL,
    `endTime` DATETIME NOT NULL,
    `isCompleted` TINYINT(1) DEFAULT NULL,
    `start_location_id` INT NOT NULL,
    `end_location_id` INT NOT NULL,
    `driver_id` INT NOT NULL,
    `rider_id` INT NOT NULL,
    `golfcart_id` INT NOT NULL,
    CONSTRAINT `fk_Ride_start_Location`
      FOREIGN KEY (`start_location_id`)
      REFERENCES `Location` (`id`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
    CONSTRAINT `fk_Ride_end_Location`
      FOREIGN KEY (`end_location_id`)
      REFERENCES `Location` (`id`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
    CONSTRAINT `fk_Ride_Driver`
      FOREIGN KEY (`driver_id`)
      REFERENCES `Driver` (`id`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
    CONSTRAINT `fk_Ride_Person`
      FOREIGN KEY (`rider_id`)
      REFERENCES `Person` (`id`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
    CONSTRAINT `fk_Ride_GolfCart`
      FOREIGN KEY (`golfcart_id`)
      REFERENCES `GolfCart` (`id`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
    PRIMARY KEY (`id`)
);

CREATE TABLE `RideRating` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `completeDate` DATE NOT NULL,
    `rating` INT NOT NULL,
    `ride_id` INT NOT NULL,
    CONSTRAINT `fk_RiderRating_Ride`
      FOREIGN KEY (`id`)
      REFERENCES `Ride` (`id`)
      ON DELETE CASCADE
      ON UPDATE NO ACTION,
    PRIMARY KEY (`id`)
);
