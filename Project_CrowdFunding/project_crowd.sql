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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `receive_name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `phone_num` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户 id',
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
INSERT INTO `t_admin` VALUES (1, 'coffee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '帅德华', 'sdehua@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (2, 'Zhtrsz', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '融敬洪', 'Zhtrsz@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (3, 'Vuidu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宾捷旭', 'Vuidu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (4, 'Ctdc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '东皓清', 'Ctdc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5, 'Whth', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '南裕昊', 'Whth@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (6, 'Aqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '陶皓', 'Aqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (10, 'Htuqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '欧智棋', 'Htuqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (11, 'Sqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '丰尚欧', 'Sqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (12, 'Rjres', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '夏智棋', 'Rjres@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (13, 'Cgdgd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '班川善', 'Cgdgd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (14, 'Iesfsa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '乜渊荣', 'Iesfsa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (15, 'Ktrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '能岩乐', 'Ktrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (16, 'Zmiefdss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '别景尧', 'Zmiefdss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (17, 'Gbbais', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '竹景尧', 'Gbbais@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (18, 'Zdwabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '夏皓宁', 'Zdwabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (19, 'Htoax', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '时朝波', 'Htoax@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (20, 'Vbtar', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '史乔诚', 'Vbtar@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (21, 'Lahip', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '何智凯', 'Lahip@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (22, 'Trydd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '尔朱楠峻', 'Trydd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (23, 'Yaifgo', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '霍善玮', 'Yaifgo@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (24, 'Awfgbb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '翟雄杰', 'Awfgbb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (25, 'Ceawqq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '钟离裕昊', 'Ceawqq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (26, 'Veeyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '蒋智凯', 'Veeyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (27, 'Uesfsa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '全楠明', 'Uesfsa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (28, 'Lgrd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '蓟敬坤', 'Lgrd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (29, 'Bwqegu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '伍皓景', 'Bwqegu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (30, 'Vbngg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '黎涛宇', 'Vbngg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (31, 'Dgedgsg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '南郭琪洋', 'Dgedgsg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (32, 'Cesed', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '铁涛光', 'Cesed@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (33, 'Tuuut', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '扈敬易', 'Tuuut@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (34, 'Xgdgd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '公川善', 'Xgdgd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (35, 'Bajbg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '董涛宇', 'Bajbg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (36, 'Nthagh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '墨昌震', 'Nthagh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (37, 'Vttis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '钱金锋', 'Vttis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (38, 'Vdsid', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '黄敬洪', 'Vdsid@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (39, 'Cdggdf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '璩捷杰', 'Cdggdf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (40, 'Orrgj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '兀官寒柏', 'Orrgj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (41, 'Wooics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '贝新明', 'Wooics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (42, 'Mfeggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '庞楠峻', 'Mfeggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (43, 'Ljkjy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '北宫智凯', 'Ljkjy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (44, 'Padi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '胥皓景', 'Padi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (45, 'Ifesvb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '庾尚欧', 'Ifesvb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (46, 'Axcgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '南宫敬坤', 'Axcgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (47, 'Aswsaef', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '敬昌震', 'Aswsaef@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (48, 'Zthttf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '闫涛宇', 'Zthttf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (49, 'Ffpkjga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '常景尧', 'Ffpkjga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (50, 'Sddgdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '眭朝棋', 'Sddgdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (51, 'Owss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '巨靖轩', 'Owss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (52, 'Cddqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '隗楠峻', 'Cddqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (53, 'Vefsf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '晋敬坤', 'Vefsf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (54, 'Iooics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '温景尧', 'Iooics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (55, 'Yuewqjd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '何敬坤', 'Yuewqjd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (56, 'Pfhty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '皮新明', 'Pfhty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (57, 'Eooqck', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '涂靖轩', 'Eooqck@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (58, 'Rbbrqa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '鲍乔豪', 'Rbbrqa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (59, 'Vfesqvb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '祭雨锋', 'Vfesqvb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (60, 'Qtdqc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '折雄杰', 'Qtdqc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (61, 'Qthagh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '钟昌震', 'Qthagh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (62, 'Cqip', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '干岩乐', 'Cqip@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (63, 'Tthtqtf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '胶寒柏', 'Tthtqtf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (64, 'Gthqa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '殳寒柏', 'Gthqa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (65, 'Utowqms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '伊渊荣', 'Utowqms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (66, 'Uooqics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '胶杰宇', 'Uooqics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (67, 'Ftquqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '伏捷杰', 'Ftquqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (68, 'Zgseegg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '文善玮', 'Zgseegg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (69, 'Oaqfgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '司涛光', 'Oaqfgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (70, 'Whterr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '施智凯', 'Whterr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (71, 'Siiqsiy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '仲皓翔', 'Siiqsiy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (72, 'Cpoe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '燕善玮', 'Cpoe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (73, 'Ajkjy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '韩皓清', 'Ajkjy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (74, 'Qinqger', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '计智棋', 'Qinqger@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (75, 'Zmqiefdss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '孔景瑞', 'Zmqiefdss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (76, 'Cgseegg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '贺兰智凯', 'Cgseegg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (77, 'Irsfgg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宣尚欧', 'Irsfgg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (78, 'Erydd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宦尚欧', 'Erydd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (79, 'Btqtis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '羿裕昊', 'Btqtis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (80, 'Xnik', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '端金锋', 'Xnik@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (81, 'Hefsf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '阙乔豪', 'Hefsf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (82, 'Tfqhty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '袁朝实', 'Tfqhty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (83, 'Mgggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '苍敬轩', 'Mgggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5000, 'Dgews', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '谈皓宁', 'Dgews@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5001, 'Saifgo', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '眭昊辉', 'Saifgo@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5002, 'Udrww', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '归川善', 'Udrww@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5003, 'Ggggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '孙乔诚', 'Ggggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5004, 'Zfttt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '陆裕昊', 'Zfttt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5005, 'Bttis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '马善玮', 'Bttis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5006, 'Duidu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '闾丘皓福', 'Duidu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5007, 'Ziur', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '扶乔宁', 'Ziur@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5008, 'Hmiefdss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '叔孙景瑞', 'Hmiefdss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5009, 'Zpoe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '唐寒柏', 'Zpoe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5010, 'Aeeyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '穆琪哲', 'Aeeyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5011, 'Bfeggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '亢尚兴', 'Bfeggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5012, 'Vnik', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '轩辕善玮', 'Vnik@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5013, 'Athttf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '屈渊荣', 'Athttf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5014, 'Rnik', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '羊捷旭', 'Rnik@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5016, 'Fgaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '侴敬坤', 'Fgaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5017, 'Cgaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '羿敬坤', 'Cgaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5018, 'Ertdy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '折岩乐', 'Ertdy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5019, 'Cgedgsg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '帅敬洪', 'Cgedgsg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5020, 'Esefdf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郦敬坤', 'Esefdf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5021, 'Ttuqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '厍岩乐', 'Ttuqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5022, 'Mgrdd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '元昌震', 'Mgrdd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5023, 'Mfeaee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '尤善玮', 'Mfeaee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5024, 'Mtowms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '吴敬洪', 'Mtowms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5025, 'Ddaws', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '佴敬坤', 'Ddaws@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5026, 'Idwabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '北宫琪洋', 'Idwabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5027, 'Vioas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '柳东辉', 'Vioas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5028, 'Niogf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '巫朝实', 'Niogf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5029, 'Zdbwd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '冼涛宇', 'Zdbwd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5030, 'Dbagael', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '安楷林', 'Dbagael@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5031, 'Pjkjy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '檀岩乐', 'Pjkjy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5032, 'Looics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '诸琪洋', 'Looics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5033, 'Xuewqjd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '慕容朝寒', 'Xuewqjd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5034, 'Gthagh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '江皓景', 'Gthagh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5035, 'Wjtyr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '田敬轩', 'Wjtyr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5036, 'Sthttf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '申善玮', 'Sthttf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5037, 'Ryyyi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '沙昊辉', 'Ryyyi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5038, 'Riogf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '解新明', 'Riogf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5039, 'Vddgdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '倪皓清', 'Vddgdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5040, 'Gerq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '庞朝寒', 'Gerq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5041, 'Wtuqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '祖尚兴', 'Wtuqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5042, 'Iuuut', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '汝捷旭', 'Iuuut@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5043, 'Fwdwdv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '太叔乔诚', 'Fwdwdv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5044, 'Zfewi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '綦毋朝棋', 'Zfewi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5045, 'Xtthi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '欧皓翔', 'Xtthi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5046, 'Rooics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '涂皓宁', 'Rooics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5047, 'Ojuo', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '封川善', 'Ojuo@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5048, 'Lgseegg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '百里靖轩', 'Lgseegg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5049, 'Cuuut', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '陈涛光', 'Cuuut@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5050, 'Xaron', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '赖楠明', 'Xaron@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5051, 'Qrydd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '溥乔豪', 'Qrydd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5052, 'Woock', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '邝乔宁', 'Woock@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5053, 'Nryh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '易捷杰', 'Nryh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5054, 'Iioas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '从朝实', 'Iioas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5055, 'Gyyyi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '揭楷林', 'Gyyyi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5056, 'Cjfpaklaas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '尉迟捷旭', 'Cjfpaklaas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5057, 'Plytis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '燕智凯', 'Plytis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5058, 'Pbdbbdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '查乔宁', 'Pbdbbdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5059, 'Qlytis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '抗乔诚', 'Qlytis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5060, 'Yeffe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '荀渊荣', 'Yeffe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5061, 'Oqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '公乘朝寒', 'Oqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5062, 'Ybagael', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '壤驷尚兴', 'Ybagael@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5063, 'Gdfvb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '缑朝棋', 'Gdfvb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5064, 'Neyi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '杞敬轩', 'Neyi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5065, 'Uaiof', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '随渊荣', 'Uaiof@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5066, 'Cfewi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '孟皓翔', 'Cfewi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5067, 'Kbngg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '慕尚兴', 'Kbngg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5068, 'Euewqjd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '扈乔豪', 'Euewqjd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5069, 'Yjjtsg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '闾尚欧', 'Yjjtsg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5070, 'Soock', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '聂渊荣', 'Soock@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5071, 'Ieeyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '晁皓宁', 'Ieeyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5072, 'Yjkjy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '鲜皓清', 'Yjkjy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5073, 'Ruwiii', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '公羊敬易', 'Ruwiii@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5074, 'Ytuqat', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '季川善', 'Ytuqat@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5075, 'Roosd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '太史雄杰', 'Roosd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5076, 'Bioas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '米新明', 'Bioas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5077, 'Pgrd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '万皓景', 'Pgrd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5078, 'Tvsse', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '万俟皓翔', 'Tvsse@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5079, 'Xqaeed', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郏靖轩', 'Xqaeed@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5080, 'Siod', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '黄琪哲', 'Siod@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5081, 'Qffee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '海敬洪', 'Qffee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5082, 'Pnnwngg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '夔朝实', 'Pnnwngg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5083, 'Vhtrsz', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '诸葛智棋', 'Vhtrsz@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5084, 'Wjkjy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '达尚欧', 'Wjkjy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5085, 'Nppdle', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '折昌震', 'Nppdle@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5086, 'Imisas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '贺昊辉', 'Imisas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5087, 'Elytis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '林敬轩', 'Elytis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5088, 'Nadi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '祖雄杰', 'Nadi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5089, 'Xqiopaai', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '广鼎益', 'Xqiopaai@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5090, 'Yeghh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '门楠峻', 'Yeghh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5091, 'Grtdy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '昝涛光', 'Grtdy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5092, 'Xtdc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '奚琪哲', 'Xtdc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5093, 'Gjres', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '沙皓宁', 'Gjres@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5094, 'Gnjyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '卢乔宁', 'Gnjyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5095, 'Wbbais', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '东乡尚欧', 'Wbbais@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5096, 'Bwdwdv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '唐智凯', 'Bwdwdv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5097, 'Ehntgf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '叶寒柏', 'Ehntgf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5098, 'Yddgdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '晏景尧', 'Yddgdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5099, 'Mooics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '屠景瑞', 'Mooics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5100, 'Gmifass', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '季捷旭', 'Gmifass@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5101, 'Cfeggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '班昊辉', 'Cfeggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5102, 'Emiefdss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '车杰宇', 'Emiefdss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5103, 'Tfpkjga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '仲孙新明', 'Tfpkjga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5104, 'Sfeggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '应楠明', 'Sfeggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5105, 'Ntuqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '来新明', 'Ntuqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5106, 'Huewqjd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '夔楠明', 'Huewqjd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5107, 'Ebdel', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '荣新明', 'Ebdel@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5108, 'Ggdgd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '花捷杰', 'Ggdgd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5109, 'Bfewi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '钦鼎益', 'Bfewi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5110, 'Oswsaef', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '阴鼎益', 'Oswsaef@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5112, 'Wfgqhfb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '扈楠峻', 'Wfgqhfb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5113, 'Btuqqat', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '厉皓宁', 'Btuqqat@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5114, 'Vdrwqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '东朝波', 'Vdrwqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5115, 'Lfesvb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '仉景瑞', 'Lfesvb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5116, 'Hhqntgf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '綦涛光', 'Hhqntgf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5117, 'Yvsqds', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '辛楠明', 'Yvsqds@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5118, 'Swgqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '漆楠明', 'Swgqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5119, 'Adsid', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '漆雕智凯', 'Adsid@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5120, 'Atowms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '倪景瑞', 'Atowms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5121, 'Yooqck', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '袁敬坤', 'Yooqck@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5122, 'Zfpkjga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '贺兰楠峻', 'Zfpkjga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5123, 'Biqur', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '穆杰宇', 'Biqur@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5124, 'Baklga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '相里景瑞', 'Baklga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5125, 'Gbdqel', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '赫连朝寒', 'Gbdqel@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5126, 'Ptuqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '戈琪洋', 'Ptuqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5127, 'Qooaics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郇智凯', 'Qooaics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5128, 'Fyiqe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '狄琪洋', 'Fyiqe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5129, 'Fxaqcs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '黄涛宇', 'Fxaqcs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5130, 'Gjqqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '单于裕明', 'Gjqqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5131, 'Bthqa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郎捷杰', 'Bthqa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5132, 'Nnik', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '闻人裕明', 'Nnik@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5133, 'Cajbg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '华乔宁', 'Cajbg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5134, 'Qewqv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '老渊荣', 'Qewqv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5135, 'Uerqty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '戎朝实', 'Uerqty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5136, 'Vqfggre', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '刁涛宇', 'Vqfggre@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5137, 'Btqtqhi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '奚琪洋', 'Btqtqhi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5138, 'Bwfgbb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '公羊涛宇', 'Bwfgbb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5139, 'Nswsaef', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '皮涛宇', 'Nswsaef@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5140, 'Owdwdv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '屈皓清', 'Owdwdv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5141, 'Wgqgar', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '公羊昊辉', 'Wgqgar@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5142, 'Oajbqg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宰岩乐', 'Oajbqg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5143, 'Ttrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '侯智凯', 'Ttrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5144, 'Wgeshe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郈昊辉', 'Wgeshe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5145, 'Othagh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '聂景尧', 'Othagh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5146, 'Wefsf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '闻东辉', 'Wefsf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5147, 'Viogqf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '独孤靖轩', 'Viogqf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5148, 'Affee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '尤昌震', 'Affee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5149, 'Tbngqg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '双楠峻', 'Tbngqg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5150, 'Nbtar', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '卓尚欧', 'Nbtar@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5151, 'Xafgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '申屠尚欧', 'Xafgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5152, 'Zftqtt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '杞朝实', 'Zftqtt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5153, 'Wffee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '李敬轩', 'Wffee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5154, 'Nnnwnqgg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '荀皓清', 'Nnnwnqgg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5155, 'Fthqa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '甘雄杰', 'Fthqa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5156, 'Dtdqc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '雍门智凯', 'Dtdqc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5157, 'Aiodq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '桑雨锋', 'Aiodq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5158, 'Fggar', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宰父尚兴', 'Fggar@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5159, 'Gjdrqqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '段干金锋', 'Gjdrqqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5160, 'Pfqgghh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '童裕昊', 'Pfqgghh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5161, 'Dquwz', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '高景尧', 'Dquwz@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5162, 'Zbbra', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '勾乔宁', 'Zbbra@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5163, 'Nwdad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '佟皓宁', 'Nwdad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5164, 'Nbbe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '揭楠峻', 'Nbbe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5165, 'Rdqhj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '繁尚兴', 'Rdqhj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5166, 'Frydqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '王寒柏', 'Frydqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5167, 'Pxaqcs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '闾丘皓清', 'Pxaqcs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5168, 'Omifass', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '伊东辉', 'Omifass@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5169, 'Keqrrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '皇敬坤', 'Keqrrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5170, 'Xrrqgj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '爱杰宇', 'Xrrqgj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5171, 'Kesfsa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '东皓翔', 'Kesfsa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5172, 'Zgaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '老乔诚', 'Zgaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5174, 'Wgruio', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '云尚欧', 'Wgruio@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5175, 'Wdggqdf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '晁朝实', 'Wdggqdf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5176, 'Bbbqis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '苍乔诚', 'Bbbqis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5177, 'Mryg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '蔚景瑞', 'Mryg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5178, 'Xtuqqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郦乔豪', 'Xtuqqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5179, 'Gffqee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '广乔诚', 'Gffqee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5180, 'Wtrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '蹇昊辉', 'Wtrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5181, 'Swsqs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '邰朝实', 'Swsqs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5182, 'Gtoax', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '后尚欧', 'Gtoax@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5183, 'Yesfqsa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '太叔岩乐', 'Yesfqsa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5184, 'Qoock', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '钟杰宇', 'Qoock@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5185, 'Tuwiqii', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '秦昊辉', 'Tuwiqii@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5186, 'Ytdqc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '桂皓福', 'Ytdqc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5187, 'Siodq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '索尚欧', 'Siodq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5188, 'Wppdle', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '伯昌震', 'Wppdle@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5189, 'Gadi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '介楷林', 'Gadi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5191, 'Sffqee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '奚寒柏', 'Sffqee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5192, 'Zgqgar', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '符川善', 'Zgqgar@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5193, 'Rppdle', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '鱼景瑞', 'Rppdle@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5194, 'Ciodq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '罗皓清', 'Ciodq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5195, 'Hbbais', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '沃岩乐', 'Hbbais@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5196, 'Stuqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宦涛光', 'Stuqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5197, 'Bwqeqgu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '万楠峻', 'Bwqeqgu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5198, 'Cqdqhj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '余裕明', 'Cqdqhj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5199, 'Rvsse', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '陈智棋', 'Rvsse@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5200, 'Cvsseq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郎雄杰', 'Cvsseq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5201, 'Yqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '端东辉', 'Yqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5202, 'Eipoot', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '乐朝寒', 'Eipoot@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5203, 'Lerrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '高鼎益', 'Lerrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5204, 'Nrydqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '赏朝波', 'Nrydqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5205, 'Nhtwff', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '于渊荣', 'Nhtwff@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5206, 'Wtauqtq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '游善玮', 'Wtauqtq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5207, 'Ivrqrdyh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '阙雄杰', 'Ivrqrdyh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5208, 'Eeeyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '权川善', 'Eeeyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5209, 'Thhwtt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '任朝寒', 'Thhwtt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5210, 'Dooqaics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '养皓清', 'Dooqaics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5211, 'Ndbwqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '汝裕昊', 'Ndbwqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5212, 'Rhrtqyh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郁雄杰', 'Rhrtqyh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5213, 'Wwety', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '酆雄杰', 'Wwety@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5214, 'Dbkyuqi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '饶金锋', 'Dbkyuqi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5215, 'Ygeshe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '璩裕昊', 'Ygeshe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5216, 'Hgedgsg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '解岩乐', 'Hgedgsg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5217, 'Xgqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '司空雨锋', 'Xgqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5218, 'Vrtqdy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '畅皓清', 'Vrtqdy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5219, 'Gdaqws', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '澹台皓景', 'Gdaqws@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5220, 'Vaefvv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '东琪洋', 'Vaefvv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5221, 'Gdbwqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '匡朝实', 'Gdbwqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5222, 'Excgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '昝尚兴', 'Excgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5223, 'Tbngg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郇渊荣', 'Tbngg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5224, 'Ygqrdd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '是金锋', 'Ygqrdd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5225, 'Wvsseq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '金皓清', 'Wvsseq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5226, 'Wdrww', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宁金锋', 'Wdrww@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5227, 'Bjtjt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '言敬轩', 'Bjtjt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5228, 'Excqgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '鱼景瑞', 'Excqgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5229, 'Ctuqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '茹皓景', 'Ctuqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5230, 'Rqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '岑楠峻', 'Rqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5231, 'Gbtaqr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郝捷杰', 'Gbtaqr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5232, 'Gfbqjg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '楼涛光', 'Gfbqjg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5233, 'Cwfgbb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '耿琪洋', 'Cwfgbb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5234, 'Coosd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '姚琪哲', 'Coosd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5235, 'Yerrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '濮阳靖轩', 'Yerrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5236, 'Vgeshe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '容楷林', 'Vgeshe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5237, 'Leqrrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '覃岩乐', 'Leqrrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5238, 'Hiqur', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '还裕明', 'Hiqur@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5239, 'Awety', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '公仪寒柏', 'Awety@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5240, 'Yioas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '慕容昊辉', 'Yioas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5241, 'Osfqgc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '蓟裕明', 'Osfqgc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5242, 'Fododq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '娄乔豪', 'Fododq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5243, 'Qiisiy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '亢东辉', 'Qiisiy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5244, 'Mwety', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '莘乔豪', 'Mwety@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5245, 'Wadi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '皋景瑞', 'Wadi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5246, 'Gwdwdv', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '濮尚兴', 'Gwdwdv@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5248, 'Wesaf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '段朝棋', 'Wesaf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5249, 'Pryg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '方捷旭', 'Pryg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5251, 'Yhtwff', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '杞雨锋', 'Yhtwff@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5252, 'Garon', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '弥朝棋', 'Garon@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5253, 'Otuqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '沙雨锋', 'Otuqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5254, 'Vtuqqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '梁川善', 'Vtuqqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5255, 'Xhrtyh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '柴敬易', 'Xhrtyh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5256, 'Wdsqid', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '容捷杰', 'Wdsqid@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5257, 'Pntyea', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '柯渊荣', 'Pntyea@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5258, 'Gesed', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '百里敬轩', 'Gesed@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5259, 'Ztqoax', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '微生乔宁', 'Ztqoax@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5260, 'Sfghfb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '钟景瑞', 'Sfghfb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5261, 'Uaiqof', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '牧新明', 'Uaiqof@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5262, 'Dapjog', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '耿金锋', 'Dapjog@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5263, 'Ltauqtq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '湛渊荣', 'Ltauqtq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5264, 'Ltdc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '暨涛光', 'Ltdc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5265, 'Vbdbbdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '庾涛宇', 'Vbdbbdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5266, 'Uswqsaef', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '傅景瑞', 'Uswqsaef@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5267, 'Gdwqabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '綦涛光', 'Gdwqabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5268, 'Wodod', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '潘皓宁', 'Wodod@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5269, 'Dfqgghh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '溥琪洋', 'Dfqgghh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5270, 'Cwdqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '密雄杰', 'Cwdqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5271, 'Uxcqgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '计乔诚', 'Uxcqgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5272, 'Qelard', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '随尚欧', 'Qelard@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5273, 'Sqdi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '拓跋新明', 'Sqdi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5274, 'Wnjyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '伍善玮', 'Wnjyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5275, 'Cinger', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '毕智凯', 'Cinger@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5276, 'Etqoax', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '鱼裕昊', 'Etqoax@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5277, 'Vmiefdss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '匡朝波', 'Vmiefdss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5278, 'Ctauqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宾尚兴', 'Ctauqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5279, 'Ebbaiqs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '敖尚兴', 'Ebbaiqs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5280, 'Sryh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '燕捷杰', 'Sryh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5281, 'Utqtqhi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '夏侯智棋', 'Utqtqhi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5282, 'Gffee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '冯敬坤', 'Gffee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5284, 'Ubbaiqs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '贺兰楠峻', 'Ubbaiqs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5285, 'Dgaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '澹台乔豪', 'Dgaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5286, 'Cvrrdyh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '来涛光', 'Cvrrdyh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5287, 'Ihtqerr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '湛皓景', 'Ihtqerr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5288, 'Obagael', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '诸朝棋', 'Obagael@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5289, 'Qbbrqa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '舒敬轩', 'Qbbrqa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5290, 'Wooqics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '蒙雨锋', 'Wooqics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5291, 'Sdwqabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '归捷旭', 'Sdwqabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5292, 'Lesfqsa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宗皓宁', 'Lesfqsa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5293, 'Ouiduq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '挚景尧', 'Ouiduq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5294, 'Qdwqabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '汪东辉', 'Qdwqabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5295, 'Etrr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '桑琪哲', 'Etrr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5296, 'Neghh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '双雨锋', 'Neghh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5297, 'Ftuqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '雍裕昊', 'Ftuqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5298, 'Hadewa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '西门朝波', 'Hadewa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5299, 'Atuqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '毋丘敬洪', 'Atuqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5300, 'Kgqrdd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郦皓宁', 'Kgqrdd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5301, 'Tgews', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '江琪洋', 'Tgews@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5302, 'Wbagaeql', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '刁智棋', 'Wbagaeql@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5303, 'Nqmifass', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '蓬金锋', 'Nqmifass@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5304, 'Belard', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '安雨锋', 'Belard@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5305, 'Aooqics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '闻人寒柏', 'Aooqics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5306, 'Drrqgj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '乌捷杰', 'Drrqgj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5307, 'Ttowqms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '水金锋', 'Ttowqms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5308, 'Crsfqgg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '叶金锋', 'Crsfqgg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5309, 'Xntyea', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '折景瑞', 'Xntyea@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5310, 'Rgedgsg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '堵涛宇', 'Rgedgsg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5311, 'Idaws', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '臧岩乐', 'Idaws@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5312, 'Vtdqc', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '向雨锋', 'Vtdqc@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5313, 'Afesqvb', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '康杰宇', 'Afesqvb@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5314, 'Pddqqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '蔺乔豪', 'Pddqqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5315, 'Ptrqr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '赖寒柏', 'Ptrqr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5316, 'Rdrqwd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '墨乔宁', 'Rdrqwd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5317, 'Yiisiy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '呼延皓清', 'Yiisiy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5318, 'Mthqgha', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '申屠景尧', 'Mthqgha@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5319, 'Paklqga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '糜敬坤', 'Paklqga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5320, 'Zdrww', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '晋新明', 'Zdrww@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5321, 'Zyyyi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '逄敬轩', 'Zyyyi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5322, 'Ndrwqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '嵇皓宁', 'Ndrwqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5323, 'Uwdqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '封皓清', 'Uwdqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5324, 'Gwgqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '庄尚兴', 'Gwgqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5325, 'Yoock', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '枚朝实', 'Yoock@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5326, 'Krydd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '暨捷旭', 'Krydd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5327, 'Loock', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '勾景尧', 'Loock@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5328, 'Gnqik', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '万俟敬易', 'Gnqik@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5329, 'Aadewa', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '楚东辉', 'Aadewa@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5330, 'Qtuqqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '汤昊辉', 'Qtuqqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5331, 'Oooqaics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '闾景瑞', 'Oooqaics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5333, 'Mrgruu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '庞杰宇', 'Mrgruu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5335, 'Ynnwngg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '慕容善玮', 'Ynnwngg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5336, 'Iaifqgo', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '田敬轩', 'Iaifqgo@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5337, 'Dseqdf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '言鼎益', 'Dseqdf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5339, 'Zwqeqgu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '董朝寒', 'Zwqeqgu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5340, 'Xtqtqhi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '岑靖轩', 'Xtqtqhi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5341, 'Hoosd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '牟智棋', 'Hoosd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5342, 'Ierqty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '茅涛光', 'Ierqty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5343, 'Kxacs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '莫裕明', 'Kxacs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5344, 'Ytuqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '过渊荣', 'Ytuqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5345, 'Zbkyuqi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '曾寒柏', 'Zbkyuqi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5346, 'Mqip', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宦朝实', 'Mqip@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5347, 'Kwdqad', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '扶昊辉', 'Kwdqad@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5348, 'Mtthi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '侴裕昊', 'Mtthi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5349, 'Igesqhe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '楚皓宁', 'Igesqhe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5350, 'Iuidu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '赵皓翔', 'Iuidu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5351, 'Nqjftj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '侯智凯', 'Nqjftj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5352, 'Fdbwqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '于敬洪', 'Fdbwqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5353, 'Nuewqqjd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '充敬易', 'Nuewqqjd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5354, 'Rgqqhir', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '皮渊荣', 'Rgqqhir@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5355, 'Xtauqtq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '屈突雨锋', 'Xtauqtq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5356, 'Dnnwnqgg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '廖朝棋', 'Dnnwnqgg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5357, 'Xooaics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宓朝波', 'Xooaics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5358, 'Xqoosd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '鲍雄杰', 'Xqoosd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5359, 'Cwss', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '项新明', 'Cwss@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5360, 'Aeawqq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '挚杰宇', 'Aeawqq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5361, 'Uqaqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '赖岩乐', 'Uqaqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5362, 'Xthtqtf', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '闾丘寒柏', 'Xthtqtf@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5363, 'Zjtjt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '阎尚欧', 'Zjtjt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5365, 'Minger', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '纪朝实', 'Minger@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5366, 'Igggr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '诸寒柏', 'Igggr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5367, 'Nfegqgr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '阿琪洋', 'Nfegqgr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5368, 'Sqjftj', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '桓琪洋', 'Sqjftj@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5369, 'Crydqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '鞠金锋', 'Crydqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5370, 'Giiqsiy', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '鲁皓福', 'Giiqsiy@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5371, 'Neeyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '曾靖轩', 'Neeyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5372, 'Hnjyqu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '宰捷杰', 'Hnjyqu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5373, 'Peeqyu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '东皓清', 'Peeqyu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5374, 'Avrqrdyh', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '闫金锋', 'Avrqrdyh@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5375, 'Gxacs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '万新明', 'Gxacs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5376, 'Ajreqs', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '公岩乐', 'Ajreqs@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5377, 'Htuqqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '鄂雨锋', 'Htuqqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5378, 'Qfggre', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '卜尚兴', 'Qfggre@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5379, 'Ltuqqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '倪裕昊', 'Ltuqqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5380, 'Kffee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '袁昌震', 'Kffee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5381, 'Ziocdaz', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '越尚欧', 'Ziocdaz@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5382, 'Caqfgas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '双皓清', 'Caqfgas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5383, 'Ddrww', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郁朝棋', 'Ddrww@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5384, 'Sqqoe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '鄢景尧', 'Sqqoe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5385, 'Xffqee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '房敬易', 'Xffqee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5386, 'Aadewaq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '冀靖轩', 'Aadewaq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5387, 'Yqaqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '子车捷杰', 'Yqaqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5388, 'Uhth', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '虞朝棋', 'Uhth@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5389, 'Ttuqqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郜裕昊', 'Ttuqqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5390, 'Kesff', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '弥智凯', 'Kesff@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5391, 'Ljqqt', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '墨昌震', 'Ljqqt@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5392, 'Xfewi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '卓朝棋', 'Xfewi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5393, 'Vooqics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '危楠明', 'Vooqics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5394, 'Gajbqg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '屋庐皓清', 'Gajbqg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5396, 'Lgruio', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '司楠峻', 'Lgruio@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5397, 'Scgsah', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '蒙雨锋', 'Scgsah@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5398, 'Riur', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '厍皓景', 'Riur@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5399, 'Vfqpkjga', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '山善玮', 'Vfqpkjga@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5400, 'Agedgsqg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '谯朝棋', 'Agedgsqg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5401, 'Lbngqg', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '施雨锋', 'Lbngqg@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5402, 'Sqjfpaklqaas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '乜捷杰', 'Sqjfpaklqaas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5403, 'Ytowqms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '云渊荣', 'Ytowqms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5405, 'Ztqtis', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '邵智凯', 'Ztqtis@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5406, 'Nioqas', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '屠景尧', 'Nioqas@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5407, 'Utauqtq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '公琪哲', 'Utauqtq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5408, 'Zqqoe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '谯楷林', 'Zqqoe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5409, 'Emifass', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '富雄杰', 'Emifass@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5410, 'Mnjyqu', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '湛捷旭', 'Mnjyqu@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5411, 'Ifqhty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '须敬坤', 'Ifqhty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5414, 'Zdbwqd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '越敬轩', 'Zdbwqd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5415, 'Zfegqgr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '老涛光', 'Zfegqgr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5416, 'Fbkyuqi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '庄捷杰', 'Fbkyuqi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5417, 'Ahtrqsz', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '汪涛光', 'Ahtrqsz@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5418, 'Chth', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '有渊荣', 'Chth@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5419, 'Otthi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '易楷林', 'Otthi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5420, 'Pffqee', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '黎景尧', 'Pffqee@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5421, 'Wtuqqaic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '易皓福', 'Wtuqqaic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5422, 'Ktowqms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '杭涛光', 'Ktowqms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5423, 'Kooqck', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '慕容敬轩', 'Kooqck@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5425, 'Hthqgha', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '康昊辉', 'Hthqgha@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5426, 'Uddgdr', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '阚琪哲', 'Uddgdr@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5427, 'Booqics', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '汝敬轩', 'Booqics@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5428, 'Ljdrqw', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '芮金锋', 'Ljdrqw@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5429, 'Wtowqms', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '明金锋', 'Wtowqms@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5431, 'Nahiqp', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '晁乔诚', 'Nahiqp@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5432, 'Bdwqabn', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '火朝实', 'Bdwqabn@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5433, 'Ntuqic', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '司徒乔豪', 'Ntuqic@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5434, 'Pdrwd', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '成涛宇', 'Pdrwd@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5435, 'Ferty', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '郦敬轩', 'Ferty@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5436, 'Ogesqhe', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '乜朝实', 'Ogesqhe@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5437, 'Gbkyuqi', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '崔皓清', 'Gbkyuqi@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5438, 'Qdsid', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '子车靖轩', 'Qdsid@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5439, 'Qvsseq', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '闾丘尚兴', 'Qvsseq@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5441, 'mike', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '麦克儿', 'mike@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5442, 'Jerry', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '杰瑞', 'jerry@qq.com', '2021-08-13 21:32:44');
INSERT INTO `t_admin` VALUES (5443, 'Tetest', '$2a$10$NEmuCvdcyFVeIGqPutzu6O2JHaxVrjqdvhMt.29Q16ptWicCUlsD.', '麦克儿吖', 'Tetest@qq.com', '2021-08-18 15:20:49');
INSERT INTO `t_admin` VALUES (5444, 'Tested', '$2a$10$mBIaQWVxlnvpNQTnaIc6L.pqRNQ21GQvayxL95k2fHoZE6Uv6xlKe', '麦克儿吖', '123@163.com', '2021-08-18 20:10:44');

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
INSERT INTO `t_auth` VALUES (1, '', '用户模块', NULL);
INSERT INTO `t_auth` VALUES (2, 'user:delete', '删除', 1);
INSERT INTO `t_auth` VALUES (3, 'user:get', '查询', 1);
INSERT INTO `t_auth` VALUES (4, 'user:save', '保存', 1);
INSERT INTO `t_auth` VALUES (5, 'user:update', '更新', 1);
INSERT INTO `t_auth` VALUES (6, '', '角色模块', NULL);
INSERT INTO `t_auth` VALUES (7, 'role:delete', '删除', 6);
INSERT INTO `t_auth` VALUES (8, 'role:get', '查询', 6);
INSERT INTO `t_auth` VALUES (9, 'role:add', '新增', 6);
INSERT INTO `t_auth` VALUES (10, 'role:update', '更新', 6);

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
  `authstatus` int(4) NULL DEFAULT NULL COMMENT '实名认证状态 0 - 未实名认证， 1 - 实名认证申\r\n请中， 2 - 已实名认证',
  `usertype` int(4) NULL DEFAULT NULL COMMENT ' 0 - 个人， 1 - 企业',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accttype` int(4) NULL DEFAULT NULL COMMENT '0 - 企业， 1 - 个体， 2 - 个人， 3 - 政府',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `loginacct`(`loginacct`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES (1, 'mike', '$2a$10$BKH1sqBYYiW6w8fyqfo19.SuQq7APo0Q4FvWIDGLArqNITP2h21hW', '杰坷尔', 'email@qq.com', 1, 1, '杰克', '113220', 2);
INSERT INTO `t_member` VALUES (2, 'tomtmomt', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (6, 'mikesssw', '$2a$10$xJOd9yEHVzDCVNOnm5Ir3.41GQKX0ZmymBHVFrlGVuUTkKXySFHXG', '杰坷尔', 'email@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (7, 'mikes123sw', '$2a$10$kiIJ3zDSUyaAjmQw8p4EWuh6RjL6oltnvGhSPFzfX29eoBgMsq39u', '杰坷尔', 'email@qq.com', NULL, NULL, NULL, NULL, NULL);
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
  `memberid` int(11) NULL DEFAULT NULL COMMENT '会员 id',
  `paynum` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '易付宝企业账号',
  `cardnum` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人身份证号',
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
  `memberid` int(11) NULL DEFAULT NULL COMMENT '会员 id',
  `description_simple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简单介绍',
  `description_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细介绍',
  `phone_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `service_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客服电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_member_launch_info
-- ----------------------------
INSERT INTO `t_member_launch_info` VALUES (3, 1, '在下java工程师', '用有顶级光刻机制作团队，但是梦一醒就没了，所以要抓紧时间', '18273299165', '1132209406');
INSERT INTO `t_member_launch_info` VALUES (4, 1, '在下java工程师', '美容团队顶级设计师都没在我们团队，因为养不起', '18273094652', '18273299165');
INSERT INTO `t_member_launch_info` VALUES (5, 1, '在下java工程师', '本团队拥有高端科技人才', '18236956562', '13011779966');
INSERT INTO `t_member_launch_info` VALUES (6, 1, '在下java工程师', '本团队对于手表的制作非常熟悉', '13077006356', '18276995685');
INSERT INTO `t_member_launch_info` VALUES (7, 1, '在下java工程师', '本团队拥有最久远的科技水平', '18273299965', '13022569985');
INSERT INTO `t_member_launch_info` VALUES (8, 1, '在下java工程师', '吾问无为谓', '18236956562', '18273299165');

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
INSERT INTO `t_menu` VALUES (1, NULL, '系统权限菜单', NULL, 'glyphicon\r\nglyphicon-th-list');
INSERT INTO `t_menu` VALUES (2, 1, ' 控 制 面 板 ', 'main.htm', 'glyphicon\r\nglyphicon-dashboard');
INSERT INTO `t_menu` VALUES (3, 1, '权限管理', NULL, 'glyphicon glyphicon\r\nglyphicon-tasks');
INSERT INTO `t_menu` VALUES (4, 3, ' 用 户 维 护 ', 'user/index.htm', 'glyphicon\r\nglyphicon-user');
INSERT INTO `t_menu` VALUES (5, 3, ' 角 色 维 护 ', 'role/index.htm', 'glyphicon\r\nglyphicon-king');
INSERT INTO `t_menu` VALUES (6, 3, ' 菜 单 维 护 ', 'permission/index.htm', 'glyphicon\r\nglyphicon-lock');
INSERT INTO `t_menu` VALUES (7, 1, ' 业 务 审 核 ', NULL, 'glyphicon\r\nglyphicon-ok');
INSERT INTO `t_menu` VALUES (8, 7, '实名认证审核', 'auth_cert/index.htm', 'glyphicon\r\nglyphicon-check');
INSERT INTO `t_menu` VALUES (9, 7, ' 广 告 审 核 ', 'auth_adv/index.htm', 'glyphicon\r\nglyphicon-check');
INSERT INTO `t_menu` VALUES (10, 7, ' 项 目 审 核 ', 'auth_project/index.htm', 'glyphicon\r\nglyphicon-check');
INSERT INTO `t_menu` VALUES (11, 1, ' 业 务 管 理 ', NULL, 'glyphicon\r\nglyphicon-th-large');
INSERT INTO `t_menu` VALUES (12, 11, ' 资 质 维 护 ', 'cert/index.htm', 'glyphicon\r\nglyphicon-picture');
INSERT INTO `t_menu` VALUES (13, 11, ' 分 类 管 理 ', 'certtype/index.htm', 'glyphicon\r\nglyphicon-equalizer');
INSERT INTO `t_menu` VALUES (14, 11, ' 流 程 管 理 ', 'process/index.htm', 'glyphicon\r\nglyphicon-random');
INSERT INTO `t_menu` VALUES (15, 11, ' 广 告 管 理 ', 'advert/index.htm', 'glyphicon\r\nglyphicon-hdd');
INSERT INTO `t_menu` VALUES (16, 11, ' 消 息 模 板 ', 'message/index.htm', 'glyphicon\r\nglyphicon-comment');
INSERT INTO `t_menu` VALUES (17, 11, ' 项 目 分 类 ', 'projectType/index.htm', 'glyphicon\r\nglyphicon-list');
INSERT INTO `t_menu` VALUES (18, 11, ' 项 目 标 签 ', 'tag/index.htm', 'glyphicon\r\nglyphicon-tags');
INSERT INTO `t_menu` VALUES (19, 1, ' 参 数 管 理 ', 'param/index.htm', 'glyphicon\r\nglyphicon-list-alt');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_num` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `pay_order_num` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付宝流水号',
  `order_amount` double(10, 5) NULL DEFAULT NULL COMMENT '订单金额',
  `invoice` int(11) NULL DEFAULT NULL COMMENT '是否开发票（0 不开，1 开）',
  `invoice_title` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票抬头',
  `order_remark` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `address_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址 id',
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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `project_name` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `launch_name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发起人',
  `return_content` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回报内容',
  `return_count` int(11) NULL DEFAULT NULL COMMENT '回报数量',
  `support_price` int(11) NULL DEFAULT NULL COMMENT '支持单价',
  `freight` int(11) NULL DEFAULT NULL COMMENT '配送费用',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单表的主键',
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
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `project_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目描述',
  `money` bigint(11) NULL DEFAULT NULL COMMENT '筹集金额',
  `day` int(11) NULL DEFAULT NULL COMMENT '筹集天数',
  `status` int(4) NULL DEFAULT NULL COMMENT '0-即将开始，1-众筹中，2-众筹成功，3-众筹失败',
  `deploydate` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目发起时间',
  `supportmoney` bigint(11) NULL DEFAULT NULL COMMENT '已筹集到的金额',
  `supporter` int(11) NULL DEFAULT NULL COMMENT '支持人数',
  `completion` int(3) NULL DEFAULT NULL COMMENT '百分比完成度',
  `memberid` int(11) NULL DEFAULT NULL COMMENT '发起人的会员 id',
  `createdate` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目创建时间',
  `follower` int(11) NULL DEFAULT NULL COMMENT '关注人数',
  `header_picture_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头图路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES (8, '光刻机', '这就是光刻机，直接拿下！', 500, 45, 0, '2021-08-24', 54, NULL, NULL, 1, '2021-08-24', NULL, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/ade48de555624b98be03ec1f1a5d02b1.jpg');
INSERT INTO `t_project` VALUES (9, '卡莱自光滑面膜', '光滑柔顺', 400, 30, 0, '2021-08-24', 74, NULL, NULL, 1, '2021-08-24', NULL, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/e1d7201ecd324b799605685ced0d8006.jpg');
INSERT INTO `t_project` VALUES (10, '智能机器人', '高端大气上档次', 996, 95, 0, '2021-08-24', 250, 3, NULL, 1, '2021-08-24', 65, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/33edbf08eccc49c7a2a7a291c78e0664.jpg');
INSERT INTO `t_project` VALUES (11, '小天才手表', '越戴越聪明', 200, 20, 0, '2021-08-24', 43, NULL, NULL, 1, '2021-08-24', NULL, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/ad5ac5431f5548d8a5a3101de4f6018b.jpg');
INSERT INTO `t_project` VALUES (12, '究极降噪耳机', '究极就完事了', 500, 45, 0, '2021-08-20', NULL, NULL, NULL, 1, '2021-08-25', NULL, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210825/6cb8d09866a147608f02d6aa18f5b975.png');
INSERT INTO `t_project` VALUES (13, '正宗老毛太酒', '好酒好久', 500000, 45, 0, '2021-08-20', NULL, NULL, NULL, 1, '2021-08-25', NULL, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210825/341841c2626d4f64887d83f8e52b7621.jpg');

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
  `type` int(4) NULL DEFAULT NULL COMMENT '0 - 实物回报， 1 虚拟物品回报',
  `supportmoney` int(11) NULL DEFAULT NULL COMMENT '支持金额',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回报内容',
  `count` int(11) NULL DEFAULT NULL COMMENT '回报产品限额，“0”为不限回报数量',
  `signalpurchase` int(11) NULL DEFAULT NULL COMMENT '是否设置单笔限购',
  `purchase` int(11) NULL DEFAULT NULL COMMENT '具体限购数量',
  `freight` int(11) NULL DEFAULT NULL COMMENT '运费，“0”为包邮',
  `invoice` int(4) NULL DEFAULT NULL COMMENT '0 - 不开发票， 1 - 开发票',
  `returndate` int(11) NULL DEFAULT NULL COMMENT '项目结束后多少天向支持者发送回报',
  `describ_pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_return
-- ----------------------------
INSERT INTO `t_return` VALUES (3, 8, 1, 50, '虚拟货币', 1, 0, NULL, 10, 1, 20, NULL);
INSERT INTO `t_return` VALUES (4, 9, 0, 60, '电子美容券', 1, 1, 2, 12, 0, 14, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/5fef95dddba647648a5118d81a5448ea.jpg');
INSERT INTO `t_return` VALUES (5, 9, 1, 100, '两张电子美容券 + 自家面膜', 1, 1, 2, 6, 0, 7, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/5fef95dddba647648a5118d81a5448ea.jpg');
INSERT INTO `t_return` VALUES (6, 10, 50, 120, '智能机器人模型', 1, 0, NULL, 12, 1, 14, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/1298be11d3544fe5851a134e03bcbfc3.jpg');
INSERT INTO `t_return` VALUES (7, 10, 100, 240, '智能机器人模型+智能机器人模型制作图纸', 1, 1, 2, 12, 0, 14, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/1298be11d3544fe5851a134e03bcbfc3.jpg');
INSERT INTO `t_return` VALUES (8, 11, 0, 360, '手表模型机', 1, 0, NULL, 0, 1, 23, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210824/b43be3c0429448f8a0d5101b62abfcac.jpg');
INSERT INTO `t_return` VALUES (9, 12, 0, 100, '小天才耳机，带上即扩音', 1, 0, NULL, 0, 1, 7, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210825/910fbeb74233402a849929997d1d0f1f.jpg');
INSERT INTO `t_return` VALUES (10, 13, 0, 50, '我看你积分', 1, 0, NULL, 12, 0, 14, 'http://sdehua.oss-cn-hangzhou.aliyuncs.com/20210825/d521e8f6f87d4b87949e10aeb03c15ba.jpg');

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
INSERT INTO `t_role` VALUES (1, 'PM - 项目经理');
INSERT INTO `t_role` VALUES (2, 'SE - 软件工程师');
INSERT INTO `t_role` VALUES (3, 'PG - 程序员');
INSERT INTO `t_role` VALUES (4, 'TL - 组长');
INSERT INTO `t_role` VALUES (5, 'GL - 组长');
INSERT INTO `t_role` VALUES (6, '	QA - 品质保证');
INSERT INTO `t_role` VALUES (7, '	QC - 品质控制');
INSERT INTO `t_role` VALUES (8, 'SA - 软件架构师');
INSERT INTO `t_role` VALUES (9, 'CMO / CMS - 配置管理员');

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
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, '科技', '开启智慧未来');
INSERT INTO `t_type` VALUES (2, '设计', '创意改变未来');
INSERT INTO `t_type` VALUES (3, '农业', '网络天下肥美');
INSERT INTO `t_type` VALUES (4, '公益', '汇集点滴爱心');

SET FOREIGN_KEY_CHECKS = 1;
