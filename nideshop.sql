SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for nideshop_assessment
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_assessment`;
CREATE TABLE `nideshop_assessment` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `image_url` text NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_classes
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_classes`;
CREATE TABLE `nideshop_classes` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classes_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `image_url` text NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_ad
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_ad`;
CREATE TABLE `nideshop_ad` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ad_position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `image_url` text NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position_id` (`ad_position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_ad_position
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_ad_position`;
CREATE TABLE `nideshop_ad_position` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_ad_position
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_ad_position` VALUES (1, '移动端首页轮播广告', 750, 200, '');
COMMIT;

-- ----------------------------
-- Table structure for nideshop_address
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_address`;
CREATE TABLE `nideshop_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `country_id` smallint(5) NOT NULL DEFAULT '0',
  `province_id` smallint(5) NOT NULL DEFAULT '0',
  `city_id` smallint(5) NOT NULL DEFAULT '0',
  `district_id` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_admin
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_admin`;
CREATE TABLE `nideshop_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL DEFAULT '''''',
  `password` varchar(255) NOT NULL DEFAULT '''''',
  `password_salt` varchar(255) NOT NULL DEFAULT '''''',
  `last_login_ip` varchar(60) NOT NULL DEFAULT '''''',
  `last_login_time` int(11) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '''''',
  `admin_role_id` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_admin
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_admin` VALUES (1, 'admin', 'e244153af45d0e86620e08daa58e8ea4', 'ABCDEF', '::ffff:127.0.0.1', 1505484711, 0, 0, '\'\'', 0, 17318613875, 1);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_attribute
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_attribute`;
CREATE TABLE `nideshop_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `values` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`attribute_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_attribute_category
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_attribute_category`;
CREATE TABLE `nideshop_attribute_category` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_brand
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_brand`;
CREATE TABLE `nideshop_brand` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `list_pic_url` varchar(255) NOT NULL DEFAULT '',
  `simple_desc` varchar(255) NOT NULL DEFAULT '',
  `pic_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `floor_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `app_list_pic_url` varchar(255) NOT NULL DEFAULT '',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `new_pic_url` varchar(255) NOT NULL DEFAULT '',
  `new_sort_order` tinyint(2) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`),
  KEY `is_show` (`is_show`)
) ENGINE=InnoDB AUTO_INCREMENT=1046012 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_cart
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_cart`;
CREATE TABLE `nideshop_cart` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `retail_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_specifition_name_value` text NOT NULL COMMENT '规格属性组成的字符串，用来显示用',
  `goods_specifition_ids` varchar(60) NOT NULL DEFAULT '' COMMENT 'product表对应的goods_specifition_ids',
  `checked` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `list_pic_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_category
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_category`;
CREATE TABLE `nideshop_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `front_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `show_index` tinyint(1) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `banner_url` varchar(255) NOT NULL DEFAULT '',
  `icon_url` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `wap_banner_url` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `front_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1036008 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_channel
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_channel`;
CREATE TABLE `nideshop_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `icon_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(4) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_collect
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_collect`;
CREATE TABLE `nideshop_collect` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是关注',
  `type_id` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`value_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_comment
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_comment`;
CREATE TABLE `nideshop_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `content` varchar(6550) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '储存为base64编码',
  `add_time` bigint(12) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `new_content` varchar(6550) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id_value` (`value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for nideshop_comment_picture
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_comment_picture`;
CREATE TABLE `nideshop_comment_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pic_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1121 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_coupon
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_coupon`;
CREATE TABLE `nideshop_coupon` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_coupon
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_coupon` VALUES (1, '用户红包', 2.00, 0, 0.00, 0.00, 1242057600, 1244736000, 1242057600, 1250006400, 500.00);
INSERT INTO `nideshop_coupon` VALUES (2, '商品红包', 10.00, 1, 0.00, 0.00, 1241971200, 1250352000, 1242057600, 1250006400, 500.00);
INSERT INTO `nideshop_coupon` VALUES (3, '订单红包', 20.00, 2, 1500.00, 0.00, 1242057600, 1309363200, 1242057600, 1257955200, 800.00);
INSERT INTO `nideshop_coupon` VALUES (4, '线下红包', 5.00, 3, 0.00, 0.00, 1242057600, 1244736000, 1242057600, 1255449600, 360.00);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_feedback
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_feedback`;
CREATE TABLE `nideshop_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_footprint
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_footprint`;
CREATE TABLE `nideshop_footprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_goods
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_goods`;
CREATE TABLE `nideshop_goods` (
  `id` int(11) unsigned NOT NULL,
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `brand_id` int(11) unsigned NOT NULL DEFAULT '0',
  `goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text,
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attribute_category` int(11) unsigned NOT NULL DEFAULT '0',
  `counter_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '专柜价格',
  `extra_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '附加价格',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `goods_unit` varchar(45) NOT NULL COMMENT '商品单位',
  `primary_pic_url` varchar(255) NOT NULL COMMENT '商品主图',
  `list_pic_url` varchar(255) NOT NULL COMMENT '商品列表图',
  `retail_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '零售价格',
  `sell_volume` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '销售量',
  `primary_product_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '主sku　product_id',
  `unit_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单位价格，单价',
  `promotion_desc` varchar(255) NOT NULL,
  `promotion_tag` varchar(45) NOT NULL,
  `app_exclusive_price` decimal(10,2) unsigned NOT NULL COMMENT 'APP专享价',
  `is_app_exclusive` tinyint(1) unsigned NOT NULL COMMENT '是否是APP专属',
  `is_limited` tinyint(1) unsigned NOT NULL,
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`category_id`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_goods_attribute`;
CREATE TABLE `nideshop_goods_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `attribute_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=872 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_goods_gallery
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_goods_gallery`;
CREATE TABLE `nideshop_goods_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=681 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_goods_issue
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_goods_issue`;
CREATE TABLE `nideshop_goods_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` text,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_goods_specification
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_goods_specification`;
CREATE TABLE `nideshop_goods_specification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `specification_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(50) NOT NULL DEFAULT '',
  `pic_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `specification_id` (`specification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='商品对应规格表值表';

-- ----------------------------
-- Table structure for nideshop_keywords
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_keywords`;
CREATE TABLE `nideshop_keywords` (
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '100',
  `scheme _url` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词的跳转链接',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='热闹关键词表';

-- ----------------------------
-- Records of nideshop_keywords
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_keywords` VALUES ('520元礼包抢先领', 1, 1, 1, 1, '', 1, 0);
INSERT INTO `nideshop_keywords` VALUES ('单鞋', 0, 0, 1, 8, '', 7, 0);
INSERT INTO `nideshop_keywords` VALUES ('墨镜', 0, 0, 1, 5, '', 5, 0);
INSERT INTO `nideshop_keywords` VALUES ('夏凉被', 0, 0, 1, 100, '', 6, 0);
INSERT INTO `nideshop_keywords` VALUES ('新品上市', 0, 0, 1, 100, '', 4, 0);
INSERT INTO `nideshop_keywords` VALUES ('日式', 0, 0, 1, 100, '', 3, 0);
INSERT INTO `nideshop_keywords` VALUES ('母亲节', 0, 0, 1, 100, '', 2, 0);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_order
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_order`;
CREATE TABLE `nideshop_order` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `actual_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际需要支付的金额',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(11) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(11) unsigned NOT NULL DEFAULT '0',
  `freight_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送费用',
  `coupon_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '使用的优惠券id',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `coupon_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `callback_status` enum('true','false') DEFAULT 'true',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `pay_id` (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_order_express
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_order_express`;
CREATE TABLE `nideshop_order_express` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `shipper_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `shipper_name` varchar(120) NOT NULL DEFAULT '' COMMENT '物流公司名称',
  `shipper_code` varchar(60) NOT NULL DEFAULT '' COMMENT '物流公司代码',
  `logistic_code` varchar(20) NOT NULL DEFAULT '' COMMENT '快递单号',
  `traces` varchar(2000) NOT NULL DEFAULT '' COMMENT '物流跟踪信息',
  `is_finish` tinyint(1) NOT NULL DEFAULT '0',
  `request_count` int(11) DEFAULT '0' COMMENT '总查询次数',
  `request_time` int(11) DEFAULT '0' COMMENT '最近一次向第三方查询物流信息时间',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='订单物流信息表，发货时生成';

-- ----------------------------
-- Table structure for nideshop_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_order_goods`;
CREATE TABLE `nideshop_order_goods` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `retail_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_specifition_name_value` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `goods_specifition_ids` varchar(255) NOT NULL DEFAULT '',
  `list_pic_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_product
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_product`;
CREATE TABLE `nideshop_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_specification_ids` varchar(50) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `retail_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_region
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_region`;
CREATE TABLE `nideshop_region` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(120) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4044 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_related_goods
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_related_goods`;
CREATE TABLE `nideshop_related_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `related_goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_search_history
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_search_history`;
CREATE TABLE `nideshop_search_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(50) NOT NULL,
  `from` varchar(45) NOT NULL DEFAULT '' COMMENT '搜索来源，如PC、小程序、APP等',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '搜索时间',
  `user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_search_history
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_search_history` VALUES (23, '母亲节', '', 1500564813, '1');
INSERT INTO `nideshop_search_history` VALUES (24, '日式', '', 1500564816, '1');
INSERT INTO `nideshop_search_history` VALUES (25, '日式', '', 1500564822, '1');
INSERT INTO `nideshop_search_history` VALUES (26, '清新', '', 1500564835, '1');
INSERT INTO `nideshop_search_history` VALUES (27, '日式', '', 1500638161, '1');
COMMIT;

-- ----------------------------
-- Table structure for nideshop_shipper
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_shipper`;
CREATE TABLE `nideshop_shipper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '快递公司名称',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '快递公司代码',
  `sort_order` int(11) NOT NULL DEFAULT '10' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nideshop_shipper_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='快递公司';

-- ----------------------------
-- Records of nideshop_shipper
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_shipper` VALUES (1, '顺丰速运', 'SF', 1);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_specification
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_specification`;
CREATE TABLE `nideshop_specification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='规格表';

-- ----------------------------
-- Records of nideshop_specification
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_specification` VALUES (1, '颜色', 1);
INSERT INTO `nideshop_specification` VALUES (2, '规格', 2);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_topic
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_topic`;
CREATE TABLE `nideshop_topic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `content` text,
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `item_pic_url` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '''',
  `topic_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `price_info` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `read_count` varchar(255) NOT NULL DEFAULT '0',
  `scene_pic_url` varchar(255) NOT NULL DEFAULT '',
  `topic_template_id` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_tag_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '100',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `topic_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_topic_category
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_topic_category`;
CREATE TABLE `nideshop_topic_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `pic_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_user
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_user`;
CREATE TABLE `nideshop_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0',
  `register_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` varchar(255) NOT NULL DEFAULT '',
  `user_level_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(60) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `register_ip` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `weixin_openid` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_user_coupon`;
CREATE TABLE `nideshop_user_coupon` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `coupon_number` varchar(20) NOT NULL DEFAULT '',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for nideshop_user_level
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_user_level`;
CREATE TABLE `nideshop_user_level` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_user_level
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_user_level` VALUES (1, '普通用户', '0');
INSERT INTO `nideshop_user_level` VALUES (2, 'vip', '10000');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
