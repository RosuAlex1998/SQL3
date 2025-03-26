-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `new_schema1` ;
USE `new_schema1` ;

-- -----------------------------------------------------
-- Table `new_schema1`.`tabel1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `new_schema1`.`tabel1` (
  `1` INT NOT NULL,
  PRIMARY KEY (`1`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `new_schema1`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `new_schema1`.`student` (
  `idstudent` INT NOT NULL AUTO_INCREMENT,
  ` nume` VARCHAR(255) NOT NULL,
  `prenume` VARCHAR(255) NOT NULL,
  `grupa` ENUM('1', '2', '3', '4') NOT NULL,
  `email` VARCHAR(255) NULL,
  `data_inscrierii` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `statut` ENUM('admis', 'respins', 'neevaluat') NULL DEFAULT 'neevaluat',
  PRIMARY KEY (`idstudent`),
  UNIQUE INDEX ` nume_UNIQUE` (` nume` ASC) VISIBLE,
  UNIQUE INDEX `prenume_UNIQUE` (`prenume` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `new_schema1`.`table2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `new_schema1`.`table2` (
)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
