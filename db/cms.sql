CREATE database `cms`;

CREATE TABLE `cms`.`Deparment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `cms`.`Role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(30) NULL,
  `salary` DECIMAL NULL, 
  `department_id` INT NULL, 
  PRIMARY KEY (`id`));
  
  CREATE TABLE `cms`.`Employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(30) NULL,
  `last_name` VARCHAR(30) NULL,
  `role_id` INT NULL,
  `manager_id` INT NULL, 
  PRIMARY KEY (`id`));
  
ALTER TABLE `cms`.`role` 
ADD INDEX `FK_Role_Department_Id_idx` (`department_id` ASC) VISIBLE;

ALTER TABLE `cms`.`role` 
ADD CONSTRAINT `FK_Role_Department_Id`
FOREIGN KEY (`department_id`)
REFERENCES `cms`.`deparment` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE `cms`.`employee` 
ADD INDEX `FK_Employee_Role_Id_idx` (`role_id` ASC) VISIBLE,
ADD INDEX `FK_Employee_Manger_Id_idx` (`manager_id` ASC) VISIBLE;

ALTER TABLE `cms`.`employee` 
ADD CONSTRAINT `FK_Employee_Role_Id`
FOREIGN KEY (`role_id`)
REFERENCES `cms`.`role` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Employee_Manger_Id`
FOREIGN KEY (`manager_id`)
REFERENCES `cms`.`employee` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
  