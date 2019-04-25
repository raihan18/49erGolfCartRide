/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : 49erGCR_d3

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 24/04/2019 22:03:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add department', 7, 'add_department');
INSERT INTO `auth_permission` VALUES (26, 'Can change department', 7, 'change_department');
INSERT INTO `auth_permission` VALUES (27, 'Can delete department', 7, 'delete_department');
INSERT INTO `auth_permission` VALUES (28, 'Can view department', 7, 'view_department');
INSERT INTO `auth_permission` VALUES (29, 'Can add person', 8, 'add_person');
INSERT INTO `auth_permission` VALUES (30, 'Can change person', 8, 'change_person');
INSERT INTO `auth_permission` VALUES (31, 'Can delete person', 8, 'delete_person');
INSERT INTO `auth_permission` VALUES (32, 'Can view person', 8, 'view_person');
INSERT INTO `auth_permission` VALUES (33, 'Can add staff', 9, 'add_staff');
INSERT INTO `auth_permission` VALUES (34, 'Can change staff', 9, 'change_staff');
INSERT INTO `auth_permission` VALUES (35, 'Can delete staff', 9, 'delete_staff');
INSERT INTO `auth_permission` VALUES (36, 'Can view staff', 9, 'view_staff');
INSERT INTO `auth_permission` VALUES (37, 'Can add driver', 10, 'add_driver');
INSERT INTO `auth_permission` VALUES (38, 'Can change driver', 10, 'change_driver');
INSERT INTO `auth_permission` VALUES (39, 'Can delete driver', 10, 'delete_driver');
INSERT INTO `auth_permission` VALUES (40, 'Can view driver', 10, 'view_driver');
INSERT INTO `auth_permission` VALUES (41, 'Can add golf cart', 11, 'add_golfcart');
INSERT INTO `auth_permission` VALUES (42, 'Can change golf cart', 11, 'change_golfcart');
INSERT INTO `auth_permission` VALUES (43, 'Can delete golf cart', 11, 'delete_golfcart');
INSERT INTO `auth_permission` VALUES (44, 'Can view golf cart', 11, 'view_golfcart');
INSERT INTO `auth_permission` VALUES (45, 'Can add location', 12, 'add_location');
INSERT INTO `auth_permission` VALUES (46, 'Can change location', 12, 'change_location');
INSERT INTO `auth_permission` VALUES (47, 'Can delete location', 12, 'delete_location');
INSERT INTO `auth_permission` VALUES (48, 'Can view location', 12, 'view_location');
INSERT INTO `auth_permission` VALUES (49, 'Can add ride', 13, 'add_ride');
INSERT INTO `auth_permission` VALUES (50, 'Can change ride', 13, 'change_ride');
INSERT INTO `auth_permission` VALUES (51, 'Can delete ride', 13, 'delete_ride');
INSERT INTO `auth_permission` VALUES (52, 'Can view ride', 13, 'view_ride');
INSERT INTO `auth_permission` VALUES (53, 'Can add student', 14, 'add_student');
INSERT INTO `auth_permission` VALUES (54, 'Can change student', 14, 'change_student');
INSERT INTO `auth_permission` VALUES (55, 'Can delete student', 14, 'delete_student');
INSERT INTO `auth_permission` VALUES (56, 'Can view student', 14, 'view_student');
INSERT INTO `auth_permission` VALUES (57, 'Can add student department', 15, 'add_studentdepartment');
INSERT INTO `auth_permission` VALUES (58, 'Can change student department', 15, 'change_studentdepartment');
INSERT INTO `auth_permission` VALUES (59, 'Can delete student department', 15, 'delete_studentdepartment');
INSERT INTO `auth_permission` VALUES (60, 'Can view student department', 15, 'view_studentdepartment');
INSERT INTO `auth_permission` VALUES (61, 'Can add ride rating', 16, 'add_riderating');
INSERT INTO `auth_permission` VALUES (62, 'Can change ride rating', 16, 'change_riderating');
INSERT INTO `auth_permission` VALUES (63, 'Can delete ride rating', 16, 'delete_riderating');
INSERT INTO `auth_permission` VALUES (64, 'Can view ride rating', 16, 'view_riderating');
INSERT INTO `auth_permission` VALUES (65, 'Can add professor', 17, 'add_professor');
INSERT INTO `auth_permission` VALUES (66, 'Can change professor', 17, 'change_professor');
INSERT INTO `auth_permission` VALUES (67, 'Can delete professor', 17, 'delete_professor');
INSERT INTO `auth_permission` VALUES (68, 'Can view professor', 17, 'view_professor');
INSERT INTO `auth_permission` VALUES (69, 'Can add Token', 18, 'add_token');
INSERT INTO `auth_permission` VALUES (70, 'Can change Token', 18, 'change_token');
INSERT INTO `auth_permission` VALUES (71, 'Can delete Token', 18, 'delete_token');
INSERT INTO `auth_permission` VALUES (72, 'Can view Token', 18, 'view_token');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$slUKtSe9VlLa$5qo/6avMsCdpxcn59ASxso7AnjhSGquaH3/FxGcY4f4=', '2019-04-18 15:26:21.490791', 1, 'owner', '', '', 'nrjohannessen1@gmail.com', 1, 1, '2019-04-16 15:35:28.903705');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$150000$hhPmp7VHSGRR$BR/fifowC47QRmOR+OHGZjL+aC7A+5j4AoYrwqT09Gs=', NULL, 1, 'admin', '', '', 'anayeem@uncc.edu', 1, 1, '2019-04-20 02:46:17.951487');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------
BEGIN;
INSERT INTO `authtoken_token` VALUES ('678bca15951b5b94305897a7ce90847fc40ad924', '2019-04-20 02:46:26.574575', 2);
COMMIT;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of department
-- ----------------------------
BEGIN;
INSERT INTO `department` VALUES (3, 'Facilities Management');
INSERT INTO `department` VALUES (4, 'College of Business');
INSERT INTO `department` VALUES (5, 'College of Arts + Architecture');
INSERT INTO `department` VALUES (6, 'College of Computing and Informatics');
INSERT INTO `department` VALUES (7, 'College of Education');
INSERT INTO `department` VALUES (8, 'College of Health and Human Services');
INSERT INTO `department` VALUES (9, 'College of Liberal Arts & Sciences');
INSERT INTO `department` VALUES (10, 'University College');
INSERT INTO `department` VALUES (11, 'College of Engineering');
INSERT INTO `department` VALUES (12, 'Graduate School');
INSERT INTO `department` VALUES (13, 'Honors College');
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES (1, '2019-04-17 06:34:01.132843', '1', 'Center for Counseling and Psychological Services', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2019-04-17 06:37:39.130225', '1', 'Center for Counseling and Psychological Services', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (3, '2019-04-17 06:58:02.558038', '1', 'Club Car Villager 2 LSV', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (4, '2019-04-17 06:58:12.016838', '2', 'Club Car Villager 2 LSV', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (5, '2019-04-17 07:02:51.223613', '3', 'Club Car Villager 2 LSV', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (6, '2019-04-17 07:03:13.466144', '4', 'Club Car Villager 2 LSV', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (7, '2019-04-17 07:04:46.566573', '5', 'Club Car Villager 2+2 LSV', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (8, '2019-04-17 07:04:54.741360', '6', 'Club Car Villager 2+2 LSV', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (9, '2019-04-17 07:05:10.007822', '7', 'Club Car Villager 2+2 LSV', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (10, '2019-04-17 07:05:23.770322', '8', 'Club Car Villager 2+2 LSV', 1, '[{\"added\": {}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (11, '2019-04-18 15:27:10.700149', '2', 'Administration', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (12, '2019-04-18 15:27:53.775111', '3', 'Facility Management', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (13, '2019-04-18 15:29:56.013647', '4', 'College of Business', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (14, '2019-04-18 15:30:23.498398', '5', 'College of Arts + Architecture', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (15, '2019-04-18 15:30:47.549398', '6', 'College of Computing and Informatics', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (16, '2019-04-18 15:31:00.295690', '7', 'College of Education', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (17, '2019-04-18 15:31:20.872756', '8', 'College of Health and Human Services', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (18, '2019-04-18 15:31:47.496125', '9', 'College of Liberal Arts & Sciences', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (19, '2019-04-18 15:32:08.509893', '10', 'University College', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (20, '2019-04-18 15:32:18.765824', '11', 'College of Engineering', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (21, '2019-04-18 15:32:34.259446', '12', 'Graduate School', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (22, '2019-04-18 15:32:42.742678', '13', 'Honors College', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (23, '2019-04-18 15:33:51.766899', '3', 'Facilities Management', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (24, '2019-04-18 16:30:40.529572', '150', 'Nayda Austin', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (25, '2019-04-18 16:30:57.180296', '149', 'Silas Tillman', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (26, '2019-04-18 16:31:04.570681', '148', 'Dean Sweet', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (27, '2019-04-18 16:35:53.499927', '150', 'Nayda Austin', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (28, '2019-04-18 16:36:23.549977', '149', 'Silas Tillman', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (29, '2019-04-18 16:36:35.943934', '148', 'Dean Sweet', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (30, '2019-04-18 16:37:40.905408', '148', 'Dean Sweet', 2, '[]', 8, 1);
INSERT INTO `django_admin_log` VALUES (31, '2019-04-18 16:37:50.546157', '147', 'Harlan Boyer', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (32, '2019-04-18 16:38:03.750670', '146', 'Haviva Thomas', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (33, '2019-04-18 16:38:17.030289', '145', 'Steven Kemp', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (34, '2019-04-18 16:38:41.375831', '144', 'Mariam Odonnell', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (35, '2019-04-18 16:38:50.214821', '143', 'Shad Williams', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (36, '2019-04-18 16:39:00.513319', '142', 'Ina Porter', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (37, '2019-04-18 16:39:13.337742', '141', 'Briar Cohen', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (38, '2019-04-18 16:39:33.955730', '140', 'Zachary Livingston', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (39, '2019-04-18 16:39:44.182808', '139', 'Asher Best', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (40, '2019-04-18 16:39:54.317102', '138', 'Kelsie Whitney', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (41, '2019-04-18 16:40:08.324405', '137', 'Uta Randall', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (42, '2019-04-18 16:40:19.412125', '136', 'Sylvester Yates', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (43, '2019-04-18 16:40:29.842103', '135', 'Gareth Atkins', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (44, '2019-04-18 16:40:38.672898', '134', 'Sean Henson', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (45, '2019-04-18 16:40:56.680005', '133', 'Karly Bray', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (46, '2019-04-18 16:41:08.375646', '132', 'Tiger Ashley', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (47, '2019-04-18 16:41:41.715916', '131', 'Berk Orr', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (48, '2019-04-18 16:42:14.184304', '130', 'Kennan Francis', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (49, '2019-04-18 16:42:25.061580', '129', 'Francis Crane', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (50, '2019-04-18 16:42:36.528110', '128', 'Desirae Gay', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (51, '2019-04-18 16:42:49.726329', '127', 'Marvin Leon', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (52, '2019-04-18 16:43:01.940109', '126', 'Carl Trevino', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (53, '2019-04-18 16:43:13.663114', '125', 'Garrett Nguyen', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (54, '2019-04-18 16:43:26.939164', '124', 'Alea Hale', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (55, '2019-04-18 16:43:39.941312', '123', 'Emily Skinner', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (56, '2019-04-18 16:43:48.710132', '122', 'Selma Beck', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (57, '2019-04-18 16:43:58.235026', '121', 'Audrey Noel', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (58, '2019-04-18 16:45:49.203920', '158', 'Tobias Quinn', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (59, '2019-04-18 16:45:57.196045', '157', 'Victor Potter', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (60, '2019-04-18 16:46:04.577900', '156', 'Rogan Jarvis', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (61, '2019-04-18 16:46:11.841566', '155', 'Sarah Watts', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (62, '2019-04-18 16:46:18.866791', '154', 'Amy Mcconnell', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (63, '2019-04-18 16:46:26.376881', '153', 'Julie Rosales', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (64, '2019-04-18 16:46:34.388930', '152', 'Connor Chapman', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (65, '2019-04-18 16:46:42.552204', '151', 'Chanda Thornton', 2, '[{\"changed\": {\"fields\": [\"sub_type\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (66, '2019-04-18 17:07:57.673502', '151', 'Chanda Thornton', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (67, '2019-04-18 17:09:18.717847', '152', 'Connor Chapman', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (68, '2019-04-18 17:10:09.400119', '153', 'Julie Rosales', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (69, '2019-04-18 17:11:02.572946', '154', 'Amy Mcconnell', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (70, '2019-04-18 17:12:53.889749', '155', 'Sarah Watts', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (71, '2019-04-18 17:13:43.461360', '156', 'Rogan Jarvis', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (72, '2019-04-18 17:14:33.648521', '157', 'Victor Potter', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (73, '2019-04-18 17:16:15.707611', '158', 'Tobias Quinn', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (74, '2019-04-18 17:30:06.021482', '1', 'Student Union', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (75, '2019-04-18 17:33:17.600901', '2', 'West Deck', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (76, '2019-04-18 17:44:39.443547', '3', 'UNCC Main Station', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (77, '2019-04-18 17:49:44.421186', '4', 'Belk Gymnasium', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (78, '2019-04-18 17:54:25.004210', '5', 'Cone University Center', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (79, '2019-04-18 17:58:18.046101', '131', 'Berk Orr', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (80, '2019-04-18 18:00:33.355793', '133', 'Karly Bray', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (81, '2019-04-18 18:03:06.014834', '132', 'Tiger Ashley', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (82, '2019-04-18 18:04:18.597447', '134', 'Sean Henson', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (83, '2019-04-18 18:07:18.762587', '135', 'Gareth Atkins', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (84, '2019-04-18 18:07:46.239120', '136', 'Sylvester Yates', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (85, '2019-04-18 18:08:29.760281', '137', 'Uta Randall', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (86, '2019-04-18 18:09:40.868028', '138', 'Kelsie Whitney', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (87, '2019-04-18 18:12:26.843694', '139', 'Asher Best', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (88, '2019-04-18 18:12:48.621565', '140', 'Zachary Livingston', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (89, '2019-04-18 18:13:26.481431', '134', 'Sean Henson', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (90, '2019-04-18 18:13:40.883588', '133', 'Karly Bray', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (91, '2019-04-18 18:13:48.376889', '132', 'Tiger Ashley', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (92, '2019-04-18 18:14:07.105868', '131', 'Berk Orr', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (93, '2019-04-18 18:21:53.115177', '121', 'Audrey Noel', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (94, '2019-04-18 18:22:15.842504', '122', 'Selma Beck', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (95, '2019-04-18 18:23:35.700134', '123', 'Emily Skinner', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (96, '2019-04-18 18:23:58.526032', '124', 'Alea Hale', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (97, '2019-04-18 18:26:09.076504', '125', 'Garrett Nguyen', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (98, '2019-04-18 18:26:49.350750', '126', 'Carl Trevino', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (99, '2019-04-18 18:27:05.546284', '127', 'Marvin Leon', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (100, '2019-04-18 18:29:15.041693', '128', 'Desirae Gay', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (101, '2019-04-18 18:31:31.419002', '129', 'Francis Crane', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (102, '2019-04-18 18:34:18.145220', '130', 'Kennan Francis', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (103, '2019-04-18 18:38:41.109744', '141', 'Briar Cohen', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (104, '2019-04-18 18:39:35.493240', '142', 'Ina Porter', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (105, '2019-04-18 18:40:16.236433', '143', 'Shad Williams', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (106, '2019-04-18 18:41:04.271854', '144', 'Mariam Odonnell', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (107, '2019-04-18 18:41:33.491275', '145', 'Steven Kemp', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (108, '2019-04-18 18:42:17.880604', '146', 'Haviva Thomas', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (109, '2019-04-18 18:43:08.385442', '147', 'Harlan Boyer', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (110, '2019-04-18 18:44:25.059314', '148', 'Dean Sweet', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (111, '2019-04-18 18:44:53.515599', '149', 'Silas Tillman', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (112, '2019-04-18 18:45:33.096290', '150', 'Nayda Austin', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (113, '2019-04-18 18:47:09.388429', '1', 'Briar Cohen :: College of Business', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (114, '2019-04-18 18:47:17.041162', '2', 'Ina Porter :: College of Arts + Architecture', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (115, '2019-04-18 18:47:23.883499', '3', 'Shad Williams :: College of Computing and Informatics', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (116, '2019-04-18 18:47:31.584147', '4', 'Mariam Odonnell :: College of Education', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (117, '2019-04-18 18:47:38.554096', '5', 'Steven Kemp :: College of Health and Human Services', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (118, '2019-04-18 18:47:46.824252', '6', 'Haviva Thomas :: College of Liberal Arts & Sciences', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (119, '2019-04-18 18:48:05.702458', '7', 'Harlan Boyer :: College of Engineering', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (120, '2019-04-18 18:48:52.111971', '8', 'Dean Sweet :: College of Liberal Arts & Sciences', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (121, '2019-04-18 18:49:01.908736', '9', 'Silas Tillman :: College of Liberal Arts & Sciences', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (122, '2019-04-18 18:49:13.943900', '10', 'Nayda Austin :: College of Engineering', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (123, '2019-04-18 18:50:36.210023', '2', 'Administration', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (124, '2019-04-18 19:08:21.206098', '8', 'Club Car Villager 2+2 LSV 1', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (125, '2019-04-18 19:08:31.541633', '7', 'Club Car Villager 2+2 LSV 2', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (126, '2019-04-18 19:08:38.046985', '6', 'Club Car Villager 2+2 LSV 3', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (127, '2019-04-18 19:08:43.969174', '5', 'Club Car Villager 2+2 LSV 4', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (128, '2019-04-18 19:08:49.987673', '4', 'Club Car Villager 2 LSV 5', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (129, '2019-04-18 19:08:57.517420', '4', 'Club Car Villager 2 LSV 1', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (130, '2019-04-18 19:09:03.258152', '3', 'Club Car Villager 2 LSV 2', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (131, '2019-04-18 19:09:08.894044', '2', 'Club Car Villager 2 LSV 3', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (132, '2019-04-18 19:09:14.884440', '1', 'Club Car Villager 2 LSV 4', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (133, '2019-04-18 19:09:44.522264', '1', 'Audrey Noel:: 1', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (134, '2019-04-18 19:09:55.142318', '1', 'Audrey Noel:: 1', 2, '[{\"changed\": {\"fields\": [\"golf_cart\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (135, '2019-04-18 19:12:07.942079', '2', 'Selma Beck:: 2', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (136, '2019-04-18 19:14:19.404225', '3', 'Emily Skinner:: 3', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (137, '2019-04-18 19:14:36.529469', '2', 'Selma Beck:: 2', 2, '[{\"changed\": {\"fields\": [\"golf_cart\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (138, '2019-04-18 19:17:43.316404', '153', 'Julie Rosales', 2, '[{\"changed\": {\"fields\": [\"date_hired\"]}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (139, '2019-04-18 19:18:55.049420', '4', 'Garrett Nguyen:: 4', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (140, '2019-04-18 19:19:16.824682', '3', 'Emily Skinner:: 3', 2, '[{\"changed\": {\"fields\": [\"is_completed\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (141, '2019-04-18 19:21:30.849361', '5', 'Sean Henson:: 5', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (142, '2019-04-18 19:23:25.480056', '6', 'Harlan Boyer:: 6', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (143, '2019-04-18 19:29:24.520410', '7', 'Uta Randall:: 7', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (144, '2019-04-18 19:31:31.485093', '8', 'Haviva Thomas:: 8', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (145, '2019-04-18 19:33:38.499526', '9', 'Kelsie Whitney:: 9', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (146, '2019-04-18 19:39:17.163622', '10', 'Karly Bray:: 10', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (147, '2019-04-18 19:58:35.850945', '1', 'RideRating object (1)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (148, '2019-04-18 19:59:07.251851', '2', 'RideRating object (2)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (149, '2019-04-18 20:00:13.223310', '3', 'RideRating object (3)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (150, '2019-04-18 20:01:39.185192', '4', 'RideRating object (4)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (151, '2019-04-18 20:03:01.256755', '5', 'RideRating object (5)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (152, '2019-04-18 20:03:26.219032', '6', 'RideRating object (6)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (153, '2019-04-18 20:04:05.573373', '7', 'RideRating object (7)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (154, '2019-04-18 20:04:27.893327', '8', 'RideRating object (8)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (155, '2019-04-18 20:05:24.929548', '9', 'RideRating object (9)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (156, '2019-04-18 20:06:02.430025', '10', 'RideRating object (10)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (157, '2019-04-18 20:14:44.007802', '11', 'Shad Williams:: 11', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (158, '2019-04-18 20:16:46.777709', '12', 'Asher Best:: 12', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (159, '2019-04-18 20:19:05.331952', '13', 'Dean Sweet:: 13', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (160, '2019-04-18 20:21:57.592586', '14', 'Marvin Leon:: 14', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (161, '2019-04-18 20:25:47.368165', '15', 'Mariam Odonnell:: 15', 1, '[{\"added\": {}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (162, '2019-04-18 20:26:32.370498', '5', 'RideRating object (5)', 2, '[{\"changed\": {\"fields\": [\"rating\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (163, '2019-04-18 20:28:33.571558', '10', 'RideRating object (10)', 2, '[{\"changed\": {\"fields\": [\"complete_date\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (164, '2019-04-18 20:29:04.209823', '9', 'RideRating object (9)', 2, '[{\"changed\": {\"fields\": [\"complete_date\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (165, '2019-04-18 20:29:24.579880', '8', 'RideRating object (8)', 2, '[{\"changed\": {\"fields\": [\"complete_date\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (166, '2019-04-18 20:30:02.900833', '7', 'RideRating object (7)', 2, '[{\"changed\": {\"fields\": [\"complete_date\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (167, '2019-04-18 20:31:26.047432', '6', 'RideRating object (6)', 2, '[{\"changed\": {\"fields\": [\"complete_date\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (168, '2019-04-18 20:31:49.548841', '5', 'RideRating object (5)', 2, '[{\"changed\": {\"fields\": [\"complete_date\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (169, '2019-04-18 20:32:10.081750', '4', 'RideRating object (4)', 2, '[{\"changed\": {\"fields\": [\"complete_date\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (170, '2019-04-18 20:32:31.494114', '3', 'RideRating object (3)', 2, '[{\"changed\": {\"fields\": [\"complete_date\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (171, '2019-04-18 20:33:26.949845', '2', 'RideRating object (2)', 2, '[{\"changed\": {\"fields\": [\"complete_date\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (172, '2019-04-18 20:33:48.440383', '1', 'RideRating object (1)', 2, '[{\"changed\": {\"fields\": [\"complete_date\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (173, '2019-04-18 20:34:15.802312', '9', 'RideRating object (9)', 2, '[{\"changed\": {\"fields\": [\"rating\"]}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (174, '2019-04-18 20:37:10.602126', '7', 'Uta Randall:: 7', 2, '[{\"changed\": {\"fields\": [\"driver\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (175, '2019-04-18 20:37:48.447802', '7', 'Uta Randall:: 7', 2, '[{\"changed\": {\"fields\": [\"golf_cart\"]}}]', 13, 1);
INSERT INTO `django_admin_log` VALUES (176, '2019-04-18 20:39:15.887917', '11', 'RideRating object (11)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (177, '2019-04-18 20:40:04.100100', '12', 'RideRating object (12)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (178, '2019-04-18 20:40:53.178544', '13', 'RideRating object (13)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (179, '2019-04-18 20:43:28.052307', '14', 'RideRating object (14)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (180, '2019-04-18 20:45:00.965097', '15', 'RideRating object (15)', 1, '[{\"added\": {}}]', 16, 1);
INSERT INTO `django_admin_log` VALUES (181, '2019-04-18 21:15:31.816866', '8', 'Club Car Villager 2+2 LSV', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (182, '2019-04-18 21:15:39.290212', '7', 'Club Car Villager 2+2 LSV', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (183, '2019-04-18 21:15:46.199535', '6', 'Club Car Villager 2+2 LSV', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (184, '2019-04-18 21:15:52.751268', '5', 'Club Car Villager 2+2 LSV', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (185, '2019-04-18 21:16:00.418114', '4', 'Club Car Villager 2 LSV', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (186, '2019-04-18 21:16:07.967589', '3', 'Club Car Villager 2 LSV', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (187, '2019-04-18 21:16:14.584696', '2', 'Club Car Villager 2 LSV', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
INSERT INTO `django_admin_log` VALUES (188, '2019-04-18 21:16:21.261667', '1', 'Club Car Villager 2 LSV', 2, '[{\"changed\": {\"fields\": [\"cart_model\"]}}]', 11, 1);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (18, 'authtoken', 'token');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'golfCartRideAPI', 'department');
INSERT INTO `django_content_type` VALUES (10, 'golfCartRideAPI', 'driver');
INSERT INTO `django_content_type` VALUES (11, 'golfCartRideAPI', 'golfcart');
INSERT INTO `django_content_type` VALUES (12, 'golfCartRideAPI', 'location');
INSERT INTO `django_content_type` VALUES (8, 'golfCartRideAPI', 'person');
INSERT INTO `django_content_type` VALUES (17, 'golfCartRideAPI', 'professor');
INSERT INTO `django_content_type` VALUES (13, 'golfCartRideAPI', 'ride');
INSERT INTO `django_content_type` VALUES (16, 'golfCartRideAPI', 'riderating');
INSERT INTO `django_content_type` VALUES (9, 'golfCartRideAPI', 'staff');
INSERT INTO `django_content_type` VALUES (14, 'golfCartRideAPI', 'student');
INSERT INTO `django_content_type` VALUES (15, 'golfCartRideAPI', 'studentdepartment');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-04-16 15:24:22.147983');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2019-04-16 15:24:25.481769');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2019-04-16 15:24:44.925147');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-04-16 15:24:49.803910');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-16 15:24:49.936557');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2019-04-16 15:24:52.934856');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2019-04-16 15:24:54.757005');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2019-04-16 15:24:55.321150');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2019-04-16 15:24:55.404928');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2019-04-16 15:24:56.924861');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2019-04-16 15:24:56.973695');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-16 15:24:57.046500');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2019-04-16 15:24:59.129569');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-16 15:25:03.540613');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2019-04-16 15:25:03.916947');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2019-04-16 15:25:03.979779');
INSERT INTO `django_migrations` VALUES (17, 'golfCartRideAPI', '0001_initial', '2019-04-16 15:25:04.870413');
INSERT INTO `django_migrations` VALUES (18, 'golfCartRideAPI', '0002_staff', '2019-04-16 15:25:05.598467');
INSERT INTO `django_migrations` VALUES (19, 'golfCartRideAPI', '0003_auto_20190411_0309', '2019-04-16 15:25:13.627957');
INSERT INTO `django_migrations` VALUES (20, 'golfCartRideAPI', '0004_auto_20190411_1225', '2019-04-16 15:25:56.879341');
INSERT INTO `django_migrations` VALUES (21, 'golfCartRideAPI', '0005_auto_20190411_1313', '2019-04-16 15:26:05.013338');
INSERT INTO `django_migrations` VALUES (22, 'golfCartRideAPI', '0006_auto_20190412_1307', '2019-04-16 15:26:06.883872');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2019-04-16 15:26:09.343297');
INSERT INTO `django_migrations` VALUES (24, 'authtoken', '0001_initial', '2019-04-20 01:50:18.879695');
INSERT INTO `django_migrations` VALUES (25, 'authtoken', '0002_auto_20160226_1747', '2019-04-20 01:50:19.073823');
INSERT INTO `django_migrations` VALUES (26, 'golfCartRideAPI', '0007_auto_20190420_0238', '2019-04-20 02:39:04.724097');
INSERT INTO `django_migrations` VALUES (27, 'golfCartRideAPI', '0008_remove_ride_driver', '2019-04-20 02:42:17.739118');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('87sryjnkjkwyya0i5y6xz2nuaatwswt5', 'ODY4NDBkMDkzZTA1ZWQ0ZTg4YTExNjU2ZTU3NTgwNjg0YmJmYmUyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTgzMWQ1NWY5NDUyMzdkYjQzYTk0YThiYTkzYWQ4NmZkNmIxMmFmIn0=', '2019-04-30 15:41:41.149075');
COMMIT;

-- ----------------------------
-- Table structure for driver
-- ----------------------------
DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `dateHired` date NOT NULL,
  `licenseNum` varchar(100) NOT NULL,
  `golfcart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Driver_golfcart_id_875f0859_fk_GolfCart_id` (`golfcart_id`),
  CONSTRAINT `Driver_golfcart_id_875f0859_fk_GolfCart_id` FOREIGN KEY (`golfcart_id`) REFERENCES `golfcart` (`id`),
  CONSTRAINT `Driver_id_db236012_fk_Person_id` FOREIGN KEY (`id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of driver
-- ----------------------------
BEGIN;
INSERT INTO `driver` VALUES (151, '2019-04-12', '484444855215', 1);
INSERT INTO `driver` VALUES (152, '2019-03-21', '135296555896', 2);
INSERT INTO `driver` VALUES (153, '2018-09-27', '466455744826', 3);
INSERT INTO `driver` VALUES (154, '2018-12-24', '114324957519', 4);
INSERT INTO `driver` VALUES (155, '2018-11-13', '633678548645', 5);
INSERT INTO `driver` VALUES (156, '2018-08-08', '594497156669', 6);
INSERT INTO `driver` VALUES (157, '2019-04-05', '452776575447', 7);
INSERT INTO `driver` VALUES (158, '2019-03-15', '115578767789', 8);
COMMIT;

-- ----------------------------
-- Table structure for golfcart
-- ----------------------------
DROP TABLE IF EXISTS `golfcart`;
CREATE TABLE `golfcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `numSeats` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of golfcart
-- ----------------------------
BEGIN;
INSERT INTO `golfcart` VALUES (1, 'Club Car', 'Villager 2 LSV', 2);
INSERT INTO `golfcart` VALUES (2, 'Club Car', 'Villager 2 LSV', 2);
INSERT INTO `golfcart` VALUES (3, 'Club Car', 'Villager 2 LSV', 2);
INSERT INTO `golfcart` VALUES (4, 'Club Car', 'Villager 2 LSV', 2);
INSERT INTO `golfcart` VALUES (5, 'Club Car', 'Villager 2+2 LSV', 4);
INSERT INTO `golfcart` VALUES (6, 'Club Car', 'Villager 2+2 LSV', 4);
INSERT INTO `golfcart` VALUES (7, 'Club Car', 'Villager 2+2 LSV', 4);
INSERT INTO `golfcart` VALUES (8, 'Club Car', 'Villager 2+2 LSV', 4);
COMMIT;

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of location
-- ----------------------------
BEGIN;
INSERT INTO `location` VALUES (1, 'Student Union', '9201 University City Blvd, Charlotte, NC 28223', '35.3087 Degrees N', '80.7337 Degrees W');
INSERT INTO `location` VALUES (2, 'West Deck', '8724 Cameron Blvd, Charlotte, NC 28223', '35.3055 Degrees N', '80.7365 Degrees W');
INSERT INTO `location` VALUES (3, 'UNCC Main Station', '9025 Cameron Blvd, Charlotte, NC 28262', '35.3122 Degrees N', '80.7337 Degrees W');
INSERT INTO `location` VALUES (4, 'Belk Gymnasium', '9201 University City Blvd, Charlotte, NC 28223', '35.3054 Degrees N', '80.7355 Degrees W');
INSERT INTO `location` VALUES (5, 'Cone University Center', '9025 University Rd, Charlotte, NC 28262', '35.3054 Degrees N', '80.7332 Degrees W');
COMMIT;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `subtype` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of person
-- ----------------------------
BEGIN;
INSERT INTO `person` VALUES (121, 'Audrey', 'Noel', 'eu.dui.Cum@tellus.edu', '(868) 906-4256', 'staff');
INSERT INTO `person` VALUES (122, 'Selma', 'Beck', 'ut.molestie@malesuada.org', '(146) 543-1084', 'staff');
INSERT INTO `person` VALUES (123, 'Emily', 'Skinner', 'Fusce.diam@in.org', '(127) 434-5379', 'staff');
INSERT INTO `person` VALUES (124, 'Alea', 'Hale', 'aliquet.nec.imperdiet@Maecenasornareegestas.com', '(284) 625-2298', 'staff');
INSERT INTO `person` VALUES (125, 'Garrett', 'Nguyen', 'ut.odio@eunullaat.org', '(283) 508-7457', 'staff');
INSERT INTO `person` VALUES (126, 'Carl', 'Trevino', 'Suspendisse@PraesentluctusCurabitur.com', '(893) 843-4609', 'staff');
INSERT INTO `person` VALUES (127, 'Marvin', 'Leon', 'euismod.et.commodo@acarcuNunc.edu', '(637) 275-3400', 'staff');
INSERT INTO `person` VALUES (128, 'Desirae', 'Gay', 'laoreet.posuere@ridiculusmusProin.com', '(302) 753-2671', 'staff');
INSERT INTO `person` VALUES (129, 'Francis', 'Crane', 'arcu.Vestibulum@magnis.ca', '(612) 796-5762', 'staff');
INSERT INTO `person` VALUES (130, 'Kennan', 'Francis', 'egestas.urna@scelerisqueneque.ca', '(670) 870-3134', 'staff');
INSERT INTO `person` VALUES (131, 'Berk', 'Orr', 'scelerisque@sagittissemper.net', '(580) 719-3184', 'professor');
INSERT INTO `person` VALUES (132, 'Tiger', 'Ashley', 'nascetur.ridiculus.mus@mollisnon.co.uk', '(344) 315-7404', 'professor');
INSERT INTO `person` VALUES (133, 'Karly', 'Bray', 'suscipit.nonummy@iaculislacuspede.edu', '(869) 399-2620', 'professor');
INSERT INTO `person` VALUES (134, 'Sean', 'Henson', 'sed.turpis.nec@nonummyFusce.org', '(851) 553-9188', 'professor');
INSERT INTO `person` VALUES (135, 'Gareth', 'Atkins', 'dapibus@turpis.co.uk', '(286) 860-6443', 'professor');
INSERT INTO `person` VALUES (136, 'Sylvester', 'Yates', 'fringilla.porttitor.vulputate@nibhenim.net', '(525) 634-1484', 'professor');
INSERT INTO `person` VALUES (137, 'Uta', 'Randall', 'placerat.velit@Nuncpulvinararcu.edu', '(378) 886-1536', 'professor');
INSERT INTO `person` VALUES (138, 'Kelsie', 'Whitney', 'arcu@montesnasceturridiculus.net', '(194) 229-9627', 'professor');
INSERT INTO `person` VALUES (139, 'Asher', 'Best', 'nunc.interdum.feugiat@dignissimMaecenasornare.com', '(276) 531-9554', 'professor');
INSERT INTO `person` VALUES (140, 'Zachary', 'Livingston', 'ad.litora@Vivamuseuismodurna.edu', '(392) 439-5257', 'professor');
INSERT INTO `person` VALUES (141, 'Briar', 'Cohen', 'elit.elit.fermentum@feugiatSed.co.uk', '(795) 562-8950', 'student');
INSERT INTO `person` VALUES (142, 'Ina', 'Porter', 'Fusce.mollis.Duis@loremfringilla.org', '(383) 112-2303', 'student');
INSERT INTO `person` VALUES (143, 'Shad', 'Williams', 'dignissim@arcuvel.com', '(790) 473-2497', 'student');
INSERT INTO `person` VALUES (144, 'Mariam', 'Odonnell', 'convallis.ante@non.co.uk', '(212) 541-4741', 'student');
INSERT INTO `person` VALUES (145, 'Steven', 'Kemp', 'vehicula.et.rutrum@aodio.ca', '(757) 738-3966', 'student');
INSERT INTO `person` VALUES (146, 'Haviva', 'Thomas', 'a.sollicitudin@semmolestiesodales.ca', '(275) 501-0382', 'student');
INSERT INTO `person` VALUES (147, 'Harlan', 'Boyer', 'non.vestibulum.nec@aceleifend.org', '(738) 519-8158', 'student');
INSERT INTO `person` VALUES (148, 'Dean', 'Sweet', 'at@aliquam.edu', '(431) 485-9169', 'student');
INSERT INTO `person` VALUES (149, 'Silas', 'Tillman', 'nisi.dictum@elit.co.uk', '(458) 135-6700', 'student');
INSERT INTO `person` VALUES (150, 'Nayda', 'Austin', 'eleifend.nunc.risus@eueros.edu', '(946) 913-4146', 'student');
INSERT INTO `person` VALUES (151, 'Chanda', 'Thornton', 'aliquet@nequenon.org', '(942) 199-8070', 'driver');
INSERT INTO `person` VALUES (152, 'Connor', 'Chapman', 'diam.eu.dolor@loremacrisus.edu', '(624) 327-3599', 'driver');
INSERT INTO `person` VALUES (153, 'Julie', 'Rosales', 'adipiscing@pedesagittis.edu', '(438) 233-1049', 'driver');
INSERT INTO `person` VALUES (154, 'Amy', 'Mcconnell', 'Sed.nec@dictumplacerat.edu', '(154) 830-9886', 'driver');
INSERT INTO `person` VALUES (155, 'Sarah', 'Watts', 'varius@ornare.ca', '(603) 746-8152', 'driver');
INSERT INTO `person` VALUES (156, 'Rogan', 'Jarvis', 'Aliquam.erat.volutpat@tortorat.co.uk', '(135) 648-5622', 'driver');
INSERT INTO `person` VALUES (157, 'Victor', 'Potter', 'lorem.eu.metus@mattisornare.ca', '(623) 488-5399', 'driver');
INSERT INTO `person` VALUES (158, 'Tobias', 'Quinn', 'risus.a.ultricies@Curabitur.co.uk', '(559) 431-5548', 'driver');
COMMIT;

-- ----------------------------
-- Table structure for professor
-- ----------------------------
DROP TABLE IF EXISTS `professor`;
CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `isFullTime` tinyint(1) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Professor_department_id_5f83b978_fk_Department_id` (`department_id`),
  CONSTRAINT `Professor_department_id_5f83b978_fk_Department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `Professor_id_ed17b42b_fk_Person_id` FOREIGN KEY (`id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of professor
-- ----------------------------
BEGIN;
INSERT INTO `professor` VALUES (131, 'Professor', 1, 4);
INSERT INTO `professor` VALUES (132, 'Assistant Professor', 1, 5);
INSERT INTO `professor` VALUES (133, 'Part-Time Lecturer', 0, 5);
INSERT INTO `professor` VALUES (134, 'Professor', 1, 6);
INSERT INTO `professor` VALUES (135, 'Associate Professor', 1, 7);
INSERT INTO `professor` VALUES (136, 'Professor', 1, 8);
INSERT INTO `professor` VALUES (137, 'Part-Time Lecturer', 0, 9);
INSERT INTO `professor` VALUES (138, 'Assistant Professor', 1, 11);
INSERT INTO `professor` VALUES (139, 'Professor', 1, 9);
INSERT INTO `professor` VALUES (140, 'Professor', 1, 11);
COMMIT;

-- ----------------------------
-- Table structure for Ride
-- ----------------------------
DROP TABLE IF EXISTS `Ride`;
CREATE TABLE `Ride` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` datetime(6) NOT NULL,
  `endTime` datetime(6) NOT NULL,
  `end_location_id` int(11) NOT NULL,
  `golfcart_id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `start_location_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Ride_end_location_id_e2f9e42a_fk_Location_id` (`end_location_id`),
  KEY `Ride_golfcart_id_f887ecb9_fk_GolfCart_id` (`golfcart_id`),
  KEY `Ride_rider_id_feb8589e_fk_Person_id` (`rider_id`),
  KEY `Ride_start_location_id_4a5ea721_fk_Location_id` (`start_location_id`),
  CONSTRAINT `Ride_end_location_id_e2f9e42a_fk_Location_id` FOREIGN KEY (`end_location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `Ride_golfcart_id_f887ecb9_fk_GolfCart_id` FOREIGN KEY (`golfcart_id`) REFERENCES `golfcart` (`id`),
  CONSTRAINT `Ride_rider_id_feb8589e_fk_Person_id` FOREIGN KEY (`rider_id`) REFERENCES `person` (`id`),
  CONSTRAINT `Ride_start_location_id_4a5ea721_fk_Location_id` FOREIGN KEY (`start_location_id`) REFERENCES `location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Ride
-- ----------------------------
BEGIN;
INSERT INTO `Ride` VALUES (1, '2019-02-21 17:15:00.000000', '2019-02-21 17:21:00.000000', 2, 6, 121, 1, 'pending');
INSERT INTO `Ride` VALUES (2, '2019-04-01 12:00:00.000000', '2019-04-01 12:10:00.000000', 5, 8, 122, 3, 'complete');
INSERT INTO `Ride` VALUES (3, '2019-02-06 11:45:00.000000', '2019-02-06 12:01:00.000000', 3, 5, 123, 4, 'pending');
INSERT INTO `Ride` VALUES (4, '2019-02-05 10:17:00.000000', '2019-02-05 10:30:00.000000', 3, 4, 125, 5, 'pending');
INSERT INTO `Ride` VALUES (5, '2018-11-14 09:07:00.000000', '2018-11-14 09:09:00.000000', 4, 3, 134, 2, 'pending');
INSERT INTO `Ride` VALUES (6, '2018-12-09 15:27:00.000000', '2018-12-09 15:33:00.000000', 3, 6, 147, 1, 'pending');
INSERT INTO `Ride` VALUES (7, '2019-03-26 10:35:00.000000', '2019-03-26 10:42:00.000000', 5, 2, 137, 4, 'cancelled');
INSERT INTO `Ride` VALUES (8, '2018-10-12 13:06:00.000000', '2018-10-12 13:25:00.000000', 5, 3, 146, 1, 'pending');
INSERT INTO `Ride` VALUES (9, '2018-12-02 08:30:00.000000', '2018-12-02 08:31:00.000000', 4, 3, 138, 5, 'pending');
INSERT INTO `Ride` VALUES (10, '2018-12-20 07:39:00.000000', '2018-12-20 07:55:00.000000', 1, 3, 133, 4, 'pending');
INSERT INTO `Ride` VALUES (11, '2019-02-16 15:39:00.000000', '2019-02-16 15:51:00.000000', 2, 4, 143, 1, 'pending');
INSERT INTO `Ride` VALUES (12, '2018-09-19 19:21:00.000000', '2018-09-19 19:30:00.000000', 4, 6, 139, 3, 'pending');
INSERT INTO `Ride` VALUES (13, '2019-03-19 17:51:00.000000', '2019-03-19 17:59:00.000000', 2, 8, 148, 3, 'pending');
INSERT INTO `Ride` VALUES (14, '2019-04-14 11:21:00.000000', '2019-04-14 11:31:00.000000', 4, 1, 127, 1, 'pending');
INSERT INTO `Ride` VALUES (15, '2019-04-18 21:06:00.000000', '2019-04-18 21:15:00.000000', 3, 3, 144, 4, 'pending');
COMMIT;

-- ----------------------------
-- Table structure for riderating
-- ----------------------------
DROP TABLE IF EXISTS `riderating`;
CREATE TABLE `riderating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` int(11) NOT NULL,
  `ride_id` int(11) NOT NULL,
  `completeDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `RideRating_ride_id_393fa5b7_fk_Ride_id` (`ride_id`),
  CONSTRAINT `RideRating_ride_id_393fa5b7_fk_Ride_id` FOREIGN KEY (`ride_id`) REFERENCES `ride` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of riderating
-- ----------------------------
BEGIN;
INSERT INTO `riderating` VALUES (1, 2, 1, '2019-02-21');
INSERT INTO `riderating` VALUES (2, 3, 2, '2019-04-01');
INSERT INTO `riderating` VALUES (3, 3, 3, '2019-02-06');
INSERT INTO `riderating` VALUES (4, 1, 4, '2019-02-05');
INSERT INTO `riderating` VALUES (5, 0, 5, '2018-11-14');
INSERT INTO `riderating` VALUES (6, 5, 6, '2018-12-09');
INSERT INTO `riderating` VALUES (7, 3, 7, '2019-03-26');
INSERT INTO `riderating` VALUES (8, 1, 8, '2018-10-12');
INSERT INTO `riderating` VALUES (9, 0, 9, '2018-12-02');
INSERT INTO `riderating` VALUES (10, 3, 10, '2018-12-20');
INSERT INTO `riderating` VALUES (11, 3, 11, '2019-02-16');
INSERT INTO `riderating` VALUES (12, 5, 12, '2018-09-19');
INSERT INTO `riderating` VALUES (13, 2, 13, '2019-03-19');
INSERT INTO `riderating` VALUES (14, 3, 14, '2019-04-14');
INSERT INTO `riderating` VALUES (15, 2, 15, '2019-04-18');
COMMIT;

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `position` varchar(55) DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Staff_department_id_d915e875_fk_Department_id` (`department_id`),
  CONSTRAINT `Staff_department_id_d915e875_fk_Department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `Staff_id_34d299d0_fk_Person_id` FOREIGN KEY (`id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of staff
-- ----------------------------
BEGIN;
INSERT INTO `staff` VALUES (121, 'Assistant Director', 1, 3);
INSERT INTO `staff` VALUES (122, 'Advisor', 0, 10);
INSERT INTO `staff` VALUES (123, 'Graduate Enrollment Counselor', 0, 12);
INSERT INTO `staff` VALUES (124, 'Graduate Enrollment Counselor', 0, 12);
INSERT INTO `staff` VALUES (125, 'Mechanical Engineer', 0, 3);
INSERT INTO `staff` VALUES (126, 'Grounds Worker', 0, 3);
INSERT INTO `staff` VALUES (127, 'Locksmith', 0, 3);
INSERT INTO `staff` VALUES (128, 'Associate Director', 1, 3);
INSERT INTO `staff` VALUES (129, 'Advisor', 0, 10);
INSERT INTO `staff` VALUES (130, 'Application Specialist', 0, 12);
COMMIT;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `gradYear` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `Student_id_55b295a9_fk_Person_id` FOREIGN KEY (`id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES (141, '1995-01-18', '2019');
INSERT INTO `student` VALUES (142, '1996-03-24', '2020');
INSERT INTO `student` VALUES (143, '1999-08-04', '2021');
INSERT INTO `student` VALUES (144, '1996-01-24', '2019');
INSERT INTO `student` VALUES (145, '1999-08-26', '2021');
INSERT INTO `student` VALUES (146, '1999-08-01', '2022');
INSERT INTO `student` VALUES (147, '1995-05-21', '2019');
INSERT INTO `student` VALUES (148, '1995-02-10', '2019');
INSERT INTO `student` VALUES (149, '1996-01-08', '2019');
INSERT INTO `student` VALUES (150, '1996-08-09', '2019');
COMMIT;

-- ----------------------------
-- Table structure for studentdepartment
-- ----------------------------
DROP TABLE IF EXISTS `studentdepartment`;
CREATE TABLE `studentdepartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `StudentDepartment_department_id_7261a0d8_fk_Department_id` (`department_id`),
  KEY `StudentDepartment_student_id_5b5c0f22_fk_Student_id` (`student_id`),
  CONSTRAINT `StudentDepartment_department_id_7261a0d8_fk_Department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `StudentDepartment_student_id_5b5c0f22_fk_Student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of studentdepartment
-- ----------------------------
BEGIN;
INSERT INTO `studentdepartment` VALUES (1, 4, 141);
INSERT INTO `studentdepartment` VALUES (2, 5, 142);
INSERT INTO `studentdepartment` VALUES (3, 6, 143);
INSERT INTO `studentdepartment` VALUES (4, 7, 144);
INSERT INTO `studentdepartment` VALUES (5, 8, 145);
INSERT INTO `studentdepartment` VALUES (6, 9, 146);
INSERT INTO `studentdepartment` VALUES (7, 11, 147);
INSERT INTO `studentdepartment` VALUES (8, 9, 148);
INSERT INTO `studentdepartment` VALUES (9, 9, 149);
INSERT INTO `studentdepartment` VALUES (10, 11, 150);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
