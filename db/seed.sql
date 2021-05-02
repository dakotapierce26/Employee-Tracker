INSERT INTO `cms`.`deparment`
(`name`)

VALUES
('Sales'),
('Legal'),
('Finance'),
('Engineering');

INSERT INTO `cms`.`role`
(`title`,
`salary`,
`department_id`)

VALUES
('Sales Lead', 100000, 1),
('Software Engineer', 1000000000, 4),
('Accountant', 1000, 3),
('Lawyer', 10000000, 2),
('Salesperson', 10, 1);


INSERT INTO `cms`.`employee`
(`first_name`,
`last_name`,
`role_id`,
`manager_id`)

VALUES
('Mike', 'Chan', 11, NULL),
('Chan', 'Chan', 12, NULL),
('Chin', 'Chan', 13, NULL),
('Chong', 'Chan', 14, NULL),
('Mikey', 'Mike', 15, NULL);

INSERT INTO `cms`.`employee`
(`first_name`,
`last_name`,
`role_id`,
`manager_id`)

VALUES
('Main', 'Mikey', 11, 1),
('Chan', 'channn', 12, 1);