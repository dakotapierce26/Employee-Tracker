CREATE database cms;

CREATE TABLE `cms`.`department` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `cms`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(30) NULL,
  `salary` DECIMAL NULL,
  `deparment_id` INT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `cms`.`employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(30) NULL,
  `first_name` VARCHAR(30) NULL,
  `role_id` INT NULL,
  `manager_id` INT NULL,
  PRIMARY KEY (`id`));
  
ALTER TABLE `cms`.`role` 
ADD INDEX `FK_Role_Department_ID_idx` (`deparment_id` ASC) VISIBLE;

ALTER TABLE `cms`.`role` 
ADD CONSTRAINT `FK_Role_Department_ID`
FOREIGN KEY (`deparment_id`)
REFERENCES `cms`.`department` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE `cms`.`employee` 
ADD INDEX `FK_Employee_Role_Id_idx` (`role_id` ASC) VISIBLE;
ADD INDEX `FK_Employee_Manager_Id_idx` (`manager_id` ASC) VISIBLE;

ALTER TABLE `cms`.`employee` 
ADD CONSTRAINT `FK_Employee_Role_Id`
FOREIGN KEY (`role_id`)
REFERENCES `cms`.`role` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
ALTER TABLE `cms`.`employee` 
ADD CONSTRAINT `FK_Employee_Manager_Id`
FOREIGN KEY (`manager_id`)
REFERENCES `cms`.`employee` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;