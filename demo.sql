/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 22/06/2020 17:01:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `dept_no` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门编号(规则：父级关系编码+自己的编码)',
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `pid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父级id',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态(1:正常；0:弃用)',
  `relation_code` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '为了维护更深层级关系',
  `dept_manager_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门经理user_id',
  `manager_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门经理名称',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门经理联系电话',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('34978a55-6fd5-4716-bea5-478c7dd2f05a', 'YXD000006', '前端开发一组', 'eaa77595-e16d-4f80-9769-7720c3ea147b', 1, 'YXD000005YXD000004YXD000001YXD000005YXD000006', NULL, '王伟', '15523154782', '2020-01-04 16:52:26', NULL, 1);
INSERT INTO `dept` VALUES ('52ee944b-08e2-4fd1-bf11-254b89b31821', 'YXD000008', '微服务开发部', 'f383e39d-b4a3-4994-9c35-439d74e0ed5a', 1, 'YXD000005YXD000004YXD000002YXD000008', NULL, '张可', '18821485689', '2020-01-04 16:53:54', NULL, 1);
INSERT INTO `dept` VALUES ('6752613a-acd4-41d5-8fca-1e5df6a5ce96', 'YXD000002', '长江医院', '0', 1, 'YXD000002', NULL, '李媛', '13522214241', '2020-06-12 15:50:18', NULL, 1);
INSERT INTO `dept` VALUES ('6ae9b60d-3d03-4e2a-8898-4be57a928c58', 'YXD000001', '小小明', '9def8c9e-0cf4-40cd-9921-5b7f86a7ae3f', 1, 'YXD000005YXD000004YXD000001YXD000003YXD000001', NULL, '小李', '13021210210', '2020-06-12 11:17:16', '2020-06-12 11:29:54', 1);
INSERT INTO `dept` VALUES ('72a4f388-50f8-4019-8c67-530cd7c74e7a', 'YXD000005', '上海总部', '0', 1, 'YXD000005YXD000004', NULL, '王一钢', '15503679153', '2019-11-07 22:43:33', '2020-01-05 16:48:06', 1);
INSERT INTO `dept` VALUES ('857c5c62-1544-4229-b903-31db62c39143', 'YXD000004', '人事部', '931bebd9-259e-43f0-a5a2-a3b7b3403dae', 1, 'YXD000005YXD000004YXD000001YXD000004', NULL, '李凯', '13642145685', '2020-01-04 16:50:58', NULL, 1);
INSERT INTO `dept` VALUES ('931bebd9-259e-43f0-a5a2-a3b7b3403dae', 'YXD000001', '北京分公司', '72a4f388-50f8-4019-8c67-530cd7c74e7a', 1, 'YXD000005YXD000004YXD000001', NULL, '王嫦嫔', '15503687580', '2020-01-04 16:47:57', NULL, 1);
INSERT INTO `dept` VALUES ('9def8c9e-0cf4-40cd-9921-5b7f86a7ae3f', 'YXD000003', '大数据部', '931bebd9-259e-43f0-a5a2-a3b7b3403dae', 1, 'YXD000005YXD000004YXD000001YXD000003', NULL, '李玉', '13561457823', '2020-01-04 16:50:02', '2020-06-12 11:17:41', 1);
INSERT INTO `dept` VALUES ('e8d8c149-6548-48a4-8a72-7a7f46f3c9b2', 'YXD000007', '前端开发一组', 'eaa77595-e16d-4f80-9769-7720c3ea147b', 1, 'YXD000005YXD000004YXD000001YXD000005YXD000007', NULL, '王伟', '15523154782', '2020-01-04 16:52:27', '2020-01-04 16:52:34', 0);
INSERT INTO `dept` VALUES ('eaa77595-e16d-4f80-9769-7720c3ea147b', 'YXD000005', '前端开发部', '931bebd9-259e-43f0-a5a2-a3b7b3403dae', 1, 'YXD000005YXD000004YXD000001YXD000005', NULL, '杨丽', '13524512563', '2020-01-04 16:51:57', NULL, 1);
INSERT INTO `dept` VALUES ('f383e39d-b4a3-4994-9c35-439d74e0ed5a', 'YXD000002', '山西分公司', '72a4f388-50f8-4019-8c67-530cd7c74e7a', 1, 'YXD000005YXD000004YXD000002', NULL, '王帕维', '13524597526', '2020-01-04 16:49:27', NULL, 1);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `time` int(11) NULL DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作地址',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('005cd0c3-62e3-4d19-87a3-34a06fc28ba4', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-????-????????', 6, 'com.yiie.common.controller.UserController.setUserOwnRole()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:43');
INSERT INTO `log` VALUES ('0146970a-1358-4898-ae70-10d74a9f59aa', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '用户管理-分页获取用户列表', 25, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-05-14 16:35:23');
INSERT INTO `log` VALUES ('01485d5e-a4ef-4a36-b9c1-fbb97e12e8fd', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '角色管理-分页获取角色信息', 6, 'com.yiie.common.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-08 17:24:55');
INSERT INTO `log` VALUES ('04303e74-9f86-4e0e-a60e-97e7396b30de', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作日志管理-分页查询系统操作日志', 10, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:40:18');
INSERT INTO `log` VALUES ('05971c0d-6294-4965-8f08-fe8d3d4a5387', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-????????', 5, 'com.yiie.common.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:03');
INSERT INTO `log` VALUES ('06e39b3d-7120-4069-b18e-dc093c7440e7', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 6, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-05-14 16:34:46');
INSERT INTO `log` VALUES ('0764ef5c-0f0a-476f-81f2-ddb53766fe7d', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 400, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:43:58');
INSERT INTO `log` VALUES ('0da5c6be-f736-492d-8232-d62ea526553a', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-更新组织信息', 30, 'com.yiie.common.controller.DeptController.updateDept()', '[{\"id\":\"9def8c9e-0cf4-40cd-9921-5b7f86a7ae3f\",\"managerName\":\"李玉\",\"name\":\"大数据部\",\"phone\":\"13561457823\",\"pid\":\"931bebd9-259e-43f0-a5a2-a3b7b3403dae\",\"status\":1}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:17:41');
INSERT INTO `log` VALUES ('0e43c68e-e4c5-4649-b1f8-2bf0d135e6e7', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 27, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-14 16:49:28');
INSERT INTO `log` VALUES ('0e77ae26-161e-4a9f-a464-a2f1132121fa', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-????????', 12, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:44');
INSERT INTO `log` VALUES ('0e9c3237-6692-43a2-b197-9f94cfe47ead', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 19, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:40:30');
INSERT INTO `log` VALUES ('0f6f0c96-d822-411e-8bd6-801338f26c05', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 9, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 15:50:18');
INSERT INTO `log` VALUES ('10cad442-5780-46e9-9db7-9b431c7b7ee7', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作日志管理-分页查询系统操作日志', 4, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-08 17:25:02');
INSERT INTO `log` VALUES ('13cd38a4-5c2e-400c-b3ce-45ba852f3fc8', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 23, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:40:11');
INSERT INTO `log` VALUES ('18333316-003c-4408-9abc-dfe0cebf14a6', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V??-??????????', 6, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:31:07');
INSERT INTO `log` VALUES ('197536e2-8afa-42d1-904a-1743b3ed07eb', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '用户管理-分页获取用户列表', 39, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:08:58');
INSERT INTO `log` VALUES ('1984b652-622f-4fe2-80e0-64fecefcb3bc', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 3, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-08 17:24:48');
INSERT INTO `log` VALUES ('1abec322-94da-4723-b7c2-fe14fcca694e', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-??????', 11, 'com.yiie.common.controller.DeptController.getTree()', '[\"\"]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:15');
INSERT INTO `log` VALUES ('1b3cd916-39b0-48bf-bded-b7f69e417bde', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-更新组织信息', 4, 'com.yiie.common.controller.DeptController.updateDept()', '[{\"id\":\"6ae9b60d-3d03-4e2a-8898-4be57a928c58\",\"managerName\":\"小李\",\"name\":\"小小明\",\"phone\":\"13021210210\",\"pid\":\"9def8c9e-0cf4-40cd-9921-5b7f86a7ae3f\",\"status\":0}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:18:16');
INSERT INTO `log` VALUES ('1c785276-d01f-4939-ad66-369cff859fbf', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-新增组织', 11, 'com.yiie.common.controller.DeptController.addDept()', '[{\"managerName\":\"李媛\",\"name\":\"长江医院\",\"phone\":\"13522214241\",\"pid\":\"0\",\"status\":1}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 15:50:18');
INSERT INTO `log` VALUES ('1cfbea9b-9bad-4a26-ad53-689006116fa4', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '用户管理-分页获取用户列表', 7, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:38:33');
INSERT INTO `log` VALUES ('1fe4e7de-54d5-41db-b430-e2e334f6ca2a', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-????????', 11, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:43');
INSERT INTO `log` VALUES ('2008feb8-a84e-4f5a-a955-b98deddbf7ec', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 6, 'com.yiie.common.controller.DeptController.getTree()', '[\"\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 15:49:26');
INSERT INTO `log` VALUES ('227329ee-43bc-4a47-861a-fd7e4a80363c', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 16, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-08 17:24:43');
INSERT INTO `log` VALUES ('24345b6c-1044-4954-b851-3604070dde07', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '????-????????', 4, 'com.yiie.common.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:03:16');
INSERT INTO `log` VALUES ('256ce2f5-802b-483f-92a2-7be5f7da6a5e', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 3, 'com.yiie.common.controller.DeptController.getTree()', '[\"\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:16:30');
INSERT INTO `log` VALUES ('26ea3f9c-0f06-457b-be52-0a836d6d0191', NULL, NULL, '用户管理-用户刷新token', 121, 'com.yiie.common.controller.UserController.refreshToken()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:08:54');
INSERT INTO `log` VALUES ('320d11ff-258a-4e4d-a24b-0f0015bfcea0', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '????-????????', 27, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:03:22');
INSERT INTO `log` VALUES ('33ac027e-0aac-4f5b-b471-dbb00d9426f4', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, 'V??-??????????', 6, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:46');
INSERT INTO `log` VALUES ('351797ad-1819-4c6e-a2f7-96cad24d27fd', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 10, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:26:10');
INSERT INTO `log` VALUES ('35eb552e-9dad-4f46-b33e-53212e5271e9', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 17, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 09:54:21');
INSERT INTO `log` VALUES ('38b38543-0499-4870-b27f-5690c3c9bf97', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '??????-????????', 27, 'com.yiie.common.controller.PermissionController.getAllMenusPermission()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:00');
INSERT INTO `log` VALUES ('39354459-7800-4d42-8a09-3d92405d7fe7', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作登录日志管理-分页查询系统登录日志', 5, 'com.yiie.common.controller.LoginLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:44:17');
INSERT INTO `log` VALUES ('3bde169c-e848-4c49-9975-1dc3388381f9', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 17, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:08:55');
INSERT INTO `log` VALUES ('3bf8ed0d-bdbb-4789-b04b-536694dc371f', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作登录日志管理-分页查询系统登录日志', 4, 'com.yiie.common.controller.LoginLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-08 17:25:01');
INSERT INTO `log` VALUES ('429c88a3-eb5d-476a-86a3-0a283d5dfb35', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 46, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-05-14 16:34:20');
INSERT INTO `log` VALUES ('430cefa0-9228-4889-a9b4-c446e2de9e37', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '????????-??????????', 8, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:24:55');
INSERT INTO `log` VALUES ('43e45d0b-8cf7-49b5-829d-c626f35c33b1', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '用户管理-分页获取用户列表', 17, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 17:02:21');
INSERT INTO `log` VALUES ('497b5b22-d289-4bb0-ad45-180d7b7d5cfe', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 9, 'com.yiie.common.controller.DeptController.getTree()', '[\"857c5c62-1544-4229-b903-31db62c39143\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:28:19');
INSERT INTO `log` VALUES ('4d699b67-d290-43c5-b44c-096afc9f2c1e', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-????-????????', 4, 'com.yiie.common.controller.UserController.getUserOwnRole()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:19');
INSERT INTO `log` VALUES ('4d903a06-adfb-4b2a-aa86-c38973189a2d', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 5, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:18:16');
INSERT INTO `log` VALUES ('4e8a2483-cf2b-4a78-96e8-8f9023c07213', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 5, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:17:41');
INSERT INTO `log` VALUES ('4fc1561d-da87-4984-99f9-0c6708ba252c', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 23, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 17:02:16');
INSERT INTO `log` VALUES ('5002b097-7269-46ac-829c-c811f4d49bf2', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作日志管理-分页查询系统操作日志', 8, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:44:21');
INSERT INTO `log` VALUES ('50ba2a7a-e23a-496b-b10c-7b2a17d1fca3', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 3, 'com.yiie.common.controller.DeptController.getTree()', '[\"6ae9b60d-3d03-4e2a-8898-4be57a928c58\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:18:11');
INSERT INTO `log` VALUES ('549c6496-bf99-49ba-9392-f2bb04a39886', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作登录日志管理-分页查询系统登录日志', 48, 'com.yiie.common.controller.LoginLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:40:15');
INSERT INTO `log` VALUES ('555c65ff-7a44-4ba7-9b1a-57cf2a60cea4', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作日志管理-分页查询系统操作日志', 6, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":4,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 10:44:35');
INSERT INTO `log` VALUES ('577fe45d-3976-4ead-a86d-c89bcd305015', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 28, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 15:49:23');
INSERT INTO `log` VALUES ('5ab7660b-43fc-4931-b80c-5d39e346e2f1', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作日志管理-分页查询系统操作日志', 53, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:44:00');
INSERT INTO `log` VALUES ('5ad61480-e834-4bbd-a1de-c62a369f7557', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '角色管理-分页获取角色信息', 14, 'com.yiie.common.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:40:29');
INSERT INTO `log` VALUES ('5d137c76-8f9c-4909-9c2e-6451aab907a8', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 13, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 15:49:25');
INSERT INTO `log` VALUES ('5d46f3f2-68fe-486f-8a67-55fb5c7ec013', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 7, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:28:15');
INSERT INTO `log` VALUES ('5ebb5c8e-f4cf-40dc-93e2-48be5cfde495', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 6478, 'com.yiie.common.controller.DeptController.getTree()', '[\"\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:10:30');
INSERT INTO `log` VALUES ('64ee1e92-6013-4bb4-824f-584f2b6617e1', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '????-????????', 4, 'com.yiie.common.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:27');
INSERT INTO `log` VALUES ('69b3a87c-966a-462b-a555-448e623fc5fc', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-??????', 29, 'com.yiie.common.controller.RoleController.detailInfo()', '[\"11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9\"]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:05');
INSERT INTO `log` VALUES ('6c71437c-5ad7-4df0-8781-385f995b6c92', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作日志管理-分页查询系统操作日志', 2, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":2,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 10:44:35');
INSERT INTO `log` VALUES ('6ce400c7-b733-4260-8516-474c736ac19b', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 16, 'com.yiie.common.controller.DeptController.getTree()', '[\"\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-05-14 16:35:16');
INSERT INTO `log` VALUES ('6d76efb2-0baa-404f-b912-8b289131dd0e', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '????-????????', 4, 'com.yiie.common.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:25:07');
INSERT INTO `log` VALUES ('6f405230-8ebf-4bd2-89a7-1d207d7bc8fa', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '用户管理-分页获取用户列表', 69, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 09:54:35');
INSERT INTO `log` VALUES ('707b365c-1bc8-491d-95c6-6e5f1c2084ae', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-????????', 15, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:17');
INSERT INTO `log` VALUES ('72bcfaa7-8153-476a-83a0-b1df4df57438', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-????????', 10, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:26');
INSERT INTO `log` VALUES ('77fb6f27-9252-4be2-a818-14bb34465dce', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 39, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-14 16:52:30');
INSERT INTO `log` VALUES ('7869a82f-aa18-49f8-a5c2-1b91433c5bb5', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作日志管理-分页查询系统操作日志', 7, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 09:58:49');
INSERT INTO `log` VALUES ('7d4a5384-5353-4cd2-8f01-bacfb0d3d053', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作登录日志管理-分页查询系统登录日志', 4, 'com.yiie.common.controller.LoginLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-08 17:24:59');
INSERT INTO `log` VALUES ('80337a3e-212f-4ee8-adbb-b5733858961d', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '用户管理-分页获取用户列表', 10, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:33:30');
INSERT INTO `log` VALUES ('80851cc5-70c4-404e-aded-76875bec1685', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作日志管理-分页查询系统操作日志', 4, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-08 17:24:58');
INSERT INTO `log` VALUES ('82a59685-d7b2-488f-95de-f9e6416a1bef', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '用户管理-分页获取用户列表', 36, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-08 17:24:51');
INSERT INTO `log` VALUES ('83059143-cb18-47d0-994c-66dc71581fda', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 15, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 17:08:14');
INSERT INTO `log` VALUES ('8318a644-9af6-479b-9e6a-6fde26b05f3c', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '????-????????', 12, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:00');
INSERT INTO `log` VALUES ('83791efa-c1ef-40aa-878f-b885841f5052', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '????-????????', 7, 'com.yiie.common.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:26:57');
INSERT INTO `log` VALUES ('8390a743-b8c4-4e63-acf4-492170021f0f', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '??????????-??????????', 3, 'com.yiie.common.controller.LoginLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:25');
INSERT INTO `log` VALUES ('83e5cb39-ad42-4005-b88a-f15fdb1def85', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', 'V??-??????????', 39, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:03:00');
INSERT INTO `log` VALUES ('87367b06-599d-41cd-8575-16b616a551ad', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作登录日志管理-分页查询系统登录日志', 3, 'com.yiie.common.controller.LoginLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:44:20');
INSERT INTO `log` VALUES ('879d913a-013c-42e6-a010-cd4a81180f69', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 7, 'com.yiie.common.controller.DeptController.getTree()', '[\"\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:16:08');
INSERT INTO `log` VALUES ('88565956-1bb2-489f-8b5e-3cf008518360', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 2, 'com.yiie.common.controller.DeptController.getTree()', '[\"6ae9b60d-3d03-4e2a-8898-4be57a928c58\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:29:52');
INSERT INTO `log` VALUES ('8b23ee57-9cd5-4f4a-ba56-27cbadc47ccc', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '????-????-????????', 6, 'com.yiie.common.controller.UserController.getUserOwnRole()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:03:47');
INSERT INTO `log` VALUES ('8bd1dfaf-711f-41e5-9212-30514e16f034', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '用户管理-更新用户信息', 75, 'com.yiie.common.controller.UserController.updateUserInfo()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-05-14 16:35:23');
INSERT INTO `log` VALUES ('8f580d8e-1c1c-49d2-8cd0-b7d05d9038e5', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作日志管理-分页查询系统操作日志', 2, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":10,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 10:44:37');
INSERT INTO `log` VALUES ('8fa89063-594a-4187-a7fd-e6f726966413', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '????-????????', 17, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:31');
INSERT INTO `log` VALUES ('8fd773c2-5487-4fdf-9fde-44dd998e1754', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '菜单权限管理-获取所有菜单权限', 34, 'com.yiie.common.controller.PermissionController.getAllMenusPermission()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 17:08:16');
INSERT INTO `log` VALUES ('944bfd12-a9e7-41d9-9226-5b5bdfe784ce', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '菜单权限管理-获取所有菜单权限', 23, 'com.yiie.common.controller.PermissionController.getAllMenusPermission()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-08 17:24:56');
INSERT INTO `log` VALUES ('954f3bac-064b-4e5e-ae14-93c128363bf1', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????????-??????????', 5, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:57');
INSERT INTO `log` VALUES ('97f6d4f9-d275-48f5-a594-aadb9ab1c218', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-????????', 14, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:12');
INSERT INTO `log` VALUES ('9834f7ff-e831-4307-80b2-1044260321dc', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 2, 'com.yiie.common.controller.DeptController.getTree()', '[\"\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:38:36');
INSERT INTO `log` VALUES ('9e32b910-26a6-40a1-b531-48dc38aeae91', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 5, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:29:54');
INSERT INTO `log` VALUES ('9f08010e-f2ec-45d9-a841-e040a7dbed36', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '??????-????????', 47, 'com.yiie.common.controller.PermissionController.getAllMenusPermission()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:03:14');
INSERT INTO `log` VALUES ('a19ce1d5-4d86-4f79-8617-320bc0dd9c01', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 7, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:29:47');
INSERT INTO `log` VALUES ('a39c3ceb-8dc6-46a1-8ca4-48edc860ee02', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '????-????????', 16, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:03:10');
INSERT INTO `log` VALUES ('a6264b60-372d-420a-93c6-fabede965495', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-????-????????', 8, 'com.yiie.common.controller.UserController.setUserOwnRole()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:26');
INSERT INTO `log` VALUES ('a9d2a752-1640-43fa-90a9-0efdc3001da3', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '????-????-????????', 8, 'com.yiie.common.controller.UserController.setUserOwnRole()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:43');
INSERT INTO `log` VALUES ('abd67167-6a2b-47c4-94ca-bd35ec55d913', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 1, 'com.yiie.common.controller.DeptController.getTree()', '[\"\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:33:31');
INSERT INTO `log` VALUES ('ac4f3679-a64b-4eea-9a83-75f16d618ba5', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作登录日志管理-分页查询系统登录日志', 12, 'com.yiie.common.controller.LoginLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:44:03');
INSERT INTO `log` VALUES ('b180896f-8f17-4ac5-80a4-df4c47a21765', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '????-????-????????', 3, 'com.yiie.common.controller.UserController.getUserOwnRole()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:36');
INSERT INTO `log` VALUES ('b2bdf768-7f01-46c1-a70f-b6e14e8b59cc', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, 'V??-??????????', 5, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:47');
INSERT INTO `log` VALUES ('b33699d4-5b86-4bd6-bce0-56cfbabb263a', NULL, NULL, '用户管理-用户刷新token', 124, 'com.yiie.common.controller.UserController.refreshToken()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 15:49:22');
INSERT INTO `log` VALUES ('b3a39df4-f587-46ee-916f-913c87a0a01e', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 9, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 09:55:05');
INSERT INTO `log` VALUES ('b447b499-5343-4ea7-b757-314b8f170a60', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '菜单权限管理-获取所有菜单权限', 59, 'com.yiie.common.controller.PermissionController.getAllMenusPermission()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:44:26');
INSERT INTO `log` VALUES ('b60dd8a1-e5f8-4b4c-9fd5-fcd6cb5db3e4', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '????-????????', 66, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:03:06');
INSERT INTO `log` VALUES ('b633e70e-f981-4bd3-af02-a625c4f7f2ee', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '角色管理-分页获取角色信息', 23, 'com.yiie.common.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 17:02:18');
INSERT INTO `log` VALUES ('bc28b969-a873-4bf7-9582-66cb92272306', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 4099, 'com.yiie.common.controller.DeptController.getTree()', '[\"72a4f388-50f8-4019-8c67-530cd7c74e7a\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:27:46');
INSERT INTO `log` VALUES ('bc2bf8d4-236f-4d8e-9292-016ff966be33', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '用户管理-分页获取用户列表', 87, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-05-14 16:34:56');
INSERT INTO `log` VALUES ('bca2bc8c-44d7-42b5-9a58-8a270af13aca', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 7, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:17:16');
INSERT INTO `log` VALUES ('bec1a93a-2b1c-4a18-94c6-814bdcafd9b3', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 10, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:16:07');
INSERT INTO `log` VALUES ('bf7a9d3f-309b-43b7-ae07-d6773ebdfe3a', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '????-????????', 13, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:19');
INSERT INTO `log` VALUES ('c143832f-9fda-44a6-8bdf-b4c7a8966917', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-更新组织信息', 3, 'com.yiie.common.controller.DeptController.updateDept()', '[{\"id\":\"6ae9b60d-3d03-4e2a-8898-4be57a928c58\",\"managerName\":\"小李\",\"name\":\"小小明\",\"phone\":\"13021210210\",\"pid\":\"9def8c9e-0cf4-40cd-9921-5b7f86a7ae3f\",\"status\":1}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:29:54');
INSERT INTO `log` VALUES ('c584b65b-d2e2-4da6-82f7-bcc02be9dff7', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '????-????-????????', 3, 'com.yiie.common.controller.UserController.getUserOwnRole()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:05');
INSERT INTO `log` VALUES ('c7861f7c-eb65-491f-8ae4-641f08cb2d65', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '角色管理-分页获取角色信息', 5, 'com.yiie.common.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 09:55:09');
INSERT INTO `log` VALUES ('c844f99d-b96f-4650-b2cb-2bb8c72aa477', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '菜单权限管理-获取所有菜单权限', 18, 'com.yiie.common.controller.PermissionController.getAllMenusPermission()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-08 17:25:06');
INSERT INTO `log` VALUES ('d0aae373-8540-47cd-9056-9b6a916e3554', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '用户管理-分页获取用户列表', 40, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:26:11');
INSERT INTO `log` VALUES ('d339b4e4-639e-4102-90ba-4a04c59aaded', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 3, 'com.yiie.common.controller.DeptController.getTree()', '[\"6ae9b60d-3d03-4e2a-8898-4be57a928c58\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:18:03');
INSERT INTO `log` VALUES ('d51de465-5076-4877-9ed0-baf396ca9d63', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 13, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:26:05');
INSERT INTO `log` VALUES ('d638bf3f-50e2-41ef-8f49-2092da39b659', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '??????????-??????????', 8, 'com.yiie.common.controller.LoginLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:38:05');
INSERT INTO `log` VALUES ('d66b0d4a-cf43-4e2d-9ab6-3e415758e71a', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-新增组织', 11, 'com.yiie.common.controller.DeptController.addDept()', '[{\"managerName\":\"小李\",\"name\":\"小小明\",\"phone\":\"13021210210\",\"pid\":\"9def8c9e-0cf4-40cd-9921-5b7f86a7ae3f\",\"status\":1}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:17:16');
INSERT INTO `log` VALUES ('d746c2bc-f38c-4fd8-8450-cad0b6f7e06b', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '角色管理-分页获取角色信息', 6, 'com.yiie.common.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 17:08:15');
INSERT INTO `log` VALUES ('d799e03c-dc91-4e3b-8414-834527395b82', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '用户管理-分页获取用户列表', 12, 'com.yiie.common.controller.UserController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:10:22');
INSERT INTO `log` VALUES ('d80ebbc5-3304-44fa-b68f-acf0f66742c9', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统登录日志管理-删除系统登录日志', 2, 'com.yiie.common.controller.LoginLogController.deleted()', '[[\"134\"]]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:44:20');
INSERT INTO `log` VALUES ('d90d3d56-853f-442c-b8d6-8f654b2335bf', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '??????-????????', 33, 'com.yiie.common.controller.PermissionController.getAllMenusPermission()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:25:10');
INSERT INTO `log` VALUES ('dcad9f11-8770-4abc-8768-cf81d02e06f6', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '??????????-??????????', 4, 'com.yiie.common.controller.LoginLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:53');
INSERT INTO `log` VALUES ('dd060db6-6053-405d-946f-5fd421feeead', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 2, 'com.yiie.common.controller.DeptController.getTree()', '[\"\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 15:50:24');
INSERT INTO `log` VALUES ('dd3f582f-0755-4ae1-a9e4-4e97af259367', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 3, 'com.yiie.common.controller.DeptController.getTree()', '[\"9def8c9e-0cf4-40cd-9921-5b7f86a7ae3f\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:17:38');
INSERT INTO `log` VALUES ('dd8d5c2b-ef5d-401d-ba85-133f0e5141de', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统登录日志管理-删除系统登录日志', 8, 'com.yiie.common.controller.LoginLogController.deleted()', '[[\"135\"]]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-10 16:44:17');
INSERT INTO `log` VALUES ('e13b5d03-fa7b-4568-bf2a-774589dce3f4', 'fcf34b56-a7a2-4719-9236-867495e74c31', NULL, '????-????-????????', 2, 'com.yiie.common.controller.UserController.getUserOwnRole()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:33:31');
INSERT INTO `log` VALUES ('e3cd4aa0-0beb-403c-9b57-95f86bc2daa8', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '????????-??????????', 6, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:24');
INSERT INTO `log` VALUES ('e47f766d-d3f0-4b1c-9d92-fe79f5c0e4f4', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '系统操作日志管理-分页查询系统操作日志', 3, 'com.yiie.common.controller.OperLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 10:44:36');
INSERT INTO `log` VALUES ('e688d345-8aa9-4de3-b190-55182489c638', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 69489, 'com.yiie.common.controller.DeptController.getTree()', '[\"\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-09 15:10:13');
INSERT INTO `log` VALUES ('eb3a2ac3-fc58-4975-b6d2-fe6a993d4d90', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-获取所有组织机构', 9, 'com.yiie.common.controller.DeptController.getDeptAll()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-08 17:24:54');
INSERT INTO `log` VALUES ('ebda9f79-e78e-463e-b0a6-95674c0ffc21', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '??????????-??????????', 10, 'com.yiie.common.controller.LoginLogController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:24:50');
INSERT INTO `log` VALUES ('ee5a698c-b2ee-475e-b6e9-afcbb25d966d', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '????-????????', 18, 'com.yiie.common.controller.RoleController.pageInfo()', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:03:12');
INSERT INTO `log` VALUES ('ef607294-fe36-4ebc-bc62-c0776fdf71b2', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 11, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-14 16:50:15');
INSERT INTO `log` VALUES ('f2cd5fd2-732d-4733-9d88-daa73f9d6e05', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '????-????-????????', 75, 'com.yiie.common.controller.UserController.setUserOwnRole()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:19');
INSERT INTO `log` VALUES ('f667bf4d-1c36-4c75-aef3-96a11cc79008', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', 'V首页-首页获取图表信息接口', 66, 'com.yiie.common.controller.MainController.getChart()', NULL, '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-04-14 16:43:24');
INSERT INTO `log` VALUES ('f94871ec-8f97-43fd-a75f-6b3172adab02', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '机构管理-树型组织列表', 4, 'com.yiie.common.controller.DeptController.getTree()', '[\"72a4f388-50f8-4019-8c67-530cd7c74e7a\"]', '127.0.0.1', '内网IP|0|0|内网IP|内网IP', '2020-06-12 11:16:23');
INSERT INTO `log` VALUES ('fbec9607-6d64-46f4-b6b8-44aa47adab13', 'fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '????-????token', 30, 'com.yiie.common.controller.UserController.refreshToken()', NULL, '127.0.0.1', '??IP|0|0|??IP|??IP', '2020-04-10 16:32:44');

-- ----------------------------
-- Table structure for loginlog
-- ----------------------------
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE `loginlog`  (
  `id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作地址',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统',
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录浏览器类型',
  `status` int(255) NULL DEFAULT NULL COMMENT '登录状态 1为成功 0 为失败',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录说明',
  `code` int(255) NULL DEFAULT NULL COMMENT '登录状态码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loginlog
