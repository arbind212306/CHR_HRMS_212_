----------13-12-2016------------------------------------------------------
ALTER TABLE `taken_leave` ADD `days` INT(255) NOT NULL AFTER `till_when`;

--create table 'notice_board'|sunny|29 jul 16
CREATE TABLE IF NOT EXISTS `passing_year` (
`id` int(11) NOT NULL,
  `passing_year` mediumint(255) NOT NULL
)

INSERT INTO `passing_year` (`id`, `passing_year`) VALUES
(1, 2001),
(2, 2002),
(3, 2003),
(4, 2004),
(5, 2005),
(6, 2006),
(7, 2007),
(8, 2008),
(9, 2009),
(10, 2010),
(11, 2011),
(12, 2012),
(13, 2013),
(14, 2014),
(15, 2015),
(16, 2016),
(17, 2017);

ALTER TABLE `passing_year`
 ADD PRIMARY KEY (`id`);


CREATE TABLE IF NOT EXISTS `month` (
`id` int(11) NOT NULL,
  `month_name` varchar(255) NOT NULL
)

INSERT INTO `month` (`id`, `month_name`) VALUES
(1, 'January'),
(2, 'february'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');
ALTER TABLE `month`
 ADD PRIMARY KEY (`id`);

CREATE TABLE IF NOT EXISTS `total_working_hours` (
`id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL,
  `logout_time` datetime NOT NULL,
  `working_hours` varchar(255) NOT NULL
)

ALTER TABLE `total_working_hours`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `total_working_hours`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--create table 'notice_board'|sunny|21 jul 16
ALTER TABLE `users_detail` CHANGE `marital_status` `marital_status` ENUM('Single','Married') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL;
ALTER TABLE `users_detail` CHANGE `gender` `gender` ENUM('Male','Female') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL;
--create table 'notice_board'|sunny|21 jul 16
CREATE TABLE IF NOT EXISTS `notice_board` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(2555) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
ALTER TABLE `notice_board`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `notice_board`
MODIFY `id` int(11) NOT NULL

--create table 'notification'|sunny|21 jul 16
CREATE TABLE IF NOT EXISTS `notification` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(2555) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `on_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(12) NOT NULL
)

ALTER TABLE `notification`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `notification`
MODIFY `id` int(11) NOT NULL 
--create table 'taken_leave'|sunny|11 jul 16
CREATE TABLE IF NOT EXISTS `taken_leave` (
`id` int(11) NOT NULL,
  `leave_type` varchar(255) NOT NULL,
  `e_code` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `from_when` date NOT NULL,
  `till_when` date NOT NULL,
  `reason` varchar(255) NOT NULL,
  `apply_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) 
ALTER TABLE `taken_leave`
 ADD PRIMARY KEY (`id`);

--create table 'leave_type'|sunny|11 jul 16
CREATE TABLE IF NOT EXISTS `leave_type` (
`id` int(11) NOT NULL,
  `leave_name` varchar(255) NOT NULL,
  `short_code` varchar(255) NOT NULL
)
INSERT INTO `leave_type` (`id`, `leave_name`, `short_code`) VALUES
(1, 'Sick Leave', 'sl'),
(2, 'Casual Leave', 'cl');
ALTER TABLE `leave_type`
 ADD PRIMARY KEY (`id`);

--create table 'full_report'|sunny|4 jul 16
ALTER TABLE `full_report` ADD `e_code` VARCHAR(255) NOT NULL AFTER `id`;

ALTER TABLE `full_report`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `full_report`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE IF NOT EXISTS `full_report` (
`id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL,
  `logout_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--alter table 'users_detail'|sunny|30 jun 16
ALTER TABLE `users_detail` CHANGE `dob` `dob` DATETIME NOT NULL;
--create table users_detail |sunny|20 jun 16
CREATE TABLE IF NOT EXISTS `users_detail` (
`id` int(30) NOT NULL,
  `code` int(255) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL
)

ALTER TABLE `users_detail`
 ADD PRIMARY KEY (`id`);

--create table prev_company |sunny|20 jun 16
CREATE TABLE IF NOT EXISTS `prev_company` (
`id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `exp` varchar(255) NOT NULL,
  `company1` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `company2` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL
)

ALTER TABLE `prev_company`
 ADD PRIMARY KEY (`id`);

--create table passing_year |sunny|20 jun 16
CREATE TABLE IF NOT EXISTS `passing_year` (
`id` int(255) NOT NULL,
  `year` int(255) NOT NULL
) 

INSERT INTO `passing_year` (`id`, `year`) VALUES
(1, 2000),
(2, 2001),
(3, 2002),
(4, 2003),
(5, 2004),
(6, 2005),
(7, 2006),
(8, 2007),
(9, 2008),
(10, 2009),
(11, 2010),
(12, 2011),
(13, 2012),
(14, 2013),
(15, 2014),
(16, 2015),
(17, 2016);

ALTER TABLE `passing_year`
 ADD PRIMARY KEY (`id`);

--create table login_details |sunny|20 jun 16
CREATE TABLE IF NOT EXISTS `login_details` (
`id` int(50) NOT NULL,
  `e_code` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL,
  `logout_time` datetime NOT NULL
) 

ALTER TABLE `login_details`
 ADD PRIMARY KEY (`id`);

--create table experience |sunny|20 jun 16
CREATE TABLE IF NOT EXISTS `experience` (
`id` int(255) NOT NULL,
  `exp` varchar(255) NOT NULL
)

INSERT INTO `experience` (`id`, `exp`) VALUES
(1, 'Fresher'),
(2, '1 year'),
(3, '1.5 years'),
(4, '2 years'),
(5, '2.5 years'),
(6, '3 years'),
(7, '3.5 years'),
(8, '4 years'),
(9, '4.5 years'),
(10, '5 years'),
(11, '5.5 years'),
(12, '6 years'),
(13, '6.5 years'),
(14, '7 years');

ALTER TABLE `experience`
 ADD PRIMARY KEY (`id`);
--create table educational_info |sunny|20 jun 16
CREATE TABLE IF NOT EXISTS `educational_info` (
`id` int(11) NOT NULL,
  `highest_qualification` varchar(255) NOT NULL,
  `passing_year` varchar(255) NOT NULL
)

ALTER TABLE `educational_info`
 ADD PRIMARY KEY (`id`);



--create table edit_profile_history |sunny|20 jun 16
CREATE TABLE IF NOT EXISTS `edit_profile_history` (
`id` int(11) NOT NULL,
  `code` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `status` int(255) NOT NULL
) 

ALTER TABLE `edit_profile_history`
 ADD PRIMARY KEY (`id`);


--create table course |sunny|20 jun 16
CREATE TABLE IF NOT EXISTS `course` (
`id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL
)

INSERT INTO `course` (`id`, `course_name`) VALUES
(1, 'Fresher'),
(6, 'BCA'),
(7, 'BSC-IT'),
(8, 'BTECH(CS)'),
(9, 'BTECH(IT)'),
(10, 'MCA'),
(11, 'MBA');

ALTER TABLE `course`
 ADD PRIMARY KEY (`id`);


--create table contact_info |sunny|20 jun 16
CREATE TABLE IF NOT EXISTS `contact_info` (
`id` int(255) NOT NULL,
  `code` int(11) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `e_contact` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL
) 






-- add a column fullpath in users|sunny|03 june 2016
ALTER TABLE `users` ADD `fullpath` VARCHAR(255) NOT NULL ;
--add a column filename in users |sunny|03 june 2016
ALTER TABLE `users` ADD `filename` VARCHAR(255) NOT NULL ;
--change access type of users | sunny | 30 may 2016
ALTER TABLE  `users` CHANGE  `access_type`  `access_type` VARCHAR( 255 ) NOT NULL ;
--update access type of employee | sunny | 30 may 2016
UPDATE `hrms`.`users` SET `access_type` = 'employee' WHERE `users`.`email_id` = 'emp@gmail.com';
--update access type of admin | sunny | 30 may 2016
UPDATE `hrms`.`users` SET `access_type` = 'admin' WHERE `users`.`email_id` = 'admin@gmail.com';
--update access type of super admin | sunny | 30 may 2016
UPDATE `hrms`.`users` SET `access_type` = 'super admin' WHERE `users`.`email_id` = 'superadmin@gmail.com';
--update e_contact type in users_details | sunny | 28 may 2016
ALTER TABLE `users_detail` CHANGE `e_contact` `e_contact` VARCHAR(20) NOT NULL;
--update contact type in users_details | sunny | 28 may 2016
ALTER TABLE `users_detail` CHANGE `contact` `contact` VARCHAR(20) NOT NULL;
--update super admin access type in users table | sunny | 28 may 2016
UPDATE `hrms`.`users` SET `access_type` = 'super admin' WHERE `users`.`id` = 1;
--add columns in useres_details table | sunny | 28 may 2016
ALTER TABLE `users_detail` ADD `contact` BIGINT NOT NULL AFTER `last_name`, ADD `e_contact` BIGINT NOT NULL AFTER `contact`, ADD `address` VARCHAR(255) NOT NULL AFTER `e_contact`;
-- add column in users table | sunny | 28 may 2016
ALTER TABLE `users` ADD `code` INT(11) UNSIGNED NOT NULL AFTER `e_code`;
