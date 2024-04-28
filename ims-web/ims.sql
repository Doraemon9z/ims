/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80029 (8.0.29)
 Source Host           : localhost:3306
 Source Schema         : ims

 Target Server Type    : MySQL
 Target Server Version : 80029 (8.0.29)
 File Encoding         : 65001

 Date: 04/03/2024 14:20:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户名',
  `phone` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户电话号码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (1, '李四', '17725253636');
INSERT INTO `client` VALUES (2, '王五', '13390907676');
INSERT INTO `client` VALUES (3, '张三', '13313132323');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货名',
  `storage` int NOT NULL COMMENT '仓库',
  `goodsType` int NOT NULL COMMENT '分类',
  `count` int NULL DEFAULT NULL COMMENT '数量',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '小麦', 1, 1, 198, '其种子被广泛用于食品加工');
INSERT INTO `goods` VALUES (2, '大米', 1, 1, 1008, '主要的粮食作物');
INSERT INTO `goods` VALUES (3, '大豆', 2, 2, 10933, '重要的油料和蛋白质来源');
INSERT INTO `goods` VALUES (4, '黄豆', 2, 2, 1000, '重要的粮食作物和油料作物');
INSERT INTO `goods` VALUES (5, '高粱', 3, 3, 988, '重要的粮食作物');
INSERT INTO `goods` VALUES (6, '荞麦', 3, 3, 777, '杂粮作物');
INSERT INTO `goods` VALUES (7, '普通面粉', 4, 4, 666, '通常用于制作面包、糕点、饼干、面条等各种食品');
INSERT INTO `goods` VALUES (8, '全麦面粉', 4, 4, 755, '全麦面粉被认为比普通面粉更健康');
INSERT INTO `goods` VALUES (9, '淀粉', 5, 5, 633, '用于制作面粉、面条、糖果、饼干等食品');
INSERT INTO `goods` VALUES (10, '淀粉丸', 5, 5, 222, '美味的小吃');

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES (1, '谷物类', '小麦、大米、玉米、燕麦、大麦');
INSERT INTO `goodstype` VALUES (2, '豆类', '大豆、黄豆、红豆、绿豆');
INSERT INTO `goodstype` VALUES (3, '杂粮类', '高粱、小米、荞麦、黍米');
INSERT INTO `goodstype` VALUES (4, '面粉类', '普通面粉、自发面粉、全麦面粉、玉米面');
INSERT INTO `goodstype` VALUES (5, '淀粉类', '淀粉、淀粉制品如淀粉粉、淀粉丸');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int NOT NULL,
  `menuCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单编码',
  `menuName` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名字',
  `menuLevel` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单级别',
  `menuParentCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单的父code',
  `menuClick` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点击触发的函数',
  `menuRight` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限 0超级管理员，1表示管理员，2表示普通用户，可以用逗号组合使用',
  `menuComponent` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menuIcon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '001', '管理员管理', '1', NULL, 'Admin', '0', 'admin/AdminManage.vue', 'el-icon-s-custom');
INSERT INTO `menu` VALUES (2, '002', '用户管理', '1', NULL, 'User', '0,1', 'user/UserManage.vue', 'el-icon-user-solid');
INSERT INTO `menu` VALUES (3, '003', '供应商管理', '1', NULL, 'Storage', '0,1', 'storage/StorageManage', 'el-icon-office-building');
INSERT INTO `menu` VALUES (4, '004', '物品分类管理', '1', NULL, 'Goodstype', '0,1', 'goodstype/GoodstypeManage', 'el-icon-menu');
INSERT INTO `menu` VALUES (5, '005', '物品管理 ', '1', NULL, 'Goods', '0,1,2', 'goods/GoodsManage', 'el-icon-s-management');
INSERT INTO `menu` VALUES (6, '006', '记录管理', '1', NULL, 'Record', '0,1,2', 'record/RecordManage', 'el-icon-s-order');
INSERT INTO `menu` VALUES (7, '007', '客户管理', '1', NULL, 'Client', '0,1', 'client/ClientManage', 'el-icon-s-check');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods` int NOT NULL COMMENT '货品id',
  `userId` int NULL DEFAULT NULL COMMENT '取货人/补货人',
  `admin_id` int NULL DEFAULT NULL COMMENT '操作人id',
  `count` int NULL DEFAULT NULL COMMENT '数量',
  `createtime` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, 2, 4, 1, 9, '2024-03-02 23:50:12', '半价');
INSERT INTO `record` VALUES (2, 1, 3, 1, 99, '2024-03-02 23:50:49', '品质一般');
INSERT INTO `record` VALUES (3, 3, 5, 1, 999, '2023-03-02 23:51:20', '八折');
INSERT INTO `record` VALUES (4, 3, 4, 1, -65, '2023-03-02 23:52:01', '全额');
INSERT INTO `record` VALUES (5, 5, 3, 1, 100, '2024-03-02 23:52:39', '全额');
INSERT INTO `record` VALUES (6, 8, 4, 1, 200, '2024-03-02 23:53:12', '全额');
INSERT INTO `record` VALUES (7, 9, 5, 1, 300, '2024-03-02 23:53:19', '六折');

-- ----------------------------
-- Table structure for storage
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '仓库名',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storage
-- ----------------------------
INSERT INTO `storage` VALUES (1, '中粮集团有限公司', '北京市朝阳区朝阳门南大街8号中粮福临门大厦');
INSERT INTO `storage` VALUES (2, '丰收粮食贸易公司', '四川省乐山市夹江县黄土镇黄土社区3组413号');
INSERT INTO `storage` VALUES (3, '金穗粮油有限公司', '山东省济宁市兖州区大安镇西安路16号');
INSERT INTO `storage` VALUES (4, '龙凤粮油食品有限公司', '浙江省嘉兴市嘉善县金嘉大道51号');
INSERT INTO `storage` VALUES (5, '永乐食品集团', '山东省德州市夏津县永乐路1号');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名字',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `age` int NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `role_id` int NULL DEFAULT NULL COMMENT '角色 0超级管理员，1管理员，2普通账号',
  `isValid` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Y' COMMENT '是否有效，Y有效，其他无效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '超级管理员', '123456', 18, 1, '13215227869', 0, 'Y');
INSERT INTO `user` VALUES (2, 'sa', '管理员', 'root', 19, 0, '13215223466', 1, 'Y');
INSERT INTO `user` VALUES (3, 'gaze', '用户1', '123456', 29, 1, '13215228462', 2, 'Y');
INSERT INTO `user` VALUES (4, 'marin', '用户2', '123456', 18, 1, '18866669998', 2, 'Y');
INSERT INTO `user` VALUES (5, 'susic', '用户3', '123456', 22, 0, '13700000044', 2, 'Y');
INSERT INTO `user` VALUES (6, 'suke', '用户4', '123456', 32, 1, '18866669998', 1, 'Y');

SET FOREIGN_KEY_CHECKS = 1;
