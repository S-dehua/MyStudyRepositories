/*
 Navicat MySQL Data Transfer

 Source Server         : coffee
 Source Server Type    : MySQL
 Source Server Version : 50520
 Source Host           : localhost:3306
 Source Schema         : project_crowd

 Target Server Type    : MySQL
 Target Server Version : 50520
 File Encoding         : 65001

 Date: 26/08/2021 13:16:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for inner_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `inner_admin_role`;
CREATE TABLE `inner_admin_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5465 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inner_admin_role
-- ----------------------------
INSERT INTO `inner_admin_role` VALUES (4, 4, 3);
INSERT INTO `inner_admin_role` VALUES (5, 5, 3);
INSERT INTO `inner_admin_role` VALUES (6, 6, 3);
INSERT INTO `inner_admin_role` VALUES (10, 10, 3);
INSERT INTO `inner_admin_role` VALUES (11, 11, 3);
INSERT INTO `inner_admin_role` VALUES (12, 12, 3);
INSERT INTO `inner_admin_role` VALUES (13, 13, 3);
INSERT INTO `inner_admin_role` VALUES (14, 14, 3);
INSERT INTO `inner_admin_role` VALUES (15, 15, 3);
INSERT INTO `inner_admin_role` VALUES (16, 16, 3);
INSERT INTO `inner_admin_role` VALUES (17, 17, 3);
INSERT INTO `inner_admin_role` VALUES (18, 18, 3);
INSERT INTO `inner_admin_role` VALUES (19, 19, 3);
INSERT INTO `inner_admin_role` VALUES (20, 20, 3);
INSERT INTO `inner_admin_role` VALUES (21, 21, 3);
INSERT INTO `inner_admin_role` VALUES (22, 22, 3);
INSERT INTO `inner_admin_role` VALUES (23, 23, 3);
INSERT INTO `inner_admin_role` VALUES (24, 24, 3);
INSERT INTO `inner_admin_role` VALUES (25, 25, 3);
INSERT INTO `inner_admin_role` VALUES (26, 26, 3);
INSERT INTO `inner_admin_role` VALUES (27, 27, 3);
INSERT INTO `inner_admin_role` VALUES (28, 28, 3);
INSERT INTO `inner_admin_role` VALUES (29, 29, 3);
INSERT INTO `inner_admin_role` VALUES (30, 30, 3);
INSERT INTO `inner_admin_role` VALUES (31, 31, 3);
INSERT INTO `inner_admin_role` VALUES (32, 32, 3);
INSERT INTO `inner_admin_role` VALUES (33, 33, 3);
INSERT INTO `inner_admin_role` VALUES (34, 34, 3);
INSERT INTO `inner_admin_role` VALUES (35, 35, 3);
INSERT INTO `inner_admin_role` VALUES (36, 36, 3);
INSERT INTO `inner_admin_role` VALUES (37, 37, 3);
INSERT INTO `inner_admin_role` VALUES (38, 38, 3);
INSERT INTO `inner_admin_role` VALUES (39, 39, 3);
INSERT INTO `inner_admin_role` VALUES (40, 40, 3);
INSERT INTO `inner_admin_role` VALUES (41, 41, 3);
INSERT INTO `inner_admin_role` VALUES (42, 42, 3);
INSERT INTO `inner_admin_role` VALUES (43, 43, 3);
INSERT INTO `inner_admin_role` VALUES (44, 44, 3);
INSERT INTO `inner_admin_role` VALUES (45, 45, 3);
INSERT INTO `inner_admin_role` VALUES (46, 46, 3);
INSERT INTO `inner_admin_role` VALUES (47, 47, 3);
INSERT INTO `inner_admin_role` VALUES (48, 48, 3);
INSERT INTO `inner_admin_role` VALUES (49, 49, 3);
INSERT INTO `inner_admin_role` VALUES (50, 50, 3);
INSERT INTO `inner_admin_role` VALUES (51, 51, 3);
INSERT INTO `inner_admin_role` VALUES (52, 52, 3);
INSERT INTO `inner_admin_role` VALUES (53, 53, 3);
INSERT INTO `inner_admin_role` VALUES (54, 54, 3);
INSERT INTO `inner_admin_role` VALUES (55, 55, 3);
INSERT INTO `inner_admin_role` VALUES (56, 56, 3);
INSERT INTO `inner_admin_role` VALUES (57, 57, 3);
INSERT INTO `inner_admin_role` VALUES (58, 58, 3);
INSERT INTO `inner_admin_role` VALUES (59, 59, 3);
INSERT INTO `inner_admin_role` VALUES (60, 60, 3);
INSERT INTO `inner_admin_role` VALUES (61, 61, 3);
INSERT INTO `inner_admin_role` VALUES (62, 62, 3);
INSERT INTO `inner_admin_role` VALUES (63, 63, 3);
INSERT INTO `inner_admin_role` VALUES (64, 64, 3);
INSERT INTO `inner_admin_role` VALUES (65, 65, 3);
INSERT INTO `inner_admin_role` VALUES (66, 66, 3);
INSERT INTO `inner_admin_role` VALUES (67, 67, 3);
INSERT INTO `inner_admin_role` VALUES (68, 68, 3);
INSERT INTO `inner_admin_role` VALUES (69, 69, 3);
INSERT INTO `inner_admin_role` VALUES (70, 70, 3);
INSERT INTO `inner_admin_role` VALUES (71, 71, 3);
INSERT INTO `inner_admin_role` VALUES (72, 72, 3);
INSERT INTO `inner_admin_role` VALUES (73, 73, 3);
INSERT INTO `inner_admin_role` VALUES (74, 74, 3);
INSERT INTO `inner_admin_role` VALUES (75, 75, 3);
INSERT INTO `inner_admin_role` VALUES (76, 76, 3);
INSERT INTO `inner_admin_role` VALUES (77, 77, 3);
INSERT INTO `inner_admin_role` VALUES (78, 78, 3);
INSERT INTO `inner_admin_role` VALUES (79, 79, 3);
INSERT INTO `inner_admin_role` VALUES (80, 80, 3);
INSERT INTO `inner_admin_role` VALUES (81, 81, 3);
INSERT INTO `inner_admin_role` VALUES (82, 82, 3);
INSERT INTO `inner_admin_role` VALUES (83, 83, 3);
INSERT INTO `inner_admin_role` VALUES (5000, 5000, 3);
INSERT INTO `inner_admin_role` VALUES (5001, 5001, 3);
INSERT INTO `inner_admin_role` VALUES (5002, 5002, 3);
INSERT INTO `inner_admin_role` VALUES (5003, 5003, 3);
INSERT INTO `inner_admin_role` VALUES (5004, 5004, 3);
INSERT INTO `inner_admin_role` VALUES (5005, 5005, 3);
INSERT INTO `inner_admin_role` VALUES (5006, 5006, 3);
INSERT INTO `inner_admin_role` VALUES (5007, 5007, 3);
INSERT INTO `inner_admin_role` VALUES (5008, 5008, 3);
INSERT INTO `inner_admin_role` VALUES (5009, 5009, 3);
INSERT INTO `inner_admin_role` VALUES (5010, 5010, 3);
INSERT INTO `inner_admin_role` VALUES (5011, 5011, 3);
INSERT INTO `inner_admin_role` VALUES (5012, 5012, 3);
INSERT INTO `inner_admin_role` VALUES (5013, 5013, 3);
INSERT INTO `inner_admin_role` VALUES (5014, 5014, 3);
INSERT INTO `inner_admin_role` VALUES (5016, 5016, 3);
INSERT INTO `inner_admin_role` VALUES (5017, 5017, 3);
INSERT INTO `inner_admin_role` VALUES (5018, 5018, 3);
INSERT INTO `inner_admin_role` VALUES (5019, 5019, 3);
INSERT INTO `inner_admin_role` VALUES (5020, 5020, 3);
INSERT INTO `inner_admin_role` VALUES (5021, 5021, 3);
INSERT INTO `inner_admin_role` VALUES (5022, 5022, 3);
INSERT INTO `inner_admin_role` VALUES (5023, 5023, 3);
INSERT INTO `inner_admin_role` VALUES (5024, 5024, 3);
INSERT INTO `inner_admin_role` VALUES (5025, 5025, 3);
INSERT INTO `inner_admin_role` VALUES (5026, 5026, 3);
INSERT INTO `inner_admin_role` VALUES (5027, 5027, 3);
INSERT INTO `inner_admin_role` VALUES (5028, 5028, 3);
INSERT INTO `inner_admin_role` VALUES (5029, 5029, 3);
INSERT INTO `inner_admin_role` VALUES (5030, 5030, 3);
INSERT INTO `inner_admin_role` VALUES (5031, 5031, 3);
INSERT INTO `inner_admin_role` VALUES (5032, 5032, 3);
INSERT INTO `inner_admin_role` VALUES (5033, 5033, 3);
INSERT INTO `inner_admin_role` VALUES (5034, 5034, 3);
INSERT INTO `inner_admin_role` VALUES (5035, 5035, 3);
INSERT INTO `inner_admin_role` VALUES (5036, 5036, 3);
INSERT INTO `inner_admin_role` VALUES (5037, 5037, 3);
INSERT INTO `inner_admin_role` VALUES (5038, 5038, 3);
INSERT INTO `inner_admin_role` VALUES (5039, 5039, 3);
INSERT INTO `inner_admin_role` VALUES (5040, 5040, 3);
INSERT INTO `inner_admin_role` VALUES (5041, 5041, 3);
INSERT INTO `inner_admin_role` VALUES (5042, 5042, 3);
INSERT INTO `inner_admin_role` VALUES (5043, 5043, 3);
INSERT INTO `inner_admin_role` VALUES (5044, 5044, 3);
INSERT INTO `inner_admin_role` VALUES (5045, 5045, 3);
INSERT INTO `inner_admin_role` VALUES (5046, 5046, 3);
INSERT INTO `inner_admin_role` VALUES (5047, 5047, 3);
INSERT INTO `inner_admin_role` VALUES (5048, 5048, 3);
INSERT INTO `inner_admin_role` VALUES (5049, 5049, 3);
INSERT INTO `inner_admin_role` VALUES (5050, 5050, 3);
INSERT INTO `inner_admin_role` VALUES (5051, 5051, 3);
INSERT INTO `inner_admin_role` VALUES (5052, 5052, 3);
INSERT INTO `inner_admin_role` VALUES (5053, 5053, 3);
INSERT INTO `inner_admin_role` VALUES (5054, 5054, 3);
INSERT INTO `inner_admin_role` VALUES (5055, 5055, 3);
INSERT INTO `inner_admin_role` VALUES (5056, 5056, 3);
INSERT INTO `inner_admin_role` VALUES (5057, 5057, 3);
INSERT INTO `inner_admin_role` VALUES (5058, 5058, 3);
INSERT INTO `inner_admin_role` VALUES (5059, 5059, 3);
INSERT INTO `inner_admin_role` VALUES (5060, 5060, 3);
INSERT INTO `inner_admin_role` VALUES (5061, 5061, 3);
INSERT INTO `inner_admin_role` VALUES (5062, 5062, 3);
INSERT INTO `inner_admin_role` VALUES (5063, 5063, 3);
INSERT INTO `inner_admin_role` VALUES (5064, 5064, 3);
INSERT INTO `inner_admin_role` VALUES (5065, 5065, 3);
INSERT INTO `inner_admin_role` VALUES (5066, 5066, 3);
INSERT INTO `inner_admin_role` VALUES (5067, 5067, 3);
INSERT INTO `inner_admin_role` VALUES (5068, 5068, 3);
INSERT INTO `inner_admin_role` VALUES (5069, 5069, 3);
INSERT INTO `inner_admin_role` VALUES (5070, 5070, 3);
INSERT INTO `inner_admin_role` VALUES (5071, 5071, 3);
INSERT INTO `inner_admin_role` VALUES (5072, 5072, 3);
INSERT INTO `inner_admin_role` VALUES (5073, 5073, 3);
INSERT INTO `inner_admin_role` VALUES (5074, 5074, 3);
INSERT INTO `inner_admin_role` VALUES (5075, 5075, 3);
INSERT INTO `inner_admin_role` VALUES (5076, 5076, 3);
INSERT INTO `inner_admin_role` VALUES (5077, 5077, 3);
INSERT INTO `inner_admin_role` VALUES (5078, 5078, 3);
INSERT INTO `inner_admin_role` VALUES (5079, 5079, 3);
INSERT INTO `inner_admin_role` VALUES (5080, 5080, 3);
INSERT INTO `inner_admin_role` VALUES (5081, 5081, 3);
INSERT INTO `inner_admin_role` VALUES (5082, 5082, 3);
INSERT INTO `inner_admin_role` VALUES (5083, 5083, 3);
INSERT INTO `inner_admin_role` VALUES (5084, 5084, 3);
INSERT INTO `inner_admin_role` VALUES (5085, 5085, 3);
INSERT INTO `inner_admin_role` VALUES (5086, 5086, 3);
INSERT INTO `inner_admin_role` VALUES (5087, 5087, 3);
INSERT INTO `inner_admin_role` VALUES (5088, 5088, 3);
INSERT INTO `inner_admin_role` VALUES (5089, 5089, 3);
INSERT INTO `inner_admin_role` VALUES (5090, 5090, 3);
INSERT INTO `inner_admin_role` VALUES (5091, 5091, 3);
INSERT INTO `inner_admin_role` VALUES (5092, 5092, 3);
INSERT INTO `inner_admin_role` VALUES (5093, 5093, 3);
INSERT INTO `inner_admin_role` VALUES (5094, 5094, 3);
INSERT INTO `inner_admin_role` VALUES (5095, 5095, 3);
INSERT INTO `inner_admin_role` VALUES (5096, 5096, 3);
INSERT INTO `inner_admin_role` VALUES (5097, 5097, 3);
INSERT INTO `inner_admin_role` VALUES (5098, 5098, 3);
INSERT INTO `inner_admin_role` VALUES (5099, 5099, 3);
INSERT INTO `inner_admin_role` VALUES (5100, 5100, 3);
INSERT INTO `inner_admin_role` VALUES (5101, 5101, 3);
INSERT INTO `inner_admin_role` VALUES (5102, 5102, 3);
INSERT INTO `inner_admin_role` VALUES (5103, 5103, 3);
INSERT INTO `inner_admin_role` VALUES (5104, 5104, 3);
INSERT INTO `inner_admin_role` VALUES (5105, 5105, 3);
INSERT INTO `inner_admin_role` VALUES (5106, 5106, 3);
INSERT INTO `inner_admin_role` VALUES (5107, 5107, 3);
INSERT INTO `inner_admin_role` VALUES (5108, 5108, 3);
INSERT INTO `inner_admin_role` VALUES (5109, 5109, 3);
INSERT INTO `inner_admin_role` VALUES (5110, 5110, 3);
INSERT INTO `inner_admin_role` VALUES (5112, 5112, 3);
INSERT INTO `inner_admin_role` VALUES (5113, 5113, 3);
INSERT INTO `inner_admin_role` VALUES (5114, 5114, 3);
INSERT INTO `inner_admin_role` VALUES (5115, 5115, 3);
INSERT INTO `inner_admin_role` VALUES (5116, 5116, 3);
INSERT INTO `inner_admin_role` VALUES (5117, 5117, 3);
INSERT INTO `inner_admin_role` VALUES (5118, 5118, 3);
INSERT INTO `inner_admin_role` VALUES (5119, 5119, 3);
INSERT INTO `inner_admin_role` VALUES (5120, 5120, 3);
INSERT INTO `inner_admin_role` VALUES (5121, 5121, 3);
INSERT INTO `inner_admin_role` VALUES (5122, 5122, 3);
INSERT INTO `inner_admin_role` VALUES (5123, 5123, 3);
INSERT INTO `inner_admin_role` VALUES (5124, 5124, 3);
INSERT INTO `inner_admin_role` VALUES (5125, 5125, 3);
INSERT INTO `inner_admin_role` VALUES (5126, 5126, 3);
INSERT INTO `inner_admin_role` VALUES (5127, 5127, 3);
INSERT INTO `inner_admin_role` VALUES (5128, 5128, 3);
INSERT INTO `inner_admin_role` VALUES (5129, 5129, 3);
INSERT INTO `inner_admin_role` VALUES (5130, 5130, 3);
INSERT INTO `inner_admin_role` VALUES (5131, 5131, 3);
INSERT INTO `inner_admin_role` VALUES (5132, 5132, 3);
INSERT INTO `inner_admin_role` VALUES (5133, 5133, 3);
INSERT INTO `inner_admin_role` VALUES (5134, 5134, 3);
INSERT INTO `inner_admin_role` VALUES (5135, 5135, 3);
INSERT INTO `inner_admin_role` VALUES (5136, 5136, 3);
INSERT INTO `inner_admin_role` VALUES (5137, 5137, 3);
INSERT INTO `inner_admin_role` VALUES (5138, 5138, 3);
INSERT INTO `inner_admin_role` VALUES (5139, 5139, 3);
INSERT INTO `inner_admin_role` VALUES (5140, 5140, 3);
INSERT INTO `inner_admin_role` VALUES (5141, 5141, 3);
INSERT INTO `inner_admin_role` VALUES (5142, 5142, 3);
INSERT INTO `inner_admin_role` VALUES (5143, 5143, 3);
INSERT INTO `inner_admin_role` VALUES (5144, 5144, 3);
INSERT INTO `inner_admin_role` VALUES (5145, 5145, 3);
INSERT INTO `inner_admin_role` VALUES (5146, 5146, 3);
INSERT INTO `inner_admin_role` VALUES (5147, 5147, 3);
INSERT INTO `inner_admin_role` VALUES (5148, 5148, 3);
INSERT INTO `inner_admin_role` VALUES (5149, 5149, 3);
INSERT INTO `inner_admin_role` VALUES (5150, 5150, 3);
INSERT INTO `inner_admin_role` VALUES (5151, 5151, 3);
INSERT INTO `inner_admin_role` VALUES (5152, 5152, 3);
INSERT INTO `inner_admin_role` VALUES (5153, 5153, 3);
INSERT INTO `inner_admin_role` VALUES (5154, 5154, 3);
INSERT INTO `inner_admin_role` VALUES (5155, 5155, 3);
INSERT INTO `inner_admin_role` VALUES (5156, 5156, 3);
INSERT INTO `inner_admin_role` VALUES (5157, 5157, 3);
INSERT INTO `inner_admin_role` VALUES (5158, 5158, 3);
INSERT INTO `inner_admin_role` VALUES (5159, 5159, 3);
INSERT INTO `inner_admin_role` VALUES (5160, 5160, 3);
INSERT INTO `inner_admin_role` VALUES (5161, 5161, 3);
INSERT INTO `inner_admin_role` VALUES (5162, 5162, 3);
INSERT INTO `inner_admin_role` VALUES (5163, 5163, 3);
INSERT INTO `inner_admin_role` VALUES (5164, 5164, 3);
INSERT INTO `inner_admin_role` VALUES (5165, 5165, 3);
INSERT INTO `inner_admin_role` VALUES (5166, 5166, 3);
INSERT INTO `inner_admin_role` VALUES (5167, 5167, 3);
INSERT INTO `inner_admin_role` VALUES (5168, 5168, 3);
INSERT INTO `inner_admin_role` VALUES (5169, 5169, 3);
INSERT INTO `inner_admin_role` VALUES (5170, 5170, 3);
INSERT INTO `inner_admin_role` VALUES (5171, 5171, 3);
INSERT INTO `inner_admin_role` VALUES (5172, 5172, 3);
INSERT INTO `inner_admin_role` VALUES (5174, 5174, 3);
INSERT INTO `inner_admin_role` VALUES (5175, 5175, 3);
INSERT INTO `inner_admin_role` VALUES (5176, 5176, 3);
INSERT INTO `inner_admin_role` VALUES (5177, 5177, 3);
INSERT INTO `inner_admin_role` VALUES (5178, 5178, 3);
INSERT INTO `inner_admin_role` VALUES (5179, 5179, 3);
INSERT INTO `inner_admin_role` VALUES (5180, 5180, 3);
INSERT INTO `inner_admin_role` VALUES (5181, 5181, 3);
INSERT INTO `inner_admin_role` VALUES (5182, 5182, 3);
INSERT INTO `inner_admin_role` VALUES (5183, 5183, 3);
INSERT INTO `inner_admin_role` VALUES (5184, 5184, 3);
INSERT INTO `inner_admin_role` VALUES (5185, 5185, 3);
INSERT INTO `inner_admin_role` VALUES (5186, 5186, 3);
INSERT INTO `inner_admin_role` VALUES (5187, 5187, 3);
INSERT INTO `inner_admin_role` VALUES (5188, 5188, 3);
INSERT INTO `inner_admin_role` VALUES (5189, 5189, 3);
INSERT INTO `inner_admin_role` VALUES (5191, 5191, 3);
INSERT INTO `inner_admin_role` VALUES (5192, 5192, 3);
INSERT INTO `inner_admin_role` VALUES (5193, 5193, 3);
INSERT INTO `inner_admin_role` VALUES (5194, 5194, 3);
INSERT INTO `inner_admin_role` VALUES (5195, 5195, 3);
INSERT INTO `inner_admin_role` VALUES (5196, 5196, 3);
INSERT INTO `inner_admin_role` VALUES (5197, 5197, 3);
INSERT INTO `inner_admin_role` VALUES (5198, 5198, 3);
INSERT INTO `inner_admin_role` VALUES (5199, 5199, 3);
INSERT INTO `inner_admin_role` VALUES (5200, 5200, 3);
INSERT INTO `inner_admin_role` VALUES (5201, 5201, 3);
INSERT INTO `inner_admin_role` VALUES (5202, 5202, 3);
INSERT INTO `inner_admin_role` VALUES (5203, 5203, 3);
INSERT INTO `inner_admin_role` VALUES (5204, 5204, 3);
INSERT INTO `inner_admin_role` VALUES (5205, 5205, 3);
INSERT INTO `inner_admin_role` VALUES (5206, 5206, 3);
INSERT INTO `inner_admin_role` VALUES (5207, 5207, 3);
INSERT INTO `inner_admin_role` VALUES (5208, 5208, 3);
INSERT INTO `inner_admin_role` VALUES (5209, 5209, 3);
INSERT INTO `inner_admin_role` VALUES (5210, 5210, 3);
INSERT INTO `inner_admin_role` VALUES (5211, 5211, 3);
INSERT INTO `inner_admin_role` VALUES (5212, 5212, 3);
INSERT INTO `inner_admin_role` VALUES (5213, 5213, 3);
INSERT INTO `inner_admin_role` VALUES (5214, 5214, 3);
INSERT INTO `inner_admin_role` VALUES (5215, 5215, 3);
INSERT INTO `inner_admin_role` VALUES (5216, 5216, 3);
INSERT INTO `inner_admin_role` VALUES (5217, 5217, 3);
INSERT INTO `inner_admin_role` VALUES (5218, 5218, 3);
INSERT INTO `inner_admin_role` VALUES (5219, 5219, 3);
INSERT INTO `inner_admin_role` VALUES (5220, 5220, 3);
INSERT INTO `inner_admin_role` VALUES (5221, 5221, 3);
INSERT INTO `inner_admin_role` VALUES (5222, 5222, 3);
INSERT INTO `inner_admin_role` VALUES (5223, 5223, 3);
INSERT INTO `inner_admin_role` VALUES (5224, 5224, 3);
INSERT INTO `inner_admin_role` VALUES (5225, 5225, 3);
INSERT INTO `inner_admin_role` VALUES (5226, 5226, 3);
INSERT INTO `inner_admin_role` VALUES (5227, 5227, 3);
INSERT INTO `inner_admin_role` VALUES (5228, 5228, 3);
INSERT INTO `inner_admin_role` VALUES (5229, 5229, 3);
INSERT INTO `inner_admin_role` VALUES (5230, 5230, 3);
INSERT INTO `inner_admin_role` VALUES (5231, 5231, 3);
INSERT INTO `inner_admin_role` VALUES (5232, 5232, 3);
INSERT INTO `inner_admin_role` VALUES (5233, 5233, 3);
INSERT INTO `inner_admin_role` VALUES (5234, 5234, 3);
INSERT INTO `inner_admin_role` VALUES (5235, 5235, 3);
INSERT INTO `inner_admin_role` VALUES (5236, 5236, 3);
INSERT INTO `inner_admin_role` VALUES (5237, 5237, 3);
INSERT INTO `inner_admin_role` VALUES (5238, 5238, 3);
INSERT INTO `inner_admin_role` VALUES (5239, 5239, 3);
INSERT INTO `inner_admin_role` VALUES (5240, 5240, 3);
INSERT INTO `inner_admin_role` VALUES (5241, 5241, 3);
INSERT INTO `inner_admin_role` VALUES (5242, 5242, 3);
INSERT INTO `inner_admin_role` VALUES (5243, 5243, 3);
INSERT INTO `inner_admin_role` VALUES (5244, 5244, 3);
INSERT INTO `inner_admin_role` VALUES (5245, 5245, 3);
INSERT INTO `inner_admin_role` VALUES (5246, 5246, 3);
INSERT INTO `inner_admin_role` VALUES (5248, 5248, 3);
INSERT INTO `inner_admin_role` VALUES (5249, 5249, 3);
INSERT INTO `inner_admin_role` VALUES (5251, 5251, 3);
INSERT INTO `inner_admin_role` VALUES (5252, 5252, 3);
INSERT INTO `inner_admin_role` VALUES (5253, 5253, 3);
INSERT INTO `inner_admin_role` VALUES (5254, 5254, 3);
INSERT INTO `inner_admin_role` VALUES (5255, 5255, 3);
INSERT INTO `inner_admin_role` VALUES (5256, 5256, 3);
INSERT INTO `inner_admin_role` VALUES (5257, 5257, 3);
INSERT INTO `inner_admin_role` VALUES (5258, 5258, 3);
INSERT INTO `inner_admin_role` VALUES (5259, 5259, 3);
INSERT INTO `inner_admin_role` VALUES (5260, 5260, 3);
INSERT INTO `inner_admin_role` VALUES (5261, 5261, 3);
INSERT INTO `inner_admin_role` VALUES (5262, 5262, 3);
INSERT INTO `inner_admin_role` VALUES (5263, 5263, 3);
INSERT INTO `inner_admin_role` VALUES (5264, 5264, 3);
INSERT INTO `inner_admin_role` VALUES (5265, 5265, 3);
INSERT INTO `inner_admin_role` VALUES (5266, 5266, 3);
INSERT INTO `inner_admin_role` VALUES (5267, 5267, 3);
INSERT INTO `inner_admin_role` VALUES (5268, 5268, 3);
INSERT INTO `inner_admin_role` VALUES (5269, 5269, 3);
INSERT INTO `inner_admin_role` VALUES (5270, 5270, 3);
INSERT INTO `inner_admin_role` VALUES (5271, 5271, 3);
INSERT INTO `inner_admin_role` VALUES (5272, 5272, 3);
INSERT INTO `inner_admin_role` VALUES (5273, 5273, 3);
INSERT INTO `inner_admin_role` VALUES (5274, 5274, 3);
INSERT INTO `inner_admin_role` VALUES (5275, 5275, 3);
INSERT INTO `inner_admin_role` VALUES (5276, 5276, 3);
INSERT INTO `inner_admin_role` VALUES (5277, 5277, 3);
INSERT INTO `inner_admin_role` VALUES (5278, 5278, 3);
INSERT INTO `inner_admin_role` VALUES (5279, 5279, 3);
INSERT INTO `inner_admin_role` VALUES (5280, 5280, 3);
INSERT INTO `inner_admin_role` VALUES (5281, 5281, 3);
INSERT INTO `inner_admin_role` VALUES (5282, 5282, 3);
INSERT INTO `inner_admin_role` VALUES (5284, 5284, 3);
INSERT INTO `inner_admin_role` VALUES (5285, 5285, 3);
INSERT INTO `inner_admin_role` VALUES (5286, 5286, 3);
INSERT INTO `inner_admin_role` VALUES (5287, 5287, 3);
INSERT INTO `inner_admin_role` VALUES (5288, 5288, 3);
INSERT INTO `inner_admin_role` VALUES (5289, 5289, 3);
INSERT INTO `inner_admin_role` VALUES (5290, 5290, 3);
INSERT INTO `inner_admin_role` VALUES (5291, 5291, 3);
INSERT INTO `inner_admin_role` VALUES (5292, 5292, 3);
INSERT INTO `inner_admin_role` VALUES (5293, 5293, 3);
INSERT INTO `inner_admin_role` VALUES (5294, 5294, 3);
INSERT INTO `inner_admin_role` VALUES (5295, 5295, 3);
INSERT INTO `inner_admin_role` VALUES (5296, 5296, 3);
INSERT INTO `inner_admin_role` VALUES (5297, 5297, 3);
INSERT INTO `inner_admin_role` VALUES (5298, 5298, 3);
INSERT INTO `inner_admin_role` VALUES (5299, 5299, 3);
INSERT INTO `inner_admin_role` VALUES (5300, 5300, 3);
INSERT INTO `inner_admin_role` VALUES (5301, 5301, 3);
INSERT INTO `inner_admin_role` VALUES (5302, 5302, 3);
INSERT INTO `inner_admin_role` VALUES (5303, 5303, 3);
INSERT INTO `inner_admin_role` VALUES (5304, 5304, 3);
INSERT INTO `inner_admin_role` VALUES (5305, 5305, 3);
INSERT INTO `inner_admin_role` VALUES (5306, 5306, 3);
INSERT INTO `inner_admin_role` VALUES (5307, 5307, 3);
INSERT INTO `inner_admin_role` VALUES (5308, 5308, 3);
INSERT INTO `inner_admin_role` VALUES (5309, 5309, 3);
INSERT INTO `inner_admin_role` VALUES (5310, 5310, 3);
INSERT INTO `inner_admin_role` VALUES (5311, 5311, 3);
INSERT INTO `inner_admin_role` VALUES (5312, 5312, 3);
INSERT INTO `inner_admin_role` VALUES (5313, 5313, 3);
INSERT INTO `inner_admin_role` VALUES (5314, 5314, 3);
INSERT INTO `inner_admin_role` VALUES (5315, 5315, 3);
INSERT INTO `inner_admin_role` VALUES (5316, 5316, 3);
INSERT INTO `inner_admin_role` VALUES (5317, 5317, 3);
INSERT INTO `inner_admin_role` VALUES (5318, 5318, 3);
INSERT INTO `inner_admin_role` VALUES (5319, 5319, 3);
INSERT INTO `inner_admin_role` VALUES (5320, 5320, 3);
INSERT INTO `inner_admin_role` VALUES (5321, 5321, 3);
INSERT INTO `inner_admin_role` VALUES (5322, 5322, 3);
INSERT INTO `inner_admin_role` VALUES (5323, 5323, 3);
INSERT INTO `inner_admin_role` VALUES (5324, 5324, 3);
INSERT INTO `inner_admin_role` VALUES (5325, 5325, 3);
INSERT INTO `inner_admin_role` VALUES (5326, 5326, 3);
INSERT INTO `inner_admin_role` VALUES (5327, 5327, 3);
INSERT INTO `inner_admin_role` VALUES (5328, 5328, 3);
INSERT INTO `inner_admin_role` VALUES (5329, 5329, 3);
INSERT INTO `inner_admin_role` VALUES (5330, 5330, 3);
INSERT INTO `inner_admin_role` VALUES (5331, 5331, 3);
INSERT INTO `inner_admin_role` VALUES (5333, 5333, 3);
INSERT INTO `inner_admin_role` VALUES (5335, 5335, 3);
INSERT INTO `inner_admin_role` VALUES (5336, 5336, 3);
INSERT INTO `inner_admin_role` VALUES (5337, 5337, 3);
INSERT INTO `inner_admin_role` VALUES (5339, 5339, 3);
INSERT INTO `inner_admin_role` VALUES (5340, 5340, 3);
INSERT INTO `inner_admin_role` VALUES (5341, 5341, 3);
INSERT INTO `inner_admin_role` VALUES (5342, 5342, 3);
INSERT INTO `inner_admin_role` VALUES (5343, 5343, 3);
INSERT INTO `inner_admin_role` VALUES (5344, 5344, 3);
INSERT INTO `inner_admin_role` VALUES (5345, 5345, 3);
INSERT INTO `inner_admin_role` VALUES (5346, 5346, 3);
INSERT INTO `inner_admin_role` VALUES (5347, 5347, 3);
INSERT INTO `inner_admin_role` VALUES (5348, 5348, 3);
INSERT INTO `inner_admin_role` VALUES (5349, 5349, 3);
INSERT INTO `inner_admin_role` VALUES (5350, 5350, 3);
INSERT INTO `inner_admin_role` VALUES (5351, 5351, 3);
INSERT INTO `inner_admin_role` VALUES (5352, 5352, 3);
INSERT INTO `inner_admin_role` VALUES (5353, 5353, 3);
INSERT INTO `inner_admin_role` VALUES (5354, 5354, 3);
INSERT INTO `inner_admin_role` VALUES (5355, 5355, 3);
INSERT INTO `inner_admin_role` VALUES (5356, 5356, 3);
INSERT INTO `inner_admin_role` VALUES (5357, 5357, 3);
INSERT INTO `inner_admin_role` VALUES (5358, 5358, 3);
INSERT INTO `inner_admin_role` VALUES (5359, 5359, 3);
INSERT INTO `inner_admin_role` VALUES (5360, 5360, 3);
INSERT INTO `inner_admin_role` VALUES (5361, 5361, 3);
INSERT INTO `inner_admin_role` VALUES (5362, 5362, 3);
INSERT INTO `inner_admin_role` VALUES (5363, 5363, 3);
INSERT INTO `inner_admin_role` VALUES (5365, 5365, 3);
INSERT INTO `inner_admin_role` VALUES (5366, 5366, 3);
INSERT INTO `inner_admin_role` VALUES (5367, 5367, 3);
INSERT INTO `inner_admin_role` VALUES (5368, 5368, 3);
INSERT INTO `inner_admin_role` VALUES (5369, 5369, 3);
INSERT INTO `inner_admin_role` VALUES (5370, 5370, 3);
INSERT INTO `inner_admin_role` VALUES (5371, 5371, 3);
INSERT INTO `inner_admin_role` VALUES (5372, 5372, 3);
INSERT INTO `inner_admin_role` VALUES (5373, 5373, 3);
INSERT INTO `inner_admin_role` VALUES (5374, 5374, 3);
INSERT INTO `inner_admin_role` VALUES (5375, 5375, 3);
INSERT INTO `inner_admin_role` VALUES (5376, 5376, 3);
INSERT INTO `inner_admin_role` VALUES (5377, 5377, 3);
INSERT INTO `inner_admin_role` VALUES (5378, 5378, 3);
INSERT INTO `inner_admin_role` VALUES (5379, 5379, 3);
INSERT INTO `inner_admin_role` VALUES (5380, 5380, 3);
INSERT INTO `inner_admin_role` VALUES (5381, 5381, 3);
INSERT INTO `inner_admin_role` VALUES (5382, 5382, 3);
INSERT INTO `inner_admin_role` VALUES (5383, 5383, 3);
INSERT INTO `inner_admin_role` VALUES (5384, 5384, 3);
INSERT INTO `inner_admin_role` VALUES (5385, 5385, 3);
INSERT INTO `inner_admin_role` VALUES (5386, 5386, 3);
INSERT INTO `inner_admin_role` VALUES (5387, 5387, 3);
INSERT INTO `inner_admin_role` VALUES (5388, 5388, 3);
INSERT INTO `inner_admin_role` VALUES (5389, 5389, 3);
INSERT INTO `inner_admin_role` VALUES (5390, 5390, 3);
INSERT INTO `inner_admin_role` VALUES (5391, 5391, 3);
INSERT INTO `inner_admin_role` VALUES (5392, 5392, 3);
INSERT INTO `inner_admin_role` VALUES (5393, 5393, 3);
INSERT INTO `inner_admin_role` VALUES (5394, 5394, 3);
INSERT INTO `inner_admin_role` VALUES (5396, 5396, 3);
INSERT INTO `inner_admin_role` VALUES (5397, 5397, 3);
INSERT INTO `inner_admin_role` VALUES (5398, 5398, 3);
INSERT INTO `inner_admin_role` VALUES (5399, 5399, 3);
INSERT INTO `inner_admin_role` VALUES (5400, 5400, 3);
INSERT INTO `inner_admin_role` VALUES (5401, 5401, 3);
INSERT INTO `inner_admin_role` VALUES (5402, 5402, 3);
INSERT INTO `inner_admin_role` VALUES (5403, 5403, 3);
INSERT INTO `inner_admin_role` VALUES (5405, 5405, 3);
INSERT INTO `inner_admin_role` VALUES (5406, 5406, 3);
INSERT INTO `inner_admin_role` VALUES (5407, 5407, 3);
INSERT INTO `inner_admin_role` VALUES (5408, 5408, 3);
INSERT INTO `inner_admin_role` VALUES (5409, 5409, 3);
INSERT INTO `inner_admin_role` VALUES (5410, 5410, 3);
INSERT INTO `inner_admin_role` VALUES (5411, 5411, 3);
INSERT INTO `inner_admin_role` VALUES (5414, 5414, 3);
INSERT INTO `inner_admin_role` VALUES (5415, 5415, 3);
INSERT INTO `inner_admin_role` VALUES (5416, 5416, 3);
INSERT INTO `inner_admin_role` VALUES (5417, 5417, 3);
INSERT INTO `inner_admin_role` VALUES (5418, 5418, 3);
INSERT INTO `inner_admin_role` VALUES (5419, 5419, 3);
INSERT INTO `inner_admin_role` VALUES (5420, 5420, 3);
INSERT INTO `inner_admin_role` VALUES (5421, 5421, 3);
INSERT INTO `inner_admin_role` VALUES (5422, 5422, 3);
INSERT INTO `inner_admin_role` VALUES (5423, 5423, 3);
INSERT INTO `inner_admin_role` VALUES (5425, 5425, 3);
INSERT INTO `inner_admin_role` VALUES (5426, 5426, 3);
INSERT INTO `inner_admin_role` VALUES (5427, 5427, 3);
INSERT INTO `inner_admin_role` VALUES (5428, 5428, 3);
INSERT INTO `inner_admin_role` VALUES (5429, 5429, 3);
INSERT INTO `inner_admin_role` VALUES (5431, 5431, 3);
INSERT INTO `inner_admin_role` VALUES (5432, 5432, 3);
INSERT INTO `inner_admin_role` VALUES (5433, 5433, 3);
INSERT INTO `inner_admin_role` VALUES (5434, 5434, 3);
INSERT INTO `inner_admin_role` VALUES (5435, 5435, 3);
INSERT INTO `inner_admin_role` VALUES (5436, 5436, 3);
INSERT INTO `inner_admin_role` VALUES (5437, 5437, 3);
INSERT INTO `inner_admin_role` VALUES (5438, 5438, 3);
INSERT INTO `inner_admin_role` VALUES (5439, 5439, 3);
INSERT INTO `inner_admin_role` VALUES (5441, 5441, 3);
INSERT INTO `inner_admin_role` VALUES (5442, 5442, 3);
INSERT INTO `inner_admin_role` VALUES (5458, 3, 4);
INSERT INTO `inner_admin_role` VALUES (5463, 1, 1);
INSERT INTO `inner_admin_role` VALUES (5464, 2, 8);

-- ----------------------------
-- Table structure for inner_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `inner_role_auth`;
CREATE TABLE `inner_role_auth`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `auth_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inner_role_auth
-- ----------------------------
INSERT INTO `inner_role_auth` VALUES (45, 9, 1);
INSERT INTO `inner_role_auth` VALUES (46, 9, 2);
INSERT INTO `inner_role_auth` VALUES (47, 9, 3);
INSERT INTO `inner_role_auth` VALUES (48, 9, 4);
INSERT INTO `inner_role_auth` VALUES (49, 9, 5);
INSERT INTO `inner_role_auth` VALUES (50, 9, 6);
INSERT INTO `inner_role_auth` VALUES (51, 9, 7);
INSERT INTO `inner_role_auth` VALUES (88, 3, 1);
INSERT INTO `inner_role_auth` VALUES (89, 3, 3);
INSERT INTO `inner_role_auth` VALUES (90, 3, 6);
INSERT INTO `inner_role_auth` VALUES (91, 3, 8);
INSERT INTO `inner_role_auth` VALUES (92, 4, 1);
INSERT INTO `inner_role_auth` VALUES (93, 4, 3);
INSERT INTO `inner_role_auth` VALUES (94, 4, 6);
INSERT INTO `inner_role_auth` VALUES (95, 4, 8);
INSERT INTO `inner_role_auth` VALUES (96, 5, 1);
INSERT INTO `inner_role_auth` VALUES (97, 5, 3);
INSERT INTO `inner_role_auth` VALUES (98, 5, 6);
INSERT INTO `inner_role_auth` VALUES (99, 5, 8);
INSERT INTO `inner_role_auth` VALUES (100, 6, 1);
INSERT INTO `inner_role_auth` VALUES (101, 6, 3);
INSERT INTO `inner_role_auth` VALUES (102, 6, 6);
INSERT INTO `inner_role_auth` VALUES (103, 6, 8);
INSERT INTO `inner_role_auth` VALUES (104, 7, 1);
INSERT INTO `inner_role_auth` VALUES (105, 7, 3);
INSERT INTO `inner_role_auth` VALUES (106, 7, 6);
INSERT INTO `inner_role_auth` VALUES (107, 7, 8);
INSERT INTO `inner_role_auth` VALUES (114, 8, 1);
INSERT INTO `inner_role_auth` VALUES (115, 8, 3);
INSERT INTO `inner_role_auth` VALUES (116, 8, 4);
INSERT INTO `inner_role_auth` VALUES (117, 8, 6);
INSERT INTO `inner_role_auth` VALUES (118, 8, 8);
INSERT INTO `inner_role_auth` VALUES (129, 2, 1);
INSERT INTO `inner_role_auth` VALUES (130, 2, 3);
INSERT INTO `inner_role_auth` VALUES (131, 2, 4);
INSERT INTO `inner_role_auth` VALUES (132, 2, 6);
INSERT INTO `inner_role_auth` VALUES (133, 2, 8);
INSERT INTO `inner_role_auth` VALUES (134, 1, 1);
INSERT INTO `inner_role_auth` VALUES (135, 1, 2);
INSERT INTO `inner_role_auth` VALUES (136, 1, 3);
INSERT INTO `inner_role_auth` VALUES (137, 1, 4);
INSERT INTO `inner_role_auth` VALUES (138, 1, 5);
INSERT INTO `inner_role_auth` VALUES (139, 1, 6);
INSERT INTO `inner_role_auth` VALUES (140, 1, 7);
INSERT INTO `inner_role_auth` VALUES (141, 1, 8);
INSERT INTO `inner_role_auth` VALUES (142, 1, 9);
INSERT INTO `inner_role_auth` VALUES (143, 1, 10);

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `receive_name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `phone_num` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `address` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '?????? id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_address
-- ----------------------------

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_acct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_pswd` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login_acct`(`login_acct`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5445 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'coffee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'sdehua@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (2, 'Zhtrsz', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zhtrsz@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (3, 'Vuidu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vuidu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (4, 'Ctdc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ctdc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5, 'Whth', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Whth@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (6, 'Aqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '??????', 'Aqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (10, 'Htuqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Htuqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (11, 'Sqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Sqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (12, 'Rjres', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rjres@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (13, 'Cgdgd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cgdgd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (14, 'Iesfsa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Iesfsa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (15, 'Ktrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ktrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (16, 'Zmiefdss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zmiefdss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (17, 'Gbbais', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gbbais@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (18, 'Zdwabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zdwabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (19, 'Htoax', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Htoax@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (20, 'Vbtar', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vbtar@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (21, 'Lahip', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Lahip@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (22, 'Trydd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Trydd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (23, 'Yaifgo', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yaifgo@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (24, 'Awfgbb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Awfgbb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (25, 'Ceawqq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Ceawqq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (26, 'Veeyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Veeyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (27, 'Uesfsa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Uesfsa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (28, 'Lgrd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Lgrd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (29, 'Bwqegu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bwqegu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (30, 'Vbngg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vbngg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (31, 'Dgedgsg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Dgedgsg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (32, 'Cesed', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cesed@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (33, 'Tuuut', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Tuuut@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (34, 'Xgdgd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xgdgd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (35, 'Bajbg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bajbg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (36, 'Nthagh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nthagh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (37, 'Vttis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vttis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (38, 'Vdsid', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vdsid@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (39, 'Cdggdf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cdggdf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (40, 'Orrgj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Orrgj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (41, 'Wooics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wooics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (42, 'Mfeggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mfeggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (43, 'Ljkjy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Ljkjy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (44, 'Padi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Padi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (45, 'Ifesvb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ifesvb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (46, 'Axcgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Axcgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (47, 'Aswsaef', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Aswsaef@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (48, 'Zthttf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zthttf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (49, 'Ffpkjga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ffpkjga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (50, 'Sddgdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Sddgdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (51, 'Owss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Owss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (52, 'Cddqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cddqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (53, 'Vefsf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vefsf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (54, 'Iooics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Iooics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (55, 'Yuewqjd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yuewqjd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (56, 'Pfhty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Pfhty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (57, 'Eooqck', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Eooqck@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (58, 'Rbbrqa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rbbrqa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (59, 'Vfesqvb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vfesqvb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (60, 'Qtdqc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qtdqc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (61, 'Qthagh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qthagh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (62, 'Cqip', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cqip@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (63, 'Tthtqtf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Tthtqtf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (64, 'Gthqa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gthqa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (65, 'Utowqms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Utowqms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (66, 'Uooqics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Uooqics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (67, 'Ftquqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ftquqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (68, 'Zgseegg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zgseegg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (69, 'Oaqfgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Oaqfgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (70, 'Whterr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Whterr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (71, 'Siiqsiy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Siiqsiy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (72, 'Cpoe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cpoe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (73, 'Ajkjy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ajkjy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (74, 'Qinqger', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qinqger@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (75, 'Zmqiefdss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zmqiefdss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (76, 'Cgseegg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Cgseegg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (77, 'Irsfgg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Irsfgg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (78, 'Erydd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Erydd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (79, 'Btqtis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Btqtis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (80, 'Xnik', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xnik@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (81, 'Hefsf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Hefsf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (82, 'Tfqhty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Tfqhty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (83, 'Mgggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mgggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5000, 'Dgews', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Dgews@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5001, 'Saifgo', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Saifgo@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5002, 'Udrww', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Udrww@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5003, 'Ggggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ggggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5004, 'Zfttt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zfttt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5005, 'Bttis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bttis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5006, 'Duidu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Duidu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5007, 'Ziur', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ziur@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5008, 'Hmiefdss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Hmiefdss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5009, 'Zpoe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zpoe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5010, 'Aeeyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Aeeyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5011, 'Bfeggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bfeggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5012, 'Vnik', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Vnik@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5013, 'Athttf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Athttf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5014, 'Rnik', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rnik@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5016, 'Fgaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Fgaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5017, 'Cgaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cgaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5018, 'Ertdy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ertdy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5019, 'Cgedgsg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cgedgsg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5020, 'Esefdf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Esefdf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5021, 'Ttuqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ttuqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5022, 'Mgrdd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mgrdd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5023, 'Mfeaee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mfeaee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5024, 'Mtowms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mtowms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5025, 'Ddaws', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ddaws@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5026, 'Idwabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Idwabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5027, 'Vioas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vioas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5028, 'Niogf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Niogf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5029, 'Zdbwd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zdbwd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5030, 'Dbagael', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Dbagael@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5031, 'Pjkjy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Pjkjy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5032, 'Looics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Looics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5033, 'Xuewqjd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Xuewqjd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5034, 'Gthagh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gthagh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5035, 'Wjtyr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wjtyr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5036, 'Sthttf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Sthttf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5037, 'Ryyyi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ryyyi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5038, 'Riogf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Riogf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5039, 'Vddgdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vddgdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5040, 'Gerq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gerq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5041, 'Wtuqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wtuqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5042, 'Iuuut', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Iuuut@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5043, 'Fwdwdv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Fwdwdv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5044, 'Zfewi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Zfewi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5045, 'Xtthi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xtthi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5046, 'Rooics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rooics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5047, 'Ojuo', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ojuo@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5048, 'Lgseegg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Lgseegg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5049, 'Cuuut', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cuuut@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5050, 'Xaron', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xaron@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5051, 'Qrydd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qrydd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5052, 'Woock', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Woock@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5053, 'Nryh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nryh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5054, 'Iioas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Iioas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5055, 'Gyyyi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gyyyi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5056, 'Cjfpaklaas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Cjfpaklaas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5057, 'Plytis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Plytis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5058, 'Pbdbbdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Pbdbbdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5059, 'Qlytis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qlytis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5060, 'Yeffe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yeffe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5061, 'Oqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Oqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5062, 'Ybagael', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Ybagael@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5063, 'Gdfvb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gdfvb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5064, 'Neyi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Neyi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5065, 'Uaiof', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Uaiof@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5066, 'Cfewi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cfewi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5067, 'Kbngg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Kbngg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5068, 'Euewqjd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Euewqjd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5069, 'Yjjtsg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yjjtsg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5070, 'Soock', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Soock@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5071, 'Ieeyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ieeyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5072, 'Yjkjy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yjkjy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5073, 'Ruwiii', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Ruwiii@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5074, 'Ytuqat', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ytuqat@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5075, 'Roosd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Roosd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5076, 'Bioas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bioas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5077, 'Pgrd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Pgrd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5078, 'Tvsse', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Tvsse@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5079, 'Xqaeed', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xqaeed@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5080, 'Siod', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Siod@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5081, 'Qffee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qffee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5082, 'Pnnwngg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Pnnwngg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5083, 'Vhtrsz', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Vhtrsz@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5084, 'Wjkjy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wjkjy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5085, 'Nppdle', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nppdle@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5086, 'Imisas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Imisas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5087, 'Elytis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Elytis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5088, 'Nadi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nadi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5089, 'Xqiopaai', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xqiopaai@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5090, 'Yeghh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yeghh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5091, 'Grtdy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Grtdy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5092, 'Xtdc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xtdc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5093, 'Gjres', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gjres@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5094, 'Gnjyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gnjyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5095, 'Wbbais', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Wbbais@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5096, 'Bwdwdv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bwdwdv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5097, 'Ehntgf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ehntgf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5098, 'Yddgdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yddgdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5099, 'Mooics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mooics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5100, 'Gmifass', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gmifass@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5101, 'Cfeggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cfeggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5102, 'Emiefdss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Emiefdss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5103, 'Tfpkjga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Tfpkjga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5104, 'Sfeggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Sfeggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5105, 'Ntuqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ntuqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5106, 'Huewqjd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Huewqjd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5107, 'Ebdel', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ebdel@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5108, 'Ggdgd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ggdgd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5109, 'Bfewi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bfewi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5110, 'Oswsaef', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Oswsaef@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5112, 'Wfgqhfb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wfgqhfb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5113, 'Btuqqat', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Btuqqat@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5114, 'Vdrwqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vdrwqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5115, 'Lfesvb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Lfesvb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5116, 'Hhqntgf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Hhqntgf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5117, 'Yvsqds', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yvsqds@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5118, 'Swgqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Swgqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5119, 'Adsid', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Adsid@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5120, 'Atowms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Atowms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5121, 'Yooqck', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yooqck@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5122, 'Zfpkjga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Zfpkjga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5123, 'Biqur', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Biqur@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5124, 'Baklga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Baklga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5125, 'Gbdqel', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Gbdqel@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5126, 'Ptuqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ptuqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5127, 'Qooaics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qooaics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5128, 'Fyiqe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Fyiqe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5129, 'Fxaqcs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Fxaqcs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5130, 'Gjqqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Gjqqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5131, 'Bthqa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bthqa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5132, 'Nnik', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Nnik@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5133, 'Cajbg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cajbg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5134, 'Qewqv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qewqv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5135, 'Uerqty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Uerqty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5136, 'Vqfggre', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vqfggre@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5137, 'Btqtqhi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Btqtqhi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5138, 'Bwfgbb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Bwfgbb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5139, 'Nswsaef', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nswsaef@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5140, 'Owdwdv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Owdwdv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5141, 'Wgqgar', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Wgqgar@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5142, 'Oajbqg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Oajbqg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5143, 'Ttrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ttrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5144, 'Wgeshe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wgeshe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5145, 'Othagh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Othagh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5146, 'Wefsf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wefsf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5147, 'Viogqf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Viogqf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5148, 'Affee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Affee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5149, 'Tbngqg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Tbngqg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5150, 'Nbtar', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nbtar@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5151, 'Xafgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Xafgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5152, 'Zftqtt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zftqtt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5153, 'Wffee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wffee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5154, 'Nnnwnqgg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nnnwnqgg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5155, 'Fthqa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Fthqa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5156, 'Dtdqc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Dtdqc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5157, 'Aiodq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Aiodq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5158, 'Fggar', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Fggar@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5159, 'Gjdrqqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Gjdrqqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5160, 'Pfqgghh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Pfqgghh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5161, 'Dquwz', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Dquwz@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5162, 'Zbbra', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zbbra@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5163, 'Nwdad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nwdad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5164, 'Nbbe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nbbe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5165, 'Rdqhj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rdqhj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5166, 'Frydqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Frydqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5167, 'Pxaqcs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Pxaqcs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5168, 'Omifass', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Omifass@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5169, 'Keqrrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Keqrrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5170, 'Xrrqgj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xrrqgj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5171, 'Kesfsa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Kesfsa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5172, 'Zgaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zgaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5174, 'Wgruio', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wgruio@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5175, 'Wdggqdf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wdggqdf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5176, 'Bbbqis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bbbqis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5177, 'Mryg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mryg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5178, 'Xtuqqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xtuqqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5179, 'Gffqee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gffqee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5180, 'Wtrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wtrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5181, 'Swsqs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Swsqs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5182, 'Gtoax', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gtoax@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5183, 'Yesfqsa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Yesfqsa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5184, 'Qoock', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qoock@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5185, 'Tuwiqii', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Tuwiqii@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5186, 'Ytdqc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ytdqc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5187, 'Siodq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Siodq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5188, 'Wppdle', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wppdle@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5189, 'Gadi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gadi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5191, 'Sffqee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Sffqee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5192, 'Zgqgar', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zgqgar@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5193, 'Rppdle', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rppdle@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5194, 'Ciodq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ciodq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5195, 'Hbbais', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Hbbais@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5196, 'Stuqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Stuqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5197, 'Bwqeqgu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bwqeqgu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5198, 'Cqdqhj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cqdqhj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5199, 'Rvsse', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rvsse@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5200, 'Cvsseq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cvsseq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5201, 'Yqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5202, 'Eipoot', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Eipoot@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5203, 'Lerrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Lerrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5204, 'Nrydqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nrydqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5205, 'Nhtwff', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nhtwff@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5206, 'Wtauqtq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wtauqtq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5207, 'Ivrqrdyh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ivrqrdyh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5208, 'Eeeyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Eeeyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5209, 'Thhwtt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Thhwtt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5210, 'Dooqaics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Dooqaics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5211, 'Ndbwqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ndbwqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5212, 'Rhrtqyh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rhrtqyh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5213, 'Wwety', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wwety@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5214, 'Dbkyuqi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Dbkyuqi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5215, 'Ygeshe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ygeshe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5216, 'Hgedgsg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Hgedgsg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5217, 'Xgqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Xgqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5218, 'Vrtqdy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vrtqdy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5219, 'Gdaqws', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Gdaqws@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5220, 'Vaefvv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vaefvv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5221, 'Gdbwqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gdbwqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5222, 'Excgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Excgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5223, 'Tbngg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Tbngg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5224, 'Ygqrdd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ygqrdd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5225, 'Wvsseq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wvsseq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5226, 'Wdrww', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wdrww@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5227, 'Bjtjt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bjtjt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5228, 'Excqgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Excqgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5229, 'Ctuqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ctuqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5230, 'Rqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5231, 'Gbtaqr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gbtaqr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5232, 'Gfbqjg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gfbqjg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5233, 'Cwfgbb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cwfgbb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5234, 'Coosd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Coosd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5235, 'Yerrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Yerrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5236, 'Vgeshe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vgeshe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5237, 'Leqrrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Leqrrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5238, 'Hiqur', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Hiqur@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5239, 'Awety', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Awety@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5240, 'Yioas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Yioas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5241, 'Osfqgc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Osfqgc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5242, 'Fododq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Fododq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5243, 'Qiisiy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qiisiy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5244, 'Mwety', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mwety@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5245, 'Wadi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wadi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5246, 'Gwdwdv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gwdwdv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5248, 'Wesaf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wesaf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5249, 'Pryg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Pryg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5251, 'Yhtwff', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yhtwff@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5252, 'Garon', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Garon@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5253, 'Otuqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Otuqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5254, 'Vtuqqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vtuqqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5255, 'Xhrtyh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xhrtyh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5256, 'Wdsqid', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wdsqid@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5257, 'Pntyea', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Pntyea@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5258, 'Gesed', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Gesed@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5259, 'Ztqoax', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Ztqoax@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5260, 'Sfghfb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Sfghfb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5261, 'Uaiqof', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Uaiqof@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5262, 'Dapjog', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Dapjog@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5263, 'Ltauqtq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ltauqtq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5264, 'Ltdc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ltdc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5265, 'Vbdbbdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vbdbbdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5266, 'Uswqsaef', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Uswqsaef@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5267, 'Gdwqabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gdwqabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5268, 'Wodod', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wodod@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5269, 'Dfqgghh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Dfqgghh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5270, 'Cwdqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cwdqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5271, 'Uxcqgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Uxcqgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5272, 'Qelard', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qelard@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5273, 'Sqdi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Sqdi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5274, 'Wnjyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wnjyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5275, 'Cinger', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cinger@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5276, 'Etqoax', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Etqoax@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5277, 'Vmiefdss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vmiefdss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5278, 'Ctauqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ctauqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5279, 'Ebbaiqs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ebbaiqs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5280, 'Sryh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Sryh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5281, 'Utqtqhi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Utqtqhi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5282, 'Gffee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gffee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5284, 'Ubbaiqs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Ubbaiqs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5285, 'Dgaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Dgaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5286, 'Cvrrdyh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cvrrdyh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5287, 'Ihtqerr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ihtqerr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5288, 'Obagael', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Obagael@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5289, 'Qbbrqa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qbbrqa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5290, 'Wooqics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wooqics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5291, 'Sdwqabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Sdwqabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5292, 'Lesfqsa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Lesfqsa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5293, 'Ouiduq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ouiduq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5294, 'Qdwqabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qdwqabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5295, 'Etrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Etrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5296, 'Neghh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Neghh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5297, 'Ftuqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ftuqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5298, 'Hadewa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Hadewa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5299, 'Atuqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Atuqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5300, 'Kgqrdd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Kgqrdd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5301, 'Tgews', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Tgews@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5302, 'Wbagaeql', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wbagaeql@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5303, 'Nqmifass', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nqmifass@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5304, 'Belard', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Belard@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5305, 'Aooqics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Aooqics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5306, 'Drrqgj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Drrqgj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5307, 'Ttowqms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ttowqms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5308, 'Crsfqgg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Crsfqgg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5309, 'Xntyea', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xntyea@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5310, 'Rgedgsg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rgedgsg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5311, 'Idaws', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Idaws@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5312, 'Vtdqc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vtdqc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5313, 'Afesqvb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Afesqvb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5314, 'Pddqqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Pddqqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5315, 'Ptrqr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ptrqr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5316, 'Rdrqwd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rdrqwd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5317, 'Yiisiy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Yiisiy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5318, 'Mthqgha', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Mthqgha@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5319, 'Paklqga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Paklqga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5320, 'Zdrww', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zdrww@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5321, 'Zyyyi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zyyyi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5322, 'Ndrwqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ndrwqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5323, 'Uwdqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Uwdqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5324, 'Gwgqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gwgqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5325, 'Yoock', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Yoock@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5326, 'Krydd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Krydd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5327, 'Loock', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Loock@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5328, 'Gnqik', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Gnqik@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5329, 'Aadewa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Aadewa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5330, 'Qtuqqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qtuqqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5331, 'Oooqaics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Oooqaics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5333, 'Mrgruu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mrgruu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5335, 'Ynnwngg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Ynnwngg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5336, 'Iaifqgo', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Iaifqgo@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5337, 'Dseqdf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Dseqdf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5339, 'Zwqeqgu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zwqeqgu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5340, 'Xtqtqhi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xtqtqhi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5341, 'Hoosd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Hoosd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5342, 'Ierqty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ierqty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5343, 'Kxacs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Kxacs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5344, 'Ytuqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ytuqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5345, 'Zbkyuqi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zbkyuqi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5346, 'Mqip', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mqip@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5347, 'Kwdqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Kwdqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5348, 'Mtthi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mtthi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5349, 'Igesqhe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Igesqhe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5350, 'Iuidu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Iuidu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5351, 'Nqjftj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nqjftj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5352, 'Fdbwqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Fdbwqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5353, 'Nuewqqjd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nuewqqjd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5354, 'Rgqqhir', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Rgqqhir@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5355, 'Xtauqtq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Xtauqtq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5356, 'Dnnwnqgg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Dnnwnqgg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5357, 'Xooaics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xooaics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5358, 'Xqoosd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xqoosd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5359, 'Cwss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Cwss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5360, 'Aeawqq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Aeawqq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5361, 'Uqaqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Uqaqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5362, 'Xthtqtf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Xthtqtf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5363, 'Zjtjt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zjtjt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5365, 'Minger', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Minger@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5366, 'Igggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Igggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5367, 'Nfegqgr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nfegqgr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5368, 'Sqjftj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Sqjftj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5369, 'Crydqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Crydqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5370, 'Giiqsiy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Giiqsiy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5371, 'Neeyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Neeyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5372, 'Hnjyqu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Hnjyqu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5373, 'Peeqyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Peeqyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5374, 'Avrqrdyh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Avrqrdyh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5375, 'Gxacs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gxacs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5376, 'Ajreqs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ajreqs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5377, 'Htuqqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Htuqqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5378, 'Qfggre', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Qfggre@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5379, 'Ltuqqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ltuqqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5380, 'Kffee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Kffee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5381, 'Ziocdaz', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ziocdaz@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5382, 'Caqfgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Caqfgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5383, 'Ddrww', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ddrww@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5384, 'Sqqoe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Sqqoe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5385, 'Xffqee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xffqee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5386, 'Aadewaq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Aadewaq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5387, 'Yqaqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Yqaqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5388, 'Uhth', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Uhth@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5389, 'Ttuqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ttuqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5390, 'Kesff', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Kesff@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5391, 'Ljqqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ljqqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5392, 'Xfewi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Xfewi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5393, 'Vooqics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vooqics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5394, 'Gajbqg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Gajbqg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5396, 'Lgruio', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Lgruio@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5397, 'Scgsah', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Scgsah@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5398, 'Riur', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Riur@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5399, 'Vfqpkjga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Vfqpkjga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5400, 'Agedgsqg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Agedgsqg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5401, 'Lbngqg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Lbngqg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5402, 'Sqjfpaklqaas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Sqjfpaklqaas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5403, 'Ytowqms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ytowqms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5405, 'Ztqtis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ztqtis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5406, 'Nioqas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nioqas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5407, 'Utauqtq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Utauqtq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5408, 'Zqqoe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zqqoe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5409, 'Emifass', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Emifass@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5410, 'Mnjyqu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Mnjyqu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5411, 'Ifqhty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ifqhty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5414, 'Zdbwqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zdbwqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5415, 'Zfegqgr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Zfegqgr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5416, 'Fbkyuqi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Fbkyuqi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5417, 'Ahtrqsz', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ahtrqsz@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5418, 'Chth', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Chth@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5419, 'Otthi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Otthi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5420, 'Pffqee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Pffqee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5421, 'Wtuqqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wtuqqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5422, 'Ktowqms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ktowqms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5423, 'Kooqck', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Kooqck@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5425, 'Hthqgha', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Hthqgha@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5426, 'Uddgdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Uddgdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5427, 'Booqics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Booqics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5428, 'Ljdrqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ljdrqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5429, 'Wtowqms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Wtowqms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5431, 'Nahiqp', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Nahiqp@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5432, 'Bdwqabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Bdwqabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5433, 'Ntuqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Ntuqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5434, 'Pdrwd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Pdrwd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5435, 'Ferty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ferty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5436, 'Ogesqhe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Ogesqhe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5437, 'Gbkyuqi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'Gbkyuqi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5438, 'Qdsid', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Qdsid@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5439, 'Qvsseq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Qvsseq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5441, 'mike', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '?????????', 'mike@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5442, 'Jerry', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '??????', 'jerry@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5443, 'Tetest', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '????????????', 'Tetest@qq.com', '2021-08-18 15:20:49');
INSERT INTO `t_admin` VALUES (5444, 'Tested', '$2a$10$mBIaQWVxlnvpNQTnaIc6L.pqRNQ21GQvayxL95k2fHoZE6Uv6xlKe', '????????????', '123@163.com', '2021-08-18 20:10:44');

-- ----------------------------
-- Table structure for t_auth
-- ----------------------------
DROP TABLE IF EXISTS `t_auth`;
CREATE TABLE `t_auth`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_auth
-- ----------------------------
INSERT INTO `t_auth` VALUES (1, '', '????????????', NULL);
INSERT INTO `t_auth` VALUES (2, 'user:delete', '??????', 1);
INSERT INTO `t_auth` VALUES (3, 'user:get', '??????', 1);
INSERT INTO `t_auth` VALUES (4, 'user:save', '??????', 1);
INSERT INTO `t_auth` VALUES (5, 'user:update', '??????', 1);
INSERT INTO `t_auth` VALUES (6, '', '????????????', NULL);
INSERT INTO `t_auth` VALUES (7, 'role:delete', '??????', 6);
INSERT INTO `t_auth` VALUES (8, 'role:get', '??????', 6);
INSERT INTO `t_auth` VALUES (9, 'role:add', '??????', 6);
INSERT INTO `t_auth` VALUES (10, 'role:update', '??????', 6);

-- ----------------------------
-- Table structure for t_member
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginacct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userpswd` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authstatus` int(4) NULL DEFAULT NULL COMMENT '?????????????????? 0 - ?????????????????? 1 - ???????????????\r\n????????? 2 - ???????????????',
  `usertype` int(4) NULL DEFAULT NULL COMMENT ' 0 - ????????? 1 - ??????',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accttype` int(4) NULL DEFAULT NULL COMMENT '0 - ????????? 1 - ????????? 2 - ????????? 3 - ??????',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `loginacct`(`loginacct`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES (1, 'mike', '$2a$10$BKH1sqBYYiW6w8fyqfo19.SuQq7APo0Q4FvWIDGLArqNITP2h21hW', '?????????', 'email@qq.com', 1, 1, '??????', '113220', 2);
INSERT INTO `t_member` VALUES (2, 'tomtmomt', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (6, 'mikesssw', '$2a$10$xJOd9yEHVzDCVNOnm5Ir3.41GQKX0ZmymBHVFrlGVuUTkKXySFHXG', '?????????', 'email@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (7, 'mikes123sw', '$2a$10$kiIJ3zDSUyaAjmQw8p4EWuh6RjL6oltnvGhSPFzfX29eoBgMsq39u', '?????????', 'email@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (8, 'mikes1sw', '$2a$10$AMLUsV1gOPmH7hsJ7SXv7OUZ25Qm3.o6534UbAlAEY1g/xJn/bWhu', NULL, 'email@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (9, 'mikes1s123w', '$2a$10$CALKHvAO6nG2k125EqMo4.fyKZCrCHjZ3ahudi6ks1E9ERJM/XhoO', NULL, 'email@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (10, 'mikee1223', '$2a$10$pr3FI0pkHHBnIOz6UypHV.JmzWltBO7xK5WPATaaNPUoMSYC0CwLS', 'coffee', '1132209406@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (12, 'uigiu', '$2a$10$..5wL1piSTq0upPWO3Ruruy4NZ9FI74h/UshbxKsWqkiopu3hAwH6', 'coffee12215', '1132209406@qq.com', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_member_confirm_info
-- ----------------------------
DROP TABLE IF EXISTS `t_member_confirm_info`;
CREATE TABLE `t_member_confirm_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL COMMENT '?????? id',
  `paynum` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????????????????',
  `cardnum` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_member_confirm_info
-- ----------------------------
INSERT INTO `t_member_confirm_info` VALUES (3, 1, '1132209406', '4302812001011069011');
INSERT INTO `t_member_confirm_info` VALUES (4, 1, '1132209406', '463252945626524200');
INSERT INTO `t_member_confirm_info` VALUES (5, 1, '1132209406', '432694002569862355');
INSERT INTO `t_member_confirm_info` VALUES (6, 1, '1132209406', '4302596223652589911');
INSERT INTO `t_member_confirm_info` VALUES (7, 1, '1132209406', '4302266951205200');
INSERT INTO `t_member_confirm_info` VALUES (8, 1, '1132209406', '430251200255620211');

-- ----------------------------
-- Table structure for t_member_launch_info
-- ----------------------------
DROP TABLE IF EXISTS `t_member_launch_info`;
CREATE TABLE `t_member_launch_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL COMMENT '?????? id',
  `description_simple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `description_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `phone_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `service_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_member_launch_info
-- ----------------------------
INSERT INTO `t_member_launch_info` VALUES (3, 1, '??????java?????????', '????????????????????????????????????????????????????????????????????????????????????', '18273299165', '1132209406');
INSERT INTO `t_member_launch_info` VALUES (4, 1, '??????java?????????', '??????????????????????????????????????????????????????????????????', '18273094652', '18273299165');
INSERT INTO `t_member_launch_info` VALUES (5, 1, '??????java?????????', '?????????????????????????????????', '18236956562', '13011779966');
INSERT INTO `t_member_launch_info` VALUES (6, 1, '??????java?????????', '??????????????????????????????????????????', '13077006356', '18276995685');
INSERT INTO `t_member_launch_info` VALUES (7, 1, '??????java?????????', '???????????????????????????????????????', '18273299965', '13022569985');
INSERT INTO `t_member_launch_info` VALUES (8, 1, '??????java?????????', '???????????????', '18236956562', '18273299165');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, NULL, '??????????????????', NULL, 'glyphicon\r\nglyphicon-th-list');
INSERT INTO `t_menu` VALUES (2, 1, ' ??? ??? ??? ??? ', 'main.htm', 'glyphicon\r\nglyphicon-dashboard');
INSERT INTO `t_menu` VALUES (3, 1, '????????????', NULL, 'glyphicon glyphicon\r\nglyphicon-tasks');
INSERT INTO `t_menu` VALUES (4, 3, ' ??? ??? ??? ??? ', 'user/index.htm', 'glyphicon\r\nglyphicon-user');
INSERT INTO `t_menu` VALUES (5, 3, ' ??? ??? ??? ??? ', 'role/index.htm', 'glyphicon\r\nglyphicon-king');
INSERT INTO `t_menu` VALUES (6, 3, ' ??? ??? ??? ??? ', 'permission/index.htm', 'glyphicon\r\nglyphicon-lock');
INSERT INTO `t_menu` VALUES (7, 1, ' ??? ??? ??? ??? ', NULL, 'glyphicon\r\nglyphicon-ok');
INSERT INTO `t_menu` VALUES (8, 7, '??????????????????', 'auth_cert/index.htm', 'glyphicon\r\nglyphicon-check');
INSERT INTO `t_menu` VALUES (9, 7, ' ??? ??? ??? ??? ', 'auth_adv/index.htm', 'glyphicon\r\nglyphicon-check');
INSERT INTO `t_menu` VALUES (10, 7, ' ??? ??? ??? ??? ', 'auth_project/index.htm', 'glyphicon\r\nglyphicon-check');
INSERT INTO `t_menu` VALUES (11, 1, ' ??? ??? ??? ??? ', NULL, 'glyphicon\r\nglyphicon-th-large');
INSERT INTO `t_menu` VALUES (12, 11, ' ??? ??? ??? ??? ', 'cert/index.htm', 'glyphicon\r\nglyphicon-picture');
INSERT INTO `t_menu` VALUES (13, 11, ' ??? ??? ??? ??? ', 'certtype/index.htm', 'glyphicon\r\nglyphicon-equalizer');
INSERT INTO `t_menu` VALUES (14, 11, ' ??? ??? ??? ??? ', 'process/index.htm', 'glyphicon\r\nglyphicon-random');
INSERT INTO `t_menu` VALUES (15, 11, ' ??? ??? ??? ??? ', 'advert/index.htm', 'glyphicon\r\nglyphicon-hdd');
INSERT INTO `t_menu` VALUES (16, 11, ' ??? ??? ??? ??? ', 'message/index.htm', 'glyphicon\r\nglyphicon-comment');
INSERT INTO `t_menu` VALUES (17, 11, ' ??? ??? ??? ??? ', 'projectType/index.htm', 'glyphicon\r\nglyphicon-list');
INSERT INTO `t_menu` VALUES (18, 11, ' ??? ??? ??? ??? ', 'tag/index.htm', 'glyphicon\r\nglyphicon-tags');
INSERT INTO `t_menu` VALUES (19, 1, ' ??? ??? ??? ??? ', 'param/index.htm', 'glyphicon\r\nglyphicon-list-alt');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `order_num` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `pay_order_num` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `order_amount` double(10, 5) NULL DEFAULT NULL COMMENT '????????????',
  `invoice` int(11) NULL DEFAULT NULL COMMENT '??????????????????0 ?????????1 ??????',
  `invoice_title` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `order_remark` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `address_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '???????????? id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_order_project
-- ----------------------------
DROP TABLE IF EXISTS `t_order_project`;
CREATE TABLE `t_order_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `project_name` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `launch_name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `return_content` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `return_count` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `support_price` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `freight` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '??????????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order_project
-- ----------------------------

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `project_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `money` bigint(11) NULL DEFAULT NULL COMMENT '????????????',
  `day` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `status` int(4) NULL DEFAULT NULL COMMENT '0-???????????????1-????????????2-???????????????3-????????????',
  `deploydate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `supportmoney` bigint(11) NULL DEFAULT NULL COMMENT '?????????????????????',
  `supporter` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `completion` int(3) NULL DEFAULT NULL COMMENT '??????????????????',
  `memberid` int(11) NULL DEFAULT NULL COMMENT '?????????????????? id',
  `createdate` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `follower` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `header_picture_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES (8, '?????????', '????????????????????????????????????', 500, 45, 0, '2021-08-24', 54, NULL, NULL, 1, '2021-08-24', NULL, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/ade48de555624b98be03ec1f1a5d02b1.jpg');
INSERT INTO `t_project` VALUES (9, '?????????????????????', '????????????', 400, 30, 0, '2021-08-24', 74, NULL, NULL, 1, '2021-08-24', NULL, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/e1d7201ecd324b799605685ced0d8006.jpg');
INSERT INTO `t_project` VALUES (10, '???????????????', '?????????????????????', 996, 95, 0, '2021-08-24', 250, 3, NULL, 1, '2021-08-24', 65, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/33edbf08eccc49c7a2a7a291c78e0664.jpg');
INSERT INTO `t_project` VALUES (11, '???????????????', '???????????????', 200, 20, 0, '2021-08-24', 43, NULL, NULL, 1, '2021-08-24', NULL, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/ad5ac5431f5548d8a5a3101de4f6018b.jpg');
INSERT INTO `t_project` VALUES (12, '??????????????????', '??????????????????', 500, 45, 0, '2021-08-20', NULL, NULL, NULL, 1, '2021-08-25', NULL, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210825/6cb8d09866a147608f02d6aa18f5b975.png');
INSERT INTO `t_project` VALUES (13, '??????????????????', '????????????', 500000, 45, 0, '2021-08-20', NULL, NULL, NULL, 1, '2021-08-25', NULL, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210825/341841c2626d4f64887d83f8e52b7621.jpg');

-- ----------------------------
-- Table structure for t_project_item_pic
-- ----------------------------
DROP TABLE IF EXISTS `t_project_item_pic`;
CREATE TABLE `t_project_item_pic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL,
  `item_pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_project_item_pic
-- ----------------------------
INSERT INTO `t_project_item_pic` VALUES (3, 8, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/1589d2aadcbf49719c7834006da44774.jpg');
INSERT INTO `t_project_item_pic` VALUES (4, 9, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/6f7cff9293a544d3a0226a4d3e3649b0.jpg');
INSERT INTO `t_project_item_pic` VALUES (5, 10, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/bcdceeed7bdc4aa58822edd34c742451.jpg');
INSERT INTO `t_project_item_pic` VALUES (6, 11, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/2d4324828f934208bd162e0ea78ece84.jpg');
INSERT INTO `t_project_item_pic` VALUES (7, 12, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210825/b14c418982d248debf2de756050e1641.jpg');
INSERT INTO `t_project_item_pic` VALUES (8, 13, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210825/d92df42a80fb47ff9b98713270b94a79.png');

-- ----------------------------
-- Table structure for t_project_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_project_tag`;
CREATE TABLE `t_project_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL,
  `tagid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_project_tag
-- ----------------------------
INSERT INTO `t_project_tag` VALUES (7, 8, 4);
INSERT INTO `t_project_tag` VALUES (8, 8, 5);
INSERT INTO `t_project_tag` VALUES (9, 8, 8);
INSERT INTO `t_project_tag` VALUES (10, 9, 5);
INSERT INTO `t_project_tag` VALUES (11, 9, 7);
INSERT INTO `t_project_tag` VALUES (12, 10, 6);
INSERT INTO `t_project_tag` VALUES (13, 11, 4);
INSERT INTO `t_project_tag` VALUES (14, 12, 7);
INSERT INTO `t_project_tag` VALUES (15, 13, 5);
INSERT INTO `t_project_tag` VALUES (16, 13, 7);

-- ----------------------------
-- Table structure for t_project_type
-- ----------------------------
DROP TABLE IF EXISTS `t_project_type`;
CREATE TABLE `t_project_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL,
  `typeid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_project_type
-- ----------------------------
INSERT INTO `t_project_type` VALUES (15, 8, 1);
INSERT INTO `t_project_type` VALUES (16, 9, 2);
INSERT INTO `t_project_type` VALUES (17, 10, 1);
INSERT INTO `t_project_type` VALUES (18, 11, 1);
INSERT INTO `t_project_type` VALUES (19, 12, 3);
INSERT INTO `t_project_type` VALUES (20, 13, 3);

-- ----------------------------
-- Table structure for t_return
-- ----------------------------
DROP TABLE IF EXISTS `t_return`;
CREATE TABLE `t_return`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL,
  `type` int(4) NULL DEFAULT NULL COMMENT '0 - ??????????????? 1 ??????????????????',
  `supportmoney` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `count` int(11) NULL DEFAULT NULL COMMENT '????????????????????????0????????????????????????',
  `signalpurchase` int(11) NULL DEFAULT NULL COMMENT '????????????????????????',
  `purchase` int(11) NULL DEFAULT NULL COMMENT '??????????????????',
  `freight` int(11) NULL DEFAULT NULL COMMENT '????????????0????????????',
  `invoice` int(4) NULL DEFAULT NULL COMMENT '0 - ??????????????? 1 - ?????????',
  `returndate` int(11) NULL DEFAULT NULL COMMENT '????????????????????????????????????????????????',
  `describ_pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '??????????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_return
-- ----------------------------
INSERT INTO `t_return` VALUES (3, 8, 1, 50, '????????????', 1, 0, NULL, 10, 1, 20, NULL);
INSERT INTO `t_return` VALUES (4, 9, 0, 60, '???????????????', 1, 1, 2, 12, 0, 14, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/5fef95dddba647648a5118d81a5448ea.jpg');
INSERT INTO `t_return` VALUES (5, 9, 1, 100, '????????????????????? + ????????????', 1, 1, 2, 6, 0, 7, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/5fef95dddba647648a5118d81a5448ea.jpg');
INSERT INTO `t_return` VALUES (6, 10, 50, 120, '?????????????????????', 1, 0, NULL, 12, 1, 14, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/1298be11d3544fe5851a134e03bcbfc3.jpg');
INSERT INTO `t_return` VALUES (7, 10, 100, 240, '?????????????????????+?????????????????????????????????', 1, 1, 2, 12, 0, 14, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/1298be11d3544fe5851a134e03bcbfc3.jpg');
INSERT INTO `t_return` VALUES (8, 11, 0, 360, '???????????????', 1, 0, NULL, 0, 1, 23, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/b43be3c0429448f8a0d5101b62abfcac.jpg');
INSERT INTO `t_return` VALUES (9, 12, 0, 100, '?????????????????????????????????', 1, 0, NULL, 0, 1, 7, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210825/910fbeb74233402a849929997d1d0f1f.jpg');
INSERT INTO `t_return` VALUES (10, 13, 0, 50, '???????????????', 1, 0, NULL, 12, 0, 14, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210825/d521e8f6f87d4b87949e10aeb03c15ba.jpg');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 238 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, 'PM - ????????????');
INSERT INTO `t_role` VALUES (2, 'SE - ???????????????');
INSERT INTO `t_role` VALUES (3, 'PG - ?????????');
INSERT INTO `t_role` VALUES (4, 'TL - ??????');
INSERT INTO `t_role` VALUES (5, 'GL - ??????');
INSERT INTO `t_role` VALUES (6, '	QA - ????????????');
INSERT INTO `t_role` VALUES (7, '	QC - ????????????');
INSERT INTO `t_role` VALUES (8, 'SA - ???????????????');
INSERT INTO `t_role` VALUES (9, 'CMO / CMS - ???????????????');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_tag
-- ----------------------------

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, '??????', '??????????????????');
INSERT INTO `t_type` VALUES (2, '??????', '??????????????????');
INSERT INTO `t_type` VALUES (3, '??????', '??????????????????');
INSERT INTO `t_type` VALUES (4, '??????', '??????????????????');

SET FOREIGN_KEY_CHECKS = 1;
