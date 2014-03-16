SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `yiicart` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `yiicart` ;

-- -----------------------------------------------------
-- Table `yiicart`.`product`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `yiicart`.`product` (
  `id` INT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yiicart`.`order`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `yiicart`.`order` (
  `id` INT NOT NULL ,
  `user_id` INT NULL ,
  `product_id` INT NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_order_product_idx` (`product_id` ASC) ,
  CONSTRAINT `fk_order_product`
    FOREIGN KEY (`product_id` )
    REFERENCES `yiicart`.`product` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `yiicart` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