-- ----------------------------
INSERT INTO `loginlog` VALUES ('1', 'admin', '2020-04-10 16:40:09', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', '搜狗Chrome 65', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('10', 'admin', '2020-04-15 10:29:19', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('11', 'admin', '2020-04-15 10:36:16', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', '', '', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('12', 'admin', '2020-04-16 10:47:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('13', 'admin', '2020-04-16 15:12:37', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('14', 'admin', '2020-04-16 15:12:56', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('15', 'admin', '2020-05-08 15:09:24', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('16', 'admin', '2020-05-14 16:34:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Chrome 81', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('17', 'admin', '2020-05-14 16:34:43', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('18', 'admin', '2020-06-08 17:24:40', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 77', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('19', 'admin', '2020-06-09 09:54:18', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 77', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('2', 'admin', '2020-04-14 16:43:20', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('20', 'admin', '2020-06-09 15:26:02', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 77', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('21', 'admin', '2020-06-12 11:16:04', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows 10', 'Firefox 77', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('3', 'admin', '2020-04-14 16:49:24', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('4', 'admin', '2020-04-14 16:50:14', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('5', 'admin', '2020-04-14 16:52:28', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('6', 'admin', '2020-04-14 16:53:50', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 0, '密码错误', 401006);
INSERT INTO `loginlog` VALUES ('7', 'admin', '2020-04-14 17:40:48', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 1, '登录成功', 0);
INSERT INTO `loginlog` VALUES ('8', 'admin', '2020-04-15 10:25:44', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 0, '密码错误', 401006);
INSERT INTO `loginlog` VALUES ('9', 'admin', '2020-04-15 10:28:35', '内网IP|0|0|内网IP|内网IP', '127.0.0.1', 'Windows ', 'Firefox 75', 0, '密码错误', 401006);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限编码',
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限名称',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：sys:user:add,sys:user:edit)',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问地址URL',
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源请求类型',
  `pid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级菜单权限名称',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '排序',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '菜单权限类型(1:目录;2:菜单;3:按钮)',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态1:正常 0：禁用',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('0d99b687-3f46-4632-9d56-8dd5e476dae7', '', 'SQL 监控', 'layui-icon-table', '', '/druid/sql.html', 'GET', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', 98, 2, 1, '2019-11-09 20:58:23', '2020-01-07 00:35:39', 1);
INSERT INTO `permission` VALUES ('1a2ec857-e775-4377-9fb7-e3c77738b3e5', 'btn-role-add', '新增', NULL, 'sys:role:add', '/sys/role', 'POST', 'e0b16b95-09de-4d60-a283-1eebd424ed47', 0, 3, 1, '2019-09-22 16:00:59', NULL, 1);
INSERT INTO `permission` VALUES ('2073345f-7344-43fe-9084-b7add56da652', 'btn-dept-deleted', '删除', NULL, 'sys:dept:deleted', '/sys/dept/*', 'DELETED', 'c038dc93-f30d-4802-a090-be352eab341a', 100, 3, 1, '2019-11-09 20:49:59', NULL, 1);
INSERT INTO `permission` VALUES ('26764d88-1d90-402d-b355-a75deef116f2', '', '接口管理', 'layui-icon-engine', '', '/swagger-ui.html', 'GET', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', 100, 2, 1, '2019-11-09 20:56:37', '2020-01-07 00:35:51', 1);
INSERT INTO `permission` VALUES ('26e66825-5ca9-4470-b7dc-9e710b2563ef', 'btn-user-list', '列表', NULL, 'sys:user:list', '/sys/users', 'POST', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 89, 3, 1, '2020-01-01 19:31:56', '2020-01-01 19:43:33', 0);
INSERT INTO `permission` VALUES ('355f387f-a22b-4f8c-9cd6-ae10e930cd70', 'btn-logs-list', '列表', NULL, 'sys:log:list', '/sys/logs', 'POST', '37101ed5-e840-4082-ae33-682ca6e41ad8', 100, 3, 1, '2019-11-09 21:00:49', '2019-11-09 21:02:08', 1);
INSERT INTO `permission` VALUES ('37101ed5-e840-4082-ae33-682ca6e41ad8', '', '操作日志', 'layui-icon-about', '', '/index/logs', 'GET', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', 100, 2, 1, '2019-11-09 20:59:09', '2020-01-07 00:36:06', 1);
INSERT INTO `permission` VALUES ('3a93a7e3-956a-408e-b2e4-108e9ece8f04', 'btn-dept-add', '新增', NULL, 'sys:dept:add', '/sys/dept', 'POST', 'c038dc93-f30d-4802-a090-be352eab341a', 100, 3, 1, '2019-11-07 22:42:49', '2019-11-09 20:51:08', 1);
INSERT INTO `permission` VALUES ('3c390dfd-0d9a-46de-9a5b-1ed884febcb2', 'btn-user-role-update', '更改权限', NULL, 'sys:user:role:update', '/sys/user/roles/*', 'POST', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:39:09', NULL, 1);
INSERT INTO `permission` VALUES ('3dac936c-c4e1-4560-ac93-905502f61ae0', NULL, '菜单权限管理', 'layui-icon-note', '', '/index/menus', 'GET', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', 98, 2, 1, '2019-09-22 15:18:12', '2020-01-07 00:29:35', 1);
INSERT INTO `permission` VALUES ('3ed79f23-90bf-4669-bc02-42ae392e75c1', 'btn-dept-list', '列表', NULL, 'sys:dept:list', '/sys/depts', 'POST', 'c038dc93-f30d-4802-a090-be352eab341a', 100, 3, 1, '2019-11-07 22:38:34', '2019-11-09 20:51:18', 1);
INSERT INTO `permission` VALUES ('4018e179-e599-41d0-bac5-c5408e1d4bc6', 'btn-role-deleted', '删除', NULL, 'sys:role:deleted', '/sys/role/*', 'DELETED', 'e0b16b95-09de-4d60-a283-1eebd424ed47', 100, 3, 1, '2019-11-09 20:54:28', NULL, 1);
INSERT INTO `permission` VALUES ('4405d359-43b5-405d-ad1a-148001766359', '', 'waw', '', '', 'dawdawda', '', '0', 22, 1, 1, '2020-01-06 21:15:27', '2020-01-06 21:23:27', 0);
INSERT INTO `permission` VALUES ('475b4c24-40fa-4823-863a-ba6d793b7610', 'btn-permission-detail', '详情', NULL, 'sys:permission:detail', '/sys/permission/*', 'GET', '3dac936c-c4e1-4560-ac93-905502f61ae0', 100, 3, 1, '2019-11-09 20:43:05', NULL, 1);
INSERT INTO `permission` VALUES ('58612968-d93c-4c21-8fdc-a825c0ab0275', 'btn-role-list', '列表', NULL, 'sys:role:list', '/sys/roles', 'POST', 'e0b16b95-09de-4d60-a283-1eebd424ed47', 0, 3, 1, '2019-09-22 16:04:33', NULL, 1);
INSERT INTO `permission` VALUES ('761db494-833d-4a6c-94b4-3a7409fd9a78', 'btn-dept-detail', '详情', NULL, 'sys:dept:detail', '/sys/dept/*', 'GET', 'c038dc93-f30d-4802-a090-be352eab341a', 100, 3, 1, '2019-11-09 20:50:53', NULL, 1);
INSERT INTO `permission` VALUES ('783aedd8-5d93-46b6-8c6d-e4d3f0f3f466', 'btn-user-list', '列表', NULL, 'sys:user:list', '/sys/users', 'POST', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2020-01-01 19:44:37', NULL, 1);
INSERT INTO `permission` VALUES ('78f8e29a-cccd-49e5-ada7-5af40dd95312', '', '用户管理', 'layui-icon-vercode', '', '/index/users', 'GET', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', 100, 2, 1, '2020-01-01 19:30:30', '2019-11-09 20:48:29', 1);
INSERT INTO `permission` VALUES ('817a58d1-ec82-4106-870a-bcc0bfaee0e7', 'btn-user-detail', '详情', NULL, 'sys:user:detail', '/sys/user/*', 'GET', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:24:24', '2019-11-09 20:48:05', 1);
INSERT INTO `permission` VALUES ('8623c941-5746-4667-9fb8-76f6f5059788', 'btn-permission-deleted', '删除', NULL, 'sys:permission:deleted', '/sys/permission/*', 'DELETED', '3dac936c-c4e1-4560-ac93-905502f61ae0', 100, 3, 1, '2019-11-07 22:35:50', '2019-11-09 20:44:44', 1);
INSERT INTO `permission` VALUES ('992d1a8d-b5f8-44fc-9a48-4b3e60a7b15e', 'btn-role-update', '更新', NULL, 'sys:role:update', '/sys/role', 'PUT', 'e0b16b95-09de-4d60-a283-1eebd424ed47', 0, 3, 1, '2019-09-22 16:03:46', NULL, 1);
INSERT INTO `permission` VALUES ('99c12035-32de-4aa1-aa0c-de4d846c9edc', '', 'aaa', '', '', 'daw', '', '0', 100, 1, 1, '2020-01-06 21:14:08', '2020-01-06 21:23:33', 0);
INSERT INTO `permission` VALUES ('a137e93a-32df-4796-8a88-abfc52fbf4d1', '', 'dad', 'layui-icon-rate-solid', '', 'dad', '', '0', 100, 1, 1, '2020-01-07 00:33:39', '2020-01-07 00:33:59', 0);
INSERT INTO `permission` VALUES ('a31acb33-9412-4ada-bbdf-0138c007e6db', '', '删除', NULL, 'sys:loginlog:deleted', 'sys/loginlogs', 'DELETED', 'b545d509-9a27-47b7-9c24-7bd2bd540229', 100, 3, 1, '2020-01-05 15:11:13', NULL, 1);
INSERT INTO `permission` VALUES ('a390845b-a53d-4bc9-af5d-331c37f34e6f', 'btn-dept-update', '更新', NULL, 'sys:dept:update', '/sys/dept', 'PUT', 'c038dc93-f30d-4802-a090-be352eab341a', 100, 3, 1, '2019-11-09 20:53:16', NULL, 1);
INSERT INTO `permission` VALUES ('b01614ab-0538-4cca-bb61-b46f18c60aa4', 'btn-role-detail', '详情', NULL, 'sys:role:detail', '/sys/role/*', 'GET', 'e0b16b95-09de-4d60-a283-1eebd424ed47', 100, 3, 1, '2019-09-22 16:06:13', '2019-11-09 20:55:08', 1);
INSERT INTO `permission` VALUES ('b180aafa-0d1a-4898-b838-bc20cd44356d', NULL, '编辑', NULL, 'sys:permission:update', '/sys/permission', 'PUT', '3dac936c-c4e1-4560-ac93-905502f61ae0', 100, 3, 1, '2019-11-07 22:27:22', '2019-11-09 20:48:44', 1);
INSERT INTO `permission` VALUES ('b545d509-9a27-47b7-9c24-7bd2bd540229', '', '登录日志', 'layui-icon-group', '', '/index/loginlogs', 'GET', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', 100, 2, 1, '2020-01-05 15:05:03', '2020-01-07 00:36:21', 1);
INSERT INTO `permission` VALUES ('c038dc93-f30d-4802-a090-be352eab341a', '', '部门管理', 'layui-icon-theme', '', '/index/depts', 'GET', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', 100, 2, 1, '2019-11-07 22:37:20', '2020-01-07 00:34:58', 1);
INSERT INTO `permission` VALUES ('c09221bd-35ef-4a63-bd92-018c7fa218ad', '', '列表', NULL, 'sys:loginlog:list', '/sys/loginlogs', 'POST', 'b545d509-9a27-47b7-9c24-7bd2bd540229', 100, 3, 1, '2020-01-05 15:07:42', NULL, 1);
INSERT INTO `permission` VALUES ('c0a84726-47d8-4d7a-8d53-0736a4586647', 'btn-user-add', '新增', NULL, 'sys:user:add', '/sys/user', 'POST', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:25:18', NULL, 1);
INSERT INTO `permission` VALUES ('c30389e8-eb3e-4a0d-99c4-639e1893a05f', 'btn-permission-list', '列表', NULL, 'sys:permission:list', '/sys/permissions', 'POST', '3dac936c-c4e1-4560-ac93-905502f61ae0', 100, 3, 1, '2019-09-22 15:26:45', '2019-11-09 20:45:19', 1);
INSERT INTO `permission` VALUES ('c30389e8-eb3e-4a0d-99c4-639e1893f50a', 'btn-permission-list', '新增', NULL, 'sys:permission:add', '/sys/permission', 'POST', '3dac936c-c4e1-4560-ac93-905502f61ae0', 100, 3, 1, '2019-09-22 15:26:45', '2019-11-09 20:45:25', 1);
INSERT INTO `permission` VALUES ('d6214dcb-8b6d-494b-88fa-f519fc08ff8f', NULL, '组织管理', '', '', '', '', '0', 100, 1, 1, '2019-09-28 15:16:14', '2020-01-08 14:19:04', 1);
INSERT INTO `permission` VALUES ('db2d31b7-fdcb-478e-bfde-a55eb8b0aa43', 'btn-user-role-detail', '授权', NULL, 'sys:user:role:detail', '/sys/user/roles/*', 'GET', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:29:47', NULL, 1);
INSERT INTO `permission` VALUES ('e0b16b95-09de-4d60-a283-1eebd424ed47', '', '角色管理', 'layui-icon-tree', '', '/index/roles', 'GET', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', 99, 2, 1, '2019-09-22 15:45:45', '2020-01-07 00:35:21', 1);
INSERT INTO `permission` VALUES ('e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', '', '系统管理', '', '', '', '', '0', 98, 1, 1, '2019-11-09 20:56:01', '2020-01-08 14:19:17', 1);
INSERT INTO `permission` VALUES ('f21ed5e8-0756-45dc-91c5-f58a9463caaa', 'btn-user-update', '更新', NULL, 'sys:user:update', '/sys/user', 'PUT', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:23:20', NULL, 1);
INSERT INTO `permission` VALUES ('f28b9215-3119-482d-bdc1-1f4c3f7c0869', 'btn-user-deleted', '删除', NULL, 'sys:user:deleted', '/sys/user', 'DELETED', '78f8e29a-cccd-49e5-ada7-5af40dd95312', 100, 3, 1, '2019-11-09 20:26:45', NULL, 1);
INSERT INTO `permission` VALUES ('f2ff9320-c643-4c85-8b68-15f86d47b88b', 'btn-log-deleted', '删除', NULL, 'sys:log:deleted', '/sys/logs', 'DELETED', '37101ed5-e840-4082-ae33-682ca6e41ad8', 100, 3, 1, '2019-11-09 21:01:49', NULL, 1);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态(1:正常0:弃用)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '超级管理员', '拥有所有权限-不能删除', 1, '2019-11-01 19:26:29', '2020-01-05 16:06:38', 1);
INSERT INTO `role` VALUES ('12856224-701c-40e7-995f-4699305ea831', '人事部管理员', '拥有用户权限的所有权限', 1, '2020-01-04 16:58:48', '2020-01-04 21:19:39', 1);
INSERT INTO `role` VALUES ('b95c69b7-84be-430f-ae57-27a703ae3998', '后台管理员', '拥有全部权限', 1, '2019-11-09 21:25:31', '2020-01-04 16:56:37', 1);
INSERT INTO `role` VALUES ('ba6e1f7e-20d8-453c-a63b-841093bd402c', '大数据部主管', '拥有部分权限', 1, '2020-01-04 17:00:19', '2020-01-06 11:57:34', 1);
INSERT INTO `role` VALUES ('cdd7105c-694c-43e8-afd1-32c29250bb9e', '访客特殊权限', '访客特殊权限', 1, '2020-01-07 17:55:28', '2020-01-07 21:05:24', 1);
INSERT INTO `role` VALUES ('d689cf27-137f-41a1-bc68-73045f7ff29b', '总部管理员', '拥有部分权限，没有删除权限', 1, '2020-01-04 16:57:32', '2020-01-06 00:04:41', 1);

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('00b4f237-2288-4b4c-bfa7-325c1d496ec9', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'c038dc93-f30d-4802-a090-be352eab341a', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('00ef1de5-6973-4db5-b794-72a8ec54ca52', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '1a2ec857-e775-4377-9fb7-e3c77738b3e5', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('04353373-3bb9-4f6e-b2b7-7484a2a1c13f', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('05c17fc2-d23e-4392-89df-aeec3b0f6038', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '761db494-833d-4a6c-94b4-3a7409fd9a78', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('09d33bf5-0c42-402c-acd5-a5d2ef79260c', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '0d99b687-3f46-4632-9d56-8dd5e476dae7', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('0a01a47b-9431-4095-9998-e6385e7f2c2d', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'f2ff9320-c643-4c85-8b68-15f86d47b88b', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('0e688274-345b-4dfe-a686-d307f8f6860b', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'a390845b-a53d-4bc9-af5d-331c37f34e6f', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('0eee48dd-d492-47f2-9172-7c35da5825ce', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '992d1a8d-b5f8-44fc-9a48-4b3e60a7b15e', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('0f55a91e-1229-4e63-9b39-54b0095f0927', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'db2d31b7-fdcb-478e-bfde-a55eb8b0aa43', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('0f631a26-0f0b-4247-ab0b-37ec82f6e183', 'b95c69b7-84be-430f-ae57-27a703ae3998', '783aedd8-5d93-46b6-8c6d-e4d3f0f3f466', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('1015508d-a568-4d7a-ab44-253e302d4be7', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '78f8e29a-cccd-49e5-ada7-5af40dd95312', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('1028f650-9b7e-43b5-b0c8-e008c97edd68', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'a390845b-a53d-4bc9-af5d-331c37f34e6f', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('107af9b9-b260-417b-b6fd-c273c5dd58a7', 'b95c69b7-84be-430f-ae57-27a703ae3998', '761db494-833d-4a6c-94b4-3a7409fd9a78', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('1531412c-5aaf-4f7e-9716-d2b17200971b', '12856224-701c-40e7-995f-4699305ea831', 'c0a84726-47d8-4d7a-8d53-0736a4586647', '2020-01-04 21:19:39');
INSERT INTO `role_permission` VALUES ('15de3aaf-8989-412e-965c-a3d6ac0c53d9', 'b95c69b7-84be-430f-ae57-27a703ae3998', '3a93a7e3-956a-408e-b2e4-108e9ece8f04', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('1874fc8a-30bc-4ca5-aefe-09e828c1301d', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'f28b9215-3119-482d-bdc1-1f4c3f7c0869', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('1a6bbbc5-d1cc-4d57-b948-4166d6c0575c', 'b95c69b7-84be-430f-ae57-27a703ae3998', '26764d88-1d90-402d-b355-a75deef116f2', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('1a93b4d1-c894-4c65-be2c-bfa3213614c0', 'b95c69b7-84be-430f-ae57-27a703ae3998', '817a58d1-ec82-4106-870a-bcc0bfaee0e7', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('1abaa246-a46d-4335-8e6f-f4288f080f4c', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'c038dc93-f30d-4802-a090-be352eab341a', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('23d4500d-4c70-46d2-83b2-773090d2ecf1', '12856224-701c-40e7-995f-4699305ea831', 'f21ed5e8-0756-45dc-91c5-f58a9463caaa', '2020-01-04 21:19:39');
INSERT INTO `role_permission` VALUES ('23e86e51-958d-4bf0-9c81-6ba99dd537f4', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', '3ed79f23-90bf-4669-bc02-42ae392e75c1', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('25d1e005-37aa-43f1-9f93-c63c761f809d', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'c0a84726-47d8-4d7a-8d53-0736a4586647', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('28e3065c-d61e-451c-b4b6-670b14e88f80', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', 'c09221bd-35ef-4a63-bd92-018c7fa218ad', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('2a7e5f8c-9721-4d2c-84fa-2378c87b3edb', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '26764d88-1d90-402d-b355-a75deef116f2', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('2bc4233c-3dde-4199-945e-b4f04eb80653', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '817a58d1-ec82-4106-870a-bcc0bfaee0e7', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('2c4545a1-aa22-42cc-9eec-e9676ee6854f', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', '355f387f-a22b-4f8c-9cd6-ae10e930cd70', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('2f031461-ddea-4c90-897e-a9b3b7b2f360', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '475b4c24-40fa-4823-863a-ba6d793b7610', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('2fa5a60f-6224-45ca-8fcc-2eae963b4ec3', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '2073345f-7344-43fe-9084-b7add56da652', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('3097fab7-f8d6-4c2b-965e-018f862e972a', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '37101ed5-e840-4082-ae33-682ca6e41ad8', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('30f22014-1a36-44a7-b21e-9097acbb70a6', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '355f387f-a22b-4f8c-9cd6-ae10e930cd70', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('31771337-1bc3-468d-8529-a8a27d7e5a90', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '783aedd8-5d93-46b6-8c6d-e4d3f0f3f466', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('31afb11b-50bd-4032-a025-40dcecc1e803', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'e0b16b95-09de-4d60-a283-1eebd424ed47', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('3213175c-cc96-4a3f-a1fa-653c30e536cf', 'b95c69b7-84be-430f-ae57-27a703ae3998', '58612968-d93c-4c21-8fdc-a825c0ab0275', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('342c51a2-4540-4166-813c-22df7b2c0584', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'c30389e8-eb3e-4a0d-99c4-639e1893a05f', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('346f1ad7-6e48-45bc-890c-0a0aec5cb0f0', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '37101ed5-e840-4082-ae33-682ca6e41ad8', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('3590d1ff-5d44-400b-bd48-44cfc64b7b65', 'b95c69b7-84be-430f-ae57-27a703ae3998', '475b4c24-40fa-4823-863a-ba6d793b7610', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('368082ee-c75e-4fe9-b8b1-c4d5a5fe66a4', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'a390845b-a53d-4bc9-af5d-331c37f34e6f', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('3d983836-4256-410c-82f9-818601c2c658', '12856224-701c-40e7-995f-4699305ea831', '817a58d1-ec82-4106-870a-bcc0bfaee0e7', '2020-01-04 21:19:39');
INSERT INTO `role_permission` VALUES ('3dc19344-e4e9-44d2-b7c1-bd051bd268ff', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '78f8e29a-cccd-49e5-ada7-5af40dd95312', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('4048b1c2-c588-4e3d-8dc9-601d9457a7fd', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'b01614ab-0538-4cca-bb61-b46f18c60aa4', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('410239e7-0e9d-4c74-a077-f08932d50301', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '26764d88-1d90-402d-b355-a75deef116f2', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('42c5ba49-a30c-402d-821d-195a297e8dfc', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '817a58d1-ec82-4106-870a-bcc0bfaee0e7', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('46a4e6f4-18ca-460c-a0c0-53d027e46fec', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '3a93a7e3-956a-408e-b2e4-108e9ece8f04', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('49608674-c930-4849-8d4c-17df5e5dbfc6', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '8623c941-5746-4667-9fb8-76f6f5059788', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('4a26deec-b460-4f84-a3f0-8add81be585d', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '58612968-d93c-4c21-8fdc-a825c0ab0275', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('4bfd0f45-1cd0-457a-b708-79509b92c748', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '355f387f-a22b-4f8c-9cd6-ae10e930cd70', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('4d7a7510-1f47-44dc-a731-2212f94b0120', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'b180aafa-0d1a-4898-b838-bc20cd44356d', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('505f6a73-e3d0-43ae-aa5e-1e24c095ab1e', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'c30389e8-eb3e-4a0d-99c4-639e1893a05f', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('54b87ce0-f021-4e59-8718-e62313c7fc2a', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'c30389e8-eb3e-4a0d-99c4-639e1893a05f', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('562645f4-ea22-4d0b-af7f-2f122398c525', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'a31acb33-9412-4ada-bbdf-0138c007e6db', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('58081edb-8d49-4ad1-91ff-a201d25e4afd', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', '475b4c24-40fa-4823-863a-ba6d793b7610', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('590a201f-fca6-4372-8a85-bfc94da1f245', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'c30389e8-eb3e-4a0d-99c4-639e1893f50a', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('595fe668-f118-410e-832d-1ddabc399615', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '3c390dfd-0d9a-46de-9a5b-1ed884febcb2', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('597f9a97-7d91-4783-a559-823bb7bae391', 'b95c69b7-84be-430f-ae57-27a703ae3998', '992d1a8d-b5f8-44fc-9a48-4b3e60a7b15e', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('5e78b460-3bff-4e22-915e-db62a7e41d3b', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'e0b16b95-09de-4d60-a283-1eebd424ed47', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('5f06b1e1-ba07-482b-839c-250779b9ad42', '12856224-701c-40e7-995f-4699305ea831', '783aedd8-5d93-46b6-8c6d-e4d3f0f3f466', '2020-01-04 21:19:39');
INSERT INTO `role_permission` VALUES ('60423f46-61b9-426c-8616-ac52f8c858a7', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', 'c038dc93-f30d-4802-a090-be352eab341a', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('606182f0-8a1a-4c2e-a0e4-bc4fd5f6adcd', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'c09221bd-35ef-4a63-bd92-018c7fa218ad', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('6256a673-bf46-4007-bc14-b96fbce32604', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '475b4c24-40fa-4823-863a-ba6d793b7610', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('647f3abf-1c65-4f5f-b662-61c557f2edf0', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '58612968-d93c-4c21-8fdc-a825c0ab0275', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('64fc3235-d62b-4958-91ae-db807ec18141', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'b01614ab-0538-4cca-bb61-b46f18c60aa4', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('65020d37-f137-43b4-8931-d0a7213a32a4', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '3ed79f23-90bf-4669-bc02-42ae392e75c1', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('6769f955-073f-4b37-beeb-eaf881f7fbcd', 'b95c69b7-84be-430f-ae57-27a703ae3998', '3c390dfd-0d9a-46de-9a5b-1ed884febcb2', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('685ad030-8a74-4751-b47a-2be1217b9ec9', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'b180aafa-0d1a-4898-b838-bc20cd44356d', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('6af8a5d0-b246-43f7-b986-44f738153127', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '3ed79f23-90bf-4669-bc02-42ae392e75c1', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('6b5d894f-2a03-43c8-afe6-d3eca3ed70ee', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'f2ff9320-c643-4c85-8b68-15f86d47b88b', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('70f1726d-d550-4e6c-9ff3-c3b4d3ddc07c', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'f21ed5e8-0756-45dc-91c5-f58a9463caaa', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('71d33899-6f9b-44e0-8b42-aa9fded0511d', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '3a93a7e3-956a-408e-b2e4-108e9ece8f04', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('725d635c-482f-4c18-b7b6-52c3488087bd', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'b01614ab-0538-4cca-bb61-b46f18c60aa4', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('72a13d38-2bec-4e0c-acbc-18dc87fec401', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '1a2ec857-e775-4377-9fb7-e3c77738b3e5', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('7604dd1c-666e-4de2-90df-21a109152a3d', 'b95c69b7-84be-430f-ae57-27a703ae3998', '37101ed5-e840-4082-ae33-682ca6e41ad8', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('7797b728-5a05-4179-af60-d2a00756dc94', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', '78f8e29a-cccd-49e5-ada7-5af40dd95312', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('78636983-7583-4d1e-b534-fba64ff05e93', 'b95c69b7-84be-430f-ae57-27a703ae3998', '8623c941-5746-4667-9fb8-76f6f5059788', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('78d92c49-9189-42c6-b71c-a5cd7270a557', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '3a93a7e3-956a-408e-b2e4-108e9ece8f04', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('7b46e85d-c077-4d4e-8044-fc82cf9b6d6f', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '8623c941-5746-4667-9fb8-76f6f5059788', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('7c6a985d-8dbc-43fd-83cb-233d43c3262a', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'b01614ab-0538-4cca-bb61-b46f18c60aa4', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('7ca2c125-0edd-4cb2-b16b-5029d6acce5e', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'e0b16b95-09de-4d60-a283-1eebd424ed47', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('7fdfd508-97e3-4c43-9587-e77dbe7b2f91', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '1a2ec857-e775-4377-9fb7-e3c77738b3e5', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('800f0c71-bbd1-401f-b56f-7f9bcb9a9c0b', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'c30389e8-eb3e-4a0d-99c4-639e1893f50a', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('8048ea9f-4c2f-4338-9a85-286a877b616a', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'f21ed5e8-0756-45dc-91c5-f58a9463caaa', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('80a3fc62-5328-4f58-b69d-730be05b9309', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '4018e179-e599-41d0-bac5-c5408e1d4bc6', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('80fb3267-a65f-4047-9d12-f94e1b9e32ee', 'b95c69b7-84be-430f-ae57-27a703ae3998', '3ed79f23-90bf-4669-bc02-42ae392e75c1', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('83dc49d7-3399-4c75-8a15-c27f4e8ee6e8', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'f21ed5e8-0756-45dc-91c5-f58a9463caaa', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('8586a035-ea9f-439d-83d5-016a05eab964', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'f2ff9320-c643-4c85-8b68-15f86d47b88b', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('891ca3b9-c975-4af4-a6c0-c502edcf8ee5', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', 'db2d31b7-fdcb-478e-bfde-a55eb8b0aa43', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('8966f6bb-8624-43ea-94cb-ea0fa8dbaf14', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'f28b9215-3119-482d-bdc1-1f4c3f7c0869', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('8a2fe5fb-475d-4a72-99ce-2cadb3f6af50', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'f28b9215-3119-482d-bdc1-1f4c3f7c0869', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('8ad523ae-663c-4d0d-b797-a432b6fba5ba', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', '26764d88-1d90-402d-b355-a75deef116f2', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('8b045b97-95e5-4b23-9b2f-e63ebc203b00', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'c038dc93-f30d-4802-a090-be352eab341a', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('8b61dc00-187e-4adf-9216-32d694627b27', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('8be180a0-a860-4b2c-ba2c-8c999b48b920', 'b95c69b7-84be-430f-ae57-27a703ae3998', '355f387f-a22b-4f8c-9cd6-ae10e930cd70', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('8cd5c303-a745-4f17-a178-fd04655cd151', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'db2d31b7-fdcb-478e-bfde-a55eb8b0aa43', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('8fa9fa58-4e31-4e59-8b00-666b853cf24f', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('915ec767-c400-46ed-bc70-5980df56d397', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '761db494-833d-4a6c-94b4-3a7409fd9a78', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('962eaade-cc7f-4ac7-9278-4ea885643deb', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('9f98b606-9aaa-495e-876d-cede77039cfb', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'c30389e8-eb3e-4a0d-99c4-639e1893a05f', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('a2bcc083-cad7-43e4-a922-ba6d2b586dc3', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '58612968-d93c-4c21-8fdc-a825c0ab0275', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('a6fb0b5e-1b5e-40eb-a728-468703513b57', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'b545d509-9a27-47b7-9c24-7bd2bd540229', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('a702e862-d5fb-4ae6-9094-d42359aae365', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', 'b545d509-9a27-47b7-9c24-7bd2bd540229', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('a75253ed-1ae8-4397-8b52-01d4ca1215d4', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '783aedd8-5d93-46b6-8c6d-e4d3f0f3f466', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('a85cf583-427a-4239-a984-cb0db34a2cd0', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '3dac936c-c4e1-4560-ac93-905502f61ae0', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('a8f11e50-3868-4b21-bcdd-1d1df31942ec', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '3dac936c-c4e1-4560-ac93-905502f61ae0', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('a979a51e-fdfc-407a-ac1a-bb16e815318c', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'b545d509-9a27-47b7-9c24-7bd2bd540229', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('a9980a33-50f8-49e4-8e51-b05be1864ce7', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '78f8e29a-cccd-49e5-ada7-5af40dd95312', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('a9b7bd0e-21ba-4e04-b2b7-7efbdb2e8c92', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', 'b01614ab-0538-4cca-bb61-b46f18c60aa4', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('ac4a1599-f399-4779-834e-d3671a1ef5a1', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'c30389e8-eb3e-4a0d-99c4-639e1893f50a', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('ad62586b-8a0f-4991-9e6f-cd5dc41ae77b', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', '783aedd8-5d93-46b6-8c6d-e4d3f0f3f466', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('ae7de1b8-8503-4568-b4b1-28f68b62935f', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', 'e0b16b95-09de-4d60-a283-1eebd424ed47', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('aec884b9-43d4-4644-8719-07d9c0037a6d', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '3c390dfd-0d9a-46de-9a5b-1ed884febcb2', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('af699091-89f9-414e-8673-3a26b2e65d77', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', 'c30389e8-eb3e-4a0d-99c4-639e1893a05f', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('b3e94c02-43b3-46d8-a70f-89d4071cac30', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'a390845b-a53d-4bc9-af5d-331c37f34e6f', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('b51a5687-347f-4b3f-a6cb-0b3104fbfd41', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'c30389e8-eb3e-4a0d-99c4-639e1893f50a', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('b66f1bba-6cf4-4246-ba3b-a2a9f5bc859e', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('b6dc2fbf-8627-40c0-b317-ab219b35e508', 'b95c69b7-84be-430f-ae57-27a703ae3998', '1a2ec857-e775-4377-9fb7-e3c77738b3e5', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('b7d34329-13e6-4744-9b7c-618e59034d17', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '783aedd8-5d93-46b6-8c6d-e4d3f0f3f466', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('bab83e55-0589-4bbd-b054-16be5a96201b', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '761db494-833d-4a6c-94b4-3a7409fd9a78', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('bad233b4-39ad-42ee-80a5-ff3ca38647f9', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '817a58d1-ec82-4106-870a-bcc0bfaee0e7', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('bccc0bfe-6d6e-48e9-b756-2712fd07c0fb', 'b95c69b7-84be-430f-ae57-27a703ae3998', '4018e179-e599-41d0-bac5-c5408e1d4bc6', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('be788b9f-c11d-40ac-a728-e90ec721ad32', 'b95c69b7-84be-430f-ae57-27a703ae3998', '78f8e29a-cccd-49e5-ada7-5af40dd95312', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('beb243f9-e92d-411e-85df-0e9f135dee68', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'f28b9215-3119-482d-bdc1-1f4c3f7c0869', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('c172e776-6afd-48b8-b8dd-d1dd3b1bb296', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'db2d31b7-fdcb-478e-bfde-a55eb8b0aa43', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('c24956e7-dde2-4067-b3b7-7373ca729fc7', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'c0a84726-47d8-4d7a-8d53-0736a4586647', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('c5d1ac4e-8f4f-4820-a4e0-a18826deea9a', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', '761db494-833d-4a6c-94b4-3a7409fd9a78', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('c62e5e79-91c8-40dd-ad56-4c6ee787c3dd', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '992d1a8d-b5f8-44fc-9a48-4b3e60a7b15e', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('c73fe9b7-2695-4358-950d-e10513250310', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'c0a84726-47d8-4d7a-8d53-0736a4586647', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('ce05f81b-8c98-42c0-bba8-b50189c90c2e', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', '817a58d1-ec82-4106-870a-bcc0bfaee0e7', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('cea16ecd-cfbf-4b2b-828a-b542ba55d4f6', 'b95c69b7-84be-430f-ae57-27a703ae3998', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('cec9941c-9e51-42f0-ac34-5f2fd2379e68', '12856224-701c-40e7-995f-4699305ea831', 'db2d31b7-fdcb-478e-bfde-a55eb8b0aa43', '2020-01-04 21:19:39');
INSERT INTO `role_permission` VALUES ('cf77a679-d95f-405e-abba-4f29768cf5e4', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'e0b16b95-09de-4d60-a283-1eebd424ed47', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('d0014a22-412c-4c43-ab5f-3587125d323a', 'b95c69b7-84be-430f-ae57-27a703ae3998', '3dac936c-c4e1-4560-ac93-905502f61ae0', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('d27b230c-c8d0-4528-b085-a494cefec5ef', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', '3dac936c-c4e1-4560-ac93-905502f61ae0', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('d3242800-9420-449e-8149-872196d374b9', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'c0a84726-47d8-4d7a-8d53-0736a4586647', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('d3aa106b-bc17-411b-9a91-1c5982fe72c7', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'c038dc93-f30d-4802-a090-be352eab341a', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('d738e825-a097-4e12-b1c8-875b6cf90ffb', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'b180aafa-0d1a-4898-b838-bc20cd44356d', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('d76f4ee0-8837-463f-a526-ff7fe71a45df', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('d7a58c34-1667-424b-9856-f11daaf1b6e8', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'db2d31b7-fdcb-478e-bfde-a55eb8b0aa43', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('d7c1ee86-f5c6-46cc-86ab-c6201b292a62', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '3ed79f23-90bf-4669-bc02-42ae392e75c1', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('d8db1a7a-61b0-4196-9219-517ed08f1de8', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', '58612968-d93c-4c21-8fdc-a825c0ab0275', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('db418bf4-cdba-41f0-b0c7-76aab000d93a', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '37101ed5-e840-4082-ae33-682ca6e41ad8', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('df38ec98-b385-4993-a819-141171019014', 'b95c69b7-84be-430f-ae57-27a703ae3998', '0d99b687-3f46-4632-9d56-8dd5e476dae7', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('df3eb261-45c0-4c05-9bf2-8e60aa87ac95', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '992d1a8d-b5f8-44fc-9a48-4b3e60a7b15e', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('e4402fed-c56d-4ee4-b853-eb49517c4349', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '475b4c24-40fa-4823-863a-ba6d793b7610', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('e5fff565-dbd4-414e-8239-65385fcae28f', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '3dac936c-c4e1-4560-ac93-905502f61ae0', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('e744c3f9-dc1e-429d-8752-4d935fa9dedd', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '2073345f-7344-43fe-9084-b7add56da652', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('e8e0a0e4-2953-40f1-8c07-ed9a3e7dd590', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'b180aafa-0d1a-4898-b838-bc20cd44356d', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('e9a949a3-79ca-44d5-a812-dea91f1dfbb1', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'a31acb33-9412-4ada-bbdf-0138c007e6db', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('eaa6a475-dfc8-46db-b7d3-c9484646fac6', '12856224-701c-40e7-995f-4699305ea831', 'f28b9215-3119-482d-bdc1-1f4c3f7c0869', '2020-01-04 21:19:39');
INSERT INTO `role_permission` VALUES ('eaba3637-c577-4b20-9357-ff6688f3d762', '12856224-701c-40e7-995f-4699305ea831', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', '2020-01-04 21:19:39');
INSERT INTO `role_permission` VALUES ('ed29c385-be2b-4074-93b0-42b93121cfbb', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('edcb1267-6cb3-431b-9309-2f4fe3f378bb', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '3c390dfd-0d9a-46de-9a5b-1ed884febcb2', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('ee1b6b6d-c4e9-4e32-b033-5eb45f047dc4', 'cdd7105c-694c-43e8-afd1-32c29250bb9e', '37101ed5-e840-4082-ae33-682ca6e41ad8', '2020-01-07 21:05:24');
INSERT INTO `role_permission` VALUES ('ee4d5176-52c5-435b-a466-822042a07e91', 'b95c69b7-84be-430f-ae57-27a703ae3998', '2073345f-7344-43fe-9084-b7add56da652', '2020-01-04 16:56:37');
INSERT INTO `role_permission` VALUES ('efcb8563-b30a-4692-a462-c3f71f357123', 'd689cf27-137f-41a1-bc68-73045f7ff29b', 'e549c4b8-72ca-4ba3-91a8-9ffa1daf77cf', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('f97778d9-7807-4374-8d13-c522550bba18', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'f21ed5e8-0756-45dc-91c5-f58a9463caaa', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('f9e40fb3-29c7-468b-bc10-e70385289b98', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', 'd6214dcb-8b6d-494b-88fa-f519fc08ff8f', '2020-01-06 11:57:34');
INSERT INTO `role_permission` VALUES ('fa38212c-6341-4cff-8e93-4272faf7d54e', '12856224-701c-40e7-995f-4699305ea831', '78f8e29a-cccd-49e5-ada7-5af40dd95312', '2020-01-04 21:19:39');
INSERT INTO `role_permission` VALUES ('fa483290-3501-40a9-8a8f-7a5ba81b7000', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', 'c09221bd-35ef-4a63-bd92-018c7fa218ad', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('fad283e7-0920-4fec-bea0-eab2f5ede7b1', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '355f387f-a22b-4f8c-9cd6-ae10e930cd70', '2020-01-06 00:04:42');
INSERT INTO `role_permission` VALUES ('fbc1c88e-40ae-43cc-95b7-3a99f4e30b7d', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '4018e179-e599-41d0-bac5-c5408e1d4bc6', '2020-01-05 16:06:38');
INSERT INTO `role_permission` VALUES ('fe3bb87f-82bf-4b6a-b805-97971ab4e4f1', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '0d99b687-3f46-4632-9d56-8dd5e476dae7', '2020-01-06 11:57:34');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户名称',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '加密盐值',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码密文',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `dept_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `real_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实名称',
  `nick_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱(唯一)',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '账户状态(1.正常 2.锁定 )',
  `sex` tinyint(4) NULL DEFAULT 1 COMMENT '性别(1.男 2.女)',
  `deleted` tinyint(4) NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  `create_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_where` tinyint(4) NULL DEFAULT 1 COMMENT '创建来源(1.web 2.android 3.ios )',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('17860e04-1132-4458-9347-5e9130b73d52', 'aw', 'f6573b6b08d243c0a308', '8acb98820463f3997badfc3cad173088', '15520325478', 'f383e39d-b4a3-4994-9c35-439d74e0ed5a', 'awdad', NULL, '1@qq.com', 1, 2, 1, NULL, '47420f71-6c13-4fef-ac88-c42c5d55a28c', 2, '2020-01-05 18:56:47', '2020-01-06 00:04:57');
INSERT INTO `user` VALUES ('2b674ef2-a7e1-42da-8868-ca062686370b', 'adsdad', 'c773a2e4523c4802b565', 'b589f4e548af7679ff97f977c06131a4', '15502145687', 'f383e39d-b4a3-4994-9c35-439d74e0ed5a', 'wda', NULL, 'dad@qq.com', 1, 1, 1, NULL, 'fcf34b56-a7a2-4719-9236-867495e74c31', 3, '2020-01-05 17:47:33', '2020-01-05 22:05:57');
INSERT INTO `user` VALUES ('2faca892-4756-4e32-820d-ca9386f3b2ce', 'guest', '6342f4ac46de4d269be8', '0b4e116c0bdfe985411d4c6321312bae', '15501547895', '52ee944b-08e2-4fd1-bf11-254b89b31821', '访客', NULL, 'guest@gmail.com', 1, 1, 1, NULL, NULL, 1, '2020-01-07 17:54:12', NULL);
INSERT INTO `user` VALUES ('47420f71-6c13-4fef-ac88-c42c5d55a28c', 'ww', 'a0d844e3832d41adbe0f', 'dfebba747156a212ea03f5fdb235cfc4', '15521254789', '52ee944b-08e2-4fd1-bf11-254b89b31821', 'wad', NULL, '2@qq.com', 1, 1, 1, NULL, NULL, 1, '2020-01-06 00:02:31', NULL);
INSERT INTO `user` VALUES ('7f8c0e32-058e-409d-8e7c-22a9afe6a0a0', 'zhangyang', '062f33e33afe4509b24b', '5c64bbfe9942fc4b631d1d0b5a2607c3', '13899999999', '931bebd9-259e-43f0-a5a2-a3b7b3403dae', '张杨', NULL, '16399@163.com', 1, 1, 1, NULL, 'fcf34b56-a7a2-4719-9236-867495e74c31', 1, '2019-11-09 21:23:36', '2020-05-14 16:35:22');
INSERT INTO `user` VALUES ('84c7d51e-62be-4008-a5f8-bd824d850568', 'admin4', 'f569fc22ed3846639c41', '3775dfd7168064662b57f82f721f07be', '15502145698', 'f383e39d-b4a3-4994-9c35-439d74e0ed5a', 'wada', NULL, 'dad@qq.com', 1, 2, 1, NULL, 'fcf34b56-a7a2-4719-9236-867495e74c31', 1, '2020-01-05 17:50:37', '2020-01-05 19:33:25');
INSERT INTO `user` VALUES ('974b43dd-9204-486c-9e92-291a10ab2376', 'admin_01', '76a661b53af046cba554', '5fbeebb525f243a996b4491dd67b364c', '15214568955', '931bebd9-259e-43f0-a5a2-a3b7b3403dae', '杨颖', NULL, '1224515@qq.com', 2, 3, 1, NULL, 'fcf34b56-a7a2-4719-9236-867495e74c31', 2, '2020-01-04 17:02:07', '2020-01-06 11:59:16');
INSERT INTO `user` VALUES ('9d3e2984-4d6f-4f6a-9d28-7564f292ab80', 'adad', 'dc3db079b02944ccac82', '671c45fc8a8eecd7eec1a9081faa3f19', '15523457856', 'f383e39d-b4a3-4994-9c35-439d74e0ed5a', 'dasda', NULL, 'dad@qq.com', 2, 3, 1, NULL, 'fcf34b56-a7a2-4719-9236-867495e74c31', 3, '2020-01-05 17:44:01', '2020-01-06 00:50:22');
INSERT INTO `user` VALUES ('ac1566aa-99f2-47b3-9d17-b37072501179', 'yangqicheng', '9f127fd023b742e8bd2a', '0d6cc23ab46b092a24ea0bff0f42c26c', '15503215422', '52ee944b-08e2-4fd1-bf11-254b89b31821', '杨启程', NULL, '1425466@gmail.com', 1, 1, 1, NULL, 'ac1566aa-99f2-47b3-9d17-b37072501179', 1, '2020-01-05 17:13:24', '2020-01-05 18:29:30');
INSERT INTO `user` VALUES ('fcf34b56-a7a2-4719-9236-867495e74c31', 'admin', '324ce32d86224b00a02b', '2566dc9cd17de839dd4d4177ec6a4682', '15503679159', '72a4f388-50f8-4019-8c67-530cd7c74e7a', '王一钢', 'yiie', 'yiie315@163.com', 1, 3, 1, '', 'fcf34b56-a7a2-4719-9236-867495e74c31', 1, '2019-09-22 19:38:05', '2020-01-10 16:53:36');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('22fc614b-e5df-4f8b-b5c1-eaae6deb3042', '2faca892-4756-4e32-820d-ca9386f3b2ce', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '2020-04-10 16:33:43');
INSERT INTO `user_role` VALUES ('4e6f0e78-5d49-486c-bdc4-f66caf85fd9f', '974b43dd-9204-486c-9e92-291a10ab2376', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '2020-01-06 11:59:16');
INSERT INTO `user_role` VALUES ('8ac5213f-e80c-4deb-b0dd-3d2c476bd96d', '1dfaafa7-fddf-46f2-b3d8-11bfe9ac7230', '2d56198c-d14b-4d02-a625-7559815b62fb', '2019-11-09 23:28:23');
INSERT INTO `user_role` VALUES ('8cc04182-2145-4ca1-865e-b2332be195f8', 'fcf34b56-a7a2-4719-9236-867495e74c31', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '2020-04-10 16:33:26');
INSERT INTO `user_role` VALUES ('8e411165-ae3f-4e82-8734-4ed79a354e48', '9d3e2984-4d6f-4f6a-9d28-7564f292ab80', 'ba6e1f7e-20d8-453c-a63b-841093bd402c', '2020-01-06 00:50:22');
INSERT INTO `user_role` VALUES ('9e0bb257-39da-434b-9a9b-afea404e4b4f', '7f8c0e32-058e-409d-8e7c-22a9afe6a0a0', 'b95c69b7-84be-430f-ae57-27a703ae3998', '2020-05-14 16:35:23');
INSERT INTO `user_role` VALUES ('acd795be-f10d-4e62-a3e1-849913edbc09', 'ac1566aa-99f2-47b3-9d17-b37072501179', '12856224-701c-40e7-995f-4699305ea831', '2020-01-06 11:56:28');
INSERT INTO `user_role` VALUES ('cc42d243-5a25-4601-9f79-1cca844339d2', 'ac1566aa-99f2-47b3-9d17-b37072501179', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '2020-01-06 11:56:28');
INSERT INTO `user_role` VALUES ('db775265-c821-49c1-8f5d-1b8c5bb34e50', 'd860412c-9a4b-404b-8b71-ae8e3f4c27b7', 'de54c167-e733-4b5b-83dd-ce10edd078f5', '2020-01-04 09:23:29');
INSERT INTO `user_role` VALUES ('e3014e3a-0f4e-4804-8b27-80c644723b0d', '17860e04-1132-4458-9347-5e9130b73d52', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '2020-01-05 23:01:03');
INSERT INTO `user_role` VALUES ('e6573cda-2f32-45ad-ae9c-fdc7543b5c35', '47420f71-6c13-4fef-ac88-c42c5d55a28c', 'd689cf27-137f-41a1-bc68-73045f7ff29b', '2020-01-06 00:03:30');
INSERT INTO `user_role` VALUES ('f8b7d452-db6c-4630-8530-c9cc5db2d20d', '7f8c0e32-058e-409d-8e7c-22a9afe6a0a0', '11b3b80c-4a0b-4a92-96ea-fdd4f7a4a7e9', '2020-05-14 16:35:23');

-- ----------------------------
-- Table structure for vpn_node
-- ----------------------------
DROP TABLE IF EXISTS `vpn_node`;
CREATE TABLE `vpn_node`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `node` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `port` int(20) NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL,
  `deleted` int(20) NULL DEFAULT NULL,
  `protocol` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `max_up` int(20) NULL DEFAULT NULL,
  `max_down` int(20) NULL DEFAULT NULL,
  `delay` int(20) NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vpn_user
-- ----------------------------
DROP TABLE IF EXISTS `vpn_user`;
CREATE TABLE `vpn_user`  (
  `id` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `level` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `status` tinyint(2) NULL DEFAULT NULL,
  `deleted` tinyint(2) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `last_login` timestamp(0) NOT NULL,
  `expiration_time` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vpn_user_flow
-- ----------------------------
DROP TABLE IF EXISTS `vpn_user_flow`;
CREATE TABLE `vpn_user_flow`  (
  `id` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credit` int(20) NULL DEFAULT NULL,
  `connect` int(20) NULL DEFAULT NULL,
  `money` int(20) NULL DEFAULT NULL,
  `flow` int(20) NULL DEFAULT NULL,
  `max_up` int(20) NULL DEFAULT NULL,
  `max_down` int(20) NULL DEFAULT NULL,
  `deleted` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
