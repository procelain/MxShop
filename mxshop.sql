/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : mxshop

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 16/07/2021 21:09:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (9, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (10, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (11, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 用户信息', 6, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can change 用户信息', 6, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 用户信息', 6, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (24, 'Can add 短信验证', 7, 'add_verifycode');
INSERT INTO `auth_permission` VALUES (25, 'Can change 短信验证', 7, 'change_verifycode');
INSERT INTO `auth_permission` VALUES (26, 'Can delete 短信验证', 7, 'delete_verifycode');
INSERT INTO `auth_permission` VALUES (27, 'Can view 用户信息', 6, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (28, 'Can view 短信验证', 7, 'view_verifycode');
INSERT INTO `auth_permission` VALUES (29, 'Can add 首页轮播', 8, 'add_banner');
INSERT INTO `auth_permission` VALUES (30, 'Can change 首页轮播', 8, 'change_banner');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 首页轮播', 8, 'delete_banner');
INSERT INTO `auth_permission` VALUES (32, 'Can add 商品信息', 9, 'add_goods');
INSERT INTO `auth_permission` VALUES (33, 'Can change 商品信息', 9, 'change_goods');
INSERT INTO `auth_permission` VALUES (34, 'Can delete 商品信息', 9, 'delete_goods');
INSERT INTO `auth_permission` VALUES (35, 'Can add 商品类别', 10, 'add_goodscategory');
INSERT INTO `auth_permission` VALUES (36, 'Can change 商品类别', 10, 'change_goodscategory');
INSERT INTO `auth_permission` VALUES (37, 'Can delete 商品类别', 10, 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES (38, 'Can add 宣传品牌', 11, 'add_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (39, 'Can change 宣传品牌', 11, 'change_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (40, 'Can delete 宣传品牌', 11, 'delete_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (41, 'Can add 商品轮播', 12, 'add_goodsimage');
INSERT INTO `auth_permission` VALUES (42, 'Can change 商品轮播', 12, 'change_goodsimage');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 商品轮播', 12, 'delete_goodsimage');
INSERT INTO `auth_permission` VALUES (44, 'Can add 热搜排行', 13, 'add_hotsearchwords');
INSERT INTO `auth_permission` VALUES (45, 'Can change 热搜排行', 13, 'change_hotsearchwords');
INSERT INTO `auth_permission` VALUES (46, 'Can delete 热搜排行', 13, 'delete_hotsearchwords');
INSERT INTO `auth_permission` VALUES (47, 'Can add 首页广告', 14, 'add_indexad');
INSERT INTO `auth_permission` VALUES (48, 'Can change 首页广告', 14, 'change_indexad');
INSERT INTO `auth_permission` VALUES (49, 'Can delete 首页广告', 14, 'delete_indexad');
INSERT INTO `auth_permission` VALUES (50, 'Can view 首页轮播', 8, 'view_banner');
INSERT INTO `auth_permission` VALUES (51, 'Can view 商品信息', 9, 'view_goods');
INSERT INTO `auth_permission` VALUES (52, 'Can view 商品类别', 10, 'view_goodscategory');
INSERT INTO `auth_permission` VALUES (53, 'Can view 宣传品牌', 11, 'view_goodscategorybrand');
INSERT INTO `auth_permission` VALUES (54, 'Can view 商品轮播', 12, 'view_goodsimage');
INSERT INTO `auth_permission` VALUES (55, 'Can view 热搜排行', 13, 'view_hotsearchwords');
INSERT INTO `auth_permission` VALUES (56, 'Can view 首页广告', 14, 'view_indexad');
INSERT INTO `auth_permission` VALUES (57, 'Can add 订单商品', 15, 'add_ordergoods');
INSERT INTO `auth_permission` VALUES (58, 'Can change 订单商品', 15, 'change_ordergoods');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 订单商品', 15, 'delete_ordergoods');
INSERT INTO `auth_permission` VALUES (60, 'Can add 订单信息', 16, 'add_orderinfo');
INSERT INTO `auth_permission` VALUES (61, 'Can change 订单信息', 16, 'change_orderinfo');
INSERT INTO `auth_permission` VALUES (62, 'Can delete 订单信息', 16, 'delete_orderinfo');
INSERT INTO `auth_permission` VALUES (63, 'Can add 购物车喵', 17, 'add_shoppingcart');
INSERT INTO `auth_permission` VALUES (64, 'Can change 购物车喵', 17, 'change_shoppingcart');
INSERT INTO `auth_permission` VALUES (65, 'Can delete 购物车喵', 17, 'delete_shoppingcart');
INSERT INTO `auth_permission` VALUES (66, 'Can view 订单商品', 15, 'view_ordergoods');
INSERT INTO `auth_permission` VALUES (67, 'Can view 订单信息', 16, 'view_orderinfo');
INSERT INTO `auth_permission` VALUES (68, 'Can view 购物车喵', 17, 'view_shoppingcart');
INSERT INTO `auth_permission` VALUES (69, 'Can add 收货地址', 18, 'add_useraddress');
INSERT INTO `auth_permission` VALUES (70, 'Can change 收货地址', 18, 'change_useraddress');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 收货地址', 18, 'delete_useraddress');
INSERT INTO `auth_permission` VALUES (72, 'Can add 用户收藏', 19, 'add_userfav');
INSERT INTO `auth_permission` VALUES (73, 'Can change 用户收藏', 19, 'change_userfav');
INSERT INTO `auth_permission` VALUES (74, 'Can delete 用户收藏', 19, 'delete_userfav');
INSERT INTO `auth_permission` VALUES (75, 'Can add 用户留言', 20, 'add_userleavingmessage');
INSERT INTO `auth_permission` VALUES (76, 'Can change 用户留言', 20, 'change_userleavingmessage');
INSERT INTO `auth_permission` VALUES (77, 'Can delete 用户留言', 20, 'delete_userleavingmessage');
INSERT INTO `auth_permission` VALUES (78, 'Can view 收货地址', 18, 'view_useraddress');
INSERT INTO `auth_permission` VALUES (79, 'Can view 用户收藏', 19, 'view_userfav');
INSERT INTO `auth_permission` VALUES (80, 'Can view 用户留言', 20, 'view_userleavingmessage');
INSERT INTO `auth_permission` VALUES (81, 'Can add Bookmark', 21, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (82, 'Can change Bookmark', 21, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (83, 'Can delete Bookmark', 21, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (84, 'Can add User Setting', 22, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (85, 'Can change User Setting', 22, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (86, 'Can delete User Setting', 22, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (87, 'Can add User Widget', 23, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (88, 'Can change User Widget', 23, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (89, 'Can delete User Widget', 23, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (90, 'Can add log entry', 24, 'add_log');
INSERT INTO `auth_permission` VALUES (91, 'Can change log entry', 24, 'change_log');
INSERT INTO `auth_permission` VALUES (92, 'Can delete log entry', 24, 'delete_log');
INSERT INTO `auth_permission` VALUES (93, 'Can view Bookmark', 21, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (94, 'Can view log entry', 24, 'view_log');
INSERT INTO `auth_permission` VALUES (95, 'Can view User Setting', 22, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (96, 'Can view User Widget', 23, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (97, 'Can add revision', 25, 'add_revision');
INSERT INTO `auth_permission` VALUES (98, 'Can change revision', 25, 'change_revision');
INSERT INTO `auth_permission` VALUES (99, 'Can delete revision', 25, 'delete_revision');
INSERT INTO `auth_permission` VALUES (100, 'Can add version', 26, 'add_version');
INSERT INTO `auth_permission` VALUES (101, 'Can change version', 26, 'change_version');
INSERT INTO `auth_permission` VALUES (102, 'Can delete version', 26, 'delete_version');
INSERT INTO `auth_permission` VALUES (103, 'Can view revision', 25, 'view_revision');
INSERT INTO `auth_permission` VALUES (104, 'Can view version', 26, 'view_version');
INSERT INTO `auth_permission` VALUES (105, 'Can add Token', 27, 'add_token');
INSERT INTO `auth_permission` VALUES (106, 'Can change Token', 27, 'change_token');
INSERT INTO `auth_permission` VALUES (107, 'Can delete Token', 27, 'delete_token');
INSERT INTO `auth_permission` VALUES (108, 'Can view Token', 27, 'view_token');
INSERT INTO `auth_permission` VALUES (109, 'Can add association', 28, 'add_association');
INSERT INTO `auth_permission` VALUES (110, 'Can change association', 28, 'change_association');
INSERT INTO `auth_permission` VALUES (111, 'Can delete association', 28, 'delete_association');
INSERT INTO `auth_permission` VALUES (112, 'Can add code', 29, 'add_code');
INSERT INTO `auth_permission` VALUES (113, 'Can change code', 29, 'change_code');
INSERT INTO `auth_permission` VALUES (114, 'Can delete code', 29, 'delete_code');
INSERT INTO `auth_permission` VALUES (115, 'Can add nonce', 30, 'add_nonce');
INSERT INTO `auth_permission` VALUES (116, 'Can change nonce', 30, 'change_nonce');
INSERT INTO `auth_permission` VALUES (117, 'Can delete nonce', 30, 'delete_nonce');
INSERT INTO `auth_permission` VALUES (118, 'Can add user social auth', 31, 'add_usersocialauth');
INSERT INTO `auth_permission` VALUES (119, 'Can change user social auth', 31, 'change_usersocialauth');
INSERT INTO `auth_permission` VALUES (120, 'Can delete user social auth', 31, 'delete_usersocialauth');
INSERT INTO `auth_permission` VALUES (121, 'Can add partial', 32, 'add_partial');
INSERT INTO `auth_permission` VALUES (122, 'Can change partial', 32, 'change_partial');
INSERT INTO `auth_permission` VALUES (123, 'Can delete partial', 32, 'delete_partial');
INSERT INTO `auth_permission` VALUES (124, 'Can view association', 28, 'view_association');
INSERT INTO `auth_permission` VALUES (125, 'Can view code', 29, 'view_code');
INSERT INTO `auth_permission` VALUES (126, 'Can view nonce', 30, 'view_nonce');
INSERT INTO `auth_permission` VALUES (127, 'Can view partial', 32, 'view_partial');
INSERT INTO `auth_permission` VALUES (128, 'Can view user social auth', 31, 'view_usersocialauth');

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token`  (
  `key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (27, 'authtoken', 'token');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (8, 'goods', 'banner');
INSERT INTO `django_content_type` VALUES (9, 'goods', 'goods');
INSERT INTO `django_content_type` VALUES (10, 'goods', 'goodscategory');
INSERT INTO `django_content_type` VALUES (11, 'goods', 'goodscategorybrand');
INSERT INTO `django_content_type` VALUES (12, 'goods', 'goodsimage');
INSERT INTO `django_content_type` VALUES (13, 'goods', 'hotsearchwords');
INSERT INTO `django_content_type` VALUES (14, 'goods', 'indexad');
INSERT INTO `django_content_type` VALUES (25, 'reversion', 'revision');
INSERT INTO `django_content_type` VALUES (26, 'reversion', 'version');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (28, 'social_django', 'association');
INSERT INTO `django_content_type` VALUES (29, 'social_django', 'code');
INSERT INTO `django_content_type` VALUES (30, 'social_django', 'nonce');
INSERT INTO `django_content_type` VALUES (32, 'social_django', 'partial');
INSERT INTO `django_content_type` VALUES (31, 'social_django', 'usersocialauth');
INSERT INTO `django_content_type` VALUES (15, 'trade', 'ordergoods');
INSERT INTO `django_content_type` VALUES (16, 'trade', 'orderinfo');
INSERT INTO `django_content_type` VALUES (17, 'trade', 'shoppingcart');
INSERT INTO `django_content_type` VALUES (6, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (7, 'users', 'verifycode');
INSERT INTO `django_content_type` VALUES (18, 'user_operation', 'useraddress');
INSERT INTO `django_content_type` VALUES (19, 'user_operation', 'userfav');
INSERT INTO `django_content_type` VALUES (20, 'user_operation', 'userleavingmessage');
INSERT INTO `django_content_type` VALUES (21, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-05-13 00:46:24.903741');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2021-05-13 00:46:24.992962');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2021-05-13 00:46:25.350005');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2021-05-13 00:46:25.406842');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2021-05-13 00:46:25.414607');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2021-05-13 00:46:25.421487');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2021-05-13 00:46:25.429207');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2021-05-13 00:46:25.434367');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2021-05-13 00:46:25.440155');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2021-05-13 00:46:25.447351');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2021-05-13 00:46:25.454254');
INSERT INTO `django_migrations` VALUES (12, 'users', '0001_initial', '2021-05-13 00:46:25.852094');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0001_initial', '2021-05-13 00:46:26.098308');
INSERT INTO `django_migrations` VALUES (14, 'admin', '0002_logentry_remove_auto_add', '2021-05-13 00:46:26.114237');
INSERT INTO `django_migrations` VALUES (15, 'authtoken', '0001_initial', '2021-05-13 00:46:26.210395');
INSERT INTO `django_migrations` VALUES (16, 'authtoken', '0002_auto_20160226_1747', '2021-05-13 00:46:26.303458');
INSERT INTO `django_migrations` VALUES (17, 'goods', '0001_initial', '2021-05-13 00:46:27.053422');
INSERT INTO `django_migrations` VALUES (18, 'goods', '0002_auto_20180409_0246', '2021-05-13 00:46:27.072160');
INSERT INTO `django_migrations` VALUES (19, 'goods', '0003_auto_20210513_0046', '2021-05-13 00:46:27.080579');
INSERT INTO `django_migrations` VALUES (20, 'reversion', '0001_initial', '2021-05-13 00:46:27.591168');
INSERT INTO `django_migrations` VALUES (21, 'reversion', '0002_auto_20141216_1509', '2021-05-13 00:46:27.595958');
INSERT INTO `django_migrations` VALUES (22, 'reversion', '0003_auto_20160601_1600', '2021-05-13 00:46:27.599253');
INSERT INTO `django_migrations` VALUES (23, 'reversion', '0004_auto_20160611_1202', '2021-05-13 00:46:27.604654');
INSERT INTO `django_migrations` VALUES (24, 'sessions', '0001_initial', '2021-05-13 00:46:27.643849');
INSERT INTO `django_migrations` VALUES (25, 'default', '0001_initial', '2021-05-13 00:46:27.867231');
INSERT INTO `django_migrations` VALUES (26, 'social_auth', '0001_initial', '2021-05-13 00:46:27.872476');
INSERT INTO `django_migrations` VALUES (27, 'default', '0002_add_related_name', '2021-05-13 00:46:27.953206');
INSERT INTO `django_migrations` VALUES (28, 'social_auth', '0002_add_related_name', '2021-05-13 00:46:27.958637');
INSERT INTO `django_migrations` VALUES (29, 'default', '0003_alter_email_max_length', '2021-05-13 00:46:28.012813');
INSERT INTO `django_migrations` VALUES (30, 'social_auth', '0003_alter_email_max_length', '2021-05-13 00:46:28.016597');
INSERT INTO `django_migrations` VALUES (31, 'default', '0004_auto_20160423_0400', '2021-05-13 00:46:28.025713');
INSERT INTO `django_migrations` VALUES (32, 'social_auth', '0004_auto_20160423_0400', '2021-05-13 00:46:28.030640');
INSERT INTO `django_migrations` VALUES (33, 'social_auth', '0005_auto_20160727_2333', '2021-05-13 00:46:28.054226');
INSERT INTO `django_migrations` VALUES (34, 'social_django', '0006_partial', '2021-05-13 00:46:28.168066');
INSERT INTO `django_migrations` VALUES (35, 'social_django', '0007_code_timestamp', '2021-05-13 00:46:28.283597');
INSERT INTO `django_migrations` VALUES (36, 'social_django', '0008_partial_timestamp', '2021-05-13 00:46:28.345229');
INSERT INTO `django_migrations` VALUES (37, 'trade', '0001_initial', '2021-05-13 00:46:28.521097');
INSERT INTO `django_migrations` VALUES (38, 'trade', '0002_auto_20180213_1939', '2021-05-13 00:46:28.876141');
INSERT INTO `django_migrations` VALUES (39, 'trade', '0003_auto_20180409_0246', '2021-05-13 00:46:28.898660');
INSERT INTO `django_migrations` VALUES (40, 'trade', '0004_auto_20180409_2138', '2021-05-13 00:46:28.908548');
INSERT INTO `django_migrations` VALUES (41, 'user_operation', '0001_initial', '2021-05-13 00:46:28.982775');
INSERT INTO `django_migrations` VALUES (42, 'user_operation', '0002_auto_20180213_1939', '2021-05-13 00:46:29.672748');
INSERT INTO `django_migrations` VALUES (43, 'users', '0002_auto_20180409_0246', '2021-05-13 00:46:29.687909');
INSERT INTO `django_migrations` VALUES (44, 'users', '0003_auto_20180414_1407', '2021-05-13 00:46:29.766207');
INSERT INTO `django_migrations` VALUES (45, 'users', '0004_auto_20210513_0046', '2021-05-13 00:46:29.778634');
INSERT INTO `django_migrations` VALUES (46, 'xadmin', '0001_initial', '2021-05-13 00:46:30.081145');
INSERT INTO `django_migrations` VALUES (47, 'xadmin', '0002_log', '2021-05-13 00:46:30.311379');
INSERT INTO `django_migrations` VALUES (48, 'xadmin', '0003_auto_20160715_0100', '2021-05-13 00:46:30.433694');
INSERT INTO `django_migrations` VALUES (49, 'reversion', '0001_squashed_0004_auto_20160611_1202', '2021-05-13 00:46:30.439814');
INSERT INTO `django_migrations` VALUES (50, 'social_django', '0005_auto_20160727_2333', '2021-05-13 00:46:30.444129');
INSERT INTO `django_migrations` VALUES (51, 'social_django', '0004_auto_20160423_0400', '2021-05-13 00:46:30.448120');
INSERT INTO `django_migrations` VALUES (52, 'social_django', '0003_alter_email_max_length', '2021-05-13 00:46:30.452609');
INSERT INTO `django_migrations` VALUES (53, 'social_django', '0001_initial', '2021-05-13 00:46:30.456672');
INSERT INTO `django_migrations` VALUES (54, 'social_django', '0002_add_related_name', '2021-05-13 00:46:30.460667');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2aayk2yzzrpaicvbehw24g7aa7lx6ar9', 'OTgxZDFjZWQyZWFlMTg1NDIxZTA4YTQ2NmVkNzI5NGE0YTQ1NTBkYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjcxOGE1MmJiODhhZGQyZDhmNTYzNTU0Yzk2ZWRmNGQxNGFlMmNmOTYiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImluZGV4YWQiXSwiIl19', '2021-05-27 08:34:29.880449');
INSERT INTO `django_session` VALUES ('awm9onygcj8tsomcwnnj8vox20jl3mv3', 'OWE2YmM3NWUyOGYwNTYyZDU3MzI3ODI5OGRkZDAwMGFkYmEyNzJiNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY5Mjk4ZTI2MTY2ZTQ1ZDJjYzg0YWViMzQ1MmMxNjA3Yzc4YTI1ZDAifQ==', '2021-06-05 11:14:50.472613');
INSERT INTO `django_session` VALUES ('e099kmgdcdso5zq5jxquevdpwox4ov3f', 'OTZmZjQwMjhjOTJiNGYzNTA2YzFmNTZmODE4MDA3NDY0MmM4NzAyMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjcxOGE1MmJiODhhZGQyZDhmNTYzNTU0Yzk2ZWRmNGQxNGFlMmNmOTYiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImdvb2RzIl0sImFsbD0iXX0=', '2021-07-08 16:07:02.268363');
INSERT INTO `django_session` VALUES ('nj3om5o5bvmelj9t1fapsosljgfa98ro', 'YjBkZWM3NDAwMWE3ZTNhZDhiNTY4OTAzMzYzYmE3ZDFmOTkwZmYwNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjcxOGE1MmJiODhhZGQyZDhmNTYzNTU0Yzk2ZWRmNGQxNGFlMmNmOTYiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImJhbm5lciJdLCIiXX0=', '2021-05-28 17:06:37.272780');

-- ----------------------------
-- Table structure for goods_banner
-- ----------------------------
DROP TABLE IF EXISTS `goods_banner`;
CREATE TABLE `goods_banner`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(0) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_banner_goods_id_99e23129_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `goods_banner_goods_id_99e23129_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_banner
-- ----------------------------
INSERT INTO `goods_banner` VALUES (1, 'banner/banner2_Qgpngnz.jpg', 0, '2021-05-14 17:04:00.000000', 35);
INSERT INTO `goods_banner` VALUES (2, 'banner/banner3_uKSG0yx.jpg', 1, '2021-05-14 17:05:00.000000', 31);
INSERT INTO `goods_banner` VALUES (3, 'banner/banner1_edQhqlc.jpg', 2, '2021-05-14 17:06:00.000000', 30);

-- ----------------------------
-- Table structure for goods_goods
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods`;
CREATE TABLE `goods_goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_num` int(0) NOT NULL,
  `sold_num` int(0) NOT NULL,
  `fav_num` int(0) NOT NULL,
  `goods_num` int(0) NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id`(`category_id`) USING BTREE,
  CONSTRAINT `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goods
-- ----------------------------
INSERT INTO `goods_goods` VALUES (1, '', '新鲜水果甜蜜香脆单果约800克', 2, 0, 1, -3, 232, 156, '食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/1_P_1449024889889.jpg', 0, 0, '2021-05-14 16:16:02.294003', 20);
INSERT INTO `goods_goods` VALUES (2, '', '田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛', 2, 0, 0, -1, 106, 88, '前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/2_P_1448945810202.jpg', 0, 0, '2021-05-14 16:16:02.351549', 7);
INSERT INTO `goods_goods` VALUES (3, '', '酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐', 0, 0, 0, 0, 286, 238, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/7_P_1448945104883.jpg', 0, 0, '2021-05-14 16:16:02.360535', 15);
INSERT INTO `goods_goods` VALUES (4, '', '日本蒜蓉粉丝扇贝270克6只装', 0, 0, 0, 0, 156, 108, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/47_P_1448946213263.jpg', 0, 0, '2021-05-14 16:16:02.370356', 20);
INSERT INTO `goods_goods` VALUES (5, '', '内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材', 0, 0, 0, 0, 106, 88, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/10_P_1448944572085.jpg', 0, 0, '2021-05-14 16:16:02.380076', 7);
INSERT INTO `goods_goods` VALUES (6, '', '乌拉圭进口牛肉卷特级肥牛卷', 0, 0, 0, 0, 90, 75, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/4_P_1448945381985.jpg', 0, 0, '2021-05-14 16:16:02.392907', 21);
INSERT INTO `goods_goods` VALUES (7, '', '五星眼肉牛排套餐8片装原味原切生鲜牛肉', 0, 0, 0, 0, 150, 125, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/8_P_1448945032810.jpg', 0, 0, '2021-05-14 16:16:02.402491', 23);
INSERT INTO `goods_goods` VALUES (8, '', '澳洲进口120天谷饲牛仔骨4份原味生鲜', 0, 0, 0, 0, 31, 26, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/11_P_1448944388277.jpg', 0, 0, '2021-05-14 16:16:02.412727', 7);
INSERT INTO `goods_goods` VALUES (9, '', '潮香村澳洲进口牛排家庭团购套餐20片', 0, 0, 0, 0, 239, 199, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/6_P_1448945167279.jpg', 0, 0, '2021-05-14 16:16:02.425128', 22);
INSERT INTO `goods_goods` VALUES (10, '', '爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g', 0, 0, 0, 0, 202, 168, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/9_P_1448944791617.jpg', 0, 0, '2021-05-14 16:16:02.433938', 20);
INSERT INTO `goods_goods` VALUES (11, '', '澳洲进口牛尾巴300g新鲜肥牛肉', 0, 0, 0, 0, 306, 255, '新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/3_P_1448945490837.jpg', 0, 0, '2021-05-14 16:16:02.448488', 2);
INSERT INTO `goods_goods` VALUES (12, '', '新疆巴尔鲁克生鲜牛排眼肉牛扒1200g', 0, 0, 0, 0, 126, 88, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/48_P_1448943988970.jpg', 0, 0, '2021-05-14 16:16:02.459169', 7);
INSERT INTO `goods_goods` VALUES (13, '', '澳洲进口安格斯牛切片上脑牛排1000g', 0, 0, 0, 0, 144, 120, '澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/5_P_1448945270390.jpg', 0, 0, '2021-05-14 16:16:02.474653', 12);
INSERT INTO `goods_goods` VALUES (14, '', '帐篷出租', 0, 0, 0, 0, 120, 100, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'images/201705/goods_img/53_P_1495068879687.jpg', 0, 0, '2021-05-14 16:16:02.486824', 21);
INSERT INTO `goods_goods` VALUES (15, '', '52度茅台集团国隆双喜酒500mlx6', 1, 0, 0, -1, 23, 19, '贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/16_P_1448947194687.jpg', 0, 0, '2021-05-14 16:16:02.494527', 37);
INSERT INTO `goods_goods` VALUES (16, '', '52度水井坊臻酿八號500ml', 0, 0, 0, 0, 43, 36, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/14_P_1448947354031.jpg', 0, 0, '2021-05-14 16:16:02.502064', 36);
INSERT INTO `goods_goods` VALUES (17, '', '53度茅台仁酒500ml', 0, 0, 0, 0, 190, 158, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/12_P_1448947547989.jpg', 0, 0, '2021-05-14 16:16:02.511716', 32);
INSERT INTO `goods_goods` VALUES (18, '', '双响炮洋酒JimBeamwhiskey美国白占边', 4, 0, 0, -1, 38, 28, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/46_P_1448946598711.jpg', 0, 0, '2021-05-14 16:16:02.518275', 29);
INSERT INTO `goods_goods` VALUES (19, '', '西夫拉姆进口洋酒小酒版', 0, 0, 0, 0, 55, 46, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/21_P_1448946793276.jpg', 0, 0, '2021-05-14 16:16:02.526818', 36);
INSERT INTO `goods_goods` VALUES (20, '', '茅台53度飞天茅台500ml', 0, 0, 0, 0, 22, 18, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/15_P_1448947257324.jpg', 0, 0, '2021-05-14 16:16:02.540780', 30);
INSERT INTO `goods_goods` VALUES (21, '', '52度兰陵·紫气东来1600mL山东名酒', 0, 0, 0, 0, 42, 35, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/13_P_1448947460386.jpg', 0, 0, '2021-05-14 16:16:02.551343', 29);
INSERT INTO `goods_goods` VALUES (22, '', 'JohnnieWalker尊尼获加黑牌威士忌', 0, 0, 0, 0, 24, 20, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/50_P_1448946543091.jpg', 0, 0, '2021-05-14 16:16:02.572757', 36);
INSERT INTO `goods_goods` VALUES (23, '', '人头马CLUB特优香槟干邑350ml', 0, 0, 0, 0, 31, 26, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/51_P_1448946466595.jpg', 0, 0, '2021-05-14 16:16:02.584577', 30);
INSERT INTO `goods_goods` VALUES (24, '', '张裕干红葡萄酒750ml*6支', 0, 0, 0, 0, 54, 45, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/17_P_1448947102246.jpg', 0, 0, '2021-05-14 16:16:02.594466', 31);
INSERT INTO `goods_goods` VALUES (25, '', '原瓶原装进口洋酒烈酒法国云鹿XO白兰地', 0, 0, 0, 0, 46, 38, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/20_P_1448946850602.jpg', 0, 0, '2021-05-14 16:16:02.601353', 29);
INSERT INTO `goods_goods` VALUES (26, '', '法国原装进口圣贝克干红葡萄酒750ml', 0, 0, 0, 0, 82, 68, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/19_P_1448946951581.jpg', 0, 0, '2021-05-14 16:16:02.609447', 25);
INSERT INTO `goods_goods` VALUES (27, '', '法国百利威干红葡萄酒AOP级6支装', 0, 0, 0, 0, 67, 56, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/18_P_1448947011435.jpg', 0, 0, '2021-05-14 16:16:02.619252', 25);
INSERT INTO `goods_goods` VALUES (28, '', '芝华士12年苏格兰威士忌700ml', 0, 0, 0, 0, 71, 59, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/22_P_1448946729629.jpg', 0, 0, '2021-05-14 16:16:02.627120', 30);
INSERT INTO `goods_goods` VALUES (29, '', '深蓝伏特加巴维兰利口酒送预调酒', 0, 0, 0, 0, 31, 18, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/45_P_1448946661303.jpg', 0, 0, '2021-05-14 16:16:02.635095', 36);
INSERT INTO `goods_goods` VALUES (30, '', '赣南脐橙特级果10斤装', 17, 0, 0, -2, 43, 36, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/32_P_1448948525620.jpg', 0, 0, '2021-05-14 16:16:02.641081', 62);
INSERT INTO `goods_goods` VALUES (31, '', '泰国菠萝蜜16-18斤1个装', 63, 0, 0, -1, 11, 9, '【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/30_P_1448948663450.jpg', 0, 0, '2021-05-14 16:16:02.648887', 66);
INSERT INTO `goods_goods` VALUES (32, '', '四川双流草莓新鲜水果礼盒2盒', 0, 0, 0, 0, 22, 18, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/31_P_1448948598947.jpg', 0, 0, '2021-05-14 16:16:02.675815', 70);
INSERT INTO `goods_goods` VALUES (33, '698656', '新鲜头茬非洲冰草冰菜', 1, 0, 0, 0, 67, 56, '冰草冰菜', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', 1, 'goods/images/35_P_1448948333610.jpg', 1, 0, '2021-05-14 16:16:00.000000', 58);
INSERT INTO `goods_goods` VALUES (34, '', '仿真蔬菜水果果蔬菜模型', 0, 0, 0, 0, 6, 5, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/36_P_1448948234405.jpg', 0, 0, '2021-05-14 16:16:02.710578', 58);
INSERT INTO `goods_goods` VALUES (35, '654783', '现摘芭乐番石榴台湾珍珠芭乐', 18, 0, 0, -2, 28, 23, '海南产精品释迦果,\r\n        释迦是水果中的贵族,\r\n        产量少,\r\n        味道很甜,\r\n        奶香十足,\r\n        非常可口,\r\n        果裹果园顺丰空运,\r\n        保证新鲜.果子个大,\r\n        一斤1-2个左右,\r\n        大个头的果子更尽兴!', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', 1, 'goods/images/33_P_1448948479966.jpg', 1, 0, '2021-05-14 16:16:00.000000', 62);
INSERT INTO `goods_goods` VALUES (36, '', '潍坊萝卜5斤/箱礼盒', 0, 0, 0, 0, 46, 38, '脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/34_P_1448948399009.jpg', 0, 0, '2021-05-14 16:16:02.736078', 70);
INSERT INTO `goods_goods` VALUES (37, '9896', '休闲零食膨化食品焦糖/奶油/椒麻味', 1, 0, 0, 0, 154, 99, '零食', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', 1, 'goods/images/43_P_1448948762645.jpg', 1, 0, '2021-05-14 16:16:00.000000', 74);
INSERT INTO `goods_goods` VALUES (38, '', '蒙牛未来星儿童成长牛奶骨力型190ml*15盒', 0, 0, 0, 0, 84, 70, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/38_P_1448949220255.jpg', 0, 0, '2021-05-14 16:16:02.749455', 105);
INSERT INTO `goods_goods` VALUES (39, '', '蒙牛特仑苏有机奶250ml×12盒', 0, 0, 0, 0, 70, 32, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/44_P_1448948850187.jpg', 0, 0, '2021-05-14 16:16:02.756402', 103);
INSERT INTO `goods_goods` VALUES (40, '', '1元支付测试商品', 0, 0, 0, 0, 1, 1, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'images/201511/goods_img/49_P_1448162819889.jpg', 0, 0, '2021-05-14 16:16:02.763241', 102);
INSERT INTO `goods_goods` VALUES (41, '', '德运全脂新鲜纯牛奶1L*10盒装整箱', 0, 0, 0, 0, 70, 58, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/40_P_1448949038702.jpg', 0, 0, '2021-05-14 16:16:02.770150', 103);
INSERT INTO `goods_goods` VALUES (42, '', '木糖醇红枣早餐奶即食豆奶粉538g', 0, 0, 0, 0, 38, 32, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/39_P_1448949115481.jpg', 0, 0, '2021-05-14 16:16:02.776879', 106);
INSERT INTO `goods_goods` VALUES (43, '', '高钙液体奶200ml*24盒', 0, 0, 0, 0, 26, 22, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/41_P_1448948980358.jpg', 0, 0, '2021-05-14 16:16:02.783929', 107);
INSERT INTO `goods_goods` VALUES (44, '', '新西兰进口全脂奶粉900g', 0, 0, 0, 0, 720, 600, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/37_P_1448949284365.jpg', 0, 0, '2021-05-14 16:16:02.790620', 104);
INSERT INTO `goods_goods` VALUES (45, '牛奶', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', 0, 0, 0, 0, 43, 36, '牛奶', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', 1, 'goods/images/42_P_1448948895193.jpg', 1, 0, '2021-05-14 16:16:00.000000', 103);
INSERT INTO `goods_goods` VALUES (46, '5659', '维纳斯橄榄菜籽油5L/桶', 0, 0, 0, 0, 187, 156, '菜籽油', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', 1, 'goods/images/27_P_1448947771805.jpg', 1, 0, '2021-05-14 16:16:00.000000', 51);
INSERT INTO `goods_goods` VALUES (47, '', '糙米450gx3包粮油米面', 0, 0, 0, 0, 18, 15, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/23_P_1448948070348.jpg', 0, 0, '2021-05-14 16:16:02.811265', 41);
INSERT INTO `goods_goods` VALUES (48, '', '精炼一级大豆油5L色拉油粮油食用油', 1, 0, 0, -1, 54, 45, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/26_P_1448947825754.jpg', 0, 0, '2021-05-14 16:16:02.817984', 56);
INSERT INTO `goods_goods` VALUES (49, '', '橄榄玉米油5L*2桶', 0, 0, 0, 0, 31, 26, '', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>', 1, 'goods/images/28_P_1448947699948.jpg', 0, 0, '2021-05-14 16:16:02.825114', 54);
INSERT INTO `goods_goods` VALUES (50, '黑米', '山西黑米农家黑米4斤', 2, 0, 0, 0, 11, 9, '黑米', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', 1, 'goods/images/24_P_1448948023823.jpg', 1, 0, '2021-05-14 16:16:00.000000', 55);
INSERT INTO `goods_goods` VALUES (51, '456789', '稻园牌稻米油粮油米糠油绿色植物油', 0, 0, 0, 0, 14, 12, '稻米', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', 1, 'goods/images/25_P_1448947875346.jpg', 1, 1, '2021-05-14 16:16:00.000000', 47);
INSERT INTO `goods_goods` VALUES (52, '123456', '融氏纯玉米胚芽油5l桶', 0, 0, 0, 0, 14, 12, '玉米油', '<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/> </p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/> </p>', 1, 'goods/images/29_P_1448947631994.jpg', 1, 1, '2021-05-14 16:16:00.000000', 41);

-- ----------------------------
-- Table structure for goods_goodsbrand
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsbrand`;
CREATE TABLE `goods_goodsbrand`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id`(`category_id`) USING BTREE,
  CONSTRAINT `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goodsbrand
-- ----------------------------

-- ----------------------------
-- Table structure for goods_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodscategory`;
CREATE TABLE `goods_goodscategory`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_type` int(0) NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `parent_category_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo`(`parent_category_id`) USING BTREE,
  CONSTRAINT `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` FOREIGN KEY (`parent_category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goodscategory
-- ----------------------------
INSERT INTO `goods_goodscategory` VALUES (1, '生鲜食品', 'sxsp', '', 1, 0, '2021-05-14 16:15:16.490387', NULL);
INSERT INTO `goods_goodscategory` VALUES (2, '精品肉类', 'jprl', '', 2, 0, '2021-05-14 16:15:16.511463', 1);
INSERT INTO `goods_goodscategory` VALUES (3, '羊肉', 'yr', '', 3, 0, '2021-05-14 16:15:16.515161', 2);
INSERT INTO `goods_goodscategory` VALUES (4, '禽类', 'ql', '', 3, 0, '2021-05-14 16:15:16.519571', 2);
INSERT INTO `goods_goodscategory` VALUES (5, '猪肉', 'zr', '', 3, 0, '2021-05-14 16:15:16.523279', 2);
INSERT INTO `goods_goodscategory` VALUES (6, '牛肉', 'nr', '', 3, 0, '2021-05-14 16:15:16.526307', 2);
INSERT INTO `goods_goodscategory` VALUES (7, '海鲜水产', 'hxsc', '', 2, 0, '2021-05-14 16:15:16.529658', 1);
INSERT INTO `goods_goodscategory` VALUES (8, '参鲍', 'cb', '', 3, 0, '2021-05-14 16:15:16.532503', 7);
INSERT INTO `goods_goodscategory` VALUES (9, '鱼', 'yu', '', 3, 0, '2021-05-14 16:15:16.535165', 7);
INSERT INTO `goods_goodscategory` VALUES (10, '虾', 'xia', '', 3, 0, '2021-05-14 16:15:16.538267', 7);
INSERT INTO `goods_goodscategory` VALUES (11, '蟹/贝', 'xb', '', 3, 0, '2021-05-14 16:15:16.541307', 7);
INSERT INTO `goods_goodscategory` VALUES (12, '蛋制品', 'dzp', '', 2, 0, '2021-05-14 16:15:16.544100', 1);
INSERT INTO `goods_goodscategory` VALUES (13, '松花蛋/咸鸭蛋', 'xhd_xyd', '', 3, 0, '2021-05-14 16:15:16.546455', 12);
INSERT INTO `goods_goodscategory` VALUES (14, '鸡蛋', 'jd', '', 3, 0, '2021-05-14 16:15:16.550423', 12);
INSERT INTO `goods_goodscategory` VALUES (15, '叶菜类', 'ycl', '', 2, 0, '2021-05-14 16:15:16.553439', 1);
INSERT INTO `goods_goodscategory` VALUES (16, '生菜', 'sc', '', 3, 0, '2021-05-14 16:15:16.556174', 15);
INSERT INTO `goods_goodscategory` VALUES (17, '菠菜', 'bc', '', 3, 0, '2021-05-14 16:15:16.559165', 15);
INSERT INTO `goods_goodscategory` VALUES (18, '圆椒', 'yj', '', 3, 0, '2021-05-14 16:15:16.562160', 15);
INSERT INTO `goods_goodscategory` VALUES (19, '西兰花', 'xlh', '', 3, 0, '2021-05-14 16:15:16.566107', 15);
INSERT INTO `goods_goodscategory` VALUES (20, '根茎类', 'gjl', '', 2, 0, '2021-05-14 16:15:16.569628', 1);
INSERT INTO `goods_goodscategory` VALUES (21, '茄果类', 'qgl', '', 2, 0, '2021-05-14 16:15:16.572735', 1);
INSERT INTO `goods_goodscategory` VALUES (22, '菌菇类', 'jgl', '', 2, 0, '2021-05-14 16:15:16.575152', 1);
INSERT INTO `goods_goodscategory` VALUES (23, '进口生鲜', 'jksx', '', 2, 0, '2021-05-14 16:15:16.578918', 1);
INSERT INTO `goods_goodscategory` VALUES (24, '酒水饮料', 'jsyl', '', 1, 0, '2021-05-14 16:15:16.582103', NULL);
INSERT INTO `goods_goodscategory` VALUES (25, '白酒', 'bk', '', 2, 0, '2021-05-14 16:15:16.585160', 24);
INSERT INTO `goods_goodscategory` VALUES (26, '五粮液', 'wly', '', 3, 0, '2021-05-14 16:15:16.588329', 25);
INSERT INTO `goods_goodscategory` VALUES (27, '泸州老窖', 'lzlj', '', 3, 0, '2021-05-14 16:15:16.591207', 25);
INSERT INTO `goods_goodscategory` VALUES (28, '茅台', 'mt', '', 3, 0, '2021-05-14 16:15:16.594076', 25);
INSERT INTO `goods_goodscategory` VALUES (29, '葡萄酒', 'ptj', '', 2, 0, '2021-05-14 16:15:16.597430', 24);
INSERT INTO `goods_goodscategory` VALUES (30, '洋酒', 'yj', '', 2, 0, '2021-05-14 16:15:16.600223', 24);
INSERT INTO `goods_goodscategory` VALUES (31, '啤酒', 'pj', '', 2, 0, '2021-05-14 16:15:16.602890', 24);
INSERT INTO `goods_goodscategory` VALUES (32, '其他酒品', 'qtjp', '', 2, 0, '2021-05-14 16:15:16.604888', 24);
INSERT INTO `goods_goodscategory` VALUES (33, '其他品牌', 'qtpp', '', 3, 0, '2021-05-14 16:15:16.608307', 32);
INSERT INTO `goods_goodscategory` VALUES (34, '黄酒', 'hj', '', 3, 0, '2021-05-14 16:15:16.610680', 32);
INSERT INTO `goods_goodscategory` VALUES (35, '养生酒', 'ysj', '', 3, 0, '2021-05-14 16:15:16.613279', 32);
INSERT INTO `goods_goodscategory` VALUES (36, '饮料/水', 'yls', '', 2, 0, '2021-05-14 16:15:16.616078', 24);
INSERT INTO `goods_goodscategory` VALUES (37, '红酒', 'hj', '', 2, 0, '2021-05-14 16:15:16.618584', 24);
INSERT INTO `goods_goodscategory` VALUES (38, '白兰地', 'bld', '', 3, 0, '2021-05-14 16:15:16.621176', 37);
INSERT INTO `goods_goodscategory` VALUES (39, '威士忌', 'wsj', '', 3, 0, '2021-05-14 16:15:16.623922', 37);
INSERT INTO `goods_goodscategory` VALUES (40, '粮油副食', '粮油副食', '', 1, 0, '2021-05-14 16:15:16.626862', NULL);
INSERT INTO `goods_goodscategory` VALUES (41, '食用油', '食用油', '', 2, 0, '2021-05-14 16:15:16.630595', 40);
INSERT INTO `goods_goodscategory` VALUES (42, '其他食用油', '其他食用油', '', 3, 0, '2021-05-14 16:15:16.633623', 41);
INSERT INTO `goods_goodscategory` VALUES (43, '菜仔油', '菜仔油', '', 3, 0, '2021-05-14 16:15:16.636228', 41);
INSERT INTO `goods_goodscategory` VALUES (44, '花生油', '花生油', '', 3, 0, '2021-05-14 16:15:16.638551', 41);
INSERT INTO `goods_goodscategory` VALUES (45, '橄榄油', '橄榄油', '', 3, 0, '2021-05-14 16:15:16.642794', 41);
INSERT INTO `goods_goodscategory` VALUES (46, '礼盒', '礼盒', '', 3, 0, '2021-05-14 16:15:16.645086', 41);
INSERT INTO `goods_goodscategory` VALUES (47, '米面杂粮', '米面杂粮', '', 2, 0, '2021-05-14 16:15:16.648743', 40);
INSERT INTO `goods_goodscategory` VALUES (48, '面粉/面条', '面粉/面条', '', 3, 0, '2021-05-14 16:15:16.651752', 47);
INSERT INTO `goods_goodscategory` VALUES (49, '大米', '大米', '', 3, 0, '2021-05-14 16:15:16.654695', 47);
INSERT INTO `goods_goodscategory` VALUES (50, '意大利面', '意大利面', '', 3, 0, '2021-05-14 16:15:16.657658', 47);
INSERT INTO `goods_goodscategory` VALUES (51, '厨房调料', '厨房调料', '', 2, 0, '2021-05-14 16:15:16.660622', 40);
INSERT INTO `goods_goodscategory` VALUES (52, '调味油/汁', '调味油/汁', '', 3, 0, '2021-05-14 16:15:16.663579', 51);
INSERT INTO `goods_goodscategory` VALUES (53, '酱油/醋', '酱油/醋', '', 3, 0, '2021-05-14 16:15:16.666375', 51);
INSERT INTO `goods_goodscategory` VALUES (54, '南北干货', '南北干货', '', 2, 0, '2021-05-14 16:15:16.669492', 40);
INSERT INTO `goods_goodscategory` VALUES (55, '方便速食', '方便速食', '', 2, 0, '2021-05-14 16:15:16.672258', 40);
INSERT INTO `goods_goodscategory` VALUES (56, '调味品', '调味品', '', 2, 0, '2021-05-14 16:15:16.675104', 40);
INSERT INTO `goods_goodscategory` VALUES (57, '蔬菜水果', '蔬菜水果', '水果', 1, 1, '2021-05-14 16:15:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (58, '有机蔬菜', '有机蔬菜', '', 2, 0, '2021-05-14 16:15:16.681099', 57);
INSERT INTO `goods_goodscategory` VALUES (59, '西红柿', '西红柿', '', 3, 0, '2021-05-14 16:15:16.683831', 58);
INSERT INTO `goods_goodscategory` VALUES (60, '韭菜', '韭菜', '', 3, 0, '2021-05-14 16:15:16.686442', 58);
INSERT INTO `goods_goodscategory` VALUES (61, '青菜', '青菜', '', 3, 0, '2021-05-14 16:15:16.690429', 58);
INSERT INTO `goods_goodscategory` VALUES (62, '精选蔬菜', '精选蔬菜', '', 2, 0, '2021-05-14 16:15:16.693713', 57);
INSERT INTO `goods_goodscategory` VALUES (63, '甘蓝', '甘蓝', '', 3, 0, '2021-05-14 16:15:16.697037', 62);
INSERT INTO `goods_goodscategory` VALUES (64, '胡萝卜', '胡萝卜', '', 3, 0, '2021-05-14 16:15:16.700465', 62);
INSERT INTO `goods_goodscategory` VALUES (65, '黄瓜', '黄瓜', '', 3, 0, '2021-05-14 16:15:16.710806', 62);
INSERT INTO `goods_goodscategory` VALUES (66, '进口水果', '进口水果', '', 2, 0, '2021-05-14 16:15:16.717526', 57);
INSERT INTO `goods_goodscategory` VALUES (67, '火龙果', '火龙果', '', 3, 0, '2021-05-14 16:15:16.725172', 66);
INSERT INTO `goods_goodscategory` VALUES (68, '菠萝蜜', '菠萝蜜', '', 3, 0, '2021-05-14 16:15:16.730432', 66);
INSERT INTO `goods_goodscategory` VALUES (69, '奇异果', '奇异果', '', 3, 0, '2021-05-14 16:15:16.734104', 66);
INSERT INTO `goods_goodscategory` VALUES (70, '国产水果', '国产水果', '', 2, 0, '2021-05-14 16:15:16.737415', 57);
INSERT INTO `goods_goodscategory` VALUES (71, '水果礼盒', '水果礼盒', '', 3, 0, '2021-05-14 16:15:16.740487', 70);
INSERT INTO `goods_goodscategory` VALUES (72, '苹果', '苹果', '', 3, 0, '2021-05-14 16:15:16.743692', 70);
INSERT INTO `goods_goodscategory` VALUES (73, '雪梨', '雪梨', '', 3, 0, '2021-05-14 16:15:16.746749', 70);
INSERT INTO `goods_goodscategory` VALUES (74, '休闲食品', '休闲食品', '', 1, 0, '2021-05-14 16:15:16.749464', NULL);
INSERT INTO `goods_goodscategory` VALUES (75, '休闲零食', '休闲零食', '', 2, 0, '2021-05-14 16:15:16.752314', 74);
INSERT INTO `goods_goodscategory` VALUES (76, '果冻', '果冻', '', 3, 0, '2021-05-14 16:15:16.755095', 75);
INSERT INTO `goods_goodscategory` VALUES (77, '枣类', '枣类', '', 3, 0, '2021-05-14 16:15:16.757999', 75);
INSERT INTO `goods_goodscategory` VALUES (78, '蜜饯', '蜜饯', '', 3, 0, '2021-05-14 16:15:16.760834', 75);
INSERT INTO `goods_goodscategory` VALUES (79, '肉类零食', '肉类零食', '', 3, 0, '2021-05-14 16:15:16.763514', 75);
INSERT INTO `goods_goodscategory` VALUES (80, '坚果炒货', '坚果炒货', '', 3, 0, '2021-05-14 16:15:16.766846', 75);
INSERT INTO `goods_goodscategory` VALUES (81, '糖果', '糖果', '', 2, 0, '2021-05-14 16:15:16.770104', 74);
INSERT INTO `goods_goodscategory` VALUES (82, '创意喜糖', '创意喜糖', '', 3, 0, '2021-05-14 16:15:16.773452', 81);
INSERT INTO `goods_goodscategory` VALUES (83, '口香糖', '口香糖', '', 3, 0, '2021-05-14 16:15:16.776458', 81);
INSERT INTO `goods_goodscategory` VALUES (84, '软糖', '软糖', '', 3, 0, '2021-05-14 16:15:16.779153', 81);
INSERT INTO `goods_goodscategory` VALUES (85, '棒棒糖', '棒棒糖', '', 3, 0, '2021-05-14 16:15:16.782000', 81);
INSERT INTO `goods_goodscategory` VALUES (86, '巧克力', '巧克力', '', 2, 0, '2021-05-14 16:15:16.783994', 74);
INSERT INTO `goods_goodscategory` VALUES (87, '夹心巧克力', '夹心巧克力', '', 3, 0, '2021-05-14 16:15:16.787580', 86);
INSERT INTO `goods_goodscategory` VALUES (88, '白巧克力', '白巧克力', '', 3, 0, '2021-05-14 16:15:16.790246', 86);
INSERT INTO `goods_goodscategory` VALUES (89, '松露巧克力', '松露巧克力', '', 3, 0, '2021-05-14 16:15:16.793036', 86);
INSERT INTO `goods_goodscategory` VALUES (90, '黑巧克力', '黑巧克力', '', 3, 0, '2021-05-14 16:15:16.796022', 86);
INSERT INTO `goods_goodscategory` VALUES (91, '肉干肉脯/豆干', '肉干肉脯/豆干', '', 2, 0, '2021-05-14 16:15:16.799204', 74);
INSERT INTO `goods_goodscategory` VALUES (92, '牛肉干', '牛肉干', '', 3, 0, '2021-05-14 16:15:16.802152', 91);
INSERT INTO `goods_goodscategory` VALUES (93, '猪肉脯', '猪肉脯', '', 3, 0, '2021-05-14 16:15:16.805077', 91);
INSERT INTO `goods_goodscategory` VALUES (94, '牛肉粒', '牛肉粒', '', 3, 0, '2021-05-14 16:15:16.808290', 91);
INSERT INTO `goods_goodscategory` VALUES (95, '猪肉干', '猪肉干', '', 3, 0, '2021-05-14 16:15:16.811691', 91);
INSERT INTO `goods_goodscategory` VALUES (96, '鱿鱼丝/鱼干', '鱿鱼丝/鱼干', '', 2, 0, '2021-05-14 16:15:16.814538', 74);
INSERT INTO `goods_goodscategory` VALUES (97, '鱿鱼足', '鱿鱼足', '', 3, 0, '2021-05-14 16:15:16.817257', 96);
INSERT INTO `goods_goodscategory` VALUES (98, '鱿鱼丝', '鱿鱼丝', '', 3, 0, '2021-05-14 16:15:16.820116', 96);
INSERT INTO `goods_goodscategory` VALUES (99, '墨鱼/乌贼', '墨鱼/乌贼', '', 3, 0, '2021-05-14 16:15:16.823029', 96);
INSERT INTO `goods_goodscategory` VALUES (100, '鱿鱼仔', '鱿鱼仔', '', 3, 0, '2021-05-14 16:15:16.826026', 96);
INSERT INTO `goods_goodscategory` VALUES (101, '鱿鱼片', '鱿鱼片', '', 3, 0, '2021-05-14 16:15:16.830327', 96);
INSERT INTO `goods_goodscategory` VALUES (102, '奶类食品', '奶类食品', '', 1, 0, '2021-05-14 16:15:16.833454', NULL);
INSERT INTO `goods_goodscategory` VALUES (103, '进口奶品', '进口奶品', '', 2, 0, '2021-05-14 16:15:16.836936', 102);
INSERT INTO `goods_goodscategory` VALUES (104, '国产奶品', '国产奶品', '', 2, 0, '2021-05-14 16:15:16.840464', 102);
INSERT INTO `goods_goodscategory` VALUES (105, '奶粉', '奶粉', '', 2, 0, '2021-05-14 16:15:16.843948', 102);
INSERT INTO `goods_goodscategory` VALUES (106, '有机奶', '有机奶', '', 2, 0, '2021-05-14 16:15:16.847191', 102);
INSERT INTO `goods_goodscategory` VALUES (107, '原料奶', '原料奶', '', 2, 0, '2021-05-14 16:15:16.850303', 102);
INSERT INTO `goods_goodscategory` VALUES (108, '天然干货', '天然干货', '干货类', 1, 1, '2021-05-14 16:15:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (109, '菌菇类', '菌菇类', '', 2, 0, '2021-05-14 16:15:16.856684', 108);
INSERT INTO `goods_goodscategory` VALUES (110, '腌干海产', '腌干海产', '', 2, 0, '2021-05-14 16:15:16.860115', 108);
INSERT INTO `goods_goodscategory` VALUES (111, '汤料', '汤料', '', 2, 0, '2021-05-14 16:15:16.863205', 108);
INSERT INTO `goods_goodscategory` VALUES (112, '豆类', '豆类', '', 2, 0, '2021-05-14 16:15:16.866261', 108);
INSERT INTO `goods_goodscategory` VALUES (113, '干菜/菜干', '干菜/菜干', '', 2, 0, '2021-05-14 16:15:16.869170', 108);
INSERT INTO `goods_goodscategory` VALUES (114, '干果/果干', '干果/果干', '', 2, 0, '2021-05-14 16:15:16.872987', 108);
INSERT INTO `goods_goodscategory` VALUES (115, '豆制品', '豆制品', '', 2, 0, '2021-05-14 16:15:16.876225', 108);
INSERT INTO `goods_goodscategory` VALUES (116, '腊味', '腊味', '', 2, 0, '2021-05-14 16:15:16.879617', 108);
INSERT INTO `goods_goodscategory` VALUES (117, '精选茗茶', '精选茗茶', '茶类', 1, 1, '2021-05-14 16:15:00.000000', NULL);
INSERT INTO `goods_goodscategory` VALUES (118, '白茶', '白茶', '', 2, 0, '2021-05-14 16:15:16.885752', 117);
INSERT INTO `goods_goodscategory` VALUES (119, '红茶', '红茶', '', 2, 0, '2021-05-14 16:15:16.888828', 117);
INSERT INTO `goods_goodscategory` VALUES (120, '绿茶', '绿茶', '', 2, 0, '2021-05-14 16:15:16.891860', 117);

-- ----------------------------
-- Table structure for goods_goodsimage
-- ----------------------------
DROP TABLE IF EXISTS `goods_goodsimage`;
CREATE TABLE `goods_goodsimage`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_goodsimage
-- ----------------------------
INSERT INTO `goods_goodsimage` VALUES (1, 'goods/images/1_P_1449024889889.jpg', '2021-05-14 16:16:02.322314', 1);
INSERT INTO `goods_goodsimage` VALUES (2, 'goods/images/1_P_1449024889264.jpg', '2021-05-14 16:16:02.339544', 1);
INSERT INTO `goods_goodsimage` VALUES (3, 'goods/images/1_P_1449024889726.jpg', '2021-05-14 16:16:02.342003', 1);
INSERT INTO `goods_goodsimage` VALUES (4, 'goods/images/1_P_1449024889018.jpg', '2021-05-14 16:16:02.346105', 1);
INSERT INTO `goods_goodsimage` VALUES (5, 'goods/images/1_P_1449024889287.jpg', '2021-05-14 16:16:02.348917', 1);
INSERT INTO `goods_goodsimage` VALUES (6, 'goods/images/2_P_1448945810202.jpg', '2021-05-14 16:16:02.355146', 2);
INSERT INTO `goods_goodsimage` VALUES (7, 'goods/images/2_P_1448945810814.jpg', '2021-05-14 16:16:02.357672', 2);
INSERT INTO `goods_goodsimage` VALUES (8, 'goods/images/7_P_1448945104883.jpg', '2021-05-14 16:16:02.364571', 3);
INSERT INTO `goods_goodsimage` VALUES (9, 'goods/images/7_P_1448945104734.jpg', '2021-05-14 16:16:02.367474', 3);
INSERT INTO `goods_goodsimage` VALUES (10, 'goods/images/47_P_1448946213263.jpg', '2021-05-14 16:16:02.374048', 4);
INSERT INTO `goods_goodsimage` VALUES (11, 'goods/images/47_P_1448946213157.jpg', '2021-05-14 16:16:02.377253', 4);
INSERT INTO `goods_goodsimage` VALUES (12, 'goods/images/10_P_1448944572085.jpg', '2021-05-14 16:16:02.384088', 5);
INSERT INTO `goods_goodsimage` VALUES (13, 'goods/images/10_P_1448944572532.jpg', '2021-05-14 16:16:02.386953', 5);
INSERT INTO `goods_goodsimage` VALUES (14, 'goods/images/10_P_1448944572872.jpg', '2021-05-14 16:16:02.389667', 5);
INSERT INTO `goods_goodsimage` VALUES (15, 'goods/images/4_P_1448945381985.jpg', '2021-05-14 16:16:02.396748', 6);
INSERT INTO `goods_goodsimage` VALUES (16, 'goods/images/4_P_1448945381013.jpg', '2021-05-14 16:16:02.399632', 6);
INSERT INTO `goods_goodsimage` VALUES (17, 'goods/images/8_P_1448945032810.jpg', '2021-05-14 16:16:02.406385', 7);
INSERT INTO `goods_goodsimage` VALUES (18, 'goods/images/8_P_1448945032646.jpg', '2021-05-14 16:16:02.409930', 7);
INSERT INTO `goods_goodsimage` VALUES (19, 'goods/images/11_P_1448944388277.jpg', '2021-05-14 16:16:02.416793', 8);
INSERT INTO `goods_goodsimage` VALUES (20, 'goods/images/11_P_1448944388034.jpg', '2021-05-14 16:16:02.419710', 8);
INSERT INTO `goods_goodsimage` VALUES (21, 'goods/images/11_P_1448944388201.jpg', '2021-05-14 16:16:02.422491', 8);
INSERT INTO `goods_goodsimage` VALUES (22, 'goods/images/6_P_1448945167279.jpg', '2021-05-14 16:16:02.428813', 9);
INSERT INTO `goods_goodsimage` VALUES (23, 'goods/images/6_P_1448945167015.jpg', '2021-05-14 16:16:02.431467', 9);
INSERT INTO `goods_goodsimage` VALUES (24, 'goods/images/9_P_1448944791617.jpg', '2021-05-14 16:16:02.437633', 10);
INSERT INTO `goods_goodsimage` VALUES (25, 'goods/images/9_P_1448944791129.jpg', '2021-05-14 16:16:02.440451', 10);
INSERT INTO `goods_goodsimage` VALUES (26, 'goods/images/9_P_1448944791077.jpg', '2021-05-14 16:16:02.443001', 10);
INSERT INTO `goods_goodsimage` VALUES (27, 'goods/images/9_P_1448944791229.jpg', '2021-05-14 16:16:02.445085', 10);
INSERT INTO `goods_goodsimage` VALUES (28, 'goods/images/3_P_1448945490837.jpg', '2021-05-14 16:16:02.452481', 11);
INSERT INTO `goods_goodsimage` VALUES (29, 'goods/images/3_P_1448945490084.jpg', '2021-05-14 16:16:02.455473', 11);
INSERT INTO `goods_goodsimage` VALUES (30, 'goods/images/48_P_1448943988970.jpg', '2021-05-14 16:16:02.463142', 12);
INSERT INTO `goods_goodsimage` VALUES (31, 'goods/images/48_P_1448943988898.jpg', '2021-05-14 16:16:02.466001', 12);
INSERT INTO `goods_goodsimage` VALUES (32, 'goods/images/48_P_1448943988439.jpg', '2021-05-14 16:16:02.470948', 12);
INSERT INTO `goods_goodsimage` VALUES (33, 'goods/images/5_P_1448945270390.jpg', '2021-05-14 16:16:02.478447', 13);
INSERT INTO `goods_goodsimage` VALUES (34, 'goods/images/5_P_1448945270067.jpg', '2021-05-14 16:16:02.481519', 13);
INSERT INTO `goods_goodsimage` VALUES (35, 'goods/images/5_P_1448945270432.jpg', '2021-05-14 16:16:02.483836', 13);
INSERT INTO `goods_goodsimage` VALUES (36, 'images/201705/goods_img/53_P_1495068879687.jpg', '2021-05-14 16:16:02.491972', 14);
INSERT INTO `goods_goodsimage` VALUES (37, 'goods/images/16_P_1448947194687.jpg', '2021-05-14 16:16:02.498542', 15);
INSERT INTO `goods_goodsimage` VALUES (38, 'goods/images/14_P_1448947354031.jpg', '2021-05-14 16:16:02.506415', 16);
INSERT INTO `goods_goodsimage` VALUES (39, 'goods/images/14_P_1448947354433.jpg', '2021-05-14 16:16:02.509191', 16);
INSERT INTO `goods_goodsimage` VALUES (40, 'goods/images/12_P_1448947547989.jpg', '2021-05-14 16:16:02.514713', 17);
INSERT INTO `goods_goodsimage` VALUES (41, 'goods/images/46_P_1448946598711.jpg', '2021-05-14 16:16:02.522265', 18);
INSERT INTO `goods_goodsimage` VALUES (42, 'goods/images/46_P_1448946598301.jpg', '2021-05-14 16:16:02.524260', 18);
INSERT INTO `goods_goodsimage` VALUES (43, 'goods/images/21_P_1448946793276.jpg', '2021-05-14 16:16:02.530806', 19);
INSERT INTO `goods_goodsimage` VALUES (44, 'goods/images/21_P_1448946793153.jpg', '2021-05-14 16:16:02.536791', 19);
INSERT INTO `goods_goodsimage` VALUES (45, 'goods/images/15_P_1448947257324.jpg', '2021-05-14 16:16:02.544803', 20);
INSERT INTO `goods_goodsimage` VALUES (46, 'goods/images/15_P_1448947257580.jpg', '2021-05-14 16:16:02.548351', 20);
INSERT INTO `goods_goodsimage` VALUES (47, 'goods/images/13_P_1448947460386.jpg', '2021-05-14 16:16:02.555331', 21);
INSERT INTO `goods_goodsimage` VALUES (48, 'goods/images/13_P_1448947460276.jpg', '2021-05-14 16:16:02.557771', 21);
INSERT INTO `goods_goodsimage` VALUES (49, 'goods/images/13_P_1448947460353.jpg', '2021-05-14 16:16:02.563759', 21);
INSERT INTO `goods_goodsimage` VALUES (50, 'goods/images/50_P_1448946543091.jpg', '2021-05-14 16:16:02.577600', 22);
INSERT INTO `goods_goodsimage` VALUES (51, 'goods/images/50_P_1448946542182.jpg', '2021-05-14 16:16:02.581585', 22);
INSERT INTO `goods_goodsimage` VALUES (52, 'goods/images/51_P_1448946466595.jpg', '2021-05-14 16:16:02.588458', 23);
INSERT INTO `goods_goodsimage` VALUES (53, 'goods/images/51_P_1448946466208.jpg', '2021-05-14 16:16:02.591451', 23);
INSERT INTO `goods_goodsimage` VALUES (54, 'goods/images/17_P_1448947102246.jpg', '2021-05-14 16:16:02.598390', 24);
INSERT INTO `goods_goodsimage` VALUES (55, 'goods/images/20_P_1448946850602.jpg', '2021-05-14 16:16:02.605343', 25);
INSERT INTO `goods_goodsimage` VALUES (56, 'goods/images/19_P_1448946951581.jpg', '2021-05-14 16:16:02.613436', 26);
INSERT INTO `goods_goodsimage` VALUES (57, 'goods/images/19_P_1448946951726.jpg', '2021-05-14 16:16:02.616437', 26);
INSERT INTO `goods_goodsimage` VALUES (58, 'goods/images/18_P_1448947011435.jpg', '2021-05-14 16:16:02.624239', 27);
INSERT INTO `goods_goodsimage` VALUES (59, 'goods/images/22_P_1448946729629.jpg', '2021-05-14 16:16:02.631105', 28);
INSERT INTO `goods_goodsimage` VALUES (60, 'goods/images/45_P_1448946661303.jpg', '2021-05-14 16:16:02.639087', 29);
INSERT INTO `goods_goodsimage` VALUES (61, 'goods/images/32_P_1448948525620.jpg', '2021-05-14 16:16:02.646068', 30);
INSERT INTO `goods_goodsimage` VALUES (62, 'goods/images/30_P_1448948663450.jpg', '2021-05-14 16:16:02.652875', 31);
INSERT INTO `goods_goodsimage` VALUES (63, 'goods/images/30_P_1448948662571.jpg', '2021-05-14 16:16:02.656864', 31);
INSERT INTO `goods_goodsimage` VALUES (64, 'goods/images/30_P_1448948663221.jpg', '2021-05-14 16:16:02.668837', 31);
INSERT INTO `goods_goodsimage` VALUES (65, 'goods/images/31_P_1448948598947.jpg', '2021-05-14 16:16:02.682800', 32);
INSERT INTO `goods_goodsimage` VALUES (66, 'goods/images/31_P_1448948598475.jpg', '2021-05-14 16:16:02.688783', 32);
INSERT INTO `goods_goodsimage` VALUES (67, 'goods/images/35_P_1448948333610.jpg', '2021-05-14 16:16:02.699755', 33);
INSERT INTO `goods_goodsimage` VALUES (68, 'goods/images/35_P_1448948333313.jpg', '2021-05-14 16:16:02.703744', 33);
INSERT INTO `goods_goodsimage` VALUES (69, 'goods/images/36_P_1448948234405.jpg', '2021-05-14 16:16:02.716560', 34);
INSERT INTO `goods_goodsimage` VALUES (70, 'goods/images/36_P_1448948234250.jpg', '2021-05-14 16:16:02.721547', 34);
INSERT INTO `goods_goodsimage` VALUES (71, 'goods/images/33_P_1448948479966.jpg', '2021-05-14 16:16:02.729969', 35);
INSERT INTO `goods_goodsimage` VALUES (72, 'goods/images/33_P_1448948479886.jpg', '2021-05-14 16:16:02.733363', 35);
INSERT INTO `goods_goodsimage` VALUES (73, 'goods/images/34_P_1448948399009.jpg', '2021-05-14 16:16:02.740268', 36);
INSERT INTO `goods_goodsimage` VALUES (74, 'goods/images/43_P_1448948762645.jpg', '2021-05-14 16:16:02.746829', 37);
INSERT INTO `goods_goodsimage` VALUES (75, 'goods/images/38_P_1448949220255.jpg', '2021-05-14 16:16:02.753376', 38);
INSERT INTO `goods_goodsimage` VALUES (76, 'goods/images/44_P_1448948850187.jpg', '2021-05-14 16:16:02.760156', 39);
INSERT INTO `goods_goodsimage` VALUES (77, 'images/201511/goods_img/49_P_1448162819889.jpg', '2021-05-14 16:16:02.767308', 40);
INSERT INTO `goods_goodsimage` VALUES (78, 'goods/images/40_P_1448949038702.jpg', '2021-05-14 16:16:02.774037', 41);
INSERT INTO `goods_goodsimage` VALUES (79, 'goods/images/39_P_1448949115481.jpg', '2021-05-14 16:16:02.780923', 42);
INSERT INTO `goods_goodsimage` VALUES (80, 'goods/images/41_P_1448948980358.jpg', '2021-05-14 16:16:02.787715', 43);
INSERT INTO `goods_goodsimage` VALUES (81, 'goods/images/37_P_1448949284365.jpg', '2021-05-14 16:16:02.794782', 44);
INSERT INTO `goods_goodsimage` VALUES (82, 'goods/images/42_P_1448948895193.jpg', '2021-05-14 16:16:02.801667', 45);
INSERT INTO `goods_goodsimage` VALUES (83, 'goods/images/27_P_1448947771805.jpg', '2021-05-14 16:16:02.808275', 46);
INSERT INTO `goods_goodsimage` VALUES (84, 'goods/images/23_P_1448948070348.jpg', '2021-05-14 16:16:02.815090', 47);
INSERT INTO `goods_goodsimage` VALUES (85, 'goods/images/26_P_1448947825754.jpg', '2021-05-14 16:16:02.821704', 48);
INSERT INTO `goods_goodsimage` VALUES (86, 'goods/images/28_P_1448947699948.jpg', '2021-05-14 16:16:02.829171', 49);
INSERT INTO `goods_goodsimage` VALUES (87, 'goods/images/28_P_1448947699777.jpg', '2021-05-14 16:16:02.832528', 49);
INSERT INTO `goods_goodsimage` VALUES (88, 'goods/images/24_P_1448948023823.jpg', '2021-05-14 16:16:02.839630', 50);
INSERT INTO `goods_goodsimage` VALUES (89, 'goods/images/24_P_1448948023977.jpg', '2021-05-14 16:16:02.842862', 50);
INSERT INTO `goods_goodsimage` VALUES (90, 'goods/images/25_P_1448947875346.jpg', '2021-05-14 16:16:02.849824', 51);
INSERT INTO `goods_goodsimage` VALUES (91, 'goods/images/29_P_1448947631994.jpg', '2021-05-14 16:16:02.856949', 52);

-- ----------------------------
-- Table structure for goods_hotsearchwords
-- ----------------------------
DROP TABLE IF EXISTS `goods_hotsearchwords`;
CREATE TABLE `goods_hotsearchwords`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(0) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_hotsearchwords
-- ----------------------------
INSERT INTO `goods_hotsearchwords` VALUES (1, 'python', 1, '2021-06-15 16:44:00.000000');
INSERT INTO `goods_hotsearchwords` VALUES (2, 'django', 2, '2021-06-15 16:45:00.000000');

-- ----------------------------
-- Table structure for goods_indexad
-- ----------------------------
DROP TABLE IF EXISTS `goods_indexad`;
CREATE TABLE `goods_indexad`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `category_id` int(0) NOT NULL,
  `goods_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id`(`category_id`) USING BTREE,
  INDEX `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_indexad
-- ----------------------------

-- ----------------------------
-- Table structure for reversion_revision
-- ----------------------------
DROP TABLE IF EXISTS `reversion_revision`;
CREATE TABLE `reversion_revision`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reversion_revision_user_id_17095f45_fk_users_userprofile_id`(`user_id`) USING BTREE,
  INDEX `reversion_revision_date_created_96f7c20c`(`date_created`) USING BTREE,
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reversion_revision
-- ----------------------------

-- ----------------------------
-- Table structure for reversion_version
-- ----------------------------
DROP TABLE IF EXISTS `reversion_version`;
CREATE TABLE `reversion_version`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `serialized_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `object_repr` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `revision_id` int(0) NOT NULL,
  `db` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `reversion_version_db_content_type_id_objec_b2c54f65_uniq`(`db`, `content_type_id`, `object_id`, `revision_id`) USING BTREE,
  INDEX `reversion_version_content_type_id_7d0ff25c_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id`(`revision_id`) USING BTREE,
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reversion_version
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_association
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_association`;
CREATE TABLE `social_auth_association`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `handle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `issued` int(0) NOT NULL,
  `lifetime` int(0) NOT NULL,
  `assoc_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_association_server_url_handle_078befa2_uniq`(`server_url`, `handle`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_association
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_code
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_code`;
CREATE TABLE `social_auth_code`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_code_email_code_801b2d02_uniq`(`email`, `code`) USING BTREE,
  INDEX `social_auth_code_code_a2393167`(`code`) USING BTREE,
  INDEX `social_auth_code_timestamp_176b341f`(`timestamp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_code
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_nonce
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_nonce`;
CREATE TABLE `social_auth_nonce`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` int(0) NOT NULL,
  `salt` varchar(65) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq`(`server_url`, `timestamp`, `salt`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_nonce
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_partial
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_partial`;
CREATE TABLE `social_auth_partial`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `next_step` smallint(0) UNSIGNED NOT NULL,
  `backend` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `social_auth_partial_token_3017fea3`(`token`) USING BTREE,
  INDEX `social_auth_partial_timestamp_50f2119f`(`timestamp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_partial
-- ----------------------------

-- ----------------------------
-- Table structure for social_auth_usersocialauth
-- ----------------------------
DROP TABLE IF EXISTS `social_auth_usersocialauth`;
CREATE TABLE `social_auth_usersocialauth`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extra_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `social_auth_usersocialauth_provider_uid_e6b5e668_uniq`(`provider`, `uid`) USING BTREE,
  INDEX `social_auth_usersoci_user_id_17d28448_fk_users_use`(`user_id`) USING BTREE,
  CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_auth_usersocialauth
-- ----------------------------

-- ----------------------------
-- Table structure for trade_ordergoods
-- ----------------------------
DROP TABLE IF EXISTS `trade_ordergoods`;
CREATE TABLE `trade_ordergoods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `goods_num` int(0) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(0) NOT NULL,
  `order_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id`(`goods_id`) USING BTREE,
  INDEX `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id`(`order_id`) USING BTREE,
  CONSTRAINT `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` FOREIGN KEY (`order_id`) REFERENCES `trade_orderinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade_ordergoods
-- ----------------------------

-- ----------------------------
-- Table structure for trade_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `trade_orderinfo`;
CREATE TABLE `trade_orderinfo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nonce_str` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trade_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_script` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `singer_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_sn`(`order_sn`) USING BTREE,
  UNIQUE INDEX `nonce_str`(`nonce_str`) USING BTREE,
  UNIQUE INDEX `trade_no`(`trade_no`) USING BTREE,
  INDEX `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade_orderinfo
-- ----------------------------

-- ----------------------------
-- Table structure for trade_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `trade_shoppingcart`;
CREATE TABLE `trade_shoppingcart`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `nums` int(0) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `trade_shoppingcart_user_id_goods_id_92225e66_uniq`(`user_id`, `goods_id`) USING BTREE,
  INDEX `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `trade_shoppingcart_user_id_da423c9c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trade_shoppingcart
-- ----------------------------
INSERT INTO `trade_shoppingcart` VALUES (6, 1, '2021-06-17 16:33:45.507301', 30, 2);
INSERT INTO `trade_shoppingcart` VALUES (7, 1, '2021-06-17 16:33:51.396123', 35, 2);
INSERT INTO `trade_shoppingcart` VALUES (8, 1, '2021-06-17 16:33:58.898351', 31, 2);
INSERT INTO `trade_shoppingcart` VALUES (9, 1, '2021-06-17 16:35:10.723356', 15, 2);
INSERT INTO `trade_shoppingcart` VALUES (10, 1, '2021-06-17 16:37:05.549400', 48, 2);
INSERT INTO `trade_shoppingcart` VALUES (11, 1, '2021-06-17 16:38:02.132466', 2, 2);
INSERT INTO `trade_shoppingcart` VALUES (13, 1, '2021-06-17 16:40:37.043257', 18, 2);

-- ----------------------------
-- Table structure for user_operation_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_useraddress`;
CREATE TABLE `user_operation_useraddress`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signer_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_operation_usera_user_id_fe128593_fk_users_use`(`user_id`) USING BTREE,
  CONSTRAINT `user_operation_usera_user_id_fe128593_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_operation_useraddress
-- ----------------------------

-- ----------------------------
-- Table structure for user_operation_userfav
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userfav`;
CREATE TABLE `user_operation_userfav`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(0) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_operation_userfav_user_id_goods_id_2dbadda7_uniq`(`user_id`, `goods_id`) USING BTREE,
  INDEX `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_operation_userfav_user_id_4e4de070_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_operation_userfav
-- ----------------------------
INSERT INTO `user_operation_userfav` VALUES (1, '2021-05-21 22:57:32.168403', 1, 1);

-- ----------------------------
-- Table structure for user_operation_userleavingmessage
-- ----------------------------
DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
CREATE TABLE `user_operation_userleavingmessage`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `message_type` int(0) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_operation_userl_user_id_70d909d6_fk_users_use`(`user_id`) USING BTREE,
  CONSTRAINT `user_operation_userl_user_id_70d909d6_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_operation_userleavingmessage
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$100000$LQ4j3uGW70sh$OHtVEkHstY2g9EJX0UO/e9m0dp5Xmfnb6bmHvPojeNM=', '2021-06-24 16:00:43.783804', 1, 'admin', '', '', 1, 1, '2021-05-13 00:47:27.242530', NULL, NULL, 'female', NULL, '');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$100000$lWYLlE3lS6Cp$hEjwUOdIQQj7oaQ4sBllM/QyI9jqoqFAvke7BhPHkrU=', '2021-06-12 15:09:45.840290', 0, 'lwx', '', '', 0, 1, '2021-05-21 16:41:53.535354', NULL, NULL, 'female', 'lwx', NULL);
INSERT INTO `users_userprofile` VALUES (3, 'pbkdf2_sha256$100000$1Ql9YV6Mwj0W$Bhxwgs02WWhThNJpI5DKmh5w2ZpZ2PwmmDZ0Et4us38=', NULL, 0, '零度', '', '', 0, 1, '2021-05-21 16:46:17.863548', NULL, NULL, 'female', '15657681108', NULL);

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_us_permission_id_393136b6_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for users_verifycode
-- ----------------------------
DROP TABLE IF EXISTS `users_verifycode`;
CREATE TABLE `users_verifycode`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_verifycode
-- ----------------------------
INSERT INTO `users_verifycode` VALUES (3, '1233', '15657681107', '2021-05-21 16:28:00.000000');
INSERT INTO `users_verifycode` VALUES (4, '3333', '15657681107', '2021-05-21 16:35:00.000000');
INSERT INTO `users_verifycode` VALUES (5, '5555', '15657681107', '2021-05-21 16:40:00.000000');
INSERT INTO `users_verifycode` VALUES (6, '6666', '15657681108', '2021-05-21 16:45:00.000000');

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2021-05-14 17:05:48.226545', '127.0.0.1', '1', '现摘芭乐番石榴台湾珍珠芭乐', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (2, '2021-05-14 17:06:12.876968', '127.0.0.1', '2', '泰国菠萝蜜16-18斤1个装', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (3, '2021-05-14 17:06:37.186814', '127.0.0.1', '3', '赣南脐橙特级果10斤装', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (4, '2021-05-21 16:13:31.311977', '127.0.0.1', '1', '1222', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (5, '2021-05-21 16:23:16.623524', '127.0.0.1', '2', '1234', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (6, '2021-05-21 16:29:10.327706', '127.0.0.1', '3', '1233', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (7, '2021-05-21 16:29:39.999218', '127.0.0.1', NULL, '', 'delete', '批量删除 2 个 短信验证', NULL, 1);
INSERT INTO `xadmin_log` VALUES (8, '2021-05-21 16:35:16.491803', '127.0.0.1', '4', '3333', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (9, '2021-05-21 16:40:48.451726', '127.0.0.1', '5', '5555', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (10, '2021-05-21 16:45:19.522157', '127.0.0.1', '6', '6666', 'create', '已添加。', 7, 1);
INSERT INTO `xadmin_log` VALUES (11, '2021-06-15 16:45:05.872371', '127.0.0.1', '1', 'python', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (12, '2021-06-15 16:45:20.443937', '127.0.0.1', '2', 'django', 'create', '已添加。', 13, 1);
INSERT INTO `xadmin_log` VALUES (13, '2021-06-22 14:37:17.660360', '127.0.0.1', '117', '精选茗茶', 'change', '修改 desc 和 is_tab', 10, 1);
INSERT INTO `xadmin_log` VALUES (14, '2021-06-22 14:37:48.213544', '127.0.0.1', '108', '天然干货', 'change', '修改 desc 和 is_tab', 10, 1);
INSERT INTO `xadmin_log` VALUES (15, '2021-06-22 14:38:07.696155', '127.0.0.1', '57', '蔬菜水果', 'change', '修改 desc 和 is_tab', 10, 1);
INSERT INTO `xadmin_log` VALUES (16, '2021-06-22 15:02:03.920123', '127.0.0.1', '52', '融氏纯玉米胚芽油5l桶', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_new', 9, 1);
INSERT INTO `xadmin_log` VALUES (17, '2021-06-22 15:02:54.299692', '127.0.0.1', '51', '稻园牌稻米油粮油米糠油绿色植物油', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_new', 9, 1);
INSERT INTO `xadmin_log` VALUES (18, '2021-06-22 15:03:47.266072', '127.0.0.1', '50', '山西黑米农家黑米4斤', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_new', 9, 1);
INSERT INTO `xadmin_log` VALUES (19, '2021-06-23 16:38:44.404471', '127.0.0.1', '45', '伊利官方直营全脂营养舒化奶250ml*12盒*2提', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_new', 9, 1);
INSERT INTO `xadmin_log` VALUES (20, '2021-06-23 16:39:09.451795', '127.0.0.1', '46', '维纳斯橄榄菜籽油5L/桶', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_new', 9, 1);
INSERT INTO `xadmin_log` VALUES (21, '2021-06-23 16:40:45.332778', '127.0.0.1', '37', '休闲零食膨化食品焦糖/奶油/椒麻味', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_new', 9, 1);
INSERT INTO `xadmin_log` VALUES (22, '2021-06-23 23:22:35.457134', '127.0.0.1', '33', '新鲜头茬非洲冰草冰菜', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_new', 9, 1);
INSERT INTO `xadmin_log` VALUES (23, '2021-06-23 23:22:54.997840', '127.0.0.1', '35', '现摘芭乐番石榴台湾珍珠芭乐', 'change', '修改 goods_sn，goods_brief，goods_desc 和 is_new', 9, 1);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
