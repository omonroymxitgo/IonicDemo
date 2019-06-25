-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema IonicDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema IonicDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `IonicDB` DEFAULT CHARACTER SET utf8 ;
USE `IonicDB` ;

-- -----------------------------------------------------
-- Table `IonicDB`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IonicDB`.`User` (
  `idUser` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) CHARACTER SET 'armscii8' NOT NULL,
  `Rol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE INDEX `idUser_UNIQUE` (`idUser` ASC) INVISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
