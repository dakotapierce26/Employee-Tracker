INSERT INTO `cms`.`department`
(`name`)

VALUES
('Sales'),
('Legal'),
('Finance'),
('Engineering');


INSERT INTO `cms`.`role`
(`title`,
`salary`,
`deparment_id`)

VALUES
('Sales Lead', 100000, 1),
('Salesperson', 100000, 1),
('Lead Engineer', 100000, 4),
('Software Engineer', 100000, 4),
('Accountant', 100000, 3),
('Legal Team Lead', 158000, 2),
('Lawyer', 1200000, 2);

INSERT INTO `cms`.`employee`
(`last_name`,
`first_name`,
`role_id`,
`manager_id`)
VALUES
('Doe', 'John', 25, NULL),
('Chan', 'Mike', 26, NULL),
('Rodriquez', 'Ashley', 27, NULL),
('Tupik', 'Kevin', 28, NULL),
('Brown', 'Malia', 29, NULL),
('Lourd', 'Sarah', 30, NULL),
('Allen', 'Tom', 31, NULL),
('Gala', 'Tammer', 28, NULL);

INSERT INTO `cms`.`employee`
(`last_name`,
`first_name`,
`role_id`,
`manager_id`)
VALUES
('Herbert', 'Shawn', 26, 17),
('Indiana', 'Jones', 26, 17);