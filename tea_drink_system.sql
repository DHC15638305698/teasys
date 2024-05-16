/*
Navicat MySQL Data Transfer

Source Server         : DHC
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : tea_drink_system

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2023-12-25 09:15:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `easybuy_comment`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_comment`;
CREATE TABLE `easybuy_comment` (
  `EC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EC_CONTENT` varchar(200) NOT NULL,
  `EC_CREATE_TIME` datetime NOT NULL,
  `EC_REPLY` varchar(200) DEFAULT NULL,
  `EC_REPLY_TIME` datetime DEFAULT NULL,
  `EC_NICK_NAME` varchar(10) NOT NULL,
  PRIMARY KEY (`EC_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_comment
-- ----------------------------
INSERT INTO `easybuy_comment` VALUES ('1', '奥利奥蛋糕奶茶七分糖', '2023-12-08 15:43:01', '好的', '2023-12-08 00:00:00', '管理员');
INSERT INTO `easybuy_comment` VALUES ('2', '五分糖 少冰', '2023-12-11 08:36:56', '明白', '2023-12-11 00:00:00', 'admin');

-- ----------------------------
-- Table structure for `easybuy_news`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_news`;
CREATE TABLE `easybuy_news` (
  `EN_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EN_TITLE` varchar(40) NOT NULL,
  `EN_CONTENT` varchar(1000) NOT NULL,
  `EN_CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`EN_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_news
-- ----------------------------
INSERT INTO `easybuy_news` VALUES ('6', '会员注册须知', '会员注册一经本店注册，即是本店会员，概不退款，该活动的最终解释权为维他茶饮店所有', '2023-12-22 13:23:47');
INSERT INTO `easybuy_news` VALUES ('7', '优惠大酬宾', '为回馈新老客户本店推出优惠大酬宾活动：\r\n会员日    买一送一                    会员日为每月1日   15日   30日 \r\n199元/年黄金会员，  消费打九五折\r\n399元/年砖石会员 ，消费打七五折\r\n599元/年至尊会员 ，消费打六折    每年10月可以每天免费领取一杯茶饮\r\n', '2023-11-30 20:01:12');
INSERT INTO `easybuy_news` VALUES ('8', '配送问题', '本店郑重承诺30分钟之内必定将您在本店官网所点的饮品完好无损的送到您的手中，如有超时这单免单，如果饮品在运送过程中出现撒漏情况，双倍退款，并重新补送一杯', '2023-12-08 21:56:37');
INSERT INTO `easybuy_news` VALUES ('9', '备注信息', '对于购买的茶饮如果有特殊要求，请备注', '2023-12-11 09:26:56');

-- ----------------------------
-- Table structure for `easybuy_order`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order`;
CREATE TABLE `easybuy_order` (
  `EO_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_USER_ID` varchar(10) NOT NULL,
  `EO_USER_NAME` varchar(20) DEFAULT NULL,
  `EO_USER_ADDRESS` varchar(200) DEFAULT NULL,
  `EO_CREATE_TIME` datetime NOT NULL,
  `EO_COST` decimal(10,2) NOT NULL,
  `EO_STATUS` decimal(6,0) NOT NULL,
  `EO_TYPE` decimal(6,0) NOT NULL,
  PRIMARY KEY (`EO_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_order
-- ----------------------------
INSERT INTO `easybuy_order` VALUES ('1', 'dhz', '代昊泽', '山东省 泰安市  ', '2023-11-30 23:02:08', '33.00', '5', '1');
INSERT INTO `easybuy_order` VALUES ('2', 'admin', '管理员', '上海 虹口区 上滨大厦 地下2层', '2023-12-07 21:17:09', '50.00', '5', '1');
INSERT INTO `easybuy_order` VALUES ('3', 'admin', '管理员', '上海 虹口区 上滨大厦 地下2层', '2023-12-07 22:36:42', '17.00', '5', '1');
INSERT INTO `easybuy_order` VALUES ('4', 'admin', '管理员', '上海 虹口区 上滨大厦 地下2层', '2023-12-08 15:16:35', '39.00', '5', '1');
INSERT INTO `easybuy_order` VALUES ('5', 'admin', '管理员', '上海 虹口区 上滨大厦 地下2层', '2023-12-08 15:43:56', '78.00', '5', '1');
INSERT INTO `easybuy_order` VALUES ('6', 'admin', '管理员', '上海 虹口区 上滨大厦 地下2层', '2023-12-08 22:15:49', '78.00', '5', '1');
INSERT INTO `easybuy_order` VALUES ('7', 'admin', '管理员', '上海 虹口区 上滨大厦 地下2层', '2023-12-11 08:36:20', '51.00', '5', '1');
INSERT INTO `easybuy_order` VALUES ('8', 'admin', '管理员', '上海 虹口区 上滨大厦 地下2层', '2023-12-11 08:51:58', '159.00', '1', '1');
INSERT INTO `easybuy_order` VALUES ('9', 'admin', '管理员', '上海 虹口区 上滨大厦 地下2层', '2023-12-25 08:28:37', '29.00', '1', '1');

-- ----------------------------
-- Table structure for `easybuy_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order_detail`;
CREATE TABLE `easybuy_order_detail` (
  `EOD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_ID` decimal(10,0) NOT NULL,
  `EP_ID` decimal(10,0) NOT NULL,
  `EOD_QUANTITY` decimal(6,0) NOT NULL,
  `EOD_COST` decimal(10,2) NOT NULL,
  PRIMARY KEY (`EOD_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_order_detail
-- ----------------------------
INSERT INTO `easybuy_order_detail` VALUES ('1', '1', '62', '1', '18.00');
INSERT INTO `easybuy_order_detail` VALUES ('2', '1', '68', '1', '15.00');
INSERT INTO `easybuy_order_detail` VALUES ('3', '2', '76', '1', '50.00');
INSERT INTO `easybuy_order_detail` VALUES ('4', '3', '65', '1', '17.00');
INSERT INTO `easybuy_order_detail` VALUES ('5', '4', '83', '1', '39.00');
INSERT INTO `easybuy_order_detail` VALUES ('6', '5', '83', '2', '78.00');
INSERT INTO `easybuy_order_detail` VALUES ('7', '6', '83', '2', '78.00');
INSERT INTO `easybuy_order_detail` VALUES ('8', '7', '64', '1', '20.00');
INSERT INTO `easybuy_order_detail` VALUES ('9', '7', '101', '1', '2.00');
INSERT INTO `easybuy_order_detail` VALUES ('10', '7', '66', '1', '29.00');
INSERT INTO `easybuy_order_detail` VALUES ('11', '8', '123', '1', '25.00');
INSERT INTO `easybuy_order_detail` VALUES ('12', '8', '89', '1', '65.00');
INSERT INTO `easybuy_order_detail` VALUES ('13', '8', '118', '1', '69.00');
INSERT INTO `easybuy_order_detail` VALUES ('14', '9', '66', '1', '29.00');

-- ----------------------------
-- Table structure for `easybuy_product`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product`;
CREATE TABLE `easybuy_product` (
  `EP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EP_NAME` varchar(128) NOT NULL,
  `EP_DESCRIPTION` varchar(512) DEFAULT NULL,
  `EP_PRICE` decimal(10,2) NOT NULL,
  `EP_STOCK` decimal(10,0) NOT NULL,
  `EPC_ID` decimal(10,0) DEFAULT NULL,
  `EPC_CHILD_ID` decimal(10,0) DEFAULT NULL,
  `EP_FILE_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`EP_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_product
-- ----------------------------
INSERT INTO `easybuy_product` VALUES ('58', '超级苹果茶', '酸酸甜甜', '29.00', '100', '59', '63', 'pygo.jpg');
INSERT INTO `easybuy_product` VALUES ('59', '缤纷果茶', '酸甜可口', '18.00', '100', '59', '63', 'goia.jpg');
INSERT INTO `easybuy_product` VALUES ('60', '什锦茶', '酸甜可口', '20.00', '100', '59', '63', 'go.jpg');
INSERT INTO `easybuy_product` VALUES ('61', '柠檬乳酸菌', '酸酸甜甜', '19.00', '20', '59', '64', 'nymg.jpg');
INSERT INTO `easybuy_product` VALUES ('62', '清爽柠檬茶', '酸甜可口', '18.00', '17', '59', '64', 'ny.jpg');
INSERT INTO `easybuy_product` VALUES ('63', '萌萌很忙', '酸酸甜甜', '16.00', '18', '59', '64', 'mg.jpg');
INSERT INTO `easybuy_product` VALUES ('64', '莓莓乳酸菌', '酸甜可口', '20.00', '18', '61', '65', 'ckmz.jpg');
INSERT INTO `easybuy_product` VALUES ('65', '莓你不行', '奶香十足', '17.00', '99', '61', '65', 'ck.jpg');
INSERT INTO `easybuy_product` VALUES ('66', '草莓奶昔', '酸酸甜甜', '29.00', '17', '61', '65', 'mz.jpg');
INSERT INTO `easybuy_product` VALUES ('67', '芒果奶昔', '芒果味十足', '19.00', '29', '61', '66', 'mhgo.jpg');
INSERT INTO `easybuy_product` VALUES ('68', '芝士芒芒', '芒果味十足', '15.00', '27', '61', '66', 'mh.jpg');
INSERT INTO `easybuy_product` VALUES ('69', '芒里偷闲', '酸甜可口', '17.00', '29', '61', '66', 'mhmh.jpg');
INSERT INTO `easybuy_product` VALUES ('70', '爆晶葡萄', '酸甜可口', '20.00', '28', '59', '64', 'putk.jpg');
INSERT INTO `easybuy_product` VALUES ('71', '芝士葡萄奶盖', '奶香十足', '28.00', '18', '90', '91', 'pu.jpg');
INSERT INTO `easybuy_product` VALUES ('72', '葡萄奶茶', '奶香十足', '20.00', '19', '90', '92', 'tk.jpg');
INSERT INTO `easybuy_product` VALUES ('73', '菁花哈密瓜', '香甜可口', '18.00', '29', '62', '68', 'hamigw.jpg');
INSERT INTO `easybuy_product` VALUES ('74', '哈哈大笑', '酸甜可口', '18.00', '100', '90', '92', 'ha.jpg');
INSERT INTO `easybuy_product` VALUES ('75', '哈密瓜奶茶', '酸酸甜甜', '20.00', '18', '90', '92', 'mi.jpg');
INSERT INTO `easybuy_product` VALUES ('76', '荷砖茯茶', '上品黑茶的口感甘醇或微微发涩，而陈茶则极其润滑，尝过之后唇齿带有甘甜的味道。陈年老黑茶初泡入口甜、润、滑，味厚而不腻，回味甘甜；中期甜纯带爽，入口即化；后期汤色变浅后，茶味仍甜纯，无杂味。', '50.00', '99', '75', '76', 'hzfc.jpg');
INSERT INTO `easybuy_product` VALUES ('77', '西湖龙井', '龙井茶真者，甘香如兰，幽而不冽，啜之淡然，似乎无味。饮过之后，觉有一种太和之气，弥沦齿颊之间，此无味之味，乃至味也。', '65.00', '100', '75', '76', 'xhlj.jpg');
INSERT INTO `easybuy_product` VALUES ('78', '茉莉花茶', '茉莉花茶味道清香、淡雅爽口、滋味鲜醇、回甘明显、柔和明朗、韵味持久，品质上乘者更是口味温和，不苦不涩，滋味纯正无异味，香气浓而不冲，香而长久，芳香扑鼻。', '37.00', '40', '75', '79', 'mlhc.jpg');
INSERT INTO `easybuy_product` VALUES ('79', '帝菊花茶', '帝菊花茶口感独特，具有清香、甘甜、甘润、芳香等特点，能够清热解暑、滋养润燥、清心安神。同时，菊花茶还能增强人体免疫力、帮助消化、促进新陈代谢等作用', '80.00', '15', '75', '79', 'hdj.jpg');
INSERT INTO `easybuy_product` VALUES ('80', '黑糖珍珠', '没有珍珠的奶茶是没有灵魂的', '2.00', '100', '80', '81', 'htzz.jpg');
INSERT INTO `easybuy_product` VALUES ('81', '黑糖珍珠奶茶', '黑糖珍珠口感超级耐斯，嚼起来外表软糯，内里Q弹，黑糖的焦香，奶香的浓郁，越嚼越香甜。', '25.00', '100', '90', '92', 'htzznc.jpg');
INSERT INTO `easybuy_product` VALUES ('82', '蜜桃乌龙奶盖', '  蜜桃清新香甜，唇齿留香；乌龙醇厚回甘，口感润滑', '29.00', '100', '90', '91', 'mtwlng.jpg');
INSERT INTO `easybuy_product` VALUES ('83', '奥利奥蛋糕奶茶', '风味浓郁、挂壁持久性强 添加白砂糖、全脂乳粉等自然食材，科学复配的比例保证粉质细腻、香醇浓厚不会产生腻感，且极易打发，挂壁持久', '39.00', '95', '90', '91', 'olodgnc.jpg');
INSERT INTO `easybuy_product` VALUES ('84', '茉莉绿茶', '，冲泡后汤色黄绿明亮、叶底嫩匀柔软、香气鲜灵持久、滋味醇厚鲜爽', '46.00', '80', '75', '76', 'mllc.jpg');
INSERT INTO `easybuy_product` VALUES ('85', '冻顶乌龙茶', '冲泡后，茶汤金黄，偏琥珀色，带熟果香或浓花香，味醇厚甘润，喉韵回甘十足，带明显焙火韵味。', '29.00', '15', '75', '76', 'wulong.jpg');
INSERT INTO `easybuy_product` VALUES ('86', '蜂蜜柚子茶', '蜂蜜柚子茶不仅是味道清香可口，更是一款有美白祛斑、嫩肤养颜功效的食品', '9.00', '50', '59', '64', 'fmyz.jpg');
INSERT INTO `easybuy_product` VALUES ('87', '茉香奶绿', '茉香奶绿口味的乳茶口感比奶茶店售卖的奶茶更适合我的口味，甜度适中，淡飘茶香，口感细腻丝滑，百喝不腻！', '26.00', '30', '90', '92', 'mxnl.jpg');
INSERT INTO `easybuy_product` VALUES ('88', '抹茶奶绿', '抹茶奶绿是以绿茶为主料，淡奶油或牛奶为辅料的饮品，清香可口、清爽解腻。', '25.00', '49', '90', '93', 'mcnl.jpg');
INSERT INTO `easybuy_product` VALUES ('89', '玫瑰花茶', '玫瑰花茶具有行气活血、调和脏腑的功效，经常饮用不仅能够让黯淡的 面色逐渐红润起来，对面部一些色斑也有明显的改善作用。', '65.00', '49', '75', '79', 'mghc.jpg');
INSERT INTO `easybuy_product` VALUES ('90', '栀子花茶', '栀子花绿茶香气鲜浓，茶汤莹亮清澈，滋味醇爽回甘，茶汤清澈绿亮，叶底明亮鲜绿，用来搭配饮品是个不错的选择！', '16.00', '100', '75', '79', 'zzhc.jpg');
INSERT INTO `easybuy_product` VALUES ('91', '柠檬水', '酸甜可口', '6.00', '100', '59', '64', 'nms.jpg');
INSERT INTO `easybuy_product` VALUES ('92', '柠檬红茶', '将新鲜柠檬提汁融于红茶之中，不仅增强了茶叶的鲜爽口感，还含有丰富的维生素C，使茶味更为清甜鲜爽，果香浓郁。', '18.00', '100', '59', '64', 'nmhc.jpg');
INSERT INTO `easybuy_product` VALUES ('93', '抹茶红豆奶茶', '虽然茶苦且抹茶粉的味道其实是有点腥的，但是冰块融化和淡奶冲淡了苦味，而且本来糖渍红豆就还挺甜的，不加糖反而令整杯饮品显得不腻，苦味和甜味层次明显，非常好喝。', '15.00', '50', '90', '93', 'mchd.jpg');
INSERT INTO `easybuy_product` VALUES ('94', '甜橙炒酸奶', '酸奶本身甜度不高，橙子果酱酸酸甜甜的，橙子味很浓郁不假甜很清新，喜欢橙子味道的一定会很喜欢这款酸奶', '28.00', '50', '61', '94', 'tccsn.jpg');
INSERT INTO `easybuy_product` VALUES ('95', '西瓜炒酸奶', '西瓜的清凉和酸奶的酸甜相结合，给人一种惊喜的感受。西瓜的甜味被炒制后更加浓郁，而酸奶则为整道菜增添了丰富的酸味和奶香。', '28.00', '50', '61', '94', 'xgcsn.jpg');
INSERT INTO `easybuy_product` VALUES ('96', '水果拼盘炒酸奶', '水果与酸奶的深度融合', '35.00', '100', '61', '94', 'sgppcsn.jpeg');
INSERT INTO `easybuy_product` VALUES ('97', '椰果', '', '2.00', '100', '80', '81', 'yg.jpg');
INSERT INTO `easybuy_product` VALUES ('98', '布丁', '', '2.00', '100', '80', '81', 'bd.jpg');
INSERT INTO `easybuy_product` VALUES ('99', '啵啵', '', '2.00', '100', '80', '81', 'bb.jpg');
INSERT INTO `easybuy_product` VALUES ('100', '茶冻', '', '28.00', '100', '84', '85', 'cd.jpg');
INSERT INTO `easybuy_product` VALUES ('101', '仙草', '', '2.00', '99', '80', '81', 'xc.jpg');
INSERT INTO `easybuy_product` VALUES ('102', '红豆', '', '2.00', '100', '80', '82', 'hd.jpg');
INSERT INTO `easybuy_product` VALUES ('103', '芋圆', '', '2.00', '100', '80', '82', 'yu.jpg');
INSERT INTO `easybuy_product` VALUES ('104', '花生碎', '', '2.00', '100', '80', '82', 'hss.jpg');
INSERT INTO `easybuy_product` VALUES ('105', '葡萄干', '', '2.00', '100', '80', '82', 'ptg.jpg');
INSERT INTO `easybuy_product` VALUES ('106', '冰糖', '', '2.00', '100', '80', '83', 'bt.jpg');
INSERT INTO `easybuy_product` VALUES ('107', '老冰糖', '', '2.00', '100', '80', '83', 'hbt.jpg');
INSERT INTO `easybuy_product` VALUES ('108', '方糖', '', '2.00', '100', '80', '83', 'ft.jpg');
INSERT INTO `easybuy_product` VALUES ('109', '桂花糕', '', '42.00', '100', '84', '85', 'ghg.jpg');
INSERT INTO `easybuy_product` VALUES ('110', '榛子酥', '', '55.00', '100', '84', '85', 'zzs.jpg');
INSERT INTO `easybuy_product` VALUES ('111', '青团', '', '28.00', '100', '84', '85', 'qt.jpg');
INSERT INTO `easybuy_product` VALUES ('112', '桃花糕', '', '55.00', '100', '84', '85', 'thg.jpg');
INSERT INTO `easybuy_product` VALUES ('113', '桃酥', '', '25.00', '100', '84', '85', 'ts.jpg');
INSERT INTO `easybuy_product` VALUES ('114', '草莓酸奶盒子蛋糕', '', '43.00', '20', '84', '86', 'cmsnhzdg.jpg');
INSERT INTO `easybuy_product` VALUES ('115', '益生菌蛋糕', '', '45.00', '20', '84', '86', 'ysjdg.jpg');
INSERT INTO `easybuy_product` VALUES ('116', '香草冰淇淋蛋糕', '', '98.00', '20', '84', '86', 'xcbqldg.jpg');
INSERT INTO `easybuy_product` VALUES ('117', '红丝绒蛋糕', '', '45.00', '20', '84', '86', 'hsrdg.jpg');
INSERT INTO `easybuy_product` VALUES ('118', '瑞士卷', '', '69.00', '19', '84', '85', 'rsj.jpg');
INSERT INTO `easybuy_product` VALUES ('119', '凤梨汁', '', '9.00', '100', '95', '96', 'flz.jpg');
INSERT INTO `easybuy_product` VALUES ('120', '苹果猕猴桃汁', '', '19.00', '100', '95', '96', 'pgmht.jpg');
INSERT INTO `easybuy_product` VALUES ('121', '西瓜汁', '', '19.00', '20', '95', '97', 'xgz.jpg');
INSERT INTO `easybuy_product` VALUES ('122', '葡萄汁', '', '20.00', '20', '95', '97', 'ptz.jpg');
INSERT INTO `easybuy_product` VALUES ('123', '石榴汁', '', '25.00', '19', '95', '97', 'slz.jpg');
INSERT INTO `easybuy_product` VALUES ('124', '甘蔗汁', '', '26.00', '20', '95', '97', 'gzz.jpg');
INSERT INTO `easybuy_product` VALUES ('125', '卡布奇诺', '', '60.00', '100', '98', '99', '181212089683.jpg');

-- ----------------------------
-- Table structure for `easybuy_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product_category`;
CREATE TABLE `easybuy_product_category` (
  `EPC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EPC_NAME` varchar(20) NOT NULL,
  `EPC_PARENT_ID` decimal(10,0) NOT NULL,
  PRIMARY KEY (`EPC_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_product_category
-- ----------------------------
INSERT INTO `easybuy_product_category` VALUES ('59', '果茶', '0');
INSERT INTO `easybuy_product_category` VALUES ('61', '奶昔', '0');
INSERT INTO `easybuy_product_category` VALUES ('62', '奶茶', '62');
INSERT INTO `easybuy_product_category` VALUES ('63', '苹果味果茶', '59');
INSERT INTO `easybuy_product_category` VALUES ('64', '柠檬味果茶', '59');
INSERT INTO `easybuy_product_category` VALUES ('65', '草莓奶昔', '61');
INSERT INTO `easybuy_product_category` VALUES ('66', '芒果奶昔', '61');
INSERT INTO `easybuy_product_category` VALUES ('67', '葡萄奶茶', '62');
INSERT INTO `easybuy_product_category` VALUES ('68', '哈密瓜奶茶', '62');
INSERT INTO `easybuy_product_category` VALUES ('69', '绿茶', '69');
INSERT INTO `easybuy_product_category` VALUES ('75', '纯茶', '0');
INSERT INTO `easybuy_product_category` VALUES ('76', '绿茶', '75');
INSERT INTO `easybuy_product_category` VALUES ('78', '小料', '78');
INSERT INTO `easybuy_product_category` VALUES ('79', '花茶', '75');
INSERT INTO `easybuy_product_category` VALUES ('80', '小料', '0');
INSERT INTO `easybuy_product_category` VALUES ('81', '果茶类', '80');
INSERT INTO `easybuy_product_category` VALUES ('82', '奶昔类', '80');
INSERT INTO `easybuy_product_category` VALUES ('83', '纯茶类', '80');
INSERT INTO `easybuy_product_category` VALUES ('84', '零食', '0');
INSERT INTO `easybuy_product_category` VALUES ('85', '点心', '84');
INSERT INTO `easybuy_product_category` VALUES ('86', '蛋糕', '84');
INSERT INTO `easybuy_product_category` VALUES ('90', '奶茶', '0');
INSERT INTO `easybuy_product_category` VALUES ('91', '奶盖', '90');
INSERT INTO `easybuy_product_category` VALUES ('92', '奶茶', '90');
INSERT INTO `easybuy_product_category` VALUES ('93', '抹茶', '90');
INSERT INTO `easybuy_product_category` VALUES ('94', '炒酸奶', '61');
INSERT INTO `easybuy_product_category` VALUES ('95', '果汁', '0');
INSERT INTO `easybuy_product_category` VALUES ('96', '调和果汁', '95');
INSERT INTO `easybuy_product_category` VALUES ('97', '鲜榨果汁', '95');
INSERT INTO `easybuy_product_category` VALUES ('98', '咖啡', '0');
INSERT INTO `easybuy_product_category` VALUES ('99', '奶类咖啡', '98');

-- ----------------------------
-- Table structure for `easybuy_shop`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_shop`;
CREATE TABLE `easybuy_shop` (
  `es_id` int(11) NOT NULL AUTO_INCREMENT,
  `es_ep_file_name` varchar(128) DEFAULT NULL,
  `es_ep_name` varchar(64) DEFAULT NULL,
  `es_ep_price` decimal(10,0) DEFAULT NULL,
  `es_eod_quantity` int(11) DEFAULT NULL,
  `es_ep_stock` int(11) DEFAULT NULL,
  `es_ep_id` int(11) DEFAULT NULL,
  `es_eu_user_id` varchar(64) DEFAULT NULL,
  `es_valid` int(11) DEFAULT NULL,
  PRIMARY KEY (`es_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_shop
-- ----------------------------
INSERT INTO `easybuy_shop` VALUES ('1', 'mh.jpg', '芝士芒芒', '15', '1', '28', '68', 'dhz', '2');
INSERT INTO `easybuy_shop` VALUES ('2', 'ny.jpg', '清爽柠檬茶', '18', '1', '18', '62', 'dhz', '2');
INSERT INTO `easybuy_shop` VALUES ('3', 'hzfc.jpg', '荷砖茯茶', '50', '1', '100', '76', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('4', 'ck.jpg', '莓你不行', '17', '1', '100', '65', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('6', 'olodgnc.jpg', '奥利奥蛋糕奶茶', '39', '1', '100', '83', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('7', 'olodgnc.jpg', '奥利奥蛋糕奶茶', '39', '2', '99', '83', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('8', 'olodgnc.jpg', '奥利奥蛋糕奶茶', '39', '2', '97', '83', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('9', 'mz.jpg', '草莓奶昔', '29', '1', '19', '66', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('10', 'xc.jpg', '仙草', '2', '1', '100', '101', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('11', 'ckmz.jpg', '莓莓乳酸菌', '20', '1', '19', '64', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('12', 'rsj.jpg', '瑞士卷', '69', '1', '20', '118', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('13', 'mghc.jpg', '玫瑰花茶', '65', '1', '50', '89', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('14', 'slz.jpg', '石榴汁', '25', '1', '20', '123', 'admin', '2');
INSERT INTO `easybuy_shop` VALUES ('15', 'mz.jpg', '草莓奶昔', '29', '1', '18', '66', 'admin', '2');

-- ----------------------------
-- Table structure for `easybuy_user`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_user`;
CREATE TABLE `easybuy_user` (
  `EU_USER_ID` varchar(32) NOT NULL,
  `EU_USER_NAME` varchar(20) NOT NULL,
  `EU_PASSWORD` varchar(20) NOT NULL,
  `EU_SEX` varchar(1) DEFAULT NULL,
  `EU_BIRTHDAY` datetime DEFAULT NULL,
  `EU_IDENTITY_CODE` varchar(60) DEFAULT NULL,
  `EU_EMAIL` varchar(80) DEFAULT NULL,
  `EU_MOBILE` varchar(11) DEFAULT NULL,
  `EU_ADDRESS` varchar(200) DEFAULT NULL,
  `EU_COURTY` varchar(200) DEFAULT NULL,
  `EU_LIKE` varchar(200) DEFAULT NULL,
  `EU_STATUS` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`EU_USER_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_user
-- ----------------------------
INSERT INTO `easybuy_user` VALUES ('admin', '管理员', '123456', 'T', '2023-12-16 16:00:00', null, 'Dhc15638305698@qq.com', '16650332181', '上海 虹口区 上滨大厦 地下2层', null, null, '2');
INSERT INTO `easybuy_user` VALUES ('dhz', '代昊泽', '147258qwe', 'T', '2023-11-30 20:10:01', null, '14142214551@qq.com', '14725836978', '山东省 泰安市  ', null, null, '3');
INSERT INTO `easybuy_user` VALUES ('user', '代昊宸', '123456', 'T', '2003-11-09 00:00:00', null, '908355138@qq.com', '15638305698', '河南省驻马店市西平县', null, null, '1');
INSERT INTO `easybuy_user` VALUES ('君陌', '君陌', '456789', 'T', '2023-12-09 17:01:54', null, '123456789@qq.com', null, null, null, null, '5');
INSERT INTO `easybuy_user` VALUES ('柏麟', '柏麟', '123456', 'T', '2023-12-09 16:58:21', null, 'BL123456789@136.com', '12345678912', '河南省新乡市长垣县', null, null, '4');
INSERT INTO `easybuy_user` VALUES ('风寒星宸', '风寒星宸', '123456', 'T', '2023-12-09 17:07:11', null, null, null, null, null, null, null);
