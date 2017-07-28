/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : fhadmin1

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-05-17 08:59:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_omsslog`
-- ----------------------------
DROP TABLE IF EXISTS `admin_omsslog`;
CREATE TABLE `admin_omsslog` (
  `OMSSLOG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `OMSS_USERID` varchar(100) DEFAULT NULL,
  `OMSS_USERNAME` varchar(50) DEFAULT NULL,
  `CREATE_DATE` varchar(32) DEFAULT NULL,
  `OPERATE_TYPE` varchar(255) DEFAULT NULL,
  `BUSINESS` varchar(255) DEFAULT NULL,
  `OPERATE_RESULT` varchar(255) DEFAULT NULL,
  `OPERATE_CONTENT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OMSSLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_omsslog
-- ----------------------------

-- ----------------------------
-- Table structure for `admin_onlinelog`
-- ----------------------------
DROP TABLE IF EXISTS `admin_onlinelog`;
CREATE TABLE `admin_onlinelog` (
  `ONLINE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ONLINE_USERID` varchar(100) DEFAULT NULL,
  `ONLINE_USERNAME` varchar(50) DEFAULT NULL,
  `BEGIN_DATE` varchar(32) DEFAULT NULL,
  `END_DATE` varchar(50) DEFAULT NULL,
  `ONLINE_COUNTE` varchar(50) DEFAULT NULL,
  `USER_IP` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ONLINE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_onlinelog
-- ----------------------------

-- ----------------------------
-- Table structure for `area`
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CHINA_REFERENCE_AREA` (`pid`),
  CONSTRAINT `FK_CHINA_REFERENCE_AREA` FOREIGN KEY (`pid`) REFERENCES `area` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('0', '中国', '0');
INSERT INTO `area` VALUES ('100000', '北京', '0');
INSERT INTO `area` VALUES ('100001', '天津', '0');
INSERT INTO `area` VALUES ('100002', '上海', '0');
INSERT INTO `area` VALUES ('100003', '重庆', '0');
INSERT INTO `area` VALUES ('110000', '北京辖区', '100000');
INSERT INTO `area` VALUES ('110100', '东城区', '110000');
INSERT INTO `area` VALUES ('110200', '西城区', '110000');
INSERT INTO `area` VALUES ('110500', '朝阳区', '110000');
INSERT INTO `area` VALUES ('110600', '丰台区', '110000');
INSERT INTO `area` VALUES ('110700', '石景山区', '110000');
INSERT INTO `area` VALUES ('110800', '海淀区', '110000');
INSERT INTO `area` VALUES ('110900', '门头沟区', '110000');
INSERT INTO `area` VALUES ('111100', '房山区', '110000');
INSERT INTO `area` VALUES ('111200', '通州区', '110000');
INSERT INTO `area` VALUES ('111300', '顺义区', '110000');
INSERT INTO `area` VALUES ('111400', '昌平区', '110000');
INSERT INTO `area` VALUES ('111500', '大兴区', '110000');
INSERT INTO `area` VALUES ('111600', '怀柔区', '110000');
INSERT INTO `area` VALUES ('111700', '平谷区', '110000');
INSERT INTO `area` VALUES ('112800', '密云县', '110000');
INSERT INTO `area` VALUES ('112900', '延庆县', '110000');
INSERT INTO `area` VALUES ('120000', '天津辖区', '100001');
INSERT INTO `area` VALUES ('120100', '和平区', '120000');
INSERT INTO `area` VALUES ('120200', '河东区', '120000');
INSERT INTO `area` VALUES ('120300', '河西区', '120000');
INSERT INTO `area` VALUES ('120400', '南开区', '120000');
INSERT INTO `area` VALUES ('120500', '河北区', '120000');
INSERT INTO `area` VALUES ('120600', '红桥区', '120000');
INSERT INTO `area` VALUES ('120900', '滨海新区', '120000');
INSERT INTO `area` VALUES ('121000', '东丽区', '120000');
INSERT INTO `area` VALUES ('121100', '西青区', '120000');
INSERT INTO `area` VALUES ('121200', '津南区', '120000');
INSERT INTO `area` VALUES ('121300', '北辰区', '120000');
INSERT INTO `area` VALUES ('121400', '武清区', '120000');
INSERT INTO `area` VALUES ('121500', '宝坻区', '120000');
INSERT INTO `area` VALUES ('122100', '宁河县', '120000');
INSERT INTO `area` VALUES ('122300', '静海县', '120000');
INSERT INTO `area` VALUES ('122500', '蓟县', '120000');
INSERT INTO `area` VALUES ('130000', '河北', '0');
INSERT INTO `area` VALUES ('130100', '石家庄市', '130000');
INSERT INTO `area` VALUES ('130101', '市辖区', '130100');
INSERT INTO `area` VALUES ('130102', '长安区', '130100');
INSERT INTO `area` VALUES ('130103', '桥东区', '130100');
INSERT INTO `area` VALUES ('130104', '桥西区', '130100');
INSERT INTO `area` VALUES ('130105', '新华区', '130100');
INSERT INTO `area` VALUES ('130107', '井陉矿区', '130100');
INSERT INTO `area` VALUES ('130108', '裕华区', '130101');
INSERT INTO `area` VALUES ('130121', '井陉县', '130100');
INSERT INTO `area` VALUES ('130123', '正定县', '130100');
INSERT INTO `area` VALUES ('130124', '栾城县', '130100');
INSERT INTO `area` VALUES ('130125', '行唐县', '130100');
INSERT INTO `area` VALUES ('130126', '灵寿县', '130100');
INSERT INTO `area` VALUES ('130127', '高邑县', '130100');
INSERT INTO `area` VALUES ('130128', '深泽县', '130100');
INSERT INTO `area` VALUES ('130129', '赞皇县', '130100');
INSERT INTO `area` VALUES ('130130', '无极县', '130100');
INSERT INTO `area` VALUES ('130131', '平山县', '130100');
INSERT INTO `area` VALUES ('130132', '元氏县', '130100');
INSERT INTO `area` VALUES ('130133', '赵县', '130100');
INSERT INTO `area` VALUES ('130181', '辛集市', '130100');
INSERT INTO `area` VALUES ('130182', '藁城市', '130100');
INSERT INTO `area` VALUES ('130183', '晋州市', '130100');
INSERT INTO `area` VALUES ('130184', '新乐市', '130100');
INSERT INTO `area` VALUES ('130185', '鹿泉市', '130100');
INSERT INTO `area` VALUES ('130200', '唐山市', '130000');
INSERT INTO `area` VALUES ('130201', '市辖区', '130200');
INSERT INTO `area` VALUES ('130202', '路南区', '130201');
INSERT INTO `area` VALUES ('130203', '路北区', '130201');
INSERT INTO `area` VALUES ('130204', '古冶区', '130201');
INSERT INTO `area` VALUES ('130205', '开平区', '130201');
INSERT INTO `area` VALUES ('130207', '丰南区', '130201');
INSERT INTO `area` VALUES ('130208', '丰润区', '130201');
INSERT INTO `area` VALUES ('130223', '滦县', '130200');
INSERT INTO `area` VALUES ('130224', '滦南县', '130200');
INSERT INTO `area` VALUES ('130225', '乐亭县', '130200');
INSERT INTO `area` VALUES ('130227', '迁西县', '130200');
INSERT INTO `area` VALUES ('130229', '玉田县', '130200');
INSERT INTO `area` VALUES ('130230', '唐海县', '130200');
INSERT INTO `area` VALUES ('130281', '遵化市', '130200');
INSERT INTO `area` VALUES ('130283', '迁安市', '130200');
INSERT INTO `area` VALUES ('130300', '秦皇岛市', '130000');
INSERT INTO `area` VALUES ('130301', '海港区', '130300');
INSERT INTO `area` VALUES ('130303', '山海关区', '130300');
INSERT INTO `area` VALUES ('130304', '北戴河区', '130300');
INSERT INTO `area` VALUES ('130321', '青龙满族自治县', '130300');
INSERT INTO `area` VALUES ('130322', '昌黎县', '130300');
INSERT INTO `area` VALUES ('130323', '抚宁县', '130300');
INSERT INTO `area` VALUES ('130324', '卢龙县', '130300');
INSERT INTO `area` VALUES ('130400', '邯郸市', '130000');
INSERT INTO `area` VALUES ('130401', '市辖区', '130400');
INSERT INTO `area` VALUES ('130402', '邯山区', '130401');
INSERT INTO `area` VALUES ('130403', '丛台区', '130401');
INSERT INTO `area` VALUES ('130404', '复兴区', '130401');
INSERT INTO `area` VALUES ('130406', '峰峰矿区', '130401');
INSERT INTO `area` VALUES ('130421', '邯郸县', '130400');
INSERT INTO `area` VALUES ('130423', '临漳县', '130400');
INSERT INTO `area` VALUES ('130424', '成安县', '130400');
INSERT INTO `area` VALUES ('130425', '大名县', '130400');
INSERT INTO `area` VALUES ('130426', '涉县', '130400');
INSERT INTO `area` VALUES ('130427', '磁县', '130400');
INSERT INTO `area` VALUES ('130428', '肥乡县', '130400');
INSERT INTO `area` VALUES ('130429', '永年县', '130400');
INSERT INTO `area` VALUES ('130430', '邱县', '130400');
INSERT INTO `area` VALUES ('130431', '鸡泽县', '130400');
INSERT INTO `area` VALUES ('130432', '广平县', '130400');
INSERT INTO `area` VALUES ('130433', '馆陶县', '130400');
INSERT INTO `area` VALUES ('130434', '魏县', '130400');
INSERT INTO `area` VALUES ('130435', '曲周县', '130400');
INSERT INTO `area` VALUES ('130481', '武安市', '130400');
INSERT INTO `area` VALUES ('130500', '邢台市', '130000');
INSERT INTO `area` VALUES ('130501', '市辖区', '130500');
INSERT INTO `area` VALUES ('130502', '桥东区', '130501');
INSERT INTO `area` VALUES ('130503', '桥西区', '130501');
INSERT INTO `area` VALUES ('130521', '邢台县', '130500');
INSERT INTO `area` VALUES ('130522', '临城县', '130500');
INSERT INTO `area` VALUES ('130523', '内丘县', '130500');
INSERT INTO `area` VALUES ('130524', '柏乡县', '130500');
INSERT INTO `area` VALUES ('130525', '隆尧县', '130500');
INSERT INTO `area` VALUES ('130526', '任县', '130500');
INSERT INTO `area` VALUES ('130527', '南和县', '130500');
INSERT INTO `area` VALUES ('130528', '宁晋县', '130500');
INSERT INTO `area` VALUES ('130529', '巨鹿县', '130529');
INSERT INTO `area` VALUES ('130530', '新河县', '130500');
INSERT INTO `area` VALUES ('130531', '广宗县', '130500');
INSERT INTO `area` VALUES ('130532', '平乡县', '130500');
INSERT INTO `area` VALUES ('130533', '威县', '130500');
INSERT INTO `area` VALUES ('130534', '清河县', '130500');
INSERT INTO `area` VALUES ('130535', '临西县', '130500');
INSERT INTO `area` VALUES ('130581', '南宫市', '130500');
INSERT INTO `area` VALUES ('130582', '沙河市', '130500');
INSERT INTO `area` VALUES ('130600', '保定市', '130000');
INSERT INTO `area` VALUES ('130601', '新市区', '130600');
INSERT INTO `area` VALUES ('130603', '北市区', '130600');
INSERT INTO `area` VALUES ('130604', '南市区', '130600');
INSERT INTO `area` VALUES ('130621', '满城县', '130600');
INSERT INTO `area` VALUES ('130622', '清苑县', '130600');
INSERT INTO `area` VALUES ('130623', '涞水县', '130600');
INSERT INTO `area` VALUES ('130624', '阜平县', '130600');
INSERT INTO `area` VALUES ('130625', '徐水县', '130600');
INSERT INTO `area` VALUES ('130626', '定兴县', '130600');
INSERT INTO `area` VALUES ('130627', '唐县', '130600');
INSERT INTO `area` VALUES ('130628', '高阳县', '130600');
INSERT INTO `area` VALUES ('130629', '容城县', '130600');
INSERT INTO `area` VALUES ('130630', '涞源县', '130600');
INSERT INTO `area` VALUES ('130631', '望都县', '130600');
INSERT INTO `area` VALUES ('130632', '安新县', '130600');
INSERT INTO `area` VALUES ('130633', '易县', '130600');
INSERT INTO `area` VALUES ('130634', '曲阳县', '130600');
INSERT INTO `area` VALUES ('130635', '蠡县', '130600');
INSERT INTO `area` VALUES ('130636', '顺平县', '130600');
INSERT INTO `area` VALUES ('130637', '博野县', '130600');
INSERT INTO `area` VALUES ('130638', '雄县', '130600');
INSERT INTO `area` VALUES ('130681', '涿州市', '130600');
INSERT INTO `area` VALUES ('130682', '定州市', '130600');
INSERT INTO `area` VALUES ('130683', '安国市', '130600');
INSERT INTO `area` VALUES ('130684', '高碑店市', '130600');
INSERT INTO `area` VALUES ('130685', '白沟新城县', '130600');
INSERT INTO `area` VALUES ('130700', '张家口市', '130000');
INSERT INTO `area` VALUES ('130701', '市辖区', '130700');
INSERT INTO `area` VALUES ('130702', '桥东区', '130701');
INSERT INTO `area` VALUES ('130703', '桥西区', '130701');
INSERT INTO `area` VALUES ('130705', '宣化区', '130701');
INSERT INTO `area` VALUES ('130706', '下花园区', '130701');
INSERT INTO `area` VALUES ('130721', '宣化县', '130700');
INSERT INTO `area` VALUES ('130722', '张北县', '130700');
INSERT INTO `area` VALUES ('130723', '康保县', '130700');
INSERT INTO `area` VALUES ('130724', '沽源县', '130700');
INSERT INTO `area` VALUES ('130725', '尚义县', '130700');
INSERT INTO `area` VALUES ('130726', '蔚县', '130700');
INSERT INTO `area` VALUES ('130727', '阳原县', '130700');
INSERT INTO `area` VALUES ('130728', '怀安县', '130700');
INSERT INTO `area` VALUES ('130729', '万全县', '130700');
INSERT INTO `area` VALUES ('130730', '怀来县', '130700');
INSERT INTO `area` VALUES ('130731', '涿鹿县', '130700');
INSERT INTO `area` VALUES ('130732', '赤城县', '130700');
INSERT INTO `area` VALUES ('130733', '崇礼县', '130700');
INSERT INTO `area` VALUES ('130800', '承德市', '130000');
INSERT INTO `area` VALUES ('130801', '市辖区', '130800');
INSERT INTO `area` VALUES ('130802', '双桥区', '130801');
INSERT INTO `area` VALUES ('130803', '双滦区', '130801');
INSERT INTO `area` VALUES ('130804', '鹰手营子矿区', '130801');
INSERT INTO `area` VALUES ('130821', '承德县', '130800');
INSERT INTO `area` VALUES ('130822', '兴隆县', '130800');
INSERT INTO `area` VALUES ('130823', '平泉县', '130800');
INSERT INTO `area` VALUES ('130824', '滦平县', '130800');
INSERT INTO `area` VALUES ('130825', '隆化县', '130800');
INSERT INTO `area` VALUES ('130826', '丰宁满族自治县', '130800');
INSERT INTO `area` VALUES ('130827', '宽城满族自治县', '130800');
INSERT INTO `area` VALUES ('130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `area` VALUES ('130900', '沧州市', '130000');
INSERT INTO `area` VALUES ('130901', '市辖区', '130900');
INSERT INTO `area` VALUES ('130902', '新华区', '130901');
INSERT INTO `area` VALUES ('130903', '运河区', '130901');
INSERT INTO `area` VALUES ('130921', '沧县', '130900');
INSERT INTO `area` VALUES ('130922', '青县', '130900');
INSERT INTO `area` VALUES ('130923', '东光县', '130900');
INSERT INTO `area` VALUES ('130924', '海兴县', '130900');
INSERT INTO `area` VALUES ('130925', '盐山县', '130900');
INSERT INTO `area` VALUES ('130926', '肃宁县', '130900');
INSERT INTO `area` VALUES ('130927', '南皮县', '130900');
INSERT INTO `area` VALUES ('130928', '吴桥县', '130900');
INSERT INTO `area` VALUES ('130929', '献县', '130900');
INSERT INTO `area` VALUES ('130930', '孟村回族自治县', '130900');
INSERT INTO `area` VALUES ('130981', '泊头市', '130900');
INSERT INTO `area` VALUES ('130982', '任丘市', '130900');
INSERT INTO `area` VALUES ('130983', '黄骅市', '130900');
INSERT INTO `area` VALUES ('130984', '河间市', '130900');
INSERT INTO `area` VALUES ('131000', '廊坊市', '130000');
INSERT INTO `area` VALUES ('131001', '市辖区', '131000');
INSERT INTO `area` VALUES ('131002', '安次区', '131001');
INSERT INTO `area` VALUES ('131003', '广阳区', '131001');
INSERT INTO `area` VALUES ('131022', '固安县', '131000');
INSERT INTO `area` VALUES ('131023', '永清县', '131000');
INSERT INTO `area` VALUES ('131024', '香河县', '131000');
INSERT INTO `area` VALUES ('131025', '大城县', '131000');
INSERT INTO `area` VALUES ('131026', '文安县', '131000');
INSERT INTO `area` VALUES ('131028', '大厂回族自治县', '131000');
INSERT INTO `area` VALUES ('131081', '霸州市', '131000');
INSERT INTO `area` VALUES ('131082', '三河市', '131000');
INSERT INTO `area` VALUES ('131100', '衡水市', '130000');
INSERT INTO `area` VALUES ('131101', '市辖区', '131100');
INSERT INTO `area` VALUES ('131102', '桃城区', '131101');
INSERT INTO `area` VALUES ('131121', '枣强县', '131100');
INSERT INTO `area` VALUES ('131122', '武邑县', '131100');
INSERT INTO `area` VALUES ('131123', '武强县', '131100');
INSERT INTO `area` VALUES ('131124', '饶阳县', '131100');
INSERT INTO `area` VALUES ('131125', '安平县', '131100');
INSERT INTO `area` VALUES ('131126', '故城县', '131100');
INSERT INTO `area` VALUES ('131127', '景县', '131100');
INSERT INTO `area` VALUES ('131128', '阜城县', '131100');
INSERT INTO `area` VALUES ('131181', '冀州市', '131100');
INSERT INTO `area` VALUES ('131182', '深州市', '131100');
INSERT INTO `area` VALUES ('140000', '山西', '0');
INSERT INTO `area` VALUES ('140100', '太原市', '140000');
INSERT INTO `area` VALUES ('140101', '市辖区', '140100');
INSERT INTO `area` VALUES ('140105', '小店区', '140101');
INSERT INTO `area` VALUES ('140106', '迎泽区', '140101');
INSERT INTO `area` VALUES ('140107', '杏花岭区', '140101');
INSERT INTO `area` VALUES ('140108', '尖草坪区', '140101');
INSERT INTO `area` VALUES ('140109', '万柏林区', '140101');
INSERT INTO `area` VALUES ('140110', '晋源区', '140101');
INSERT INTO `area` VALUES ('140121', '清徐县', '140100');
INSERT INTO `area` VALUES ('140122', '阳曲县', '140100');
INSERT INTO `area` VALUES ('140123', '娄烦县', '140100');
INSERT INTO `area` VALUES ('140181', '古交市', '140100');
INSERT INTO `area` VALUES ('140200', '大同市', '140000');
INSERT INTO `area` VALUES ('140201', '市辖区', '140200');
INSERT INTO `area` VALUES ('140202', '城区', '140201');
INSERT INTO `area` VALUES ('140203', '矿区', '140201');
INSERT INTO `area` VALUES ('140211', '南郊区', '140201');
INSERT INTO `area` VALUES ('140212', '新荣区', '140201');
INSERT INTO `area` VALUES ('140221', '阳高县', '140200');
INSERT INTO `area` VALUES ('140222', '天镇县', '140200');
INSERT INTO `area` VALUES ('140223', '广灵县', '140200');
INSERT INTO `area` VALUES ('140224', '灵丘县', '140200');
INSERT INTO `area` VALUES ('140225', '浑源县', '140200');
INSERT INTO `area` VALUES ('140226', '左云县', '140200');
INSERT INTO `area` VALUES ('140227', '大同县', '140200');
INSERT INTO `area` VALUES ('140300', '阳泉市', '140000');
INSERT INTO `area` VALUES ('140301', '市辖区', '140300');
INSERT INTO `area` VALUES ('140302', '城区', '140301');
INSERT INTO `area` VALUES ('140303', '矿区', '140301');
INSERT INTO `area` VALUES ('140311', '郊区', '140301');
INSERT INTO `area` VALUES ('140321', '平定县', '140300');
INSERT INTO `area` VALUES ('140322', '盂县', '140300');
INSERT INTO `area` VALUES ('140400', '长治市', '140000');
INSERT INTO `area` VALUES ('140401', '市辖区', '140400');
INSERT INTO `area` VALUES ('140402', '城区', '140401');
INSERT INTO `area` VALUES ('140411', '郊区', '140401');
INSERT INTO `area` VALUES ('140421', '长治县', '140400');
INSERT INTO `area` VALUES ('140423', '襄垣县', '140400');
INSERT INTO `area` VALUES ('140424', '屯留县', '140400');
INSERT INTO `area` VALUES ('140425', '平顺县', '140400');
INSERT INTO `area` VALUES ('140426', '黎城县', '140400');
INSERT INTO `area` VALUES ('140427', '壶关县', '140400');
INSERT INTO `area` VALUES ('140428', '长子县', '140400');
INSERT INTO `area` VALUES ('140429', '武乡县', '140400');
INSERT INTO `area` VALUES ('140430', '沁县', '140400');
INSERT INTO `area` VALUES ('140431', '沁源县', '140400');
INSERT INTO `area` VALUES ('140481', '潞城市', '140400');
INSERT INTO `area` VALUES ('140500', '晋城市', '140000');
INSERT INTO `area` VALUES ('140501', '市辖区', '140500');
INSERT INTO `area` VALUES ('140502', '城区', '140501');
INSERT INTO `area` VALUES ('140521', '沁水县', '140500');
INSERT INTO `area` VALUES ('140522', '阳城县', '140500');
INSERT INTO `area` VALUES ('140524', '陵川县', '140500');
INSERT INTO `area` VALUES ('140525', '泽州县', '140500');
INSERT INTO `area` VALUES ('140581', '高平市', '140500');
INSERT INTO `area` VALUES ('140600', '朔州市', '140000');
INSERT INTO `area` VALUES ('140601', '市辖区', '140600');
INSERT INTO `area` VALUES ('140602', '朔城区', '140601');
INSERT INTO `area` VALUES ('140603', '平鲁区', '140601');
INSERT INTO `area` VALUES ('140621', '山阴县', '140600');
INSERT INTO `area` VALUES ('140622', '应县', '140600');
INSERT INTO `area` VALUES ('140623', '右玉县', '140600');
INSERT INTO `area` VALUES ('140624', '怀仁县', '140600');
INSERT INTO `area` VALUES ('140700', '晋中市', '140000');
INSERT INTO `area` VALUES ('140701', '市辖区', '140700');
INSERT INTO `area` VALUES ('140702', '榆次区', '140701');
INSERT INTO `area` VALUES ('140721', '榆社县', '140700');
INSERT INTO `area` VALUES ('140722', '左权县', '140700');
INSERT INTO `area` VALUES ('140723', '和顺县', '140700');
INSERT INTO `area` VALUES ('140724', '昔阳县', '140700');
INSERT INTO `area` VALUES ('140725', '寿阳县', '140700');
INSERT INTO `area` VALUES ('140726', '太谷县', '140700');
INSERT INTO `area` VALUES ('140727', '祁县', '140700');
INSERT INTO `area` VALUES ('140728', '平遥县', '140700');
INSERT INTO `area` VALUES ('140729', '灵石县', '140700');
INSERT INTO `area` VALUES ('140781', '介休市', '140700');
INSERT INTO `area` VALUES ('140800', '运城市', '140000');
INSERT INTO `area` VALUES ('140801', '市辖区', '140800');
INSERT INTO `area` VALUES ('140802', '盐湖区', '140801');
INSERT INTO `area` VALUES ('140821', '临猗县', '140800');
INSERT INTO `area` VALUES ('140822', '万荣县', '140800');
INSERT INTO `area` VALUES ('140823', '闻喜县', '140800');
INSERT INTO `area` VALUES ('140824', '稷山县', '140800');
INSERT INTO `area` VALUES ('140825', '新绛县', '140800');
INSERT INTO `area` VALUES ('140826', '绛县', '140800');
INSERT INTO `area` VALUES ('140827', '垣曲县', '140800');
INSERT INTO `area` VALUES ('140828', '夏县', '140800');
INSERT INTO `area` VALUES ('140829', '平陆县', '140800');
INSERT INTO `area` VALUES ('140830', '芮城县', '140800');
INSERT INTO `area` VALUES ('140881', '永济市', '140800');
INSERT INTO `area` VALUES ('140882', '河津市', '140800');
INSERT INTO `area` VALUES ('140900', '忻州市', '140000');
INSERT INTO `area` VALUES ('140901', '忻府区', '140900');
INSERT INTO `area` VALUES ('140921', '定襄县', '140900');
INSERT INTO `area` VALUES ('140922', '五台县', '140900');
INSERT INTO `area` VALUES ('140923', '代县', '140900');
INSERT INTO `area` VALUES ('140924', '繁峙县', '140900');
INSERT INTO `area` VALUES ('140925', '宁武县', '140900');
INSERT INTO `area` VALUES ('140926', '静乐县', '140900');
INSERT INTO `area` VALUES ('140927', '神池县', '140900');
INSERT INTO `area` VALUES ('140928', '五寨县', '140900');
INSERT INTO `area` VALUES ('140929', '岢岚县', '140900');
INSERT INTO `area` VALUES ('140930', '河曲县', '140900');
INSERT INTO `area` VALUES ('140931', '保德县', '140900');
INSERT INTO `area` VALUES ('140932', '偏关县', '140900');
INSERT INTO `area` VALUES ('140981', '原平市', '140900');
INSERT INTO `area` VALUES ('141000', '临汾市', '140000');
INSERT INTO `area` VALUES ('141001', '市辖区', '141000');
INSERT INTO `area` VALUES ('141002', '尧都区', '141000');
INSERT INTO `area` VALUES ('141021', '曲沃县', '141000');
INSERT INTO `area` VALUES ('141022', '翼城县', '141000');
INSERT INTO `area` VALUES ('141023', '襄汾县', '141000');
INSERT INTO `area` VALUES ('141024', '洪洞县', '141000');
INSERT INTO `area` VALUES ('141025', '古县', '141000');
INSERT INTO `area` VALUES ('141026', '安泽县', '141000');
INSERT INTO `area` VALUES ('141027', '浮山县', '141000');
INSERT INTO `area` VALUES ('141028', '吉县', '141000');
INSERT INTO `area` VALUES ('141029', '乡宁县', '141000');
INSERT INTO `area` VALUES ('141030', '大宁县', '141000');
INSERT INTO `area` VALUES ('141031', '隰县', '141000');
INSERT INTO `area` VALUES ('141032', '永和县', '141000');
INSERT INTO `area` VALUES ('141033', '蒲县', '141000');
INSERT INTO `area` VALUES ('141034', '汾西县', '141000');
INSERT INTO `area` VALUES ('141081', '侯马市', '141000');
INSERT INTO `area` VALUES ('141082', '霍州市', '141000');
INSERT INTO `area` VALUES ('141100', '吕梁市', '140000');
INSERT INTO `area` VALUES ('141101', '市辖区', '141100');
INSERT INTO `area` VALUES ('141102', '离石区', '141101');
INSERT INTO `area` VALUES ('141121', '文水县', '141100');
INSERT INTO `area` VALUES ('141122', '交城县', '141100');
INSERT INTO `area` VALUES ('141123', '兴县', '141100');
INSERT INTO `area` VALUES ('141124', '临县', '141100');
INSERT INTO `area` VALUES ('141125', '柳林县', '141100');
INSERT INTO `area` VALUES ('141126', '石楼县', '141100');
INSERT INTO `area` VALUES ('141127', '岚县', '141100');
INSERT INTO `area` VALUES ('141128', '方山县', '141100');
INSERT INTO `area` VALUES ('141129', '中阳县', '141100');
INSERT INTO `area` VALUES ('141130', '交口县', '141100');
INSERT INTO `area` VALUES ('141181', '孝义市', '141100');
INSERT INTO `area` VALUES ('141182', '汾阳市', '141100');
INSERT INTO `area` VALUES ('150000', '内蒙古', '0');
INSERT INTO `area` VALUES ('150100', '呼和浩特市', '150000');
INSERT INTO `area` VALUES ('150101', '市辖区', '150100');
INSERT INTO `area` VALUES ('150102', '新城区', '150100');
INSERT INTO `area` VALUES ('150103', '回民区', '150100');
INSERT INTO `area` VALUES ('150104', '玉泉区', '150100');
INSERT INTO `area` VALUES ('150105', '赛罕区', '150101');
INSERT INTO `area` VALUES ('150121', '土默特左旗', '150100');
INSERT INTO `area` VALUES ('150122', '托克托县', '150100');
INSERT INTO `area` VALUES ('150123', '和林格尔县', '150100');
INSERT INTO `area` VALUES ('150124', '清水河县', '150100');
INSERT INTO `area` VALUES ('150125', '武川县', '150100');
INSERT INTO `area` VALUES ('150200', '包头市', '150000');
INSERT INTO `area` VALUES ('150201', '市辖区', '150200');
INSERT INTO `area` VALUES ('150202', '东河区', '150201');
INSERT INTO `area` VALUES ('150203', '昆都仑区', '150201');
INSERT INTO `area` VALUES ('150204', '青山区', '150201');
INSERT INTO `area` VALUES ('150205', '石拐区', '150201');
INSERT INTO `area` VALUES ('150206', '白云矿区', '150201');
INSERT INTO `area` VALUES ('150207', '九原区', '150201');
INSERT INTO `area` VALUES ('150221', '土默特右旗', '150200');
INSERT INTO `area` VALUES ('150222', '固阳县', '150200');
INSERT INTO `area` VALUES ('150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `area` VALUES ('150300', '乌海市', '150000');
INSERT INTO `area` VALUES ('150301', '市辖区', '150300');
INSERT INTO `area` VALUES ('150302', '海勃湾区', '150301');
INSERT INTO `area` VALUES ('150303', '海南区', '150301');
INSERT INTO `area` VALUES ('150304', '乌达区', '150301');
INSERT INTO `area` VALUES ('150400', '赤峰市', '150000');
INSERT INTO `area` VALUES ('150401', '市辖区', '150400');
INSERT INTO `area` VALUES ('150402', '红山区', '150401');
INSERT INTO `area` VALUES ('150403', '元宝山区', '150401');
INSERT INTO `area` VALUES ('150404', '松山区', '150401');
INSERT INTO `area` VALUES ('150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `area` VALUES ('150422', '巴林左旗', '150400');
INSERT INTO `area` VALUES ('150423', '巴林右旗', '150400');
INSERT INTO `area` VALUES ('150424', '林西县', '150400');
INSERT INTO `area` VALUES ('150425', '克什克腾旗', '150400');
INSERT INTO `area` VALUES ('150426', '翁牛特旗', '150400');
INSERT INTO `area` VALUES ('150428', '喀喇沁旗', '150400');
INSERT INTO `area` VALUES ('150429', '宁城县', '150400');
INSERT INTO `area` VALUES ('150430', '敖汉旗', '150400');
INSERT INTO `area` VALUES ('150500', '通辽市', '150000');
INSERT INTO `area` VALUES ('150501', '市辖区', '150500');
INSERT INTO `area` VALUES ('150502', '科尔沁区', '150501');
INSERT INTO `area` VALUES ('150521', '科尔沁左翼中旗', '150500');
INSERT INTO `area` VALUES ('150522', '科尔沁左翼后旗', '150500');
INSERT INTO `area` VALUES ('150523', '开鲁县', '150500');
INSERT INTO `area` VALUES ('150524', '库伦旗', '150500');
INSERT INTO `area` VALUES ('150525', '奈曼旗', '150500');
INSERT INTO `area` VALUES ('150526', '扎鲁特旗', '150500');
INSERT INTO `area` VALUES ('150581', '霍林郭勒市', '150500');
INSERT INTO `area` VALUES ('150600', '鄂尔多斯市', '150000');
INSERT INTO `area` VALUES ('150602', '东胜区', '150600');
INSERT INTO `area` VALUES ('150621', '达拉特旗', '150600');
INSERT INTO `area` VALUES ('150622', '准格尔旗', '150600');
INSERT INTO `area` VALUES ('150623', '鄂托克前旗', '150600');
INSERT INTO `area` VALUES ('150624', '鄂托克旗', '150600');
INSERT INTO `area` VALUES ('150625', '杭锦旗', '150600');
INSERT INTO `area` VALUES ('150626', '乌审旗', '150600');
INSERT INTO `area` VALUES ('150627', '伊金霍洛旗', '150600');
INSERT INTO `area` VALUES ('150700', '呼伦贝尔市', '150000');
INSERT INTO `area` VALUES ('150701', '市辖区', '150700');
INSERT INTO `area` VALUES ('150702', '海拉尔区', '150701');
INSERT INTO `area` VALUES ('150721', '阿荣旗', '150700');
INSERT INTO `area` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `area` VALUES ('150723', '鄂伦春自治旗', '150700');
INSERT INTO `area` VALUES ('150724', '鄂温克族自治旗', '150700');
INSERT INTO `area` VALUES ('150725', '陈巴尔虎旗', '150700');
INSERT INTO `area` VALUES ('150726', '新巴尔虎左旗', '150700');
INSERT INTO `area` VALUES ('150727', '新巴尔虎右旗', '150700');
INSERT INTO `area` VALUES ('150781', '满洲里市', '150700');
INSERT INTO `area` VALUES ('150782', '牙克石市', '150700');
INSERT INTO `area` VALUES ('150783', '扎兰屯市', '150700');
INSERT INTO `area` VALUES ('150784', '额尔古纳市', '150700');
INSERT INTO `area` VALUES ('150785', '根河市', '150700');
INSERT INTO `area` VALUES ('150800', '巴彦淖尔市', '150000');
INSERT INTO `area` VALUES ('150801', '市辖区', '150800');
INSERT INTO `area` VALUES ('150802', '临河区', '150800');
INSERT INTO `area` VALUES ('150821', '五原县', '150800');
INSERT INTO `area` VALUES ('150822', '磴口县', '150800');
INSERT INTO `area` VALUES ('150823', '乌拉特前旗', '150800');
INSERT INTO `area` VALUES ('150824', '乌拉特中旗', '150800');
INSERT INTO `area` VALUES ('150825', '乌拉特后旗', '150800');
INSERT INTO `area` VALUES ('150826', '杭锦后旗', '150800');
INSERT INTO `area` VALUES ('150900', '乌兰察布市', '150000');
INSERT INTO `area` VALUES ('150901', '市辖区', '150900');
INSERT INTO `area` VALUES ('150902', '集宁区', '150901');
INSERT INTO `area` VALUES ('150921', '卓资县', '150900');
INSERT INTO `area` VALUES ('150922', '化德县', '150900');
INSERT INTO `area` VALUES ('150923', '商都县', '150900');
INSERT INTO `area` VALUES ('150924', '兴和县', '150900');
INSERT INTO `area` VALUES ('150925', '凉城县', '150900');
INSERT INTO `area` VALUES ('150926', '察哈尔右翼前旗', '150900');
INSERT INTO `area` VALUES ('150927', '察哈尔右翼中旗', '150900');
INSERT INTO `area` VALUES ('150928', '察哈尔右翼后旗', '150900');
INSERT INTO `area` VALUES ('150929', '四子王旗', '150900');
INSERT INTO `area` VALUES ('150981', '丰镇市', '150900');
INSERT INTO `area` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `area` VALUES ('152201', '乌兰浩特市', '152200');
INSERT INTO `area` VALUES ('152202', '阿尔山市', '152200');
INSERT INTO `area` VALUES ('152221', '科尔沁右翼前旗', '152200');
INSERT INTO `area` VALUES ('152222', '科尔沁右翼中旗', '152200');
INSERT INTO `area` VALUES ('152223', '扎赉特旗', '152200');
INSERT INTO `area` VALUES ('152224', '突泉县', '152200');
INSERT INTO `area` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `area` VALUES ('152501', '二连浩特市', '152500');
INSERT INTO `area` VALUES ('152502', '锡林浩特市', '152500');
INSERT INTO `area` VALUES ('152522', '阿巴嘎旗', '152500');
INSERT INTO `area` VALUES ('152523', '苏尼特左旗', '152500');
INSERT INTO `area` VALUES ('152524', '苏尼特右旗', '152500');
INSERT INTO `area` VALUES ('152525', '东乌珠穆沁旗', '152500');
INSERT INTO `area` VALUES ('152526', '西乌珠穆沁旗', '152500');
INSERT INTO `area` VALUES ('152527', '太仆寺旗', '152500');
INSERT INTO `area` VALUES ('152528', '镶黄旗', '152500');
INSERT INTO `area` VALUES ('152529', '正镶白旗', '152500');
INSERT INTO `area` VALUES ('152530', '正蓝旗', '152500');
INSERT INTO `area` VALUES ('152531', '多伦县', '152500');
INSERT INTO `area` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `area` VALUES ('152921', '阿拉善左旗', '152900');
INSERT INTO `area` VALUES ('152922', '阿拉善右旗', '152900');
INSERT INTO `area` VALUES ('152923', '额济纳旗', '152900');
INSERT INTO `area` VALUES ('210000', '辽宁', '0');
INSERT INTO `area` VALUES ('210100', '沈阳市', '210000');
INSERT INTO `area` VALUES ('210101', '市辖区', '210100');
INSERT INTO `area` VALUES ('210102', '和平区', '210100');
INSERT INTO `area` VALUES ('210103', '沈河区', '210100');
INSERT INTO `area` VALUES ('210104', '大东区', '210100');
INSERT INTO `area` VALUES ('210105', '皇姑区', '210100');
INSERT INTO `area` VALUES ('210106', '铁西区', '210100');
INSERT INTO `area` VALUES ('210111', '苏家屯区', '210100');
INSERT INTO `area` VALUES ('210112', '东陵区', '210100');
INSERT INTO `area` VALUES ('210113', '新城子区', '210100');
INSERT INTO `area` VALUES ('210114', '于洪区', '210101');
INSERT INTO `area` VALUES ('210122', '辽中县', '210100');
INSERT INTO `area` VALUES ('210123', '康平县', '210100');
INSERT INTO `area` VALUES ('210124', '法库县', '210100');
INSERT INTO `area` VALUES ('210181', '新民市', '210100');
INSERT INTO `area` VALUES ('210182', '沈北新区', '210100');
INSERT INTO `area` VALUES ('210200', '大连市', '210000');
INSERT INTO `area` VALUES ('210201', '市辖区', '210200');
INSERT INTO `area` VALUES ('210202', '中山区', '210200');
INSERT INTO `area` VALUES ('210203', '西岗区', '210200');
INSERT INTO `area` VALUES ('210204', '沙河口区', '210200');
INSERT INTO `area` VALUES ('210211', '甘井子区', '210200');
INSERT INTO `area` VALUES ('210212', '旅顺口区', '210200');
INSERT INTO `area` VALUES ('210213', '金州区', '210200');
INSERT INTO `area` VALUES ('210224', '长海县', '210200');
INSERT INTO `area` VALUES ('210281', '瓦房店市', '210200');
INSERT INTO `area` VALUES ('210282', '普兰店市', '210200');
INSERT INTO `area` VALUES ('210283', '庄河市', '210200');
INSERT INTO `area` VALUES ('210300', '鞍山市', '210000');
INSERT INTO `area` VALUES ('210301', '市辖区', '210300');
INSERT INTO `area` VALUES ('210302', '铁东区', '210301');
INSERT INTO `area` VALUES ('210303', '铁西区', '210301');
INSERT INTO `area` VALUES ('210304', '立山区', '210301');
INSERT INTO `area` VALUES ('210311', '千山区', '210301');
INSERT INTO `area` VALUES ('210321', '台安县', '210300');
INSERT INTO `area` VALUES ('210323', '岫岩满族自治县', '210300');
INSERT INTO `area` VALUES ('210381', '海城市', '210300');
INSERT INTO `area` VALUES ('210400', '抚顺市', '210000');
INSERT INTO `area` VALUES ('210401', '市辖区', '210400');
INSERT INTO `area` VALUES ('210402', '新抚区', '210401');
INSERT INTO `area` VALUES ('210403', '东洲区', '210401');
INSERT INTO `area` VALUES ('210404', '望花区', '210401');
INSERT INTO `area` VALUES ('210411', '顺城区', '210401');
INSERT INTO `area` VALUES ('210421', '抚顺县', '210400');
INSERT INTO `area` VALUES ('210422', '新宾满族自治县', '210400');
INSERT INTO `area` VALUES ('210423', '清原满族自治县', '210400');
INSERT INTO `area` VALUES ('210500', '本溪市', '210000');
INSERT INTO `area` VALUES ('210501', '市辖区', '210500');
INSERT INTO `area` VALUES ('210502', '平山区', '210500');
INSERT INTO `area` VALUES ('210503', '溪湖区', '210500');
INSERT INTO `area` VALUES ('210504', '明山区', '210500');
INSERT INTO `area` VALUES ('210505', '南芬区', '210500');
INSERT INTO `area` VALUES ('210521', '本溪满族自治县', '210500');
INSERT INTO `area` VALUES ('210522', '桓仁满族自治县', '210500');
INSERT INTO `area` VALUES ('210600', '丹东市', '210000');
INSERT INTO `area` VALUES ('210601', '市辖区', '210600');
INSERT INTO `area` VALUES ('210602', '元宝区', '210601');
INSERT INTO `area` VALUES ('210603', '振兴区', '210601');
INSERT INTO `area` VALUES ('210604', '振安区', '210601');
INSERT INTO `area` VALUES ('210624', '宽甸满族自治县', '210600');
INSERT INTO `area` VALUES ('210681', '东港市', '210600');
INSERT INTO `area` VALUES ('210682', '凤城市', '210600');
INSERT INTO `area` VALUES ('210700', '锦州市', '210000');
INSERT INTO `area` VALUES ('210701', '市辖区', '210700');
INSERT INTO `area` VALUES ('210702', '古塔区', '210701');
INSERT INTO `area` VALUES ('210703', '凌河区', '210701');
INSERT INTO `area` VALUES ('210711', '太和区', '210701');
INSERT INTO `area` VALUES ('210726', '黑山县', '210700');
INSERT INTO `area` VALUES ('210727', '义县', '210700');
INSERT INTO `area` VALUES ('210781', '凌海市', '210700');
INSERT INTO `area` VALUES ('210782', '北宁市', '210700');
INSERT INTO `area` VALUES ('210800', '营口市', '210000');
INSERT INTO `area` VALUES ('210801', '市辖区', '210800');
INSERT INTO `area` VALUES ('210802', '站前区', '210800');
INSERT INTO `area` VALUES ('210803', '西市区', '210800');
INSERT INTO `area` VALUES ('210804', '鲅鱼圈区', '210800');
INSERT INTO `area` VALUES ('210811', '老边区', '210800');
INSERT INTO `area` VALUES ('210881', '盖州市', '210800');
INSERT INTO `area` VALUES ('210882', '大石桥市', '210800');
INSERT INTO `area` VALUES ('210900', '阜新市', '210000');
INSERT INTO `area` VALUES ('210901', '市辖区', '210900');
INSERT INTO `area` VALUES ('210902', '海州区', '210901');
INSERT INTO `area` VALUES ('210903', '新邱区', '210901');
INSERT INTO `area` VALUES ('210904', '太平区', '210901');
INSERT INTO `area` VALUES ('210905', '清河门区', '210901');
INSERT INTO `area` VALUES ('210911', '细河区', '210901');
INSERT INTO `area` VALUES ('210921', '阜新蒙古族自治县', '210900');
INSERT INTO `area` VALUES ('210922', '彰武县', '210900');
INSERT INTO `area` VALUES ('211000', '辽阳市', '210000');
INSERT INTO `area` VALUES ('211001', '市辖区', '211000');
INSERT INTO `area` VALUES ('211002', '白塔区', '211001');
INSERT INTO `area` VALUES ('211003', '文圣区', '211001');
INSERT INTO `area` VALUES ('211004', '宏伟区', '211001');
INSERT INTO `area` VALUES ('211005', '弓长岭区', '211001');
INSERT INTO `area` VALUES ('211011', '太子河区', '211001');
INSERT INTO `area` VALUES ('211021', '辽阳县', '211000');
INSERT INTO `area` VALUES ('211081', '灯塔市', '211000');
INSERT INTO `area` VALUES ('211100', '盘锦市', '210000');
INSERT INTO `area` VALUES ('211101', '市辖区', '211100');
INSERT INTO `area` VALUES ('211102', '双台子区', '211101');
INSERT INTO `area` VALUES ('211103', '兴隆台区', '211101');
INSERT INTO `area` VALUES ('211121', '大洼县', '211100');
INSERT INTO `area` VALUES ('211122', '盘山县', '211100');
INSERT INTO `area` VALUES ('211200', '铁岭市', '210000');
INSERT INTO `area` VALUES ('211201', '市辖区', '211200');
INSERT INTO `area` VALUES ('211202', '银州区', '211201');
INSERT INTO `area` VALUES ('211204', '清河区', '211201');
INSERT INTO `area` VALUES ('211221', '铁岭县', '211200');
INSERT INTO `area` VALUES ('211223', '西丰县', '211200');
INSERT INTO `area` VALUES ('211224', '昌图县', '211200');
INSERT INTO `area` VALUES ('211281', '调兵山市', '211200');
INSERT INTO `area` VALUES ('211282', '开原市', '211200');
INSERT INTO `area` VALUES ('211300', '朝阳市', '210000');
INSERT INTO `area` VALUES ('211301', '市辖区', '211300');
INSERT INTO `area` VALUES ('211302', '双塔区', '211301');
INSERT INTO `area` VALUES ('211303', '龙城区', '211301');
INSERT INTO `area` VALUES ('211321', '朝阳县', '211300');
INSERT INTO `area` VALUES ('211322', '建平县', '211300');
INSERT INTO `area` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `area` VALUES ('211381', '北票市', '211300');
INSERT INTO `area` VALUES ('211382', '凌源市', '211300');
INSERT INTO `area` VALUES ('211400', '葫芦岛市', '210000');
INSERT INTO `area` VALUES ('211401', '市辖区', '211400');
INSERT INTO `area` VALUES ('211402', '连山区', '211401');
INSERT INTO `area` VALUES ('211403', '龙港区', '211401');
INSERT INTO `area` VALUES ('211404', '南票区', '211401');
INSERT INTO `area` VALUES ('211421', '绥中县', '211400');
INSERT INTO `area` VALUES ('211422', '建昌县', '211400');
INSERT INTO `area` VALUES ('211481', '兴城市', '211400');
INSERT INTO `area` VALUES ('220000', '吉林', '0');
INSERT INTO `area` VALUES ('220100', '长春市', '220000');
INSERT INTO `area` VALUES ('220101', '市辖区', '220100');
INSERT INTO `area` VALUES ('220102', '南关区', '220101');
INSERT INTO `area` VALUES ('220103', '宽城区', '220101');
INSERT INTO `area` VALUES ('220104', '朝阳区', '220101');
INSERT INTO `area` VALUES ('220105', '二道区', '220101');
INSERT INTO `area` VALUES ('220106', '绿园区', '220101');
INSERT INTO `area` VALUES ('220112', '双阳区', '220101');
INSERT INTO `area` VALUES ('220122', '农安县', '220100');
INSERT INTO `area` VALUES ('220181', '九台市', '220100');
INSERT INTO `area` VALUES ('220182', '榆树市', '220100');
INSERT INTO `area` VALUES ('220183', '德惠市', '220100');
INSERT INTO `area` VALUES ('220200', '吉林市', '220000');
INSERT INTO `area` VALUES ('220201', '市辖区', '220200');
INSERT INTO `area` VALUES ('220202', '昌邑区', '220201');
INSERT INTO `area` VALUES ('220203', '龙潭区', '220201');
INSERT INTO `area` VALUES ('220204', '船营区', '220201');
INSERT INTO `area` VALUES ('220211', '丰满区', '220201');
INSERT INTO `area` VALUES ('220221', '永吉县', '220200');
INSERT INTO `area` VALUES ('220281', '蛟河市', '220200');
INSERT INTO `area` VALUES ('220282', '桦甸市', '220200');
INSERT INTO `area` VALUES ('220283', '舒兰市', '220200');
INSERT INTO `area` VALUES ('220284', '磐石市', '220200');
INSERT INTO `area` VALUES ('220300', '四平市', '220000');
INSERT INTO `area` VALUES ('220301', '市辖区', '220300');
INSERT INTO `area` VALUES ('220302', '铁西区', '220301');
INSERT INTO `area` VALUES ('220303', '铁东区', '220301');
INSERT INTO `area` VALUES ('220322', '梨树县', '220300');
INSERT INTO `area` VALUES ('220323', '伊通满族自治县', '220300');
INSERT INTO `area` VALUES ('220381', '公主岭市', '220300');
INSERT INTO `area` VALUES ('220382', '双辽市', '220300');
INSERT INTO `area` VALUES ('220400', '辽源市', '220000');
INSERT INTO `area` VALUES ('220401', '市辖区', '220400');
INSERT INTO `area` VALUES ('220402', '龙山区', '220401');
INSERT INTO `area` VALUES ('220403', '西安区', '220401');
INSERT INTO `area` VALUES ('220421', '东丰县', '220400');
INSERT INTO `area` VALUES ('220422', '东辽县', '220400');
INSERT INTO `area` VALUES ('220500', '通化市', '220000');
INSERT INTO `area` VALUES ('220501', '市辖区', '220500');
INSERT INTO `area` VALUES ('220502', '东昌区', '220501');
INSERT INTO `area` VALUES ('220503', '二道江区', '220501');
INSERT INTO `area` VALUES ('220521', '通化县', '220500');
INSERT INTO `area` VALUES ('220523', '辉南县', '220500');
INSERT INTO `area` VALUES ('220524', '柳河县', '220500');
INSERT INTO `area` VALUES ('220581', '梅河口市', '220500');
INSERT INTO `area` VALUES ('220582', '集安市', '220500');
INSERT INTO `area` VALUES ('220600', '白山市', '220000');
INSERT INTO `area` VALUES ('220601', '市辖区', '220600');
INSERT INTO `area` VALUES ('220602', '八道江区', '220601');
INSERT INTO `area` VALUES ('220621', '抚松县', '220600');
INSERT INTO `area` VALUES ('220622', '靖宇县', '220600');
INSERT INTO `area` VALUES ('220623', '长白朝鲜族自治县', '220600');
INSERT INTO `area` VALUES ('220625', '江源区', '220600');
INSERT INTO `area` VALUES ('220681', '临江市', '220600');
INSERT INTO `area` VALUES ('220700', '松原市', '220000');
INSERT INTO `area` VALUES ('220701', '市辖区', '220700');
INSERT INTO `area` VALUES ('220702', '宁江区', '220701');
INSERT INTO `area` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `area` VALUES ('220722', '长岭县', '220700');
INSERT INTO `area` VALUES ('220723', '乾安县', '220700');
INSERT INTO `area` VALUES ('220724', '扶余市', '220700');
INSERT INTO `area` VALUES ('220800', '白城市', '220000');
INSERT INTO `area` VALUES ('220801', '市辖区', '220800');
INSERT INTO `area` VALUES ('220802', '洮北区', '220800');
INSERT INTO `area` VALUES ('220821', '镇赉县', '220800');
INSERT INTO `area` VALUES ('220822', '通榆县', '220800');
INSERT INTO `area` VALUES ('220881', '洮南市', '220800');
INSERT INTO `area` VALUES ('220882', '大安市', '220800');
INSERT INTO `area` VALUES ('222400', '延边朝鲜族自治州', '220000');
INSERT INTO `area` VALUES ('222401', '延吉市', '222400');
INSERT INTO `area` VALUES ('222402', '图们市', '222400');
INSERT INTO `area` VALUES ('222403', '敦化市', '222400');
INSERT INTO `area` VALUES ('222404', '珲春市', '222400');
INSERT INTO `area` VALUES ('222405', '龙井市', '222400');
INSERT INTO `area` VALUES ('222406', '和龙市', '222400');
INSERT INTO `area` VALUES ('222424', '汪清县', '222400');
INSERT INTO `area` VALUES ('222426', '安图县', '222400');
INSERT INTO `area` VALUES ('230000', '黑龙江', '0');
INSERT INTO `area` VALUES ('230100', '哈尔滨市', '230000');
INSERT INTO `area` VALUES ('230101', '市辖区', '230100');
INSERT INTO `area` VALUES ('230102', '道里区', '230100');
INSERT INTO `area` VALUES ('230103', '南岗区', '230100');
INSERT INTO `area` VALUES ('230104', '道外区', '230100');
INSERT INTO `area` VALUES ('230106', '香坊区', '230100');
INSERT INTO `area` VALUES ('230107', '动力区', '230100');
INSERT INTO `area` VALUES ('230108', '平房区', '230100');
INSERT INTO `area` VALUES ('230109', '松北区', '230100');
INSERT INTO `area` VALUES ('230111', '呼兰区', '230100');
INSERT INTO `area` VALUES ('230123', '依兰县', '230100');
INSERT INTO `area` VALUES ('230124', '方正县', '230100');
INSERT INTO `area` VALUES ('230125', '宾县', '230100');
INSERT INTO `area` VALUES ('230126', '巴彦县', '230100');
INSERT INTO `area` VALUES ('230127', '木兰县', '230100');
INSERT INTO `area` VALUES ('230128', '通河县', '230100');
INSERT INTO `area` VALUES ('230129', '延寿县', '230100');
INSERT INTO `area` VALUES ('230181', '阿城市', '230100');
INSERT INTO `area` VALUES ('230182', '双城市', '230100');
INSERT INTO `area` VALUES ('230183', '尚志市', '230100');
INSERT INTO `area` VALUES ('230184', '五常市', '230100');
INSERT INTO `area` VALUES ('230200', '齐齐哈尔市', '230000');
INSERT INTO `area` VALUES ('230201', '市辖区', '230200');
INSERT INTO `area` VALUES ('230202', '龙沙区', '230201');
INSERT INTO `area` VALUES ('230203', '建华区', '230201');
INSERT INTO `area` VALUES ('230204', '铁锋区', '230201');
INSERT INTO `area` VALUES ('230205', '昂昂溪区', '230201');
INSERT INTO `area` VALUES ('230206', '富拉尔基区', '230201');
INSERT INTO `area` VALUES ('230207', '碾子山区', '230201');
INSERT INTO `area` VALUES ('230208', '梅里斯达斡尔族区', '230201');
INSERT INTO `area` VALUES ('230221', '龙江县', '230200');
INSERT INTO `area` VALUES ('230223', '依安县', '230200');
INSERT INTO `area` VALUES ('230224', '泰来县', '230200');
INSERT INTO `area` VALUES ('230225', '甘南县', '230200');
INSERT INTO `area` VALUES ('230227', '富裕县', '230200');
INSERT INTO `area` VALUES ('230229', '克山县', '230200');
INSERT INTO `area` VALUES ('230230', '克东县', '230200');
INSERT INTO `area` VALUES ('230231', '拜泉县', '230200');
INSERT INTO `area` VALUES ('230281', '讷河市', '230200');
INSERT INTO `area` VALUES ('230300', '鸡西市', '230000');
INSERT INTO `area` VALUES ('230301', '市辖区', '230300');
INSERT INTO `area` VALUES ('230302', '鸡冠区', '230301');
INSERT INTO `area` VALUES ('230303', '恒山区', '230301');
INSERT INTO `area` VALUES ('230304', '滴道区', '230301');
INSERT INTO `area` VALUES ('230305', '梨树区', '230301');
INSERT INTO `area` VALUES ('230306', '城子河区', '230301');
INSERT INTO `area` VALUES ('230307', '麻山区', '230301');
INSERT INTO `area` VALUES ('230321', '鸡东县', '230300');
INSERT INTO `area` VALUES ('230381', '虎林市', '230300');
INSERT INTO `area` VALUES ('230382', '密山市', '230300');
INSERT INTO `area` VALUES ('230400', '鹤岗市', '230000');
INSERT INTO `area` VALUES ('230401', '市辖区', '230400');
INSERT INTO `area` VALUES ('230402', '向阳区', '230401');
INSERT INTO `area` VALUES ('230403', '工农区', '230401');
INSERT INTO `area` VALUES ('230404', '南山区', '230401');
INSERT INTO `area` VALUES ('230405', '兴安区', '230401');
INSERT INTO `area` VALUES ('230406', '东山区', '230401');
INSERT INTO `area` VALUES ('230407', '兴山区', '230401');
INSERT INTO `area` VALUES ('230421', '萝北县', '230400');
INSERT INTO `area` VALUES ('230422', '绥滨县', '230400');
INSERT INTO `area` VALUES ('230500', '双鸭山市', '230000');
INSERT INTO `area` VALUES ('230501', '市辖区', '230500');
INSERT INTO `area` VALUES ('230502', '尖山区', '230501');
INSERT INTO `area` VALUES ('230503', '岭东区', '230501');
INSERT INTO `area` VALUES ('230505', '四方台区', '230501');
INSERT INTO `area` VALUES ('230506', '宝山区', '230501');
INSERT INTO `area` VALUES ('230521', '集贤县', '230500');
INSERT INTO `area` VALUES ('230522', '友谊县', '230500');
INSERT INTO `area` VALUES ('230523', '宝清县', '230500');
INSERT INTO `area` VALUES ('230524', '饶河县', '230500');
INSERT INTO `area` VALUES ('230600', '大庆市', '230000');
INSERT INTO `area` VALUES ('230601', '市辖区', '230600');
INSERT INTO `area` VALUES ('230602', '萨尔图区', '230600');
INSERT INTO `area` VALUES ('230603', '龙凤区', '230600');
INSERT INTO `area` VALUES ('230604', '让胡路区', '230600');
INSERT INTO `area` VALUES ('230605', '红岗区', '230600');
INSERT INTO `area` VALUES ('230606', '大同区', '230601');
INSERT INTO `area` VALUES ('230621', '肇州县', '230600');
INSERT INTO `area` VALUES ('230622', '肇源县', '230600');
INSERT INTO `area` VALUES ('230623', '林甸县', '230600');
INSERT INTO `area` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `area` VALUES ('230700', '伊春市', '230000');
INSERT INTO `area` VALUES ('230701', '市辖区', '230700');
INSERT INTO `area` VALUES ('230702', '伊春区', '230701');
INSERT INTO `area` VALUES ('230703', '南岔区', '230701');
INSERT INTO `area` VALUES ('230704', '友好区', '230701');
INSERT INTO `area` VALUES ('230705', '西林区', '230701');
INSERT INTO `area` VALUES ('230706', '翠峦区', '230701');
INSERT INTO `area` VALUES ('230707', '新青区', '230701');
INSERT INTO `area` VALUES ('230708', '美溪区', '230701');
INSERT INTO `area` VALUES ('230709', '金山屯区', '230701');
INSERT INTO `area` VALUES ('230710', '五营区', '230701');
INSERT INTO `area` VALUES ('230711', '乌马河区', '230701');
INSERT INTO `area` VALUES ('230712', '汤旺河区', '230701');
INSERT INTO `area` VALUES ('230713', '带岭区', '230701');
INSERT INTO `area` VALUES ('230714', '乌伊岭区', '230701');
INSERT INTO `area` VALUES ('230715', '红星区', '230701');
INSERT INTO `area` VALUES ('230716', '上甘岭区', '230701');
INSERT INTO `area` VALUES ('230722', '嘉荫县', '230700');
INSERT INTO `area` VALUES ('230781', '铁力市', '230700');
INSERT INTO `area` VALUES ('230800', '佳木斯市', '230000');
INSERT INTO `area` VALUES ('230801', '市辖区', '230800');
INSERT INTO `area` VALUES ('230803', '向阳区', '230801');
INSERT INTO `area` VALUES ('230804', '前进区', '230801');
INSERT INTO `area` VALUES ('230805', '东风区', '230801');
INSERT INTO `area` VALUES ('230811', '郊区', '230801');
INSERT INTO `area` VALUES ('230822', '桦南县', '230800');
INSERT INTO `area` VALUES ('230826', '桦川县', '230800');
INSERT INTO `area` VALUES ('230828', '汤原县', '230800');
INSERT INTO `area` VALUES ('230833', '抚远县', '230800');
INSERT INTO `area` VALUES ('230881', '同江市', '230800');
INSERT INTO `area` VALUES ('230882', '富锦市', '230800');
INSERT INTO `area` VALUES ('230900', '七台河市', '230000');
INSERT INTO `area` VALUES ('230901', '市辖区', '230900');
INSERT INTO `area` VALUES ('230902', '新兴区', '230901');
INSERT INTO `area` VALUES ('230903', '桃山区', '230901');
INSERT INTO `area` VALUES ('230904', '茄子河区', '230901');
INSERT INTO `area` VALUES ('230921', '勃利县', '230900');
INSERT INTO `area` VALUES ('231000', '牡丹江市', '230000');
INSERT INTO `area` VALUES ('231001', '市辖区', '231000');
INSERT INTO `area` VALUES ('231002', '东安区', '231001');
INSERT INTO `area` VALUES ('231003', '阳明区', '231001');
INSERT INTO `area` VALUES ('231004', '爱民区', '231001');
INSERT INTO `area` VALUES ('231005', '西安区', '231001');
INSERT INTO `area` VALUES ('231024', '东宁县', '231000');
INSERT INTO `area` VALUES ('231025', '林口县', '231000');
INSERT INTO `area` VALUES ('231081', '绥芬河市', '231000');
INSERT INTO `area` VALUES ('231083', '海林市', '231000');
INSERT INTO `area` VALUES ('231084', '宁安市', '231000');
INSERT INTO `area` VALUES ('231085', '穆棱市', '231000');
INSERT INTO `area` VALUES ('231100', '黑河市', '230000');
INSERT INTO `area` VALUES ('231101', '市辖区', '231100');
INSERT INTO `area` VALUES ('231102', '爱辉区', '231101');
INSERT INTO `area` VALUES ('231121', '嫩江县', '231100');
INSERT INTO `area` VALUES ('231123', '逊克县', '231100');
INSERT INTO `area` VALUES ('231124', '孙吴县', '231100');
INSERT INTO `area` VALUES ('231181', '北安市', '231100');
INSERT INTO `area` VALUES ('231182', '五大连池市', '231100');
INSERT INTO `area` VALUES ('231200', '绥化市', '230000');
INSERT INTO `area` VALUES ('231201', '北林区', '231200');
INSERT INTO `area` VALUES ('231221', '望奎县', '231200');
INSERT INTO `area` VALUES ('231222', '兰西县', '231200');
INSERT INTO `area` VALUES ('231223', '青冈县', '231200');
INSERT INTO `area` VALUES ('231224', '庆安县', '231200');
INSERT INTO `area` VALUES ('231225', '明水县', '231200');
INSERT INTO `area` VALUES ('231226', '绥棱县', '231200');
INSERT INTO `area` VALUES ('231281', '安达市', '231200');
INSERT INTO `area` VALUES ('231282', '肇东市', '231200');
INSERT INTO `area` VALUES ('231283', '海伦市', '231200');
INSERT INTO `area` VALUES ('232700', '大兴安岭地区', '230000');
INSERT INTO `area` VALUES ('232701', '加格达奇区', '232700');
INSERT INTO `area` VALUES ('232702', '松岭区', '232700');
INSERT INTO `area` VALUES ('232703', '新林区', '232700');
INSERT INTO `area` VALUES ('232704', '呼中区', '232700');
INSERT INTO `area` VALUES ('232721', '呼玛县', '232700');
INSERT INTO `area` VALUES ('232722', '塔河县', '232700');
INSERT INTO `area` VALUES ('232723', '漠河县', '232700');
INSERT INTO `area` VALUES ('310000', '上海辖区', '100002');
INSERT INTO `area` VALUES ('310100', '黄浦区', '310000');
INSERT INTO `area` VALUES ('310300', '卢湾区', '310000');
INSERT INTO `area` VALUES ('310400', '徐汇区', '310000');
INSERT INTO `area` VALUES ('310500', '长宁区', '310000');
INSERT INTO `area` VALUES ('310600', '静安区', '310000');
INSERT INTO `area` VALUES ('310700', '普陀区', '310000');
INSERT INTO `area` VALUES ('310800', '闸北区', '310000');
INSERT INTO `area` VALUES ('310900', '虹口区', '310000');
INSERT INTO `area` VALUES ('311000', '杨浦区', '310000');
INSERT INTO `area` VALUES ('311200', '闵行区', '310000');
INSERT INTO `area` VALUES ('311300', '宝山区', '310000');
INSERT INTO `area` VALUES ('311400', '嘉定区', '310000');
INSERT INTO `area` VALUES ('311500', '浦东新区', '310000');
INSERT INTO `area` VALUES ('311600', '金山区', '310000');
INSERT INTO `area` VALUES ('311700', '松江区', '310000');
INSERT INTO `area` VALUES ('311800', '青浦区', '310000');
INSERT INTO `area` VALUES ('311900', '南汇区', '310000');
INSERT INTO `area` VALUES ('312000', '奉贤区', '310000');
INSERT INTO `area` VALUES ('313000', '崇明县', '310000');
INSERT INTO `area` VALUES ('320000', '江苏', '0');
INSERT INTO `area` VALUES ('320100', '南京市', '320000');
INSERT INTO `area` VALUES ('320101', '市辖区', '320100');
INSERT INTO `area` VALUES ('320102', '玄武区', '320100');
INSERT INTO `area` VALUES ('320103', '白下区', '320100');
INSERT INTO `area` VALUES ('320104', '秦淮区', '320100');
INSERT INTO `area` VALUES ('320105', '建邺区', '320100');
INSERT INTO `area` VALUES ('320106', '鼓楼区', '320100');
INSERT INTO `area` VALUES ('320107', '下关区', '320100');
INSERT INTO `area` VALUES ('320111', '浦口区', '320100');
INSERT INTO `area` VALUES ('320113', '栖霞区', '320100');
INSERT INTO `area` VALUES ('320114', '雨花台区', '320100');
INSERT INTO `area` VALUES ('320115', '江宁区', '320100');
INSERT INTO `area` VALUES ('320116', '六合区', '320100');
INSERT INTO `area` VALUES ('320124', '溧水区', '320100');
INSERT INTO `area` VALUES ('320125', '高淳区', '320100');
INSERT INTO `area` VALUES ('320200', '无锡市', '320000');
INSERT INTO `area` VALUES ('320201', '市辖区', '320200');
INSERT INTO `area` VALUES ('320202', '崇安区', '320200');
INSERT INTO `area` VALUES ('320203', '南长区', '320200');
INSERT INTO `area` VALUES ('320204', '北塘区', '320200');
INSERT INTO `area` VALUES ('320205', '锡山区', '320200');
INSERT INTO `area` VALUES ('320206', '惠山区', '320200');
INSERT INTO `area` VALUES ('320211', '滨湖区', '320200');
INSERT INTO `area` VALUES ('320281', '江阴市', '320200');
INSERT INTO `area` VALUES ('320282', '宜兴市', '320200');
INSERT INTO `area` VALUES ('320300', '徐州市', '320000');
INSERT INTO `area` VALUES ('320301', '泉山区', '320300');
INSERT INTO `area` VALUES ('320302', '鼓楼区', '320300');
INSERT INTO `area` VALUES ('320303', '云龙区', '320300');
INSERT INTO `area` VALUES ('320304', '九里区', '320300');
INSERT INTO `area` VALUES ('320305', '贾汪区', '320300');
INSERT INTO `area` VALUES ('320321', '丰县', '320300');
INSERT INTO `area` VALUES ('320322', '沛县', '320300');
INSERT INTO `area` VALUES ('320323', '铜山县', '320300');
INSERT INTO `area` VALUES ('320324', '睢宁县', '320300');
INSERT INTO `area` VALUES ('320381', '新沂市', '320300');
INSERT INTO `area` VALUES ('320382', '邳州市', '320300');
INSERT INTO `area` VALUES ('320400', '常州市', '320000');
INSERT INTO `area` VALUES ('320401', '市辖区', '320400');
INSERT INTO `area` VALUES ('320402', '天宁区', '320401');
INSERT INTO `area` VALUES ('320404', '钟楼区', '320401');
INSERT INTO `area` VALUES ('320405', '戚墅堰区', '320401');
INSERT INTO `area` VALUES ('320411', '新北区', '320401');
INSERT INTO `area` VALUES ('320412', '武进区', '320401');
INSERT INTO `area` VALUES ('320481', '溧阳市', '320400');
INSERT INTO `area` VALUES ('320482', '金坛市', '320400');
INSERT INTO `area` VALUES ('320500', '苏州市', '320000');
INSERT INTO `area` VALUES ('320501', '市辖区', '320500');
INSERT INTO `area` VALUES ('320502', '沧浪区', '320500');
INSERT INTO `area` VALUES ('320503', '平江区', '320500');
INSERT INTO `area` VALUES ('320504', '金阊区', '320500');
INSERT INTO `area` VALUES ('320505', '虎丘区', '320500');
INSERT INTO `area` VALUES ('320506', '吴中区', '320500');
INSERT INTO `area` VALUES ('320507', '相城区', '320500');
INSERT INTO `area` VALUES ('320508', '姑苏区', '320500');
INSERT INTO `area` VALUES ('320509', '工业园区', '320500');
INSERT INTO `area` VALUES ('320581', '常熟市', '320500');
INSERT INTO `area` VALUES ('320582', '张家港市', '320500');
INSERT INTO `area` VALUES ('320583', '昆山市', '320500');
INSERT INTO `area` VALUES ('320584', '吴江市', '320500');
INSERT INTO `area` VALUES ('320585', '太仓市', '320500');
INSERT INTO `area` VALUES ('320600', '南通市', '320000');
INSERT INTO `area` VALUES ('320601', '市辖区', '320600');
INSERT INTO `area` VALUES ('320602', '崇川区', '320600');
INSERT INTO `area` VALUES ('320611', '港闸区', '320600');
INSERT INTO `area` VALUES ('320621', '海安县', '320600');
INSERT INTO `area` VALUES ('320623', '如东县', '320600');
INSERT INTO `area` VALUES ('320681', '启东市', '320600');
INSERT INTO `area` VALUES ('320682', '如皋市', '320600');
INSERT INTO `area` VALUES ('320683', '通州市', '320600');
INSERT INTO `area` VALUES ('320684', '海门市', '320600');
INSERT INTO `area` VALUES ('320700', '连云港市', '320000');
INSERT INTO `area` VALUES ('320701', '市辖区', '320700');
INSERT INTO `area` VALUES ('320703', '连云区', '320700');
INSERT INTO `area` VALUES ('320705', '新浦区', '320700');
INSERT INTO `area` VALUES ('320706', '海州区', '320700');
INSERT INTO `area` VALUES ('320721', '赣榆县', '320700');
INSERT INTO `area` VALUES ('320722', '东海县', '320700');
INSERT INTO `area` VALUES ('320723', '灌云县', '320700');
INSERT INTO `area` VALUES ('320724', '灌南县', '320700');
INSERT INTO `area` VALUES ('320800', '淮安市', '320000');
INSERT INTO `area` VALUES ('320801', '市辖区', '320800');
INSERT INTO `area` VALUES ('320802', '清河区', '320800');
INSERT INTO `area` VALUES ('320803', '楚州区', '320800');
INSERT INTO `area` VALUES ('320804', '淮阴区', '320800');
INSERT INTO `area` VALUES ('320811', '清浦区', '320800');
INSERT INTO `area` VALUES ('320826', '涟水县', '320800');
INSERT INTO `area` VALUES ('320829', '洪泽县', '320800');
INSERT INTO `area` VALUES ('320830', '盱眙县', '320800');
INSERT INTO `area` VALUES ('320831', '金湖县', '320800');
INSERT INTO `area` VALUES ('320900', '盐城市', '320000');
INSERT INTO `area` VALUES ('320901', '市辖区', '320900');
INSERT INTO `area` VALUES ('320902', '亭湖区', '320900');
INSERT INTO `area` VALUES ('320903', '盐都区', '320900');
INSERT INTO `area` VALUES ('320921', '响水县', '320900');
INSERT INTO `area` VALUES ('320922', '滨海县', '320900');
INSERT INTO `area` VALUES ('320923', '阜宁县', '320900');
INSERT INTO `area` VALUES ('320924', '射阳县', '320900');
INSERT INTO `area` VALUES ('320925', '建湖县', '320900');
INSERT INTO `area` VALUES ('320981', '东台市', '320900');
INSERT INTO `area` VALUES ('320982', '大丰市', '320900');
INSERT INTO `area` VALUES ('321000', '扬州市', '320000');
INSERT INTO `area` VALUES ('321001', '市辖区', '321000');
INSERT INTO `area` VALUES ('321002', '广陵区', '321000');
INSERT INTO `area` VALUES ('321003', '邗江区', '321000');
INSERT INTO `area` VALUES ('321011', '维扬区', '321000');
INSERT INTO `area` VALUES ('321023', '宝应县', '321000');
INSERT INTO `area` VALUES ('321081', '仪征市', '321000');
INSERT INTO `area` VALUES ('321084', '高邮市', '321000');
INSERT INTO `area` VALUES ('321088', '江都市', '321000');
INSERT INTO `area` VALUES ('321100', '镇江市', '320000');
INSERT INTO `area` VALUES ('321101', '市辖区', '321100');
INSERT INTO `area` VALUES ('321102', '京口区', '321100');
INSERT INTO `area` VALUES ('321111', '润州区', '321100');
INSERT INTO `area` VALUES ('321112', '丹徒区', '321100');
INSERT INTO `area` VALUES ('321181', '丹阳市', '321100');
INSERT INTO `area` VALUES ('321182', '扬中市', '321100');
INSERT INTO `area` VALUES ('321183', '句容市', '321100');
INSERT INTO `area` VALUES ('321200', '泰州市', '320000');
INSERT INTO `area` VALUES ('321201', '市辖区', '321200');
INSERT INTO `area` VALUES ('321202', '海陵区', '321200');
INSERT INTO `area` VALUES ('321203', '高港区', '321200');
INSERT INTO `area` VALUES ('321281', '兴化市', '321200');
INSERT INTO `area` VALUES ('321282', '靖江市', '321200');
INSERT INTO `area` VALUES ('321283', '泰兴市', '321200');
INSERT INTO `area` VALUES ('321284', '姜堰市', '321200');
INSERT INTO `area` VALUES ('321300', '宿迁市', '320000');
INSERT INTO `area` VALUES ('321301', '市辖区', '321300');
INSERT INTO `area` VALUES ('321302', '宿城区', '321300');
INSERT INTO `area` VALUES ('321311', '宿豫区', '321300');
INSERT INTO `area` VALUES ('321322', '沭阳县', '321300');
INSERT INTO `area` VALUES ('321323', '泗阳县', '321300');
INSERT INTO `area` VALUES ('321324', '泗洪县', '321300');
INSERT INTO `area` VALUES ('330000', '浙江', '0');
INSERT INTO `area` VALUES ('330100', '杭州市', '330000');
INSERT INTO `area` VALUES ('330101', '市辖区', '330100');
INSERT INTO `area` VALUES ('330102', '上城区', '330101');
INSERT INTO `area` VALUES ('330103', '下城区', '330101');
INSERT INTO `area` VALUES ('330104', '江干区', '330101');
INSERT INTO `area` VALUES ('330105', '拱墅区', '330101');
INSERT INTO `area` VALUES ('330106', '西湖区', '330101');
INSERT INTO `area` VALUES ('330108', '滨江区', '330101');
INSERT INTO `area` VALUES ('330109', '萧山区', '330101');
INSERT INTO `area` VALUES ('330110', '余杭区', '330101');
INSERT INTO `area` VALUES ('330122', '桐庐县', '330100');
INSERT INTO `area` VALUES ('330127', '淳安县', '330100');
INSERT INTO `area` VALUES ('330182', '建德市', '330100');
INSERT INTO `area` VALUES ('330183', '富阳市', '330100');
INSERT INTO `area` VALUES ('330185', '临安市', '330100');
INSERT INTO `area` VALUES ('330200', '宁波市', '330000');
INSERT INTO `area` VALUES ('330201', '市辖区', '330200');
INSERT INTO `area` VALUES ('330203', '海曙区', '330200');
INSERT INTO `area` VALUES ('330204', '江东区', '330200');
INSERT INTO `area` VALUES ('330205', '江北区', '330200');
INSERT INTO `area` VALUES ('330206', '北仑区', '330200');
INSERT INTO `area` VALUES ('330211', '镇海区', '330200');
INSERT INTO `area` VALUES ('330212', '鄞州区', '330200');
INSERT INTO `area` VALUES ('330225', '象山县', '330200');
INSERT INTO `area` VALUES ('330226', '宁海县', '330200');
INSERT INTO `area` VALUES ('330281', '余姚市', '330200');
INSERT INTO `area` VALUES ('330282', '慈溪市', '330200');
INSERT INTO `area` VALUES ('330283', '奉化市', '330200');
INSERT INTO `area` VALUES ('330300', '温州市', '330000');
INSERT INTO `area` VALUES ('330301', '市辖区', '330300');
INSERT INTO `area` VALUES ('330302', '鹿城区', '330301');
INSERT INTO `area` VALUES ('330303', '龙湾区', '330301');
INSERT INTO `area` VALUES ('330304', '瓯海区', '330301');
INSERT INTO `area` VALUES ('330322', '洞头县', '330300');
INSERT INTO `area` VALUES ('330324', '永嘉县', '330300');
INSERT INTO `area` VALUES ('330326', '平阳县', '330300');
INSERT INTO `area` VALUES ('330327', '苍南县', '330300');
INSERT INTO `area` VALUES ('330328', '文成县', '330300');
INSERT INTO `area` VALUES ('330329', '泰顺县', '330300');
INSERT INTO `area` VALUES ('330381', '瑞安市', '330300');
INSERT INTO `area` VALUES ('330382', '乐清市', '330300');
INSERT INTO `area` VALUES ('330400', '嘉兴市', '330000');
INSERT INTO `area` VALUES ('330401', '市辖区', '330400');
INSERT INTO `area` VALUES ('330402', '南湖区', '330401');
INSERT INTO `area` VALUES ('330411', '秀洲区', '330401');
INSERT INTO `area` VALUES ('330421', '嘉善县', '330400');
INSERT INTO `area` VALUES ('330424', '海盐县', '330400');
INSERT INTO `area` VALUES ('330481', '海宁市', '330400');
INSERT INTO `area` VALUES ('330482', '平湖市', '330400');
INSERT INTO `area` VALUES ('330483', '桐乡市', '330400');
INSERT INTO `area` VALUES ('330500', '湖州市', '330000');
INSERT INTO `area` VALUES ('330501', '市辖区', '330500');
INSERT INTO `area` VALUES ('330502', '吴兴区', '330500');
INSERT INTO `area` VALUES ('330503', '南浔区', '330500');
INSERT INTO `area` VALUES ('330521', '德清县', '330500');
INSERT INTO `area` VALUES ('330522', '长兴县', '330500');
INSERT INTO `area` VALUES ('330523', '安吉县', '330500');
INSERT INTO `area` VALUES ('330600', '绍兴市', '330000');
INSERT INTO `area` VALUES ('330601', '市辖区', '330600');
INSERT INTO `area` VALUES ('330602', '越城区', '330601');
INSERT INTO `area` VALUES ('330621', '绍兴县', '330600');
INSERT INTO `area` VALUES ('330624', '新昌县', '330600');
INSERT INTO `area` VALUES ('330681', '诸暨市', '330600');
INSERT INTO `area` VALUES ('330682', '上虞市', '330600');
INSERT INTO `area` VALUES ('330683', '嵊州市', '330600');
INSERT INTO `area` VALUES ('330700', '金华市', '330000');
INSERT INTO `area` VALUES ('330701', '市辖区', '330700');
INSERT INTO `area` VALUES ('330702', '婺城区', '330700');
INSERT INTO `area` VALUES ('330703', '金东区', '330700');
INSERT INTO `area` VALUES ('330723', '武义县', '330700');
INSERT INTO `area` VALUES ('330726', '浦江县', '330700');
INSERT INTO `area` VALUES ('330727', '磐安县', '330700');
INSERT INTO `area` VALUES ('330781', '兰溪市', '330700');
INSERT INTO `area` VALUES ('330782', '义乌市', '330700');
INSERT INTO `area` VALUES ('330783', '东阳市', '330700');
INSERT INTO `area` VALUES ('330784', '永康市', '330700');
INSERT INTO `area` VALUES ('330800', '衢州市', '330000');
INSERT INTO `area` VALUES ('330801', '市辖区', '330800');
INSERT INTO `area` VALUES ('330802', '柯城区', '330800');
INSERT INTO `area` VALUES ('330803', '衢江区', '330800');
INSERT INTO `area` VALUES ('330822', '常山县', '330800');
INSERT INTO `area` VALUES ('330824', '开化县', '330800');
INSERT INTO `area` VALUES ('330825', '龙游县', '330800');
INSERT INTO `area` VALUES ('330881', '江山市', '330800');
INSERT INTO `area` VALUES ('330900', '舟山市', '330000');
INSERT INTO `area` VALUES ('330901', '市辖区', '330900');
INSERT INTO `area` VALUES ('330902', '定海区', '330900');
INSERT INTO `area` VALUES ('330903', '普陀区', '330900');
INSERT INTO `area` VALUES ('330921', '岱山县', '330900');
INSERT INTO `area` VALUES ('330922', '嵊泗县', '330900');
INSERT INTO `area` VALUES ('331000', '台州市', '330000');
INSERT INTO `area` VALUES ('331001', '市辖区', '331000');
INSERT INTO `area` VALUES ('331002', '椒江区', '331000');
INSERT INTO `area` VALUES ('331003', '黄岩区', '331000');
INSERT INTO `area` VALUES ('331004', '路桥区', '331000');
INSERT INTO `area` VALUES ('331021', '玉环县', '331000');
INSERT INTO `area` VALUES ('331022', '三门县', '331000');
INSERT INTO `area` VALUES ('331023', '天台县', '331000');
INSERT INTO `area` VALUES ('331024', '仙居县', '331000');
INSERT INTO `area` VALUES ('331081', '温岭市', '331000');
INSERT INTO `area` VALUES ('331082', '临海市', '331000');
INSERT INTO `area` VALUES ('331100', '丽水市', '330000');
INSERT INTO `area` VALUES ('331101', '市辖区', '331100');
INSERT INTO `area` VALUES ('331102', '莲都区', '331000');
INSERT INTO `area` VALUES ('331121', '青田县', '331100');
INSERT INTO `area` VALUES ('331122', '缙云县', '331100');
INSERT INTO `area` VALUES ('331123', '遂昌县', '331100');
INSERT INTO `area` VALUES ('331124', '松阳县', '331100');
INSERT INTO `area` VALUES ('331125', '云和县', '331100');
INSERT INTO `area` VALUES ('331126', '庆元县', '331100');
INSERT INTO `area` VALUES ('331127', '景宁畲族自治县', '331100');
INSERT INTO `area` VALUES ('331181', '龙泉市', '331001');
INSERT INTO `area` VALUES ('340000', '安徽', '0');
INSERT INTO `area` VALUES ('340100', '合肥市', '340000');
INSERT INTO `area` VALUES ('340101', '市辖区', '340100');
INSERT INTO `area` VALUES ('340102', '瑶海区', '340100');
INSERT INTO `area` VALUES ('340103', '庐阳区', '340100');
INSERT INTO `area` VALUES ('340104', '蜀山区', '340100');
INSERT INTO `area` VALUES ('340111', '包河区', '340100');
INSERT INTO `area` VALUES ('340121', '长丰县', '340100');
INSERT INTO `area` VALUES ('340122', '肥东县', '340100');
INSERT INTO `area` VALUES ('340123', '肥西县', '340100');
INSERT INTO `area` VALUES ('340124', '庐江县', '340100');
INSERT INTO `area` VALUES ('340125', '新站试验区', '340100');
INSERT INTO `area` VALUES ('340181', '巢湖市', '340100');
INSERT INTO `area` VALUES ('340200', '芜湖市', '340000');
INSERT INTO `area` VALUES ('340201', '市辖区', '340200');
INSERT INTO `area` VALUES ('340202', '镜湖区', '340200');
INSERT INTO `area` VALUES ('340203', '马塘区', '340200');
INSERT INTO `area` VALUES ('340207', '鸠江区', '340200');
INSERT INTO `area` VALUES ('340208', '弋江区', '340200');
INSERT INTO `area` VALUES ('340221', '芜湖县', '340200');
INSERT INTO `area` VALUES ('340222', '繁昌县', '340200');
INSERT INTO `area` VALUES ('340223', '南陵县', '340200');
INSERT INTO `area` VALUES ('340225', '无为县', '340200');
INSERT INTO `area` VALUES ('340300', '蚌埠市', '340000');
INSERT INTO `area` VALUES ('340301', '市辖区', '340300');
INSERT INTO `area` VALUES ('340302', '龙子湖区', '340300');
INSERT INTO `area` VALUES ('340303', '蚌山区', '340300');
INSERT INTO `area` VALUES ('340304', '禹会区', '340300');
INSERT INTO `area` VALUES ('340311', '淮上区', '340300');
INSERT INTO `area` VALUES ('340321', '怀远县', '340300');
INSERT INTO `area` VALUES ('340322', '五河县', '340300');
INSERT INTO `area` VALUES ('340323', '固镇县', '340300');
INSERT INTO `area` VALUES ('340400', '淮南市', '340000');
INSERT INTO `area` VALUES ('340401', '市辖区', '340400');
INSERT INTO `area` VALUES ('340402', '大通区', '340400');
INSERT INTO `area` VALUES ('340403', '田家庵区', '340400');
INSERT INTO `area` VALUES ('340404', '谢家集区', '340400');
INSERT INTO `area` VALUES ('340405', '八公山区', '340400');
INSERT INTO `area` VALUES ('340406', '潘集区', '340400');
INSERT INTO `area` VALUES ('340421', '凤台县', '340400');
INSERT INTO `area` VALUES ('340500', '马鞍山市', '340000');
INSERT INTO `area` VALUES ('340501', '市辖区', '340500');
INSERT INTO `area` VALUES ('340502', '金家庄区', '340500');
INSERT INTO `area` VALUES ('340503', '花山区', '340500');
INSERT INTO `area` VALUES ('340504', '雨山区', '340500');
INSERT INTO `area` VALUES ('340521', '当涂县', '340500');
INSERT INTO `area` VALUES ('340522', '含山县', '340500');
INSERT INTO `area` VALUES ('340523', '和县', '340500');
INSERT INTO `area` VALUES ('340600', '淮北市', '340000');
INSERT INTO `area` VALUES ('340601', '市辖区', '340600');
INSERT INTO `area` VALUES ('340602', '杜集区', '340600');
INSERT INTO `area` VALUES ('340603', '相山区', '340600');
INSERT INTO `area` VALUES ('340604', '烈山区', '340600');
INSERT INTO `area` VALUES ('340621', '濉溪县', '340600');
INSERT INTO `area` VALUES ('340700', '铜陵市', '340000');
INSERT INTO `area` VALUES ('340701', '市辖区', '340700');
INSERT INTO `area` VALUES ('340702', '铜官山区', '340700');
INSERT INTO `area` VALUES ('340703', '狮子山区', '340700');
INSERT INTO `area` VALUES ('340711', '郊区', '340700');
INSERT INTO `area` VALUES ('340721', '铜陵县', '340700');
INSERT INTO `area` VALUES ('340800', '安庆市', '340000');
INSERT INTO `area` VALUES ('340801', '市辖区', '340800');
INSERT INTO `area` VALUES ('340802', '迎江区', '340800');
INSERT INTO `area` VALUES ('340803', '大观区', '340800');
INSERT INTO `area` VALUES ('340811', '宜秀区', '340800');
INSERT INTO `area` VALUES ('340822', '怀宁县', '340800');
INSERT INTO `area` VALUES ('340823', '枞阳县', '340800');
INSERT INTO `area` VALUES ('340824', '潜山县', '340800');
INSERT INTO `area` VALUES ('340825', '太湖县', '340800');
INSERT INTO `area` VALUES ('340826', '宿松县', '340800');
INSERT INTO `area` VALUES ('340827', '望江县', '340800');
INSERT INTO `area` VALUES ('340828', '岳西县', '340800');
INSERT INTO `area` VALUES ('340881', '桐城市', '340800');
INSERT INTO `area` VALUES ('341000', '黄山市', '340000');
INSERT INTO `area` VALUES ('341001', '黄山区', '341000');
INSERT INTO `area` VALUES ('341002', '屯溪区', '341000');
INSERT INTO `area` VALUES ('341004', '徽州区', '341000');
INSERT INTO `area` VALUES ('341021', '歙县', '341000');
INSERT INTO `area` VALUES ('341022', '休宁县', '341000');
INSERT INTO `area` VALUES ('341023', '黟县', '341000');
INSERT INTO `area` VALUES ('341024', '祁门县', '341000');
INSERT INTO `area` VALUES ('341091', '汤口镇', '341000');
INSERT INTO `area` VALUES ('341100', '滁州市', '340000');
INSERT INTO `area` VALUES ('341101', '市辖区', '341100');
INSERT INTO `area` VALUES ('341102', '琅琊区', '341101');
INSERT INTO `area` VALUES ('341103', '南谯区', '341101');
INSERT INTO `area` VALUES ('341122', '来安县', '341100');
INSERT INTO `area` VALUES ('341124', '全椒县', '341100');
INSERT INTO `area` VALUES ('341125', '定远县', '341100');
INSERT INTO `area` VALUES ('341126', '凤阳县', '341100');
INSERT INTO `area` VALUES ('341181', '天长市', '341100');
INSERT INTO `area` VALUES ('341182', '明光市', '341100');
INSERT INTO `area` VALUES ('341200', '阜阳市', '340000');
INSERT INTO `area` VALUES ('341201', '颍泉区', '341200');
INSERT INTO `area` VALUES ('341202', '颍州区', '341200');
INSERT INTO `area` VALUES ('341203', '颍东区', '341200');
INSERT INTO `area` VALUES ('341221', '临泉县', '341200');
INSERT INTO `area` VALUES ('341222', '太和县', '341200');
INSERT INTO `area` VALUES ('341225', '阜南县', '341200');
INSERT INTO `area` VALUES ('341226', '颍上县', '341200');
INSERT INTO `area` VALUES ('341282', '界首市', '341200');
INSERT INTO `area` VALUES ('341300', '宿州市', '340000');
INSERT INTO `area` VALUES ('341301', '市辖区', '341300');
INSERT INTO `area` VALUES ('341302', '埇桥区', '341301');
INSERT INTO `area` VALUES ('341321', '砀山县', '341300');
INSERT INTO `area` VALUES ('341322', '萧县', '341300');
INSERT INTO `area` VALUES ('341323', '灵璧县', '341300');
INSERT INTO `area` VALUES ('341324', '泗县', '341300');
INSERT INTO `area` VALUES ('341402', '居巢区', null);
INSERT INTO `area` VALUES ('341500', '六安市', '340000');
INSERT INTO `area` VALUES ('341501', '市辖区', '341500');
INSERT INTO `area` VALUES ('341502', '金安区', '341501');
INSERT INTO `area` VALUES ('341503', '裕安区', '341501');
INSERT INTO `area` VALUES ('341521', '寿县', '341500');
INSERT INTO `area` VALUES ('341522', '霍邱县', '341500');
INSERT INTO `area` VALUES ('341523', '舒城县', '341500');
INSERT INTO `area` VALUES ('341524', '金寨县', '341500');
INSERT INTO `area` VALUES ('341525', '霍山县', '341500');
INSERT INTO `area` VALUES ('341600', '亳州市', '340000');
INSERT INTO `area` VALUES ('341601', '谯城区', '341600');
INSERT INTO `area` VALUES ('341621', '涡阳县', '341600');
INSERT INTO `area` VALUES ('341622', '蒙城县', '341600');
INSERT INTO `area` VALUES ('341623', '利辛县', '341600');
INSERT INTO `area` VALUES ('341700', '池州市', '340000');
INSERT INTO `area` VALUES ('341701', '市辖区', '341700');
INSERT INTO `area` VALUES ('341702', '贵池区', '341701');
INSERT INTO `area` VALUES ('341721', '东至县', '341700');
INSERT INTO `area` VALUES ('341722', '石台县', '341700');
INSERT INTO `area` VALUES ('341723', '青阳县', '341700');
INSERT INTO `area` VALUES ('341800', '宣城市', '340000');
INSERT INTO `area` VALUES ('341801', '市辖区', '341800');
INSERT INTO `area` VALUES ('341802', '宣州区', '341801');
INSERT INTO `area` VALUES ('341821', '郎溪县', '341800');
INSERT INTO `area` VALUES ('341822', '广德县', '341800');
INSERT INTO `area` VALUES ('341823', '泾县', '341800');
INSERT INTO `area` VALUES ('341824', '绩溪县', '341800');
INSERT INTO `area` VALUES ('341825', '旌德县', '341800');
INSERT INTO `area` VALUES ('341881', '宁国市', '341800');
INSERT INTO `area` VALUES ('350000', '福建', '0');
INSERT INTO `area` VALUES ('350100', '福州市', '350000');
INSERT INTO `area` VALUES ('350101', '市辖区', '350100');
INSERT INTO `area` VALUES ('350102', '鼓楼区', '350100');
INSERT INTO `area` VALUES ('350103', '台江区', '350100');
INSERT INTO `area` VALUES ('350104', '仓山区', '350100');
INSERT INTO `area` VALUES ('350105', '马尾区', '350100');
INSERT INTO `area` VALUES ('350111', '晋安区', '350100');
INSERT INTO `area` VALUES ('350121', '闽侯县', '350100');
INSERT INTO `area` VALUES ('350122', '连江县', '350100');
INSERT INTO `area` VALUES ('350123', '罗源县', '350100');
INSERT INTO `area` VALUES ('350124', '闽清县', '350100');
INSERT INTO `area` VALUES ('350125', '永泰县', '350100');
INSERT INTO `area` VALUES ('350128', '平潭县', '350100');
INSERT INTO `area` VALUES ('350181', '福清市', '350100');
INSERT INTO `area` VALUES ('350182', '长乐市', '350100');
INSERT INTO `area` VALUES ('350200', '厦门市', '350000');
INSERT INTO `area` VALUES ('350201', '市辖区', '350200');
INSERT INTO `area` VALUES ('350203', '思明区', '350200');
INSERT INTO `area` VALUES ('350205', '海沧区', '350200');
INSERT INTO `area` VALUES ('350206', '湖里区', '350200');
INSERT INTO `area` VALUES ('350211', '集美区', '350200');
INSERT INTO `area` VALUES ('350212', '同安区', '350200');
INSERT INTO `area` VALUES ('350213', '翔安区', '350200');
INSERT INTO `area` VALUES ('350300', '莆田市', '350000');
INSERT INTO `area` VALUES ('350301', '市辖区', '350300');
INSERT INTO `area` VALUES ('350302', '城厢区', '350300');
INSERT INTO `area` VALUES ('350303', '涵江区', '350300');
INSERT INTO `area` VALUES ('350304', '荔城区', '350300');
INSERT INTO `area` VALUES ('350305', '秀屿区', '350300');
INSERT INTO `area` VALUES ('350322', '仙游县', '350300');
INSERT INTO `area` VALUES ('350400', '三明市', '350000');
INSERT INTO `area` VALUES ('350401', '市辖区', '350400');
INSERT INTO `area` VALUES ('350402', '梅列区', '350400');
INSERT INTO `area` VALUES ('350403', '三元区', '350400');
INSERT INTO `area` VALUES ('350421', '明溪县', '350400');
INSERT INTO `area` VALUES ('350423', '清流县', '350400');
INSERT INTO `area` VALUES ('350424', '宁化县', '350400');
INSERT INTO `area` VALUES ('350425', '大田县', '350400');
INSERT INTO `area` VALUES ('350426', '尤溪县', '350400');
INSERT INTO `area` VALUES ('350427', '沙县', '350400');
INSERT INTO `area` VALUES ('350428', '将乐县', '350400');
INSERT INTO `area` VALUES ('350429', '泰宁县', '350400');
INSERT INTO `area` VALUES ('350430', '建宁县', '350400');
INSERT INTO `area` VALUES ('350481', '永安市', '350400');
INSERT INTO `area` VALUES ('350500', '泉州市', '350000');
INSERT INTO `area` VALUES ('350501', '市辖区', '350500');
INSERT INTO `area` VALUES ('350502', '鲤城区', '350500');
INSERT INTO `area` VALUES ('350503', '丰泽区', '350500');
INSERT INTO `area` VALUES ('350504', '洛江区', '350500');
INSERT INTO `area` VALUES ('350505', '泉港区', '350500');
INSERT INTO `area` VALUES ('350521', '惠安县', '350500');
INSERT INTO `area` VALUES ('350524', '安溪县', '350500');
INSERT INTO `area` VALUES ('350525', '永春县', '350500');
INSERT INTO `area` VALUES ('350526', '德化县', '350500');
INSERT INTO `area` VALUES ('350527', '金门县', '350500');
INSERT INTO `area` VALUES ('350581', '石狮市', '350500');
INSERT INTO `area` VALUES ('350582', '晋江市', '350500');
INSERT INTO `area` VALUES ('350583', '南安市', '350500');
INSERT INTO `area` VALUES ('350600', '漳州市', '350000');
INSERT INTO `area` VALUES ('350601', '市辖区', '350600');
INSERT INTO `area` VALUES ('350602', '芗城区', '350601');
INSERT INTO `area` VALUES ('350603', '龙文区', '350601');
INSERT INTO `area` VALUES ('350622', '云霄县', '350600');
INSERT INTO `area` VALUES ('350623', '漳浦县', '350600');
INSERT INTO `area` VALUES ('350624', '诏安县', '350600');
INSERT INTO `area` VALUES ('350625', '长泰县', '350600');
INSERT INTO `area` VALUES ('350626', '东山县', '350600');
INSERT INTO `area` VALUES ('350627', '南靖县', '350600');
INSERT INTO `area` VALUES ('350628', '平和县', '350600');
INSERT INTO `area` VALUES ('350629', '华安县', '350600');
INSERT INTO `area` VALUES ('350681', '龙海市', '350600');
INSERT INTO `area` VALUES ('350700', '南平市', '350000');
INSERT INTO `area` VALUES ('350701', '市辖区', '350700');
INSERT INTO `area` VALUES ('350702', '延平区', '350701');
INSERT INTO `area` VALUES ('350721', '顺昌县', '350700');
INSERT INTO `area` VALUES ('350722', '浦城县', '350700');
INSERT INTO `area` VALUES ('350723', '光泽县', '350700');
INSERT INTO `area` VALUES ('350724', '松溪县', '350700');
INSERT INTO `area` VALUES ('350725', '政和县', '350700');
INSERT INTO `area` VALUES ('350781', '邵武市', '350700');
INSERT INTO `area` VALUES ('350782', '武夷山市', '350700');
INSERT INTO `area` VALUES ('350783', '建瓯市', '350700');
INSERT INTO `area` VALUES ('350784', '建阳市', '350700');
INSERT INTO `area` VALUES ('350800', '龙岩市', '350000');
INSERT INTO `area` VALUES ('350801', '市辖区', '350800');
INSERT INTO `area` VALUES ('350802', '新罗区', '350801');
INSERT INTO `area` VALUES ('350821', '长汀县', '350800');
INSERT INTO `area` VALUES ('350822', '永定县', '350800');
INSERT INTO `area` VALUES ('350823', '上杭县', '350800');
INSERT INTO `area` VALUES ('350824', '武平县', '350800');
INSERT INTO `area` VALUES ('350825', '连城县', '350800');
INSERT INTO `area` VALUES ('350881', '漳平市', '350800');
INSERT INTO `area` VALUES ('350900', '宁德市', '350000');
INSERT INTO `area` VALUES ('350901', '市辖区', '350900');
INSERT INTO `area` VALUES ('350902', '蕉城区', '350900');
INSERT INTO `area` VALUES ('350921', '霞浦县', '350900');
INSERT INTO `area` VALUES ('350922', '古田县', '350900');
INSERT INTO `area` VALUES ('350923', '屏南县', '350900');
INSERT INTO `area` VALUES ('350924', '寿宁县', '350900');
INSERT INTO `area` VALUES ('350925', '周宁县', '350900');
INSERT INTO `area` VALUES ('350926', '柘荣县', '350900');
INSERT INTO `area` VALUES ('350981', '福安市', '350900');
INSERT INTO `area` VALUES ('350982', '福鼎市', '350900');
INSERT INTO `area` VALUES ('360000', '江西', '0');
INSERT INTO `area` VALUES ('360100', '南昌市', '360000');
INSERT INTO `area` VALUES ('360101', '市辖区', '360100');
INSERT INTO `area` VALUES ('360102', '东湖区', '360100');
INSERT INTO `area` VALUES ('360103', '西湖区', '360100');
INSERT INTO `area` VALUES ('360104', '青云谱区', '360100');
INSERT INTO `area` VALUES ('360105', '湾里区', '360100');
INSERT INTO `area` VALUES ('360111', '青山湖区', '360100');
INSERT INTO `area` VALUES ('360121', '南昌县', '360100');
INSERT INTO `area` VALUES ('360122', '新建县', '360100');
INSERT INTO `area` VALUES ('360123', '安义县', '360100');
INSERT INTO `area` VALUES ('360124', '进贤县', '360100');
INSERT INTO `area` VALUES ('360200', '景德镇市', '360000');
INSERT INTO `area` VALUES ('360201', '市辖区', '360200');
INSERT INTO `area` VALUES ('360202', '昌江区', '360201');
INSERT INTO `area` VALUES ('360203', '珠山区', '360201');
INSERT INTO `area` VALUES ('360222', '浮梁县', '360200');
INSERT INTO `area` VALUES ('360281', '乐平市', '360200');
INSERT INTO `area` VALUES ('360300', '萍乡市', '360000');
INSERT INTO `area` VALUES ('360301', '市辖区', '360300');
INSERT INTO `area` VALUES ('360302', '安源区', '360301');
INSERT INTO `area` VALUES ('360313', '湘东区', '360301');
INSERT INTO `area` VALUES ('360321', '莲花县', '360300');
INSERT INTO `area` VALUES ('360322', '上栗县', '360300');
INSERT INTO `area` VALUES ('360323', '芦溪县', '360300');
INSERT INTO `area` VALUES ('360400', '九江市', '360000');
INSERT INTO `area` VALUES ('360401', '市辖区', '360400');
INSERT INTO `area` VALUES ('360402', '庐山区', '360401');
INSERT INTO `area` VALUES ('360403', '浔阳区', '360401');
INSERT INTO `area` VALUES ('360421', '九江县', '360400');
INSERT INTO `area` VALUES ('360423', '武宁县', '360400');
INSERT INTO `area` VALUES ('360424', '修水县', '360400');
INSERT INTO `area` VALUES ('360425', '永修县', '360400');
INSERT INTO `area` VALUES ('360426', '德安县', '360400');
INSERT INTO `area` VALUES ('360427', '星子县', '360400');
INSERT INTO `area` VALUES ('360428', '都昌县', '360400');
INSERT INTO `area` VALUES ('360429', '湖口县', '360400');
INSERT INTO `area` VALUES ('360430', '彭泽县', '360400');
INSERT INTO `area` VALUES ('360481', '瑞昌市', '360400');
INSERT INTO `area` VALUES ('360482', '共青城市', '360400');
INSERT INTO `area` VALUES ('360500', '新余市', '360000');
INSERT INTO `area` VALUES ('360501', '市辖区', '360500');
INSERT INTO `area` VALUES ('360502', '渝水区', '360501');
INSERT INTO `area` VALUES ('360521', '分宜县', '360500');
INSERT INTO `area` VALUES ('360600', '鹰潭市', '360000');
INSERT INTO `area` VALUES ('360601', '市辖区', '360600');
INSERT INTO `area` VALUES ('360602', '月湖区', '360601');
INSERT INTO `area` VALUES ('360622', '余江县', '360600');
INSERT INTO `area` VALUES ('360681', '贵溪市', '360600');
INSERT INTO `area` VALUES ('360700', '赣州市', '360000');
INSERT INTO `area` VALUES ('360701', '市辖区', '360700');
INSERT INTO `area` VALUES ('360702', '章贡区', '360700');
INSERT INTO `area` VALUES ('360721', '赣县', '360700');
INSERT INTO `area` VALUES ('360722', '信丰县', '360700');
INSERT INTO `area` VALUES ('360723', '大余县', '360700');
INSERT INTO `area` VALUES ('360724', '上犹县', '360700');
INSERT INTO `area` VALUES ('360725', '崇义县', '360700');
INSERT INTO `area` VALUES ('360726', '安远县', '360700');
INSERT INTO `area` VALUES ('360727', '龙南县', '360700');
INSERT INTO `area` VALUES ('360728', '定南县', '360700');
INSERT INTO `area` VALUES ('360729', '全南县', '360700');
INSERT INTO `area` VALUES ('360730', '宁都县', '360700');
INSERT INTO `area` VALUES ('360731', '于都县', '360700');
INSERT INTO `area` VALUES ('360732', '兴国县', '360700');
INSERT INTO `area` VALUES ('360733', '会昌县', '360700');
INSERT INTO `area` VALUES ('360734', '寻乌县', '360700');
INSERT INTO `area` VALUES ('360735', '石城县', '360700');
INSERT INTO `area` VALUES ('360781', '瑞金市', '360700');
INSERT INTO `area` VALUES ('360782', '南康市', '360700');
INSERT INTO `area` VALUES ('360800', '吉安市', '360000');
INSERT INTO `area` VALUES ('360801', '市辖区', '360800');
INSERT INTO `area` VALUES ('360802', '吉州区', '360800');
INSERT INTO `area` VALUES ('360803', '青原区', '360800');
INSERT INTO `area` VALUES ('360821', '吉安县', '360800');
INSERT INTO `area` VALUES ('360822', '吉水县', '360800');
INSERT INTO `area` VALUES ('360823', '峡江县', '360800');
INSERT INTO `area` VALUES ('360824', '新干县', '360800');
INSERT INTO `area` VALUES ('360825', '永丰县', '360800');
INSERT INTO `area` VALUES ('360826', '泰和县', '360800');
INSERT INTO `area` VALUES ('360827', '遂川县', '360800');
INSERT INTO `area` VALUES ('360828', '万安县', '360800');
INSERT INTO `area` VALUES ('360829', '安福县', '360800');
INSERT INTO `area` VALUES ('360830', '永新县', '360800');
INSERT INTO `area` VALUES ('360881', '井冈山市', '360800');
INSERT INTO `area` VALUES ('360900', '宜春市', '360000');
INSERT INTO `area` VALUES ('360901', '市辖区', '360900');
INSERT INTO `area` VALUES ('360902', '袁州区', '360901');
INSERT INTO `area` VALUES ('360921', '奉新县', '360900');
INSERT INTO `area` VALUES ('360922', '万载县', '360900');
INSERT INTO `area` VALUES ('360923', '上高县', '360900');
INSERT INTO `area` VALUES ('360924', '宜丰县', '360900');
INSERT INTO `area` VALUES ('360925', '靖安县', '360900');
INSERT INTO `area` VALUES ('360926', '铜鼓县', '360900');
INSERT INTO `area` VALUES ('360981', '丰城市', '360900');
INSERT INTO `area` VALUES ('360982', '樟树市', '360900');
INSERT INTO `area` VALUES ('360983', '高安市', '360900');
INSERT INTO `area` VALUES ('361000', '抚州市', '360000');
INSERT INTO `area` VALUES ('361001', '市辖区', '361000');
INSERT INTO `area` VALUES ('361002', '临川区', '361001');
INSERT INTO `area` VALUES ('361021', '南城县', '361000');
INSERT INTO `area` VALUES ('361022', '黎川县', '361000');
INSERT INTO `area` VALUES ('361023', '南丰县', '361000');
INSERT INTO `area` VALUES ('361024', '崇仁县', '361000');
INSERT INTO `area` VALUES ('361025', '乐安县', '361000');
INSERT INTO `area` VALUES ('361026', '宜黄县', '361000');
INSERT INTO `area` VALUES ('361027', '金溪县', '361000');
INSERT INTO `area` VALUES ('361028', '资溪县', '361000');
INSERT INTO `area` VALUES ('361029', '东乡县', '361000');
INSERT INTO `area` VALUES ('361030', '广昌县', '361000');
INSERT INTO `area` VALUES ('361100', '上饶市', '360000');
INSERT INTO `area` VALUES ('361101', '市辖区', '361100');
INSERT INTO `area` VALUES ('361102', '信州区', '361101');
INSERT INTO `area` VALUES ('361121', '上饶县', '361100');
INSERT INTO `area` VALUES ('361122', '广丰县', '361100');
INSERT INTO `area` VALUES ('361123', '玉山县', '361100');
INSERT INTO `area` VALUES ('361124', '铅山县', '361100');
INSERT INTO `area` VALUES ('361125', '横峰县', '361100');
INSERT INTO `area` VALUES ('361126', '弋阳县', '361100');
INSERT INTO `area` VALUES ('361127', '余干县', '361100');
INSERT INTO `area` VALUES ('361128', '鄱阳县', '361100');
INSERT INTO `area` VALUES ('361129', '万年县', '361100');
INSERT INTO `area` VALUES ('361130', '婺源县', '361100');
INSERT INTO `area` VALUES ('361181', '德兴市', '361100');
INSERT INTO `area` VALUES ('370000', '山东', '0');
INSERT INTO `area` VALUES ('370100', '济南市', '370000');
INSERT INTO `area` VALUES ('370101', '市辖区', '370100');
INSERT INTO `area` VALUES ('370102', '历下区', '370101');
INSERT INTO `area` VALUES ('370103', '市中区', '370101');
INSERT INTO `area` VALUES ('370104', '槐荫区', '370101');
INSERT INTO `area` VALUES ('370105', '天桥区', '370101');
INSERT INTO `area` VALUES ('370112', '历城区', '370101');
INSERT INTO `area` VALUES ('370113', '长清区', '370101');
INSERT INTO `area` VALUES ('370124', '平阴县', '370100');
INSERT INTO `area` VALUES ('370125', '济阳县', '370100');
INSERT INTO `area` VALUES ('370126', '商河县', '370100');
INSERT INTO `area` VALUES ('370181', '章丘市', '370100');
INSERT INTO `area` VALUES ('370200', '青岛市', '370000');
INSERT INTO `area` VALUES ('370201', '市辖区', '370200');
INSERT INTO `area` VALUES ('370202', '市南区', '370200');
INSERT INTO `area` VALUES ('370203', '市北区', '370200');
INSERT INTO `area` VALUES ('370205', '四方区', '370200');
INSERT INTO `area` VALUES ('370211', '黄岛区', '370200');
INSERT INTO `area` VALUES ('370212', '崂山区', '370200');
INSERT INTO `area` VALUES ('370213', '李沧区', '370200');
INSERT INTO `area` VALUES ('370214', '城阳区', '370200');
INSERT INTO `area` VALUES ('370281', '胶州市', '370200');
INSERT INTO `area` VALUES ('370282', '即墨市', '370200');
INSERT INTO `area` VALUES ('370283', '平度市', '370200');
INSERT INTO `area` VALUES ('370284', '胶南市', '370200');
INSERT INTO `area` VALUES ('370285', '莱西市', '370200');
INSERT INTO `area` VALUES ('370300', '淄博市', '370000');
INSERT INTO `area` VALUES ('370301', '市辖区', '370300');
INSERT INTO `area` VALUES ('370302', '淄川区', '370301');
INSERT INTO `area` VALUES ('370303', '张店区', '370301');
INSERT INTO `area` VALUES ('370304', '博山区', '370301');
INSERT INTO `area` VALUES ('370305', '临淄区', '370301');
INSERT INTO `area` VALUES ('370306', '周村区', '370301');
INSERT INTO `area` VALUES ('370321', '桓台县', '370300');
INSERT INTO `area` VALUES ('370322', '高青县', '370300');
INSERT INTO `area` VALUES ('370323', '沂源县', '370300');
INSERT INTO `area` VALUES ('370400', '枣庄市', '370000');
INSERT INTO `area` VALUES ('370401', '市辖区', '370400');
INSERT INTO `area` VALUES ('370402', '市中区', '370400');
INSERT INTO `area` VALUES ('370403', '薛城区', '370400');
INSERT INTO `area` VALUES ('370404', '峄城区', '370400');
INSERT INTO `area` VALUES ('370405', '台儿庄区', '370400');
INSERT INTO `area` VALUES ('370406', '山亭区', '370401');
INSERT INTO `area` VALUES ('370481', '滕州市', '370400');
INSERT INTO `area` VALUES ('370500', '东营市', '370000');
INSERT INTO `area` VALUES ('370501', '市辖区', '370500');
INSERT INTO `area` VALUES ('370502', '东营区', '370501');
INSERT INTO `area` VALUES ('370503', '河口区', '370501');
INSERT INTO `area` VALUES ('370521', '垦利县', '370500');
INSERT INTO `area` VALUES ('370522', '利津县', '370500');
INSERT INTO `area` VALUES ('370523', '广饶县', '370500');
INSERT INTO `area` VALUES ('370600', '烟台市', '370000');
INSERT INTO `area` VALUES ('370601', '市辖区', '370600');
INSERT INTO `area` VALUES ('370602', '芝罘区', '370601');
INSERT INTO `area` VALUES ('370611', '福山区', '370601');
INSERT INTO `area` VALUES ('370612', '牟平区', '370601');
INSERT INTO `area` VALUES ('370613', '莱山区', '370601');
INSERT INTO `area` VALUES ('370634', '长岛县', '370600');
INSERT INTO `area` VALUES ('370681', '龙口市', '370600');
INSERT INTO `area` VALUES ('370682', '莱阳市', '370600');
INSERT INTO `area` VALUES ('370683', '莱州市', '370600');
INSERT INTO `area` VALUES ('370684', '蓬莱市', '370600');
INSERT INTO `area` VALUES ('370685', '招远市', '370600');
INSERT INTO `area` VALUES ('370686', '栖霞市', '370600');
INSERT INTO `area` VALUES ('370687', '海阳市', '370600');
INSERT INTO `area` VALUES ('370700', '潍坊市', '370000');
INSERT INTO `area` VALUES ('370701', '市辖区', '370700');
INSERT INTO `area` VALUES ('370702', '潍城区', '370700');
INSERT INTO `area` VALUES ('370703', '寒亭区', '370700');
INSERT INTO `area` VALUES ('370704', '坊子区', '370700');
INSERT INTO `area` VALUES ('370705', '奎文区', '370701');
INSERT INTO `area` VALUES ('370724', '临朐县', '370700');
INSERT INTO `area` VALUES ('370725', '昌乐县', '370700');
INSERT INTO `area` VALUES ('370781', '青州市', '370700');
INSERT INTO `area` VALUES ('370782', '诸城市', '370700');
INSERT INTO `area` VALUES ('370783', '寿光市', '370700');
INSERT INTO `area` VALUES ('370784', '安丘市', '370700');
INSERT INTO `area` VALUES ('370785', '高密市', '370700');
INSERT INTO `area` VALUES ('370786', '昌邑市', '370700');
INSERT INTO `area` VALUES ('370800', '济宁市', '370000');
INSERT INTO `area` VALUES ('370801', '市辖区', '370800');
INSERT INTO `area` VALUES ('370802', '市中区', '370801');
INSERT INTO `area` VALUES ('370811', '任城区', '370801');
INSERT INTO `area` VALUES ('370826', '微山县', '370800');
INSERT INTO `area` VALUES ('370827', '鱼台县', '370800');
INSERT INTO `area` VALUES ('370828', '金乡县', '370800');
INSERT INTO `area` VALUES ('370829', '嘉祥县', '370800');
INSERT INTO `area` VALUES ('370830', '汶上县', '370800');
INSERT INTO `area` VALUES ('370831', '泗水县', '370800');
INSERT INTO `area` VALUES ('370832', '梁山县', '370800');
INSERT INTO `area` VALUES ('370881', '曲阜市', '370800');
INSERT INTO `area` VALUES ('370882', '兖州市', '370800');
INSERT INTO `area` VALUES ('370883', '邹城市', '370800');
INSERT INTO `area` VALUES ('370900', '泰安市', '370000');
INSERT INTO `area` VALUES ('370901', '岱岳区', '370900');
INSERT INTO `area` VALUES ('370902', '泰山区', '370900');
INSERT INTO `area` VALUES ('370921', '宁阳县', '370900');
INSERT INTO `area` VALUES ('370923', '东平县', '370900');
INSERT INTO `area` VALUES ('370982', '新泰市', '370900');
INSERT INTO `area` VALUES ('370983', '肥城市', '370900');
INSERT INTO `area` VALUES ('371000', '威海市', '370000');
INSERT INTO `area` VALUES ('371001', '市辖区', '371000');
INSERT INTO `area` VALUES ('371002', '环翠区', '371000');
INSERT INTO `area` VALUES ('371003', '临港区', '371000');
INSERT INTO `area` VALUES ('371081', '文登市', '371000');
INSERT INTO `area` VALUES ('371082', '荣成市', '371000');
INSERT INTO `area` VALUES ('371083', '乳山市', '371000');
INSERT INTO `area` VALUES ('371100', '日照市', '370000');
INSERT INTO `area` VALUES ('371101', '市辖区', '371100');
INSERT INTO `area` VALUES ('371102', '东港区', '371101');
INSERT INTO `area` VALUES ('371103', '岚山区', '371101');
INSERT INTO `area` VALUES ('371121', '五莲县', '371100');
INSERT INTO `area` VALUES ('371122', '莒县', '371100');
INSERT INTO `area` VALUES ('371200', '莱芜市', '370000');
INSERT INTO `area` VALUES ('371201', '市辖区', '371200');
INSERT INTO `area` VALUES ('371202', '莱城区', '371201');
INSERT INTO `area` VALUES ('371203', '钢城区', '371201');
INSERT INTO `area` VALUES ('371300', '临沂市', '370000');
INSERT INTO `area` VALUES ('371301', '市辖区', '371300');
INSERT INTO `area` VALUES ('371302', '兰山区', '371301');
INSERT INTO `area` VALUES ('371311', '罗庄区', '371301');
INSERT INTO `area` VALUES ('371312', '河东区', '371301');
INSERT INTO `area` VALUES ('371321', '沂南县', '371300');
INSERT INTO `area` VALUES ('371322', '郯城县', '371300');
INSERT INTO `area` VALUES ('371323', '沂水县', '371300');
INSERT INTO `area` VALUES ('371324', '苍山县', '371300');
INSERT INTO `area` VALUES ('371325', '费县', '371300');
INSERT INTO `area` VALUES ('371326', '平邑县', '371300');
INSERT INTO `area` VALUES ('371327', '莒南县', '371300');
INSERT INTO `area` VALUES ('371328', '蒙阴县', '371300');
INSERT INTO `area` VALUES ('371329', '临沭县', '371300');
INSERT INTO `area` VALUES ('371400', '德州市', '370000');
INSERT INTO `area` VALUES ('371401', '市辖区', '371400');
INSERT INTO `area` VALUES ('371402', '德城区', '371401');
INSERT INTO `area` VALUES ('371421', '陵县', '371400');
INSERT INTO `area` VALUES ('371422', '宁津县', '371400');
INSERT INTO `area` VALUES ('371423', '庆云县', '371400');
INSERT INTO `area` VALUES ('371424', '临邑县', '371400');
INSERT INTO `area` VALUES ('371425', '齐河县', '371400');
INSERT INTO `area` VALUES ('371426', '平原县', '371400');
INSERT INTO `area` VALUES ('371427', '夏津县', '371400');
INSERT INTO `area` VALUES ('371428', '武城县', '371400');
INSERT INTO `area` VALUES ('371481', '乐陵市', '371400');
INSERT INTO `area` VALUES ('371482', '禹城市', '371400');
INSERT INTO `area` VALUES ('371500', '聊城市', '370000');
INSERT INTO `area` VALUES ('371501', '市辖区', '371500');
INSERT INTO `area` VALUES ('371502', '东昌府区', '371501');
INSERT INTO `area` VALUES ('371521', '阳谷县', '371500');
INSERT INTO `area` VALUES ('371522', '莘县', '371500');
INSERT INTO `area` VALUES ('371523', '茌平县', '371500');
INSERT INTO `area` VALUES ('371524', '东阿县', '371500');
INSERT INTO `area` VALUES ('371525', '冠县', '371500');
INSERT INTO `area` VALUES ('371526', '高唐县', '371500');
INSERT INTO `area` VALUES ('371581', '临清市', '371500');
INSERT INTO `area` VALUES ('371600', '滨州市', '370000');
INSERT INTO `area` VALUES ('371601', '市辖区', '371600');
INSERT INTO `area` VALUES ('371602', '滨城区', '371601');
INSERT INTO `area` VALUES ('371621', '惠民县', '371600');
INSERT INTO `area` VALUES ('371622', '阳信县', '371600');
INSERT INTO `area` VALUES ('371623', '无棣县', '371600');
INSERT INTO `area` VALUES ('371624', '沾化县', '371600');
INSERT INTO `area` VALUES ('371625', '博兴县', '371600');
INSERT INTO `area` VALUES ('371626', '邹平县', '371600');
INSERT INTO `area` VALUES ('371700', '菏泽市', '370000');
INSERT INTO `area` VALUES ('371701', '市辖区', '371700');
INSERT INTO `area` VALUES ('371702', '牡丹区', '371701');
INSERT INTO `area` VALUES ('371721', '曹县', '371700');
INSERT INTO `area` VALUES ('371722', '单县', '371700');
INSERT INTO `area` VALUES ('371723', '成武县', '371700');
INSERT INTO `area` VALUES ('371724', '巨野县', '371700');
INSERT INTO `area` VALUES ('371725', '郓城县', '371700');
INSERT INTO `area` VALUES ('371726', '鄄城县', '371700');
INSERT INTO `area` VALUES ('371727', '定陶县', '371700');
INSERT INTO `area` VALUES ('371728', '东明县', '371700');
INSERT INTO `area` VALUES ('410000', '河南', '0');
INSERT INTO `area` VALUES ('410100', '郑州市', '410000');
INSERT INTO `area` VALUES ('410101', '金水区', '410100');
INSERT INTO `area` VALUES ('410102', '中原区', '410100');
INSERT INTO `area` VALUES ('410103', '二七区', '410100');
INSERT INTO `area` VALUES ('410104', '管城回族区', '410100');
INSERT INTO `area` VALUES ('410106', '上街区', '410100');
INSERT INTO `area` VALUES ('410108', '惠济区', '410100');
INSERT INTO `area` VALUES ('410122', '中牟县', '410100');
INSERT INTO `area` VALUES ('410181', '巩义市', '410100');
INSERT INTO `area` VALUES ('410182', '荥阳市', '410100');
INSERT INTO `area` VALUES ('410183', '新密市', '410100');
INSERT INTO `area` VALUES ('410184', '新郑市', '410100');
INSERT INTO `area` VALUES ('410185', '登封市', '410100');
INSERT INTO `area` VALUES ('410200', '开封市', '410000');
INSERT INTO `area` VALUES ('410201', '市辖区', '410200');
INSERT INTO `area` VALUES ('410202', '龙亭区', '410201');
INSERT INTO `area` VALUES ('410203', '顺河回族区', '410201');
INSERT INTO `area` VALUES ('410204', '鼓楼区', '410201');
INSERT INTO `area` VALUES ('410205', '禹王台区', '410201');
INSERT INTO `area` VALUES ('410211', '金明区', '410201');
INSERT INTO `area` VALUES ('410221', '杞县', '410200');
INSERT INTO `area` VALUES ('410222', '通许县', '410200');
INSERT INTO `area` VALUES ('410223', '尉氏县', '410200');
INSERT INTO `area` VALUES ('410224', '开封县', '410200');
INSERT INTO `area` VALUES ('410225', '兰考县', '410200');
INSERT INTO `area` VALUES ('410300', '洛阳市', '410000');
INSERT INTO `area` VALUES ('410301', '市辖区', '410300');
INSERT INTO `area` VALUES ('410302', '老城区', '410300');
INSERT INTO `area` VALUES ('410303', '西工区', '410300');
INSERT INTO `area` VALUES ('410304', '廛河回族区', '410300');
INSERT INTO `area` VALUES ('410305', '涧西区', '410300');
INSERT INTO `area` VALUES ('410306', '吉利区', '410300');
INSERT INTO `area` VALUES ('410307', '洛龙区', '410300');
INSERT INTO `area` VALUES ('410322', '孟津县', '410300');
INSERT INTO `area` VALUES ('410323', '新安县', '410300');
INSERT INTO `area` VALUES ('410324', '栾川县', '410300');
INSERT INTO `area` VALUES ('410325', '嵩县', '410300');
INSERT INTO `area` VALUES ('410326', '汝阳县', '410300');
INSERT INTO `area` VALUES ('410327', '宜阳县', '410300');
INSERT INTO `area` VALUES ('410328', '洛宁县', '410300');
INSERT INTO `area` VALUES ('410329', '伊川县', '410300');
INSERT INTO `area` VALUES ('410381', '偃师市', '410300');
INSERT INTO `area` VALUES ('410400', '平顶山市', '410000');
INSERT INTO `area` VALUES ('410401', '市辖区', '410400');
INSERT INTO `area` VALUES ('410402', '新华区', '410401');
INSERT INTO `area` VALUES ('410403', '卫东区', '410401');
INSERT INTO `area` VALUES ('410404', '石龙区', '410401');
INSERT INTO `area` VALUES ('410411', '湛河区', '410401');
INSERT INTO `area` VALUES ('410421', '宝丰县', '410400');
INSERT INTO `area` VALUES ('410422', '叶县', '410400');
INSERT INTO `area` VALUES ('410423', '鲁山县', '410400');
INSERT INTO `area` VALUES ('410425', '郏县', '410400');
INSERT INTO `area` VALUES ('410481', '舞钢市', '410400');
INSERT INTO `area` VALUES ('410482', '汝州市', '410400');
INSERT INTO `area` VALUES ('410500', '安阳市', '410000');
INSERT INTO `area` VALUES ('410501', '市辖区', '410500');
INSERT INTO `area` VALUES ('410502', '文峰区', '410501');
INSERT INTO `area` VALUES ('410503', '北关区', '410501');
INSERT INTO `area` VALUES ('410505', '殷都区', '410501');
INSERT INTO `area` VALUES ('410506', '龙安区', '410501');
INSERT INTO `area` VALUES ('410522', '安阳县', '410500');
INSERT INTO `area` VALUES ('410523', '汤阴县', '410500');
INSERT INTO `area` VALUES ('410526', '滑县', '410500');
INSERT INTO `area` VALUES ('410527', '内黄县', '410500');
INSERT INTO `area` VALUES ('410581', '林州市', '410500');
INSERT INTO `area` VALUES ('410600', '鹤壁市', '410000');
INSERT INTO `area` VALUES ('410601', '市辖区', '410600');
INSERT INTO `area` VALUES ('410602', '鹤山区', '410601');
INSERT INTO `area` VALUES ('410603', '山城区', '410601');
INSERT INTO `area` VALUES ('410611', '淇滨区', '410601');
INSERT INTO `area` VALUES ('410621', '浚县', '410600');
INSERT INTO `area` VALUES ('410622', '淇县', '410600');
INSERT INTO `area` VALUES ('410700', '新乡市', '410000');
INSERT INTO `area` VALUES ('410701', '市辖区', '410700');
INSERT INTO `area` VALUES ('410702', '红旗区', '410700');
INSERT INTO `area` VALUES ('410703', '卫滨区', '410700');
INSERT INTO `area` VALUES ('410704', '凤泉区', '410700');
INSERT INTO `area` VALUES ('410711', '牧野区', '410700');
INSERT INTO `area` VALUES ('410721', '新乡县', '410700');
INSERT INTO `area` VALUES ('410724', '获嘉县', '410700');
INSERT INTO `area` VALUES ('410725', '原阳县', '410700');
INSERT INTO `area` VALUES ('410726', '延津县', '410700');
INSERT INTO `area` VALUES ('410727', '封丘县', '410700');
INSERT INTO `area` VALUES ('410728', '长垣县', '410700');
INSERT INTO `area` VALUES ('410781', '卫辉市', '410700');
INSERT INTO `area` VALUES ('410782', '辉县市', '410700');
INSERT INTO `area` VALUES ('410800', '焦作市', '410000');
INSERT INTO `area` VALUES ('410801', '市辖区', '410800');
INSERT INTO `area` VALUES ('410802', '解放区', '410801');
INSERT INTO `area` VALUES ('410803', '中站区', '410800');
INSERT INTO `area` VALUES ('410804', '马村区', '410800');
INSERT INTO `area` VALUES ('410811', '山阳区', '410800');
INSERT INTO `area` VALUES ('410821', '修武县', '410800');
INSERT INTO `area` VALUES ('410822', '博爱县', '410800');
INSERT INTO `area` VALUES ('410823', '武陟县', '410800');
INSERT INTO `area` VALUES ('410825', '温县', '410800');
INSERT INTO `area` VALUES ('410882', '沁阳市', '410800');
INSERT INTO `area` VALUES ('410883', '孟州市', '410800');
INSERT INTO `area` VALUES ('410900', '濮阳市', '410000');
INSERT INTO `area` VALUES ('410901', '市辖区', '410900');
INSERT INTO `area` VALUES ('410902', '华龙区', '410901');
INSERT INTO `area` VALUES ('410922', '清丰县', '410900');
INSERT INTO `area` VALUES ('410923', '南乐县', '410900');
INSERT INTO `area` VALUES ('410926', '范县', '410900');
INSERT INTO `area` VALUES ('410927', '台前县', '410900');
INSERT INTO `area` VALUES ('410928', '濮阳县', '410900');
INSERT INTO `area` VALUES ('411000', '许昌市', '410000');
INSERT INTO `area` VALUES ('411001', '市辖区', '411000');
INSERT INTO `area` VALUES ('411002', '魏都区', '411001');
INSERT INTO `area` VALUES ('411023', '许昌县', '411000');
INSERT INTO `area` VALUES ('411024', '鄢陵县', '411000');
INSERT INTO `area` VALUES ('411025', '襄城县', '411000');
INSERT INTO `area` VALUES ('411081', '禹州市', '411000');
INSERT INTO `area` VALUES ('411082', '长葛市', '411000');
INSERT INTO `area` VALUES ('411100', '漯河市', '410000');
INSERT INTO `area` VALUES ('411101', '召陵区', '411100');
INSERT INTO `area` VALUES ('411102', '源汇区', '411100');
INSERT INTO `area` VALUES ('411103', '郾城区', '411100');
INSERT INTO `area` VALUES ('411121', '舞阳县', '411100');
INSERT INTO `area` VALUES ('411122', '临颍县', '411100');
INSERT INTO `area` VALUES ('411200', '三门峡市', '410000');
INSERT INTO `area` VALUES ('411201', '市辖区', '411200');
INSERT INTO `area` VALUES ('411202', '湖滨区', '411201');
INSERT INTO `area` VALUES ('411221', '渑池县', '411200');
INSERT INTO `area` VALUES ('411222', '陕县', '411200');
INSERT INTO `area` VALUES ('411224', '卢氏县', '411200');
INSERT INTO `area` VALUES ('411281', '义马市', '411200');
INSERT INTO `area` VALUES ('411282', '灵宝市', '411200');
INSERT INTO `area` VALUES ('411300', '南阳市', '410000');
INSERT INTO `area` VALUES ('411301', '市辖区', '411300');
INSERT INTO `area` VALUES ('411302', '宛城区', '411301');
INSERT INTO `area` VALUES ('411303', '卧龙区', '411301');
INSERT INTO `area` VALUES ('411321', '南召县', '411300');
INSERT INTO `area` VALUES ('411322', '方城县', '411300');
INSERT INTO `area` VALUES ('411323', '西峡县', '411300');
INSERT INTO `area` VALUES ('411324', '镇平县', '411300');
INSERT INTO `area` VALUES ('411325', '内乡县', '411300');
INSERT INTO `area` VALUES ('411326', '淅川县', '411300');
INSERT INTO `area` VALUES ('411327', '社旗县', '411300');
INSERT INTO `area` VALUES ('411328', '唐河县', '411300');
INSERT INTO `area` VALUES ('411329', '新野县', '411300');
INSERT INTO `area` VALUES ('411330', '桐柏县', '411300');
INSERT INTO `area` VALUES ('411381', '邓州市', '411300');
INSERT INTO `area` VALUES ('411400', '商丘市', '410000');
INSERT INTO `area` VALUES ('411401', '市辖区', '411400');
INSERT INTO `area` VALUES ('411402', '梁园区', '411400');
INSERT INTO `area` VALUES ('411403', '睢阳区', '411400');
INSERT INTO `area` VALUES ('411421', '民权县', '411400');
INSERT INTO `area` VALUES ('411422', '睢县', '411400');
INSERT INTO `area` VALUES ('411423', '宁陵县', '411400');
INSERT INTO `area` VALUES ('411424', '柘城县', '411400');
INSERT INTO `area` VALUES ('411425', '虞城县', '411400');
INSERT INTO `area` VALUES ('411426', '夏邑县', '411400');
INSERT INTO `area` VALUES ('411481', '永城市', '411400');
INSERT INTO `area` VALUES ('411482', '新区', '411400');
INSERT INTO `area` VALUES ('411500', '信阳市', '410000');
INSERT INTO `area` VALUES ('411501', '市辖区', '411500');
INSERT INTO `area` VALUES ('411502', '浉河区', '411501');
INSERT INTO `area` VALUES ('411503', '平桥区', '411501');
INSERT INTO `area` VALUES ('411521', '罗山县', '411500');
INSERT INTO `area` VALUES ('411522', '光山县', '411500');
INSERT INTO `area` VALUES ('411523', '新县', '411500');
INSERT INTO `area` VALUES ('411524', '商城县', '411500');
INSERT INTO `area` VALUES ('411525', '固始县', '411500');
INSERT INTO `area` VALUES ('411526', '潢川县', '411500');
INSERT INTO `area` VALUES ('411527', '淮滨县', '411500');
INSERT INTO `area` VALUES ('411528', '息县', '411500');
INSERT INTO `area` VALUES ('411600', '周口市', '410000');
INSERT INTO `area` VALUES ('411601', '市辖区', '411600');
INSERT INTO `area` VALUES ('411602', '川汇区', '411601');
INSERT INTO `area` VALUES ('411621', '扶沟县', '411600');
INSERT INTO `area` VALUES ('411622', '西华县', '411600');
INSERT INTO `area` VALUES ('411623', '商水县', '411600');
INSERT INTO `area` VALUES ('411624', '沈丘县', '411600');
INSERT INTO `area` VALUES ('411625', '郸城县', '411600');
INSERT INTO `area` VALUES ('411626', '淮阳县', '411600');
INSERT INTO `area` VALUES ('411627', '太康县', '411600');
INSERT INTO `area` VALUES ('411628', '鹿邑县', '411600');
INSERT INTO `area` VALUES ('411681', '项城市', '411600');
INSERT INTO `area` VALUES ('411700', '驻马店市', '410000');
INSERT INTO `area` VALUES ('411701', '市辖区', '411700');
INSERT INTO `area` VALUES ('411702', '驿城区', '411701');
INSERT INTO `area` VALUES ('411721', '西平县', '411700');
INSERT INTO `area` VALUES ('411722', '上蔡县', '411700');
INSERT INTO `area` VALUES ('411723', '平舆县', '411700');
INSERT INTO `area` VALUES ('411724', '正阳县', '411700');
INSERT INTO `area` VALUES ('411725', '确山县', '411700');
INSERT INTO `area` VALUES ('411726', '泌阳县', '411700');
INSERT INTO `area` VALUES ('411727', '汝南县', '411700');
INSERT INTO `area` VALUES ('411728', '遂平县', '411700');
INSERT INTO `area` VALUES ('411729', '新蔡县', '411700');
INSERT INTO `area` VALUES ('411800', '济源市', '410000');
INSERT INTO `area` VALUES ('411801', '市辖区', '411800');
INSERT INTO `area` VALUES ('420000', '湖北', '0');
INSERT INTO `area` VALUES ('420100', '武汉市', '420000');
INSERT INTO `area` VALUES ('420101', '市辖区', '420100');
INSERT INTO `area` VALUES ('420102', '江岸区', '420100');
INSERT INTO `area` VALUES ('420103', '江汉区', '420100');
INSERT INTO `area` VALUES ('420104', '硚口区', '420100');
INSERT INTO `area` VALUES ('420105', '汉阳区', '420100');
INSERT INTO `area` VALUES ('420106', '武昌区', '420100');
INSERT INTO `area` VALUES ('420107', '青山区', '420100');
INSERT INTO `area` VALUES ('420111', '洪山区', '420100');
INSERT INTO `area` VALUES ('420112', '东西湖区', '420100');
INSERT INTO `area` VALUES ('420113', '汉南区', '420100');
INSERT INTO `area` VALUES ('420114', '蔡甸区', '420100');
INSERT INTO `area` VALUES ('420115', '江夏区', '420100');
INSERT INTO `area` VALUES ('420116', '黄陂区', '420100');
INSERT INTO `area` VALUES ('420117', '新洲区', '420100');
INSERT INTO `area` VALUES ('420200', '黄石市', '420000');
INSERT INTO `area` VALUES ('420201', '市辖区', '420200');
INSERT INTO `area` VALUES ('420202', '黄石港区', '420201');
INSERT INTO `area` VALUES ('420203', '西塞山区', '420201');
INSERT INTO `area` VALUES ('420204', '下陆区', '420201');
INSERT INTO `area` VALUES ('420205', '铁山区', '420201');
INSERT INTO `area` VALUES ('420222', '阳新县', '420200');
INSERT INTO `area` VALUES ('420281', '大冶市', '420200');
INSERT INTO `area` VALUES ('420300', '十堰市', '420000');
INSERT INTO `area` VALUES ('420301', '市辖区', '420300');
INSERT INTO `area` VALUES ('420302', '茅箭区', '420301');
INSERT INTO `area` VALUES ('420303', '张湾区', '420301');
INSERT INTO `area` VALUES ('420321', '郧县', '420300');
INSERT INTO `area` VALUES ('420322', '郧西县', '420300');
INSERT INTO `area` VALUES ('420323', '竹山县', '420300');
INSERT INTO `area` VALUES ('420324', '竹溪县', '420300');
INSERT INTO `area` VALUES ('420325', '房县', '420300');
INSERT INTO `area` VALUES ('420381', '丹江口市', '420300');
INSERT INTO `area` VALUES ('420500', '宜昌市', '420000');
INSERT INTO `area` VALUES ('420501', '市辖区', '420500');
INSERT INTO `area` VALUES ('420502', '西陵区', '420501');
INSERT INTO `area` VALUES ('420503', '伍家岗区', '420501');
INSERT INTO `area` VALUES ('420504', '点军区', '420501');
INSERT INTO `area` VALUES ('420505', '猇亭区', '420501');
INSERT INTO `area` VALUES ('420506', '夷陵区', '420501');
INSERT INTO `area` VALUES ('420525', '远安县', '420500');
INSERT INTO `area` VALUES ('420526', '兴山县', '420500');
INSERT INTO `area` VALUES ('420527', '秭归县', '420500');
INSERT INTO `area` VALUES ('420528', '长阳土家族自治县', '420500');
INSERT INTO `area` VALUES ('420529', '五峰土家族自治县', '420500');
INSERT INTO `area` VALUES ('420581', '宜都市', '420500');
INSERT INTO `area` VALUES ('420582', '当阳市', '420500');
INSERT INTO `area` VALUES ('420583', '枝江市', '420500');
INSERT INTO `area` VALUES ('420600', '襄阳市', '420000');
INSERT INTO `area` VALUES ('420601', '市辖区', '420600');
INSERT INTO `area` VALUES ('420602', '襄城区', '420601');
INSERT INTO `area` VALUES ('420606', '樊城区', '420601');
INSERT INTO `area` VALUES ('420607', '襄州区', '420601');
INSERT INTO `area` VALUES ('420624', '南漳县', '420600');
INSERT INTO `area` VALUES ('420625', '谷城县', '420600');
INSERT INTO `area` VALUES ('420626', '保康县', '420600');
INSERT INTO `area` VALUES ('420682', '老河口市', '420600');
INSERT INTO `area` VALUES ('420683', '枣阳市', '420600');
INSERT INTO `area` VALUES ('420684', '宜城市', '420600');
INSERT INTO `area` VALUES ('420700', '鄂州市', '420000');
INSERT INTO `area` VALUES ('420701', '市辖区', '420700');
INSERT INTO `area` VALUES ('420702', '梁子湖区', '420701');
INSERT INTO `area` VALUES ('420703', '华容区', '420701');
INSERT INTO `area` VALUES ('420704', '鄂城区', '420701');
INSERT INTO `area` VALUES ('420800', '荆门市', '420000');
INSERT INTO `area` VALUES ('420801', '市辖区', '420800');
INSERT INTO `area` VALUES ('420802', '东宝区', '420801');
INSERT INTO `area` VALUES ('420804', '掇刀区', '420801');
INSERT INTO `area` VALUES ('420821', '京山县', '420800');
INSERT INTO `area` VALUES ('420822', '沙洋县', '420800');
INSERT INTO `area` VALUES ('420881', '钟祥市', '420800');
INSERT INTO `area` VALUES ('420900', '孝感市', '420000');
INSERT INTO `area` VALUES ('420901', '市辖区', '420900');
INSERT INTO `area` VALUES ('420902', '孝南区', '420901');
INSERT INTO `area` VALUES ('420921', '孝昌县', '420900');
INSERT INTO `area` VALUES ('420922', '大悟县', '420900');
INSERT INTO `area` VALUES ('420923', '云梦县', '420900');
INSERT INTO `area` VALUES ('420981', '应城市', '420900');
INSERT INTO `area` VALUES ('420982', '安陆市', '420900');
INSERT INTO `area` VALUES ('420984', '汉川市', '420900');
INSERT INTO `area` VALUES ('421000', '荆州市', '420000');
INSERT INTO `area` VALUES ('421001', '市辖区', '421000');
INSERT INTO `area` VALUES ('421002', '沙市区', '421001');
INSERT INTO `area` VALUES ('421003', '荆州区', '421001');
INSERT INTO `area` VALUES ('421022', '公安县', '421000');
INSERT INTO `area` VALUES ('421023', '监利县', '421000');
INSERT INTO `area` VALUES ('421024', '江陵县', '421000');
INSERT INTO `area` VALUES ('421081', '石首市', '421000');
INSERT INTO `area` VALUES ('421083', '洪湖市', '421000');
INSERT INTO `area` VALUES ('421087', '松滋市', '421000');
INSERT INTO `area` VALUES ('421100', '黄冈市', '420000');
INSERT INTO `area` VALUES ('421101', '市辖区', '421100');
INSERT INTO `area` VALUES ('421102', '黄州区', '421101');
INSERT INTO `area` VALUES ('421121', '团风县', '421100');
INSERT INTO `area` VALUES ('421122', '红安县', '421100');
INSERT INTO `area` VALUES ('421123', '罗田县', '421100');
INSERT INTO `area` VALUES ('421124', '英山县', '421100');
INSERT INTO `area` VALUES ('421125', '浠水县', '421100');
INSERT INTO `area` VALUES ('421126', '蕲春县', '421100');
INSERT INTO `area` VALUES ('421127', '黄梅县', '421100');
INSERT INTO `area` VALUES ('421181', '麻城市', '421100');
INSERT INTO `area` VALUES ('421182', '武穴市', '421100');
INSERT INTO `area` VALUES ('421200', '咸宁市', '420000');
INSERT INTO `area` VALUES ('421201', '市辖区', '421200');
INSERT INTO `area` VALUES ('421202', '咸安区', '421201');
INSERT INTO `area` VALUES ('421221', '嘉鱼县', '421200');
INSERT INTO `area` VALUES ('421222', '通城县', '421200');
INSERT INTO `area` VALUES ('421223', '崇阳县', '421200');
INSERT INTO `area` VALUES ('421224', '通山县', '421200');
INSERT INTO `area` VALUES ('421281', '赤壁市', '421200');
INSERT INTO `area` VALUES ('421300', '随州市', '420000');
INSERT INTO `area` VALUES ('421301', '市辖区', '421300');
INSERT INTO `area` VALUES ('421302', '曾都区', '421301');
INSERT INTO `area` VALUES ('421381', '广水市', '421300');
INSERT INTO `area` VALUES ('422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `area` VALUES ('422801', '恩施市', '422800');
INSERT INTO `area` VALUES ('422802', '利川市', '422800');
INSERT INTO `area` VALUES ('422822', '建始县', '422800');
INSERT INTO `area` VALUES ('422823', '巴东县', '422800');
INSERT INTO `area` VALUES ('422825', '宣恩县', '422800');
INSERT INTO `area` VALUES ('422826', '咸丰县', '422800');
INSERT INTO `area` VALUES ('422827', '来凤县', '422800');
INSERT INTO `area` VALUES ('422828', '鹤峰县', '422800');
INSERT INTO `area` VALUES ('429000', '省直辖行政单位', '420000');
INSERT INTO `area` VALUES ('429004', '仙桃市', '429000');
INSERT INTO `area` VALUES ('429005', '潜江市', '429000');
INSERT INTO `area` VALUES ('429006', '天门市', '429000');
INSERT INTO `area` VALUES ('429021', '神农架林区', '429000');
INSERT INTO `area` VALUES ('430000', '湖南', '0');
INSERT INTO `area` VALUES ('430100', '长沙市', '430000');
INSERT INTO `area` VALUES ('430101', '市辖区', '430100');
INSERT INTO `area` VALUES ('430102', '芙蓉区', '430100');
INSERT INTO `area` VALUES ('430103', '天心区', '430100');
INSERT INTO `area` VALUES ('430104', '岳麓区', '430100');
INSERT INTO `area` VALUES ('430105', '开福区', '430100');
INSERT INTO `area` VALUES ('430111', '雨花区', '430100');
INSERT INTO `area` VALUES ('430121', '长沙县', '430100');
INSERT INTO `area` VALUES ('430122', '望城县', '430100');
INSERT INTO `area` VALUES ('430124', '宁乡县', '430100');
INSERT INTO `area` VALUES ('430181', '浏阳市', '430100');
INSERT INTO `area` VALUES ('430200', '株洲市', '430000');
INSERT INTO `area` VALUES ('430201', '市辖区', '430200');
INSERT INTO `area` VALUES ('430202', '荷塘区', '430201');
INSERT INTO `area` VALUES ('430203', '芦淞区', '430201');
INSERT INTO `area` VALUES ('430204', '石峰区', '430201');
INSERT INTO `area` VALUES ('430211', '天元区', '430201');
INSERT INTO `area` VALUES ('430221', '株洲县', '430200');
INSERT INTO `area` VALUES ('430223', '攸县', '430200');
INSERT INTO `area` VALUES ('430224', '茶陵县', '430200');
INSERT INTO `area` VALUES ('430225', '炎陵县', '430200');
INSERT INTO `area` VALUES ('430281', '醴陵市', '430200');
INSERT INTO `area` VALUES ('430300', '湘潭市', '430000');
INSERT INTO `area` VALUES ('430301', '市辖区', '430300');
INSERT INTO `area` VALUES ('430302', '雨湖区', '430301');
INSERT INTO `area` VALUES ('430304', '岳塘区', '430301');
INSERT INTO `area` VALUES ('430321', '湘潭县', '430300');
INSERT INTO `area` VALUES ('430381', '湘乡市', '430300');
INSERT INTO `area` VALUES ('430382', '韶山市', '430300');
INSERT INTO `area` VALUES ('430400', '衡阳市', '430000');
INSERT INTO `area` VALUES ('430401', '市辖区', '430400');
INSERT INTO `area` VALUES ('430405', '珠晖区', '430401');
INSERT INTO `area` VALUES ('430406', '雁峰区', '430401');
INSERT INTO `area` VALUES ('430407', '石鼓区', '430401');
INSERT INTO `area` VALUES ('430408', '蒸湘区', '430401');
INSERT INTO `area` VALUES ('430412', '南岳区', '430401');
INSERT INTO `area` VALUES ('430421', '衡阳县', '430400');
INSERT INTO `area` VALUES ('430422', '衡南县', '430400');
INSERT INTO `area` VALUES ('430423', '衡山县', '430400');
INSERT INTO `area` VALUES ('430424', '衡东县', '430400');
INSERT INTO `area` VALUES ('430426', '祁东县', '430400');
INSERT INTO `area` VALUES ('430481', '耒阳市', '430400');
INSERT INTO `area` VALUES ('430482', '常宁市', '430400');
INSERT INTO `area` VALUES ('430500', '邵阳市', '430000');
INSERT INTO `area` VALUES ('430501', '市辖区', '430500');
INSERT INTO `area` VALUES ('430502', '双清区', '430501');
INSERT INTO `area` VALUES ('430503', '大祥区', '430501');
INSERT INTO `area` VALUES ('430511', '北塔区', '430501');
INSERT INTO `area` VALUES ('430521', '邵东县', '430500');
INSERT INTO `area` VALUES ('430522', '新邵县', '430500');
INSERT INTO `area` VALUES ('430523', '邵阳县', '430500');
INSERT INTO `area` VALUES ('430524', '隆回县', '430500');
INSERT INTO `area` VALUES ('430525', '洞口县', '430500');
INSERT INTO `area` VALUES ('430527', '绥宁县', '430500');
INSERT INTO `area` VALUES ('430528', '新宁县', '430500');
INSERT INTO `area` VALUES ('430529', '城步苗族自治县', '430500');
INSERT INTO `area` VALUES ('430581', '武冈市', '430500');
INSERT INTO `area` VALUES ('430600', '岳阳市', '430000');
INSERT INTO `area` VALUES ('430601', '市辖区', '430600');
INSERT INTO `area` VALUES ('430602', '岳阳楼区', '430601');
INSERT INTO `area` VALUES ('430603', '云溪区', '430601');
INSERT INTO `area` VALUES ('430611', '君山区', '430601');
INSERT INTO `area` VALUES ('430621', '岳阳县', '430600');
INSERT INTO `area` VALUES ('430623', '华容县', '430600');
INSERT INTO `area` VALUES ('430624', '湘阴县', '430600');
INSERT INTO `area` VALUES ('430626', '平江县', '430600');
INSERT INTO `area` VALUES ('430681', '汨罗市', '430600');
INSERT INTO `area` VALUES ('430682', '临湘市', '430600');
INSERT INTO `area` VALUES ('430700', '常德市', '430000');
INSERT INTO `area` VALUES ('430701', '市辖区', '430700');
INSERT INTO `area` VALUES ('430702', '武陵区', '430701');
INSERT INTO `area` VALUES ('430703', '鼎城区', '430701');
INSERT INTO `area` VALUES ('430721', '安乡县', '430700');
INSERT INTO `area` VALUES ('430722', '汉寿县', '430700');
INSERT INTO `area` VALUES ('430723', '澧县', '430700');
INSERT INTO `area` VALUES ('430724', '临澧县', '430700');
INSERT INTO `area` VALUES ('430725', '桃源县', '430700');
INSERT INTO `area` VALUES ('430726', '石门县', '430700');
INSERT INTO `area` VALUES ('430781', '津市市', '430700');
INSERT INTO `area` VALUES ('430800', '张家界市', '430000');
INSERT INTO `area` VALUES ('430801', '市辖区', '430800');
INSERT INTO `area` VALUES ('430802', '永定区', '430801');
INSERT INTO `area` VALUES ('430811', '武陵源区', '430801');
INSERT INTO `area` VALUES ('430821', '慈利县', '430800');
INSERT INTO `area` VALUES ('430822', '桑植县', '430800');
INSERT INTO `area` VALUES ('430900', '益阳市', '430000');
INSERT INTO `area` VALUES ('430901', '市辖区', '430900');
INSERT INTO `area` VALUES ('430902', '资阳区', '430901');
INSERT INTO `area` VALUES ('430903', '赫山区', '430901');
INSERT INTO `area` VALUES ('430921', '南县', '430900');
INSERT INTO `area` VALUES ('430922', '桃江县', '430900');
INSERT INTO `area` VALUES ('430923', '安化县', '430900');
INSERT INTO `area` VALUES ('430981', '沅江市', '430900');
INSERT INTO `area` VALUES ('431000', '郴州市', '430000');
INSERT INTO `area` VALUES ('431001', '市辖区', '431000');
INSERT INTO `area` VALUES ('431002', '北湖区', '431001');
INSERT INTO `area` VALUES ('431003', '苏仙区', '431001');
INSERT INTO `area` VALUES ('431021', '桂阳县', '431000');
INSERT INTO `area` VALUES ('431022', '宜章县', '431000');
INSERT INTO `area` VALUES ('431023', '永兴县', '431000');
INSERT INTO `area` VALUES ('431024', '嘉禾县', '431000');
INSERT INTO `area` VALUES ('431025', '临武县', '431000');
INSERT INTO `area` VALUES ('431026', '汝城县', '431000');
INSERT INTO `area` VALUES ('431027', '桂东县', '431000');
INSERT INTO `area` VALUES ('431028', '安仁县', '431000');
INSERT INTO `area` VALUES ('431081', '资兴市', '431000');
INSERT INTO `area` VALUES ('431100', '永州市', '430000');
INSERT INTO `area` VALUES ('431101', '市辖区', '431100');
INSERT INTO `area` VALUES ('431102', '零陵区', '431101');
INSERT INTO `area` VALUES ('431103', '冷水滩区', '431101');
INSERT INTO `area` VALUES ('431121', '祁阳县', '431100');
INSERT INTO `area` VALUES ('431122', '东安县', '431100');
INSERT INTO `area` VALUES ('431123', '双牌县', '431100');
INSERT INTO `area` VALUES ('431124', '道县', '431100');
INSERT INTO `area` VALUES ('431125', '江永县', '431100');
INSERT INTO `area` VALUES ('431126', '宁远县', '431100');
INSERT INTO `area` VALUES ('431127', '蓝山县', '431100');
INSERT INTO `area` VALUES ('431128', '新田县', '431100');
INSERT INTO `area` VALUES ('431129', '江华瑶族自治县', '431100');
INSERT INTO `area` VALUES ('431200', '怀化市', '430000');
INSERT INTO `area` VALUES ('431201', '市辖区', '431200');
INSERT INTO `area` VALUES ('431202', '鹤城区', '431201');
INSERT INTO `area` VALUES ('431221', '中方县', '431200');
INSERT INTO `area` VALUES ('431222', '沅陵县', '431200');
INSERT INTO `area` VALUES ('431223', '辰溪县', '431200');
INSERT INTO `area` VALUES ('431224', '溆浦县', '431200');
INSERT INTO `area` VALUES ('431225', '会同县', '431200');
INSERT INTO `area` VALUES ('431226', '麻阳苗族自治县', '431200');
INSERT INTO `area` VALUES ('431227', '新晃侗族自治县', '431200');
INSERT INTO `area` VALUES ('431228', '芷江侗族自治县', '431200');
INSERT INTO `area` VALUES ('431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `area` VALUES ('431230', '通道侗族自治县', '431200');
INSERT INTO `area` VALUES ('431281', '洪江市', '431200');
INSERT INTO `area` VALUES ('431300', '娄底市', '430000');
INSERT INTO `area` VALUES ('431301', '市辖区', '431300');
INSERT INTO `area` VALUES ('431302', '娄星区', '431301');
INSERT INTO `area` VALUES ('431321', '双峰县', '431300');
INSERT INTO `area` VALUES ('431322', '新化县', '431300');
INSERT INTO `area` VALUES ('431381', '冷水江市', '431300');
INSERT INTO `area` VALUES ('431382', '涟源市', '431300');
INSERT INTO `area` VALUES ('433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `area` VALUES ('433101', '吉首市', '433100');
INSERT INTO `area` VALUES ('433122', '泸溪县', '433100');
INSERT INTO `area` VALUES ('433123', '凤凰县', '433100');
INSERT INTO `area` VALUES ('433124', '花垣县', '433100');
INSERT INTO `area` VALUES ('433125', '保靖县', '433100');
INSERT INTO `area` VALUES ('433126', '古丈县', '433100');
INSERT INTO `area` VALUES ('433127', '永顺县', '433100');
INSERT INTO `area` VALUES ('433130', '龙山县', '433100');
INSERT INTO `area` VALUES ('440000', '广东', '0');
INSERT INTO `area` VALUES ('440100', '广州市', '440000');
INSERT INTO `area` VALUES ('440101', '市辖区', '440100');
INSERT INTO `area` VALUES ('440103', '荔湾区', '440100');
INSERT INTO `area` VALUES ('440104', '越秀区', '440100');
INSERT INTO `area` VALUES ('440105', '海珠区', '440100');
INSERT INTO `area` VALUES ('440106', '天河区', '440100');
INSERT INTO `area` VALUES ('440111', '白云区', '440100');
INSERT INTO `area` VALUES ('440112', '黄埔区', '440100');
INSERT INTO `area` VALUES ('440113', '番禺区', '440100');
INSERT INTO `area` VALUES ('440114', '花都区', '440100');
INSERT INTO `area` VALUES ('440115', '南沙区', '440100');
INSERT INTO `area` VALUES ('440116', '萝岗区', '440100');
INSERT INTO `area` VALUES ('440183', '增城市', '440100');
INSERT INTO `area` VALUES ('440184', '从化市', '440100');
INSERT INTO `area` VALUES ('440200', '韶关市', '440000');
INSERT INTO `area` VALUES ('440201', '市辖区', '440200');
INSERT INTO `area` VALUES ('440203', '武江区', '440201');
INSERT INTO `area` VALUES ('440204', '浈江区', '440201');
INSERT INTO `area` VALUES ('440205', '曲江区', '440201');
INSERT INTO `area` VALUES ('440222', '始兴县', '440200');
INSERT INTO `area` VALUES ('440224', '仁化县', '440200');
INSERT INTO `area` VALUES ('440229', '翁源县', '440200');
INSERT INTO `area` VALUES ('440232', '乳源瑶族自治县', '440200');
INSERT INTO `area` VALUES ('440233', '新丰县', '440200');
INSERT INTO `area` VALUES ('440281', '乐昌市', '440200');
INSERT INTO `area` VALUES ('440282', '南雄市', '440200');
INSERT INTO `area` VALUES ('440300', '深圳市', '440000');
INSERT INTO `area` VALUES ('440301', '市辖区', '440300');
INSERT INTO `area` VALUES ('440303', '罗湖区', '440300');
INSERT INTO `area` VALUES ('440304', '福田区', '440300');
INSERT INTO `area` VALUES ('440305', '南山区', '440300');
INSERT INTO `area` VALUES ('440306', '宝安区', '440300');
INSERT INTO `area` VALUES ('440307', '龙岗区', '440300');
INSERT INTO `area` VALUES ('440308', '盐田区', '440300');
INSERT INTO `area` VALUES ('440400', '珠海市', '440000');
INSERT INTO `area` VALUES ('440401', '市辖区', '440400');
INSERT INTO `area` VALUES ('440402', '香洲区', '440401');
INSERT INTO `area` VALUES ('440403', '斗门区', '440401');
INSERT INTO `area` VALUES ('440404', '金湾区', '440401');
INSERT INTO `area` VALUES ('440500', '汕头市', '440000');
INSERT INTO `area` VALUES ('440501', '市辖区', '440500');
INSERT INTO `area` VALUES ('440507', '龙湖区', '440501');
INSERT INTO `area` VALUES ('440511', '金平区', '440501');
INSERT INTO `area` VALUES ('440512', '濠江区', '440501');
INSERT INTO `area` VALUES ('440513', '潮阳区', '440501');
INSERT INTO `area` VALUES ('440514', '潮南区', '440501');
INSERT INTO `area` VALUES ('440515', '澄海区', '440501');
INSERT INTO `area` VALUES ('440523', '南澳县', '440500');
INSERT INTO `area` VALUES ('440600', '佛山市', '440000');
INSERT INTO `area` VALUES ('440601', '市辖区', '440600');
INSERT INTO `area` VALUES ('440604', '禅城区', '440600');
INSERT INTO `area` VALUES ('440605', '南海区', '440600');
INSERT INTO `area` VALUES ('440606', '顺德区', '440600');
INSERT INTO `area` VALUES ('440607', '三水区', '440600');
INSERT INTO `area` VALUES ('440608', '高明区', '440600');
INSERT INTO `area` VALUES ('440700', '江门市', '440000');
INSERT INTO `area` VALUES ('440701', '市辖区', '440700');
INSERT INTO `area` VALUES ('440703', '蓬江区', '440701');
INSERT INTO `area` VALUES ('440704', '江海区', '440701');
INSERT INTO `area` VALUES ('440705', '新会区', '440701');
INSERT INTO `area` VALUES ('440781', '台山市', '440700');
INSERT INTO `area` VALUES ('440783', '开平市', '440700');
INSERT INTO `area` VALUES ('440784', '鹤山市', '440700');
INSERT INTO `area` VALUES ('440785', '恩平市', '440700');
INSERT INTO `area` VALUES ('440800', '湛江市', '440000');
INSERT INTO `area` VALUES ('440801', '市辖区', '440800');
INSERT INTO `area` VALUES ('440802', '赤坎区', '440801');
INSERT INTO `area` VALUES ('440803', '霞山区', '440801');
INSERT INTO `area` VALUES ('440804', '坡头区', '440801');
INSERT INTO `area` VALUES ('440811', '麻章区', '440801');
INSERT INTO `area` VALUES ('440823', '遂溪县', '440800');
INSERT INTO `area` VALUES ('440825', '徐闻县', '440800');
INSERT INTO `area` VALUES ('440881', '廉江市', '440800');
INSERT INTO `area` VALUES ('440882', '雷州市', '440800');
INSERT INTO `area` VALUES ('440883', '吴川市', '440800');
INSERT INTO `area` VALUES ('440900', '茂名市', '440000');
INSERT INTO `area` VALUES ('440901', '市辖区', '440900');
INSERT INTO `area` VALUES ('440902', '茂南区', '440901');
INSERT INTO `area` VALUES ('440903', '茂港区', '440901');
INSERT INTO `area` VALUES ('440923', '电白县', '440900');
INSERT INTO `area` VALUES ('440981', '高州市', '440900');
INSERT INTO `area` VALUES ('440982', '化州市', '440900');
INSERT INTO `area` VALUES ('440983', '信宜市', '440900');
INSERT INTO `area` VALUES ('441200', '肇庆市', '440000');
INSERT INTO `area` VALUES ('441201', '市辖区', '441200');
INSERT INTO `area` VALUES ('441202', '端州区', '441201');
INSERT INTO `area` VALUES ('441203', '鼎湖区', '441201');
INSERT INTO `area` VALUES ('441223', '广宁县', '441200');
INSERT INTO `area` VALUES ('441224', '怀集县', '441200');
INSERT INTO `area` VALUES ('441225', '封开县', '441200');
INSERT INTO `area` VALUES ('441226', '德庆县', '441200');
INSERT INTO `area` VALUES ('441283', '高要市', '441200');
INSERT INTO `area` VALUES ('441284', '四会市', '441200');
INSERT INTO `area` VALUES ('441300', '惠州市', '440000');
INSERT INTO `area` VALUES ('441301', '市辖区', '441300');
INSERT INTO `area` VALUES ('441302', '惠城区', '441301');
INSERT INTO `area` VALUES ('441303', '惠阳区', '441301');
INSERT INTO `area` VALUES ('441322', '博罗县', '441300');
INSERT INTO `area` VALUES ('441323', '惠东县', '441300');
INSERT INTO `area` VALUES ('441324', '龙门县', '441300');
INSERT INTO `area` VALUES ('441400', '梅州市', '440000');
INSERT INTO `area` VALUES ('441401', '市辖区', '441400');
INSERT INTO `area` VALUES ('441402', '梅江区', '441401');
INSERT INTO `area` VALUES ('441421', '梅县', '441400');
INSERT INTO `area` VALUES ('441422', '大埔县', '441400');
INSERT INTO `area` VALUES ('441423', '丰顺县', '441400');
INSERT INTO `area` VALUES ('441424', '五华县', '441400');
INSERT INTO `area` VALUES ('441426', '平远县', '441400');
INSERT INTO `area` VALUES ('441427', '蕉岭县', '441400');
INSERT INTO `area` VALUES ('441481', '兴宁市', '441400');
INSERT INTO `area` VALUES ('441500', '汕尾市', '440000');
INSERT INTO `area` VALUES ('441501', '市辖区', '441500');
INSERT INTO `area` VALUES ('441502', '城区', '441501');
INSERT INTO `area` VALUES ('441521', '海丰县', '441500');
INSERT INTO `area` VALUES ('441523', '陆河县', '441500');
INSERT INTO `area` VALUES ('441581', '陆丰市', '441500');
INSERT INTO `area` VALUES ('441600', '河源市', '440000');
INSERT INTO `area` VALUES ('441601', '市辖区', '441600');
INSERT INTO `area` VALUES ('441602', '源城区', '441601');
INSERT INTO `area` VALUES ('441621', '紫金县', '441600');
INSERT INTO `area` VALUES ('441622', '龙川县', '441600');
INSERT INTO `area` VALUES ('441623', '连平县', '441600');
INSERT INTO `area` VALUES ('441624', '和平县', '441600');
INSERT INTO `area` VALUES ('441625', '东源县', '441600');
INSERT INTO `area` VALUES ('441700', '阳江市', '440000');
INSERT INTO `area` VALUES ('441701', '市辖区', '441700');
INSERT INTO `area` VALUES ('441702', '江城区', '441701');
INSERT INTO `area` VALUES ('441721', '阳西县', '441700');
INSERT INTO `area` VALUES ('441723', '阳东县', '441700');
INSERT INTO `area` VALUES ('441781', '阳春市', '441700');
INSERT INTO `area` VALUES ('441800', '清远市', '440000');
INSERT INTO `area` VALUES ('441801', '市辖区', '441800');
INSERT INTO `area` VALUES ('441802', '清城区', '441801');
INSERT INTO `area` VALUES ('441803', '黄江镇', '441900');
INSERT INTO `area` VALUES ('441821', '佛冈县', '441800');
INSERT INTO `area` VALUES ('441823', '阳山县', '441800');
INSERT INTO `area` VALUES ('441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `area` VALUES ('441826', '连南瑶族自治县', '441800');
INSERT INTO `area` VALUES ('441827', '清新县', '441800');
INSERT INTO `area` VALUES ('441881', '英德市', '441800');
INSERT INTO `area` VALUES ('441882', '连州市', '441800');
INSERT INTO `area` VALUES ('441883', '黄圃镇', '442000');
INSERT INTO `area` VALUES ('441900', '东莞市', '440000');
INSERT INTO `area` VALUES ('442000', '中山市', '440000');
INSERT INTO `area` VALUES ('445100', '潮州市', '440000');
INSERT INTO `area` VALUES ('445101', '市辖区', '445100');
INSERT INTO `area` VALUES ('445102', '湘桥区', '445101');
INSERT INTO `area` VALUES ('445121', '潮安区', '445100');
INSERT INTO `area` VALUES ('445122', '饶平县', '445100');
INSERT INTO `area` VALUES ('445200', '揭阳市', '440000');
INSERT INTO `area` VALUES ('445201', '市辖区', '445200');
INSERT INTO `area` VALUES ('445202', '榕城区', '445201');
INSERT INTO `area` VALUES ('445221', '揭东县', '445200');
INSERT INTO `area` VALUES ('445222', '揭西县', '445200');
INSERT INTO `area` VALUES ('445224', '惠来县', '445200');
INSERT INTO `area` VALUES ('445281', '普宁市', '445200');
INSERT INTO `area` VALUES ('445300', '云浮市', '440000');
INSERT INTO `area` VALUES ('445301', '市辖区', '445300');
INSERT INTO `area` VALUES ('445302', '云城区', '445301');
INSERT INTO `area` VALUES ('445321', '新兴县', '445300');
INSERT INTO `area` VALUES ('445322', '郁南县', '445300');
INSERT INTO `area` VALUES ('445323', '云安县', '445300');
INSERT INTO `area` VALUES ('445381', '罗定市', '445300');
INSERT INTO `area` VALUES ('450000', '广西', '0');
INSERT INTO `area` VALUES ('450100', '南宁市', '450000');
INSERT INTO `area` VALUES ('450101', '市辖区', '450100');
INSERT INTO `area` VALUES ('450102', '兴宁区', '450101');
INSERT INTO `area` VALUES ('450103', '青秀区', '450101');
INSERT INTO `area` VALUES ('450105', '江南区', '450101');
INSERT INTO `area` VALUES ('450107', '西乡塘区', '450101');
INSERT INTO `area` VALUES ('450108', '良庆区', '450101');
INSERT INTO `area` VALUES ('450109', '邕宁区', '450101');
INSERT INTO `area` VALUES ('450122', '武鸣县', '450100');
INSERT INTO `area` VALUES ('450123', '隆安县', '450100');
INSERT INTO `area` VALUES ('450124', '马山县', '450100');
INSERT INTO `area` VALUES ('450125', '上林县', '450100');
INSERT INTO `area` VALUES ('450126', '宾阳县', '450100');
INSERT INTO `area` VALUES ('450127', '横县', '450100');
INSERT INTO `area` VALUES ('450200', '柳州市', '450000');
INSERT INTO `area` VALUES ('450201', '市辖区', '450200');
INSERT INTO `area` VALUES ('450202', '城中区', '450200');
INSERT INTO `area` VALUES ('450203', '鱼峰区', '450200');
INSERT INTO `area` VALUES ('450204', '柳南区', '450200');
INSERT INTO `area` VALUES ('450205', '柳北区', '450200');
INSERT INTO `area` VALUES ('450221', '柳江县', '450200');
INSERT INTO `area` VALUES ('450222', '柳城县', '450200');
INSERT INTO `area` VALUES ('450223', '鹿寨县', '450200');
INSERT INTO `area` VALUES ('450224', '融安县', '450200');
INSERT INTO `area` VALUES ('450225', '融水苗族自治县', '450200');
INSERT INTO `area` VALUES ('450226', '三江侗族自治县', '450200');
INSERT INTO `area` VALUES ('450300', '桂林市', '450000');
INSERT INTO `area` VALUES ('450301', '市辖区', '450300');
INSERT INTO `area` VALUES ('450302', '秀峰区', '450301');
INSERT INTO `area` VALUES ('450303', '叠彩区', '450301');
INSERT INTO `area` VALUES ('450304', '象山区', '450301');
INSERT INTO `area` VALUES ('450305', '七星区', '450301');
INSERT INTO `area` VALUES ('450311', '雁山区', '450301');
INSERT INTO `area` VALUES ('450321', '阳朔县', '450300');
INSERT INTO `area` VALUES ('450322', '临桂区', '450300');
INSERT INTO `area` VALUES ('450323', '灵川县', '450300');
INSERT INTO `area` VALUES ('450324', '全州县', '450300');
INSERT INTO `area` VALUES ('450325', '兴安县', '450300');
INSERT INTO `area` VALUES ('450326', '永福县', '450300');
INSERT INTO `area` VALUES ('450327', '灌阳县', '450300');
INSERT INTO `area` VALUES ('450328', '龙胜各族自治县', '450300');
INSERT INTO `area` VALUES ('450329', '资源县', '450300');
INSERT INTO `area` VALUES ('450330', '平乐县', '450300');
INSERT INTO `area` VALUES ('450331', '荔浦县', '450300');
INSERT INTO `area` VALUES ('450332', '恭城瑶族自治县', '450300');
INSERT INTO `area` VALUES ('450400', '梧州市', '450000');
INSERT INTO `area` VALUES ('450401', '市辖区', '450400');
INSERT INTO `area` VALUES ('450403', '万秀区', '450401');
INSERT INTO `area` VALUES ('450404', '蝶山区', '450401');
INSERT INTO `area` VALUES ('450405', '长洲区', '450401');
INSERT INTO `area` VALUES ('450421', '苍梧县', '450400');
INSERT INTO `area` VALUES ('450422', '藤县', '450400');
INSERT INTO `area` VALUES ('450423', '蒙山县', '450400');
INSERT INTO `area` VALUES ('450481', '岑溪市', '450400');
INSERT INTO `area` VALUES ('450500', '北海市', '450000');
INSERT INTO `area` VALUES ('450501', '市辖区', '450500');
INSERT INTO `area` VALUES ('450502', '海城区', '450501');
INSERT INTO `area` VALUES ('450503', '银海区', '450501');
INSERT INTO `area` VALUES ('450512', '铁山港区', '450501');
INSERT INTO `area` VALUES ('450521', '合浦县', '450500');
INSERT INTO `area` VALUES ('450600', '防城港市', '450000');
INSERT INTO `area` VALUES ('450601', '市辖区', '450600');
INSERT INTO `area` VALUES ('450602', '港口区', '450601');
INSERT INTO `area` VALUES ('450603', '防城区', '450601');
INSERT INTO `area` VALUES ('450621', '上思县', '450600');
INSERT INTO `area` VALUES ('450681', '东兴市', '450600');
INSERT INTO `area` VALUES ('450700', '钦州市', '450000');
INSERT INTO `area` VALUES ('450701', '市辖区', '450700');
INSERT INTO `area` VALUES ('450702', '钦南区', '450700');
INSERT INTO `area` VALUES ('450703', '钦北区', '450700');
INSERT INTO `area` VALUES ('450721', '灵山县', '450700');
INSERT INTO `area` VALUES ('450722', '浦北县', '450700');
INSERT INTO `area` VALUES ('450800', '贵港市', '450000');
INSERT INTO `area` VALUES ('450801', '市辖区', '450800');
INSERT INTO `area` VALUES ('450802', '港北区', '450801');
INSERT INTO `area` VALUES ('450803', '港南区', '450801');
INSERT INTO `area` VALUES ('450804', '覃塘区', '450801');
INSERT INTO `area` VALUES ('450821', '平南县', '450800');
INSERT INTO `area` VALUES ('450881', '桂平市', '450800');
INSERT INTO `area` VALUES ('450900', '玉林市', '450000');
INSERT INTO `area` VALUES ('450901', '市辖区', '450900');
INSERT INTO `area` VALUES ('450902', '玉州区', '450901');
INSERT INTO `area` VALUES ('450921', '容县', '450900');
INSERT INTO `area` VALUES ('450922', '陆川县', '450900');
INSERT INTO `area` VALUES ('450923', '博白县', '450900');
INSERT INTO `area` VALUES ('450924', '兴业县', '450900');
INSERT INTO `area` VALUES ('450981', '北流市', '450900');
INSERT INTO `area` VALUES ('451000', '百色市', '450000');
INSERT INTO `area` VALUES ('451001', '市辖区', '451000');
INSERT INTO `area` VALUES ('451002', '右江区', '451001');
INSERT INTO `area` VALUES ('451021', '田阳县', '451000');
INSERT INTO `area` VALUES ('451022', '田东县', '451000');
INSERT INTO `area` VALUES ('451023', '平果县', '451000');
INSERT INTO `area` VALUES ('451024', '德保县', '451000');
INSERT INTO `area` VALUES ('451025', '靖西县', '451000');
INSERT INTO `area` VALUES ('451026', '那坡县', '451000');
INSERT INTO `area` VALUES ('451027', '凌云县', '451000');
INSERT INTO `area` VALUES ('451028', '乐业县', '451000');
INSERT INTO `area` VALUES ('451029', '田林县', '451000');
INSERT INTO `area` VALUES ('451030', '西林县', '451000');
INSERT INTO `area` VALUES ('451031', '隆林各族自治县', '451000');
INSERT INTO `area` VALUES ('451100', '贺州市', '450000');
INSERT INTO `area` VALUES ('451101', '市辖区', '451100');
INSERT INTO `area` VALUES ('451102', '八步区', '451101');
INSERT INTO `area` VALUES ('451121', '昭平县', '451100');
INSERT INTO `area` VALUES ('451122', '钟山县', '451100');
INSERT INTO `area` VALUES ('451123', '富川瑶族自治县', '451100');
INSERT INTO `area` VALUES ('451200', '河池市', '450000');
INSERT INTO `area` VALUES ('451201', '市辖区', '451200');
INSERT INTO `area` VALUES ('451202', '金城江区', '451201');
INSERT INTO `area` VALUES ('451221', '南丹县', '451200');
INSERT INTO `area` VALUES ('451222', '天峨县', '451200');
INSERT INTO `area` VALUES ('451223', '凤山县', '451200');
INSERT INTO `area` VALUES ('451224', '东兰县', '451200');
INSERT INTO `area` VALUES ('451225', '罗城仫佬族自治县', '451200');
INSERT INTO `area` VALUES ('451226', '环江毛南族自治县', '451200');
INSERT INTO `area` VALUES ('451227', '巴马瑶族自治县', '451200');
INSERT INTO `area` VALUES ('451228', '都安瑶族自治县', '451200');
INSERT INTO `area` VALUES ('451229', '大化瑶族自治县', '451200');
INSERT INTO `area` VALUES ('451281', '宜州市', '451200');
INSERT INTO `area` VALUES ('451300', '来宾市', '450000');
INSERT INTO `area` VALUES ('451301', '市辖区', '451300');
INSERT INTO `area` VALUES ('451302', '兴宾区', '451301');
INSERT INTO `area` VALUES ('451321', '忻城县', '451300');
INSERT INTO `area` VALUES ('451322', '象州县', '451300');
INSERT INTO `area` VALUES ('451323', '武宣县', '451300');
INSERT INTO `area` VALUES ('451324', '金秀瑶族自治县', '451300');
INSERT INTO `area` VALUES ('451381', '合山市', '451300');
INSERT INTO `area` VALUES ('451400', '崇左市', '450000');
INSERT INTO `area` VALUES ('451401', '市辖区', '451400');
INSERT INTO `area` VALUES ('451402', '江洲区', '451401');
INSERT INTO `area` VALUES ('451421', '扶绥县', '451400');
INSERT INTO `area` VALUES ('451422', '宁明县', '451400');
INSERT INTO `area` VALUES ('451423', '龙州县', '451400');
INSERT INTO `area` VALUES ('451424', '大新县', '451400');
INSERT INTO `area` VALUES ('451425', '天等县', '451400');
INSERT INTO `area` VALUES ('451481', '凭祥市', '451400');
INSERT INTO `area` VALUES ('460000', '海南', '0');
INSERT INTO `area` VALUES ('460100', '海口市', '460000');
INSERT INTO `area` VALUES ('460101', '市辖区', '460100');
INSERT INTO `area` VALUES ('460105', '秀英区', '460101');
INSERT INTO `area` VALUES ('460106', '龙华区', '460101');
INSERT INTO `area` VALUES ('460107', '琼山区', '460101');
INSERT INTO `area` VALUES ('460108', '美兰区', '460101');
INSERT INTO `area` VALUES ('460200', '三亚市', '460000');
INSERT INTO `area` VALUES ('460201', '市辖区', '460200');
INSERT INTO `area` VALUES ('469000', '省直辖县级行政单位', '460000');
INSERT INTO `area` VALUES ('469001', '五指山市', '469000');
INSERT INTO `area` VALUES ('469002', '琼海市', '469000');
INSERT INTO `area` VALUES ('469003', '儋州市', '469000');
INSERT INTO `area` VALUES ('469005', '文昌市', '469000');
INSERT INTO `area` VALUES ('469006', '万宁市', '469000');
INSERT INTO `area` VALUES ('469007', '东方市', '469000');
INSERT INTO `area` VALUES ('469025', '定安县', '469000');
INSERT INTO `area` VALUES ('469026', '屯昌县', '469000');
INSERT INTO `area` VALUES ('469027', '澄迈县', '469000');
INSERT INTO `area` VALUES ('469028', '临高县', '469000');
INSERT INTO `area` VALUES ('469030', '白沙黎族自治县', '469000');
INSERT INTO `area` VALUES ('469031', '昌江黎族自治县', '469000');
INSERT INTO `area` VALUES ('469033', '乐东黎族自治县', '469000');
INSERT INTO `area` VALUES ('469034', '陵水黎族自治县', '469000');
INSERT INTO `area` VALUES ('469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `area` VALUES ('469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `area` VALUES ('469037', '西沙群岛', '469000');
INSERT INTO `area` VALUES ('469038', '南沙群岛', '469000');
INSERT INTO `area` VALUES ('469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `area` VALUES ('500000', '重庆辖区', '100003');
INSERT INTO `area` VALUES ('500100', '万州区', '500000');
INSERT INTO `area` VALUES ('500101', '万州区', '500100');
INSERT INTO `area` VALUES ('500200', '涪陵区', '500000');
INSERT INTO `area` VALUES ('500201', '涪陵区', '500200');
INSERT INTO `area` VALUES ('500300', '渝中区', '500000');
INSERT INTO `area` VALUES ('500301', '渝中区', '500300');
INSERT INTO `area` VALUES ('500400', '大渡口区', '500000');
INSERT INTO `area` VALUES ('500401', '大渡口区', '500400');
INSERT INTO `area` VALUES ('500500', '江北区', '500000');
INSERT INTO `area` VALUES ('500501', '江北区', '500500');
INSERT INTO `area` VALUES ('500600', '沙坪坝区', '500000');
INSERT INTO `area` VALUES ('500601', '沙坪坝区', '500600');
INSERT INTO `area` VALUES ('500700', '九龙坡区', '500000');
INSERT INTO `area` VALUES ('500701', '九龙坡区', '500700');
INSERT INTO `area` VALUES ('500800', '南岸区', '500000');
INSERT INTO `area` VALUES ('500801', '南岸区', '500800');
INSERT INTO `area` VALUES ('500900', '北碚区', '500000');
INSERT INTO `area` VALUES ('500901', '北碚区', '500900');
INSERT INTO `area` VALUES ('501000', '万盛区', '500000');
INSERT INTO `area` VALUES ('501001', '万盛区', '501000');
INSERT INTO `area` VALUES ('501100', '双桥区', '500000');
INSERT INTO `area` VALUES ('501101', '双桥区', '501100');
INSERT INTO `area` VALUES ('501200', '渝北区', '500000');
INSERT INTO `area` VALUES ('501201', '渝北区', '501200');
INSERT INTO `area` VALUES ('501300', '巴南区', '500000');
INSERT INTO `area` VALUES ('501301', '巴南区', '501300');
INSERT INTO `area` VALUES ('501400', '黔江区', '500000');
INSERT INTO `area` VALUES ('501401', '黔江区', '501400');
INSERT INTO `area` VALUES ('501500', '长寿区', '500000');
INSERT INTO `area` VALUES ('501501', '长寿区', '501500');
INSERT INTO `area` VALUES ('502200', '綦江区', '500000');
INSERT INTO `area` VALUES ('502201', '綦江区', '502200');
INSERT INTO `area` VALUES ('502300', '潼南县', '500000');
INSERT INTO `area` VALUES ('502301', '潼南县', '502300');
INSERT INTO `area` VALUES ('502400', '铜梁县', '500000');
INSERT INTO `area` VALUES ('502401', '铜梁县', '502400');
INSERT INTO `area` VALUES ('502500', '大足区', '500000');
INSERT INTO `area` VALUES ('502501', '大足区', '502500');
INSERT INTO `area` VALUES ('502600', '荣昌县', '500000');
INSERT INTO `area` VALUES ('502601', '荣昌县', '502600');
INSERT INTO `area` VALUES ('502700', '璧山县', '500000');
INSERT INTO `area` VALUES ('502701', '璧山县', '502700');
INSERT INTO `area` VALUES ('502800', '梁平县', '500000');
INSERT INTO `area` VALUES ('502801', '梁平县', '502800');
INSERT INTO `area` VALUES ('502900', '城口县', '500000');
INSERT INTO `area` VALUES ('502901', '城口县', '502900');
INSERT INTO `area` VALUES ('503000', '丰都县', '500000');
INSERT INTO `area` VALUES ('503001', '丰都县', '503000');
INSERT INTO `area` VALUES ('503100', '垫江县', '500000');
INSERT INTO `area` VALUES ('503101', '垫江县', '503100');
INSERT INTO `area` VALUES ('503200', '武隆县', '500000');
INSERT INTO `area` VALUES ('503201', '武隆县', '503200');
INSERT INTO `area` VALUES ('503300', '忠县', '500000');
INSERT INTO `area` VALUES ('503301', '忠县', '503300');
INSERT INTO `area` VALUES ('503400', '开县', '500000');
INSERT INTO `area` VALUES ('503401', '开县', '503400');
INSERT INTO `area` VALUES ('503500', '云阳县', '500000');
INSERT INTO `area` VALUES ('503501', '云阳县', '503500');
INSERT INTO `area` VALUES ('503600', '奉节县', '500000');
INSERT INTO `area` VALUES ('503601', '奉节县', '503600');
INSERT INTO `area` VALUES ('503700', '巫山县', '500000');
INSERT INTO `area` VALUES ('503701', '巫山县', '503700');
INSERT INTO `area` VALUES ('503800', '巫溪县', '500000');
INSERT INTO `area` VALUES ('503801', '巫溪县', '503800');
INSERT INTO `area` VALUES ('504000', '石柱县', '500000');
INSERT INTO `area` VALUES ('504001', '石柱县', '504000');
INSERT INTO `area` VALUES ('504100', '秀山县', '500000');
INSERT INTO `area` VALUES ('504101', '秀山县', '504100');
INSERT INTO `area` VALUES ('504200', '酉阳县', '500000');
INSERT INTO `area` VALUES ('504201', '酉阳县', '504200');
INSERT INTO `area` VALUES ('504300', '彭水县', '500000');
INSERT INTO `area` VALUES ('504301', '彭水县', '504300');
INSERT INTO `area` VALUES ('508100', '江津区', '500000');
INSERT INTO `area` VALUES ('508101', '江津区', '508100');
INSERT INTO `area` VALUES ('508200', '合川区', '500000');
INSERT INTO `area` VALUES ('508201', '合川区', '508200');
INSERT INTO `area` VALUES ('508300', '永川区', '500000');
INSERT INTO `area` VALUES ('508301', '永川区', '508300');
INSERT INTO `area` VALUES ('508400', '南川区', '500000');
INSERT INTO `area` VALUES ('508401', '南川区', '508400');
INSERT INTO `area` VALUES ('510000', '四川', '0');
INSERT INTO `area` VALUES ('510100', '成都市', '510000');
INSERT INTO `area` VALUES ('510101', '市辖区', '510100');
INSERT INTO `area` VALUES ('510104', '锦江区', '510100');
INSERT INTO `area` VALUES ('510105', '青羊区', '510100');
INSERT INTO `area` VALUES ('510106', '金牛区', '510100');
INSERT INTO `area` VALUES ('510107', '武侯区', '510100');
INSERT INTO `area` VALUES ('510108', '成华区', '510100');
INSERT INTO `area` VALUES ('510112', '龙泉驿区', '510100');
INSERT INTO `area` VALUES ('510113', '青白江区', '510100');
INSERT INTO `area` VALUES ('510114', '新都区', '510100');
INSERT INTO `area` VALUES ('510115', '温江区', '510100');
INSERT INTO `area` VALUES ('510121', '金堂县', '510100');
INSERT INTO `area` VALUES ('510122', '双流县', '510100');
INSERT INTO `area` VALUES ('510124', '郫县', '510100');
INSERT INTO `area` VALUES ('510129', '大邑县', '510100');
INSERT INTO `area` VALUES ('510131', '蒲江县', '510100');
INSERT INTO `area` VALUES ('510132', '新津县', '510100');
INSERT INTO `area` VALUES ('510133', '高新区', '510100');
INSERT INTO `area` VALUES ('510181', '都江堰市', '510100');
INSERT INTO `area` VALUES ('510182', '彭州市', '510100');
INSERT INTO `area` VALUES ('510183', '邛崃市', '510100');
INSERT INTO `area` VALUES ('510184', '崇州市', '510100');
INSERT INTO `area` VALUES ('510300', '自贡市', '510000');
INSERT INTO `area` VALUES ('510301', '市辖区', '510300');
INSERT INTO `area` VALUES ('510302', '自流井区', '510301');
INSERT INTO `area` VALUES ('510303', '贡井区', '510301');
INSERT INTO `area` VALUES ('510304', '大安区', '510301');
INSERT INTO `area` VALUES ('510311', '沿滩区', '510301');
INSERT INTO `area` VALUES ('510321', '荣县', '510300');
INSERT INTO `area` VALUES ('510322', '富顺县', '510300');
INSERT INTO `area` VALUES ('510400', '攀枝花市', '510000');
INSERT INTO `area` VALUES ('510401', '市辖区', '510400');
INSERT INTO `area` VALUES ('510402', '东区', '510401');
INSERT INTO `area` VALUES ('510403', '西区', '510401');
INSERT INTO `area` VALUES ('510411', '仁和区', '510401');
INSERT INTO `area` VALUES ('510421', '米易县', '510400');
INSERT INTO `area` VALUES ('510422', '盐边县', '510400');
INSERT INTO `area` VALUES ('510500', '泸州市', '510000');
INSERT INTO `area` VALUES ('510501', '市辖区', '510500');
INSERT INTO `area` VALUES ('510502', '江阳区', '510501');
INSERT INTO `area` VALUES ('510503', '纳溪区', '510501');
INSERT INTO `area` VALUES ('510504', '龙马潭区', '510501');
INSERT INTO `area` VALUES ('510521', '泸县', '510500');
INSERT INTO `area` VALUES ('510522', '合江县', '510500');
INSERT INTO `area` VALUES ('510524', '叙永县', '510500');
INSERT INTO `area` VALUES ('510525', '古蔺县', '510500');
INSERT INTO `area` VALUES ('510600', '德阳市', '510000');
INSERT INTO `area` VALUES ('510601', '市辖区', '510600');
INSERT INTO `area` VALUES ('510603', '旌阳区', '510601');
INSERT INTO `area` VALUES ('510623', '中江县', '510600');
INSERT INTO `area` VALUES ('510626', '罗江县', '510600');
INSERT INTO `area` VALUES ('510681', '广汉市', '510600');
INSERT INTO `area` VALUES ('510682', '什邡市', '510600');
INSERT INTO `area` VALUES ('510683', '绵竹市', '510600');
INSERT INTO `area` VALUES ('510700', '绵阳市', '510000');
INSERT INTO `area` VALUES ('510701', '市辖区', '510700');
INSERT INTO `area` VALUES ('510703', '涪城区', '510701');
INSERT INTO `area` VALUES ('510704', '游仙区', '510701');
INSERT INTO `area` VALUES ('510722', '三台县', '510700');
INSERT INTO `area` VALUES ('510723', '盐亭县', '510700');
INSERT INTO `area` VALUES ('510724', '安县', '510700');
INSERT INTO `area` VALUES ('510725', '梓潼县', '510700');
INSERT INTO `area` VALUES ('510726', '北川羌族自治县', '510700');
INSERT INTO `area` VALUES ('510727', '平武县', '510700');
INSERT INTO `area` VALUES ('510781', '江油市', '510700');
INSERT INTO `area` VALUES ('510800', '广元市', '510000');
INSERT INTO `area` VALUES ('510801', '市辖区', '510800');
INSERT INTO `area` VALUES ('510802', '市中区', '510801');
INSERT INTO `area` VALUES ('510811', '元坝区', '510801');
INSERT INTO `area` VALUES ('510812', '朝天区', '510801');
INSERT INTO `area` VALUES ('510821', '旺苍县', '510800');
INSERT INTO `area` VALUES ('510822', '青川县', '510800');
INSERT INTO `area` VALUES ('510823', '剑阁县', '510800');
INSERT INTO `area` VALUES ('510824', '苍溪县', '510800');
INSERT INTO `area` VALUES ('510900', '遂宁市', '510000');
INSERT INTO `area` VALUES ('510901', '市辖区', '510900');
INSERT INTO `area` VALUES ('510903', '船山区', '510901');
INSERT INTO `area` VALUES ('510904', '安居区', '510901');
INSERT INTO `area` VALUES ('510921', '蓬溪县', '510900');
INSERT INTO `area` VALUES ('510922', '射洪县', '510900');
INSERT INTO `area` VALUES ('510923', '大英县', '510900');
INSERT INTO `area` VALUES ('511000', '内江市', '510000');
INSERT INTO `area` VALUES ('511001', '市辖区', '511000');
INSERT INTO `area` VALUES ('511002', '市中区', '511001');
INSERT INTO `area` VALUES ('511011', '东兴区', '511001');
INSERT INTO `area` VALUES ('511024', '威远县', '511000');
INSERT INTO `area` VALUES ('511025', '资中县', '511000');
INSERT INTO `area` VALUES ('511028', '隆昌县', '511000');
INSERT INTO `area` VALUES ('511100', '乐山市', '510000');
INSERT INTO `area` VALUES ('511101', '市辖区', '511100');
INSERT INTO `area` VALUES ('511102', '市中区', '511101');
INSERT INTO `area` VALUES ('511111', '沙湾区', '511101');
INSERT INTO `area` VALUES ('511112', '五通桥区', '511101');
INSERT INTO `area` VALUES ('511113', '金口河区', '511101');
INSERT INTO `area` VALUES ('511123', '犍为县', '511100');
INSERT INTO `area` VALUES ('511124', '井研县', '511100');
INSERT INTO `area` VALUES ('511126', '夹江县', '511100');
INSERT INTO `area` VALUES ('511129', '沐川县', '511100');
INSERT INTO `area` VALUES ('511132', '峨边彝族自治县', '511100');
INSERT INTO `area` VALUES ('511133', '马边彝族自治县', '511100');
INSERT INTO `area` VALUES ('511181', '峨眉山市', '511100');
INSERT INTO `area` VALUES ('511300', '南充市', '510000');
INSERT INTO `area` VALUES ('511301', '市辖区', '511300');
INSERT INTO `area` VALUES ('511302', '顺庆区', '511300');
INSERT INTO `area` VALUES ('511303', '高坪区', '511300');
INSERT INTO `area` VALUES ('511304', '嘉陵区', '511300');
INSERT INTO `area` VALUES ('511321', '南部县', '511300');
INSERT INTO `area` VALUES ('511322', '营山县', '511300');
INSERT INTO `area` VALUES ('511323', '蓬安县', '511300');
INSERT INTO `area` VALUES ('511324', '仪陇县', '511300');
INSERT INTO `area` VALUES ('511325', '西充县', '511300');
INSERT INTO `area` VALUES ('511381', '阆中市', '511300');
INSERT INTO `area` VALUES ('511400', '眉山市', '510000');
INSERT INTO `area` VALUES ('511401', '市辖区', '511400');
INSERT INTO `area` VALUES ('511402', '东坡区', '511401');
INSERT INTO `area` VALUES ('511421', '仁寿县', '511400');
INSERT INTO `area` VALUES ('511422', '彭山县', '511400');
INSERT INTO `area` VALUES ('511423', '洪雅县', '511400');
INSERT INTO `area` VALUES ('511424', '丹棱县', '511400');
INSERT INTO `area` VALUES ('511425', '青神县', '511400');
INSERT INTO `area` VALUES ('511500', '宜宾市', '510000');
INSERT INTO `area` VALUES ('511501', '市辖区', '511500');
INSERT INTO `area` VALUES ('511502', '翠屏区', '511500');
INSERT INTO `area` VALUES ('511521', '宜宾县', '511500');
INSERT INTO `area` VALUES ('511522', '南溪县', '511500');
INSERT INTO `area` VALUES ('511523', '江安县', '511500');
INSERT INTO `area` VALUES ('511524', '长宁县', '511500');
INSERT INTO `area` VALUES ('511525', '高县', '511500');
INSERT INTO `area` VALUES ('511526', '珙县', '511500');
INSERT INTO `area` VALUES ('511527', '筠连县', '511500');
INSERT INTO `area` VALUES ('511528', '兴文县', '511500');
INSERT INTO `area` VALUES ('511529', '屏山县', '511500');
INSERT INTO `area` VALUES ('511600', '广安市', '510000');
INSERT INTO `area` VALUES ('511601', '市辖区', '511600');
INSERT INTO `area` VALUES ('511602', '广安区', '511601');
INSERT INTO `area` VALUES ('511621', '岳池县', '511600');
INSERT INTO `area` VALUES ('511622', '武胜县', '511600');
INSERT INTO `area` VALUES ('511623', '邻水县', '511600');
INSERT INTO `area` VALUES ('511681', '华蓥市', '511600');
INSERT INTO `area` VALUES ('511682', '广安区', '511600');
INSERT INTO `area` VALUES ('511700', '达州市', '510000');
INSERT INTO `area` VALUES ('511701', '市辖区', '511700');
INSERT INTO `area` VALUES ('511702', '通川区', '511701');
INSERT INTO `area` VALUES ('511721', '达川区', '511700');
INSERT INTO `area` VALUES ('511722', '宣汉县', '511700');
INSERT INTO `area` VALUES ('511723', '开江县', '511700');
INSERT INTO `area` VALUES ('511724', '大竹县', '511700');
INSERT INTO `area` VALUES ('511725', '渠县', '511700');
INSERT INTO `area` VALUES ('511781', '万源市', '511700');
INSERT INTO `area` VALUES ('511800', '雅安市', '510000');
INSERT INTO `area` VALUES ('511801', '雨城区', '511800');
INSERT INTO `area` VALUES ('511802', '雨城区', '511801');
INSERT INTO `area` VALUES ('511821', '名山区', '511800');
INSERT INTO `area` VALUES ('511822', '荥经县', '511800');
INSERT INTO `area` VALUES ('511823', '汉源县', '511800');
INSERT INTO `area` VALUES ('511824', '石棉县', '511800');
INSERT INTO `area` VALUES ('511825', '天全县', '511800');
INSERT INTO `area` VALUES ('511826', '芦山县', '511800');
INSERT INTO `area` VALUES ('511827', '宝兴县', '511800');
INSERT INTO `area` VALUES ('511900', '巴中市', '510000');
INSERT INTO `area` VALUES ('511901', '市辖区', '511900');
INSERT INTO `area` VALUES ('511902', '巴州区', '511901');
INSERT INTO `area` VALUES ('511921', '通江县', '511900');
INSERT INTO `area` VALUES ('511922', '南江县', '511900');
INSERT INTO `area` VALUES ('511923', '平昌县', '511900');
INSERT INTO `area` VALUES ('512000', '资阳市', '510000');
INSERT INTO `area` VALUES ('512001', '市辖区', '512000');
INSERT INTO `area` VALUES ('512002', '雁江区', '512001');
INSERT INTO `area` VALUES ('512021', '安岳县', '512000');
INSERT INTO `area` VALUES ('512022', '乐至县', '512000');
INSERT INTO `area` VALUES ('512081', '简阳市', '512000');
INSERT INTO `area` VALUES ('513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `area` VALUES ('513221', '汶川县', '513200');
INSERT INTO `area` VALUES ('513222', '理县', '513200');
INSERT INTO `area` VALUES ('513223', '茂县', '513200');
INSERT INTO `area` VALUES ('513224', '松潘县', '513200');
INSERT INTO `area` VALUES ('513225', '九寨沟县', '513200');
INSERT INTO `area` VALUES ('513226', '金川县', '513200');
INSERT INTO `area` VALUES ('513227', '小金县', '513200');
INSERT INTO `area` VALUES ('513228', '黑水县', '513200');
INSERT INTO `area` VALUES ('513229', '马尔康县', '513200');
INSERT INTO `area` VALUES ('513230', '壤塘县', '513200');
INSERT INTO `area` VALUES ('513231', '阿坝县', '513200');
INSERT INTO `area` VALUES ('513232', '若尔盖县', '513200');
INSERT INTO `area` VALUES ('513233', '红原县', '513200');
INSERT INTO `area` VALUES ('513300', '甘孜藏族自治州', '510000');
INSERT INTO `area` VALUES ('513321', '康定县', '513300');
INSERT INTO `area` VALUES ('513322', '泸定县', '513300');
INSERT INTO `area` VALUES ('513323', '丹巴县', '513300');
INSERT INTO `area` VALUES ('513324', '九龙县', '513300');
INSERT INTO `area` VALUES ('513325', '雅江县', '513300');
INSERT INTO `area` VALUES ('513326', '道孚县', '513300');
INSERT INTO `area` VALUES ('513327', '炉霍县', '513300');
INSERT INTO `area` VALUES ('513328', '甘孜县', '513300');
INSERT INTO `area` VALUES ('513329', '新龙县', '513300');
INSERT INTO `area` VALUES ('513330', '德格县', '513300');
INSERT INTO `area` VALUES ('513331', '白玉县', '513300');
INSERT INTO `area` VALUES ('513332', '石渠县', '513300');
INSERT INTO `area` VALUES ('513333', '色达县', '513300');
INSERT INTO `area` VALUES ('513334', '理塘县', '513300');
INSERT INTO `area` VALUES ('513335', '巴塘县', '513300');
INSERT INTO `area` VALUES ('513336', '乡城县', '513300');
INSERT INTO `area` VALUES ('513337', '稻城县', '513300');
INSERT INTO `area` VALUES ('513338', '得荣县', '513300');
INSERT INTO `area` VALUES ('513400', '凉山彝族自治州', '510000');
INSERT INTO `area` VALUES ('513401', '西昌市', '513400');
INSERT INTO `area` VALUES ('513422', '木里藏族自治县', '513400');
INSERT INTO `area` VALUES ('513423', '盐源县', '513400');
INSERT INTO `area` VALUES ('513424', '德昌县', '513400');
INSERT INTO `area` VALUES ('513425', '会理县', '513400');
INSERT INTO `area` VALUES ('513426', '会东县', '513400');
INSERT INTO `area` VALUES ('513427', '宁南县', '513400');
INSERT INTO `area` VALUES ('513428', '普格县', '513400');
INSERT INTO `area` VALUES ('513429', '布拖县', '513400');
INSERT INTO `area` VALUES ('513430', '金阳县', '513400');
INSERT INTO `area` VALUES ('513431', '昭觉县', '513400');
INSERT INTO `area` VALUES ('513432', '喜德县', '513400');
INSERT INTO `area` VALUES ('513433', '冕宁县', '513400');
INSERT INTO `area` VALUES ('513434', '越西县', '513400');
INSERT INTO `area` VALUES ('513435', '甘洛县', '513400');
INSERT INTO `area` VALUES ('513436', '美姑县', '513400');
INSERT INTO `area` VALUES ('513437', '雷波县', '513400');
INSERT INTO `area` VALUES ('520000', '贵州', '0');
INSERT INTO `area` VALUES ('520100', '贵阳市', '520000');
INSERT INTO `area` VALUES ('520101', '市辖区', '520100');
INSERT INTO `area` VALUES ('520102', '南明区', '520101');
INSERT INTO `area` VALUES ('520103', '云岩区', '520101');
INSERT INTO `area` VALUES ('520111', '花溪区', '520101');
INSERT INTO `area` VALUES ('520112', '乌当区', '520100');
INSERT INTO `area` VALUES ('520113', '白云区', '520101');
INSERT INTO `area` VALUES ('520114', '小河区', '520101');
INSERT INTO `area` VALUES ('520121', '开阳县', '520100');
INSERT INTO `area` VALUES ('520122', '息烽县', '520100');
INSERT INTO `area` VALUES ('520123', '修文县', '520100');
INSERT INTO `area` VALUES ('520181', '清镇市', '520100');
INSERT INTO `area` VALUES ('520200', '六盘水市', '520000');
INSERT INTO `area` VALUES ('520201', '钟山区', '520200');
INSERT INTO `area` VALUES ('520203', '六枝特区', '520200');
INSERT INTO `area` VALUES ('520221', '水城县', '520200');
INSERT INTO `area` VALUES ('520222', '盘县', '520200');
INSERT INTO `area` VALUES ('520300', '遵义市', '520000');
INSERT INTO `area` VALUES ('520301', '市辖区', '520300');
INSERT INTO `area` VALUES ('520302', '红花岗区', '520301');
INSERT INTO `area` VALUES ('520303', '汇川区', '520301');
INSERT INTO `area` VALUES ('520321', '遵义县', '520300');
INSERT INTO `area` VALUES ('520322', '桐梓县', '520300');
INSERT INTO `area` VALUES ('520323', '绥阳县', '520300');
INSERT INTO `area` VALUES ('520324', '正安县', '520300');
INSERT INTO `area` VALUES ('520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `area` VALUES ('520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `area` VALUES ('520327', '凤冈县', '520300');
INSERT INTO `area` VALUES ('520328', '湄潭县', '520300');
INSERT INTO `area` VALUES ('520329', '余庆县', '520300');
INSERT INTO `area` VALUES ('520330', '习水县', '520300');
INSERT INTO `area` VALUES ('520381', '赤水市', '520300');
INSERT INTO `area` VALUES ('520382', '仁怀市', '520300');
INSERT INTO `area` VALUES ('520400', '安顺市', '520000');
INSERT INTO `area` VALUES ('520401', '市辖区', '520400');
INSERT INTO `area` VALUES ('520402', '西秀区', '520401');
INSERT INTO `area` VALUES ('520421', '平坝县', '520400');
INSERT INTO `area` VALUES ('520422', '普定县', '520400');
INSERT INTO `area` VALUES ('520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `area` VALUES ('520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `area` VALUES ('520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `area` VALUES ('522200', '铜仁市', '520000');
INSERT INTO `area` VALUES ('522201', '碧江区', '522200');
INSERT INTO `area` VALUES ('522222', '江口县', '522200');
INSERT INTO `area` VALUES ('522223', '玉屏侗族自治县', '522200');
INSERT INTO `area` VALUES ('522224', '石阡县', '522200');
INSERT INTO `area` VALUES ('522225', '思南县', '522200');
INSERT INTO `area` VALUES ('522226', '印江土家族苗族自治县', '522200');
INSERT INTO `area` VALUES ('522227', '德江县', '522200');
INSERT INTO `area` VALUES ('522228', '沿河土家族自治县', '522200');
INSERT INTO `area` VALUES ('522229', '松桃苗族自治县', '522200');
INSERT INTO `area` VALUES ('522230', '万山区', '522200');
INSERT INTO `area` VALUES ('522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `area` VALUES ('522301', '兴义市', '522300');
INSERT INTO `area` VALUES ('522322', '兴仁县', '522300');
INSERT INTO `area` VALUES ('522323', '普安县', '522300');
INSERT INTO `area` VALUES ('522324', '晴隆县', '522300');
INSERT INTO `area` VALUES ('522325', '贞丰县', '522300');
INSERT INTO `area` VALUES ('522326', '望谟县', '522300');
INSERT INTO `area` VALUES ('522327', '册亨县', '522300');
INSERT INTO `area` VALUES ('522328', '安龙县', '522300');
INSERT INTO `area` VALUES ('522400', '毕节市', '520000');
INSERT INTO `area` VALUES ('522401', '七星关区', '522400');
INSERT INTO `area` VALUES ('522422', '大方县', '522400');
INSERT INTO `area` VALUES ('522423', '黔西县', '522400');
INSERT INTO `area` VALUES ('522424', '金沙县', '522400');
INSERT INTO `area` VALUES ('522425', '织金县', '522400');
INSERT INTO `area` VALUES ('522426', '纳雍县', '522400');
INSERT INTO `area` VALUES ('522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `area` VALUES ('522428', '赫章县', '522400');
INSERT INTO `area` VALUES ('522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `area` VALUES ('522601', '凯里市', '522600');
INSERT INTO `area` VALUES ('522622', '黄平县', '522600');
INSERT INTO `area` VALUES ('522623', '施秉县', '522600');
INSERT INTO `area` VALUES ('522624', '三穗县', '522600');
INSERT INTO `area` VALUES ('522625', '镇远县', '522600');
INSERT INTO `area` VALUES ('522626', '岑巩县', '522600');
INSERT INTO `area` VALUES ('522627', '天柱县', '522600');
INSERT INTO `area` VALUES ('522628', '锦屏县', '522600');
INSERT INTO `area` VALUES ('522629', '剑河县', '522600');
INSERT INTO `area` VALUES ('522630', '台江县', '522600');
INSERT INTO `area` VALUES ('522631', '黎平县', '522600');
INSERT INTO `area` VALUES ('522632', '榕江县', '522600');
INSERT INTO `area` VALUES ('522633', '从江县', '522600');
INSERT INTO `area` VALUES ('522634', '雷山县', '522600');
INSERT INTO `area` VALUES ('522635', '麻江县', '522600');
INSERT INTO `area` VALUES ('522636', '丹寨县', '522600');
INSERT INTO `area` VALUES ('522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `area` VALUES ('522701', '都匀市', '522700');
INSERT INTO `area` VALUES ('522702', '福泉市', '522700');
INSERT INTO `area` VALUES ('522722', '荔波县', '522700');
INSERT INTO `area` VALUES ('522723', '贵定县', '522700');
INSERT INTO `area` VALUES ('522725', '瓮安县', '522700');
INSERT INTO `area` VALUES ('522726', '独山县', '522700');
INSERT INTO `area` VALUES ('522727', '平塘县', '522700');
INSERT INTO `area` VALUES ('522728', '罗甸县', '522700');
INSERT INTO `area` VALUES ('522729', '长顺县', '522700');
INSERT INTO `area` VALUES ('522730', '龙里县', '522700');
INSERT INTO `area` VALUES ('522731', '惠水县', '522700');
INSERT INTO `area` VALUES ('522732', '三都水族自治县', '522700');
INSERT INTO `area` VALUES ('530000', '云南', '0');
INSERT INTO `area` VALUES ('530100', '昆明市', '530000');
INSERT INTO `area` VALUES ('530101', '市辖区', '530100');
INSERT INTO `area` VALUES ('530102', '五华区', '530101');
INSERT INTO `area` VALUES ('530103', '盘龙区', '530101');
INSERT INTO `area` VALUES ('530111', '官渡区', '530101');
INSERT INTO `area` VALUES ('530112', '西山区', '530101');
INSERT INTO `area` VALUES ('530113', '东川区', '530101');
INSERT INTO `area` VALUES ('530121', '呈贡县', '530100');
INSERT INTO `area` VALUES ('530122', '晋宁县', '530100');
INSERT INTO `area` VALUES ('530124', '富民县', '530100');
INSERT INTO `area` VALUES ('530125', '宜良县', '530100');
INSERT INTO `area` VALUES ('530126', '石林彝族自治县', '530100');
INSERT INTO `area` VALUES ('530127', '嵩明县', '530100');
INSERT INTO `area` VALUES ('530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `area` VALUES ('530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `area` VALUES ('530181', '安宁市', '530100');
INSERT INTO `area` VALUES ('530300', '曲靖市', '530000');
INSERT INTO `area` VALUES ('530301', '市辖区', '530300');
INSERT INTO `area` VALUES ('530302', '麒麟区', '530301');
INSERT INTO `area` VALUES ('530321', '马龙县', '530300');
INSERT INTO `area` VALUES ('530322', '陆良县', '530300');
INSERT INTO `area` VALUES ('530323', '师宗县', '530300');
INSERT INTO `area` VALUES ('530324', '罗平县', '530300');
INSERT INTO `area` VALUES ('530325', '富源县', '530300');
INSERT INTO `area` VALUES ('530326', '会泽县', '530300');
INSERT INTO `area` VALUES ('530328', '沾益县', '530300');
INSERT INTO `area` VALUES ('530381', '宣威市', '530300');
INSERT INTO `area` VALUES ('530400', '玉溪市', '530000');
INSERT INTO `area` VALUES ('530401', '市辖区', '530400');
INSERT INTO `area` VALUES ('530402', '红塔区', '530401');
INSERT INTO `area` VALUES ('530421', '江川县', '530400');
INSERT INTO `area` VALUES ('530422', '澄江县', '530400');
INSERT INTO `area` VALUES ('530423', '通海县', '530400');
INSERT INTO `area` VALUES ('530424', '华宁县', '530400');
INSERT INTO `area` VALUES ('530425', '易门县', '530400');
INSERT INTO `area` VALUES ('530426', '峨山彝族自治县', '530400');
INSERT INTO `area` VALUES ('530427', '新平彝族傣族自治县', '530400');
INSERT INTO `area` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `area` VALUES ('530500', '保山市', '530000');
INSERT INTO `area` VALUES ('530501', '市辖区', '530500');
INSERT INTO `area` VALUES ('530502', '隆阳区', '530500');
INSERT INTO `area` VALUES ('530521', '施甸县', '530500');
INSERT INTO `area` VALUES ('530522', '腾冲县', '530500');
INSERT INTO `area` VALUES ('530523', '龙陵县', '530500');
INSERT INTO `area` VALUES ('530524', '昌宁县', '530500');
INSERT INTO `area` VALUES ('530600', '昭通市', '530000');
INSERT INTO `area` VALUES ('530601', '市辖区', '530600');
INSERT INTO `area` VALUES ('530602', '昭阳区', '530601');
INSERT INTO `area` VALUES ('530621', '鲁甸县', '530600');
INSERT INTO `area` VALUES ('530622', '巧家县', '530600');
INSERT INTO `area` VALUES ('530623', '盐津县', '530600');
INSERT INTO `area` VALUES ('530624', '大关县', '530600');
INSERT INTO `area` VALUES ('530625', '永善县', '530600');
INSERT INTO `area` VALUES ('530626', '绥江县', '530600');
INSERT INTO `area` VALUES ('530627', '镇雄县', '530600');
INSERT INTO `area` VALUES ('530628', '彝良县', '530600');
INSERT INTO `area` VALUES ('530629', '威信县', '530600');
INSERT INTO `area` VALUES ('530630', '水富县', '530600');
INSERT INTO `area` VALUES ('530700', '丽江市', '530000');
INSERT INTO `area` VALUES ('530701', '市辖区', '530700');
INSERT INTO `area` VALUES ('530702', '古城区', '530701');
INSERT INTO `area` VALUES ('530721', '玉龙纳西族自治县', '530700');
INSERT INTO `area` VALUES ('530722', '永胜县', '530700');
INSERT INTO `area` VALUES ('530723', '华坪县', '530700');
INSERT INTO `area` VALUES ('530724', '宁蒗彝族自治县', '530700');
INSERT INTO `area` VALUES ('530800', '普洱市', '530000');
INSERT INTO `area` VALUES ('530801', '市辖区', '530800');
INSERT INTO `area` VALUES ('530802', '翠云区', '530801');
INSERT INTO `area` VALUES ('530821', '宁洱哈尼族彝族自治县', '530800');
INSERT INTO `area` VALUES ('530822', '墨江哈尼族自治县', '530800');
INSERT INTO `area` VALUES ('530823', '景东彝族自治县', '530800');
INSERT INTO `area` VALUES ('530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `area` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `area` VALUES ('530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `area` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `area` VALUES ('530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `area` VALUES ('530829', '西盟佤族自治县', '530800');
INSERT INTO `area` VALUES ('530900', '临沧市', '530000');
INSERT INTO `area` VALUES ('530901', '市辖区', '530900');
INSERT INTO `area` VALUES ('530902', '临翔区', '530901');
INSERT INTO `area` VALUES ('530921', '凤庆县', '530900');
INSERT INTO `area` VALUES ('530922', '云县', '530900');
INSERT INTO `area` VALUES ('530923', '永德县', '530900');
INSERT INTO `area` VALUES ('530924', '镇康县', '530900');
INSERT INTO `area` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `area` VALUES ('530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `area` VALUES ('530927', '沧源佤族自治县', '530900');
INSERT INTO `area` VALUES ('532300', '楚雄彝族自治州', '530000');
INSERT INTO `area` VALUES ('532301', '楚雄市', '532300');
INSERT INTO `area` VALUES ('532322', '双柏县', '532300');
INSERT INTO `area` VALUES ('532323', '牟定县', '532300');
INSERT INTO `area` VALUES ('532324', '南华县', '532300');
INSERT INTO `area` VALUES ('532325', '姚安县', '532300');
INSERT INTO `area` VALUES ('532326', '大姚县', '532300');
INSERT INTO `area` VALUES ('532327', '永仁县', '532300');
INSERT INTO `area` VALUES ('532328', '元谋县', '532300');
INSERT INTO `area` VALUES ('532329', '武定县', '532300');
INSERT INTO `area` VALUES ('532331', '禄丰县', '532300');
INSERT INTO `area` VALUES ('532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `area` VALUES ('532501', '个旧市', '532500');
INSERT INTO `area` VALUES ('532502', '开远市', '532500');
INSERT INTO `area` VALUES ('532522', '蒙自市', '532500');
INSERT INTO `area` VALUES ('532523', '屏边苗族自治县', '532500');
INSERT INTO `area` VALUES ('532524', '建水县', '532500');
INSERT INTO `area` VALUES ('532525', '石屏县', '532500');
INSERT INTO `area` VALUES ('532526', '弥勒市', '532500');
INSERT INTO `area` VALUES ('532527', '泸西县', '532500');
INSERT INTO `area` VALUES ('532528', '元阳县', '532500');
INSERT INTO `area` VALUES ('532529', '红河县', '532500');
INSERT INTO `area` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `area` VALUES ('532531', '绿春县', '532500');
INSERT INTO `area` VALUES ('532532', '河口瑶族自治县', '532500');
INSERT INTO `area` VALUES ('532600', '文山壮族苗族自治州', '530000');
INSERT INTO `area` VALUES ('532621', '文山市', '532600');
INSERT INTO `area` VALUES ('532622', '砚山县', '532600');
INSERT INTO `area` VALUES ('532623', '西畴县', '532600');
INSERT INTO `area` VALUES ('532624', '麻栗坡县', '532600');
INSERT INTO `area` VALUES ('532625', '马关县', '532600');
INSERT INTO `area` VALUES ('532626', '丘北县', '532600');
INSERT INTO `area` VALUES ('532627', '广南县', '532600');
INSERT INTO `area` VALUES ('532628', '富宁县', '532600');
INSERT INTO `area` VALUES ('532800', '西双版纳傣族自治州', '530000');
INSERT INTO `area` VALUES ('532801', '景洪市', '532800');
INSERT INTO `area` VALUES ('532822', '勐海县', '532800');
INSERT INTO `area` VALUES ('532823', '勐腊县', '532800');
INSERT INTO `area` VALUES ('532900', '大理白族自治州', '530000');
INSERT INTO `area` VALUES ('532901', '大理市', '532900');
INSERT INTO `area` VALUES ('532922', '漾濞彝族自治县', '532900');
INSERT INTO `area` VALUES ('532923', '祥云县', '532900');
INSERT INTO `area` VALUES ('532924', '宾川县', '532900');
INSERT INTO `area` VALUES ('532925', '弥渡县', '532900');
INSERT INTO `area` VALUES ('532926', '南涧彝族自治县', '532900');
INSERT INTO `area` VALUES ('532927', '巍山彝族回族自治县', '532900');
INSERT INTO `area` VALUES ('532928', '永平县', '532900');
INSERT INTO `area` VALUES ('532929', '云龙县', '532900');
INSERT INTO `area` VALUES ('532930', '洱源县', '532900');
INSERT INTO `area` VALUES ('532931', '剑川县', '532900');
INSERT INTO `area` VALUES ('532932', '鹤庆县', '532900');
INSERT INTO `area` VALUES ('533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `area` VALUES ('533102', '瑞丽市', '533100');
INSERT INTO `area` VALUES ('533103', '潞西市', '533100');
INSERT INTO `area` VALUES ('533122', '梁河县', '533100');
INSERT INTO `area` VALUES ('533123', '盈江县', '533100');
INSERT INTO `area` VALUES ('533124', '陇川县', '533100');
INSERT INTO `area` VALUES ('533300', '怒江傈僳族自治州', '530000');
INSERT INTO `area` VALUES ('533321', '泸水县', '533300');
INSERT INTO `area` VALUES ('533323', '福贡县', '533300');
INSERT INTO `area` VALUES ('533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `area` VALUES ('533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `area` VALUES ('533400', '迪庆藏族自治州', '530000');
INSERT INTO `area` VALUES ('533421', '香格里拉县', '533400');
INSERT INTO `area` VALUES ('533422', '德钦县', '533400');
INSERT INTO `area` VALUES ('533423', '维西傈僳族自治县', '533400');
INSERT INTO `area` VALUES ('540000', '西藏', '0');
INSERT INTO `area` VALUES ('540100', '拉萨市', '540000');
INSERT INTO `area` VALUES ('540101', '市辖区', '540100');
INSERT INTO `area` VALUES ('540102', '城关区', '540101');
INSERT INTO `area` VALUES ('540121', '林周县', '540100');
INSERT INTO `area` VALUES ('540122', '当雄县', '540100');
INSERT INTO `area` VALUES ('540123', '尼木县', '540100');
INSERT INTO `area` VALUES ('540124', '曲水县', '540100');
INSERT INTO `area` VALUES ('540125', '堆龙德庆县', '540100');
INSERT INTO `area` VALUES ('540126', '达孜县', '540100');
INSERT INTO `area` VALUES ('540127', '墨竹工卡县', '540100');
INSERT INTO `area` VALUES ('542100', '昌都地区', '540000');
INSERT INTO `area` VALUES ('542121', '昌都县', '542100');
INSERT INTO `area` VALUES ('542122', '江达县', '542100');
INSERT INTO `area` VALUES ('542123', '贡觉县', '542100');
INSERT INTO `area` VALUES ('542124', '类乌齐县', '542100');
INSERT INTO `area` VALUES ('542125', '丁青县', '542100');
INSERT INTO `area` VALUES ('542126', '察雅县', '542100');
INSERT INTO `area` VALUES ('542127', '八宿县', '542100');
INSERT INTO `area` VALUES ('542128', '左贡县', '542100');
INSERT INTO `area` VALUES ('542129', '芒康县', '542100');
INSERT INTO `area` VALUES ('542132', '洛隆县', '542100');
INSERT INTO `area` VALUES ('542133', '边坝县', '542100');
INSERT INTO `area` VALUES ('542200', '山南地区', '540000');
INSERT INTO `area` VALUES ('542221', '乃东县', '542200');
INSERT INTO `area` VALUES ('542222', '扎囊县', '542200');
INSERT INTO `area` VALUES ('542223', '贡嘎县', '542200');
INSERT INTO `area` VALUES ('542224', '桑日县', '542200');
INSERT INTO `area` VALUES ('542225', '琼结县', '542200');
INSERT INTO `area` VALUES ('542226', '曲松县', '542200');
INSERT INTO `area` VALUES ('542227', '措美县', '542200');
INSERT INTO `area` VALUES ('542228', '洛扎县', '542200');
INSERT INTO `area` VALUES ('542229', '加查县', '542200');
INSERT INTO `area` VALUES ('542231', '隆子县', '542200');
INSERT INTO `area` VALUES ('542232', '错那县', '542200');
INSERT INTO `area` VALUES ('542233', '浪卡子县', '542200');
INSERT INTO `area` VALUES ('542300', '日喀则地区', '540000');
INSERT INTO `area` VALUES ('542301', '日喀则市', '542300');
INSERT INTO `area` VALUES ('542322', '南木林县', '542300');
INSERT INTO `area` VALUES ('542323', '江孜县', '542300');
INSERT INTO `area` VALUES ('542324', '定日县', '542300');
INSERT INTO `area` VALUES ('542325', '萨迦县', '542300');
INSERT INTO `area` VALUES ('542326', '拉孜县', '542300');
INSERT INTO `area` VALUES ('542327', '昂仁县', '542300');
INSERT INTO `area` VALUES ('542328', '谢通门县', '542300');
INSERT INTO `area` VALUES ('542329', '白朗县', '542300');
INSERT INTO `area` VALUES ('542330', '仁布县', '542300');
INSERT INTO `area` VALUES ('542331', '康马县', '542300');
INSERT INTO `area` VALUES ('542332', '定结县', '542300');
INSERT INTO `area` VALUES ('542333', '仲巴县', '542300');
INSERT INTO `area` VALUES ('542334', '亚东县', '542300');
INSERT INTO `area` VALUES ('542335', '吉隆县', '542300');
INSERT INTO `area` VALUES ('542336', '聂拉木县', '542300');
INSERT INTO `area` VALUES ('542337', '萨嘎县', '542300');
INSERT INTO `area` VALUES ('542338', '岗巴县', '542300');
INSERT INTO `area` VALUES ('542400', '那曲地区', '540000');
INSERT INTO `area` VALUES ('542421', '那曲县', '542400');
INSERT INTO `area` VALUES ('542422', '嘉黎县', '542400');
INSERT INTO `area` VALUES ('542423', '比如县', '542400');
INSERT INTO `area` VALUES ('542424', '聂荣县', '542400');
INSERT INTO `area` VALUES ('542425', '安多县', '542400');
INSERT INTO `area` VALUES ('542426', '申扎县', '542400');
INSERT INTO `area` VALUES ('542427', '索县', '542400');
INSERT INTO `area` VALUES ('542428', '班戈县', '542400');
INSERT INTO `area` VALUES ('542429', '巴青县', '542400');
INSERT INTO `area` VALUES ('542430', '尼玛县', '542400');
INSERT INTO `area` VALUES ('542500', '阿里地区', '540000');
INSERT INTO `area` VALUES ('542521', '普兰县', '542500');
INSERT INTO `area` VALUES ('542522', '札达县', '542500');
INSERT INTO `area` VALUES ('542523', '噶尔县', '542500');
INSERT INTO `area` VALUES ('542524', '日土县', '542500');
INSERT INTO `area` VALUES ('542525', '革吉县', '542500');
INSERT INTO `area` VALUES ('542526', '改则县', '542500');
INSERT INTO `area` VALUES ('542527', '措勤县', '542500');
INSERT INTO `area` VALUES ('542600', '林芝地区', '540000');
INSERT INTO `area` VALUES ('542621', '林芝县', '542600');
INSERT INTO `area` VALUES ('542622', '工布江达县', '542600');
INSERT INTO `area` VALUES ('542623', '米林县', '542600');
INSERT INTO `area` VALUES ('542624', '墨脱县', '542600');
INSERT INTO `area` VALUES ('542625', '波密县', '542600');
INSERT INTO `area` VALUES ('542626', '察隅县', '542600');
INSERT INTO `area` VALUES ('542627', '朗县', '542600');
INSERT INTO `area` VALUES ('610000', '陕西', '0');
INSERT INTO `area` VALUES ('610100', '西安市', '610000');
INSERT INTO `area` VALUES ('610101', '长安区', '610100');
INSERT INTO `area` VALUES ('610102', '新城区', '610100');
INSERT INTO `area` VALUES ('610103', '碑林区', '610100');
INSERT INTO `area` VALUES ('610104', '莲湖区', '610100');
INSERT INTO `area` VALUES ('610111', '灞桥区', '610100');
INSERT INTO `area` VALUES ('610112', '未央区', '610100');
INSERT INTO `area` VALUES ('610113', '雁塔区', '610100');
INSERT INTO `area` VALUES ('610114', '阎良区', '610100');
INSERT INTO `area` VALUES ('610115', '临潼区', '610100');
INSERT INTO `area` VALUES ('610122', '蓝田县', '610100');
INSERT INTO `area` VALUES ('610124', '周至县', '610100');
INSERT INTO `area` VALUES ('610125', '户县', '610100');
INSERT INTO `area` VALUES ('610126', '高陵县', '610100');
INSERT INTO `area` VALUES ('610200', '铜川市', '610000');
INSERT INTO `area` VALUES ('610201', '市辖区', '610200');
INSERT INTO `area` VALUES ('610202', '王益区', '610201');
INSERT INTO `area` VALUES ('610203', '印台区', '610201');
INSERT INTO `area` VALUES ('610204', '耀州区', '610201');
INSERT INTO `area` VALUES ('610222', '宜君县', '610200');
INSERT INTO `area` VALUES ('610300', '宝鸡市', '610000');
INSERT INTO `area` VALUES ('610301', '市辖区', '610300');
INSERT INTO `area` VALUES ('610302', '渭滨区', '610300');
INSERT INTO `area` VALUES ('610303', '金台区', '610300');
INSERT INTO `area` VALUES ('610304', '陈仓区', '610300');
INSERT INTO `area` VALUES ('610322', '凤翔县', '610300');
INSERT INTO `area` VALUES ('610323', '岐山县', '610300');
INSERT INTO `area` VALUES ('610324', '扶风县', '610300');
INSERT INTO `area` VALUES ('610326', '眉县', '610300');
INSERT INTO `area` VALUES ('610327', '陇县', '610300');
INSERT INTO `area` VALUES ('610328', '千阳县', '610300');
INSERT INTO `area` VALUES ('610329', '麟游县', '610300');
INSERT INTO `area` VALUES ('610330', '凤县', '610300');
INSERT INTO `area` VALUES ('610331', '太白县', '610300');
INSERT INTO `area` VALUES ('610400', '咸阳市', '610000');
INSERT INTO `area` VALUES ('610401', '市辖区', '610400');
INSERT INTO `area` VALUES ('610402', '秦都区', '610401');
INSERT INTO `area` VALUES ('610404', '渭城区', '610401');
INSERT INTO `area` VALUES ('610422', '三原县', '610400');
INSERT INTO `area` VALUES ('610423', '泾阳县', '610400');
INSERT INTO `area` VALUES ('610424', '乾县', '610400');
INSERT INTO `area` VALUES ('610425', '礼泉县', '610400');
INSERT INTO `area` VALUES ('610426', '永寿县', '610400');
INSERT INTO `area` VALUES ('610427', '彬县', '610400');
INSERT INTO `area` VALUES ('610428', '长武县', '610400');
INSERT INTO `area` VALUES ('610429', '旬邑县', '610400');
INSERT INTO `area` VALUES ('610430', '淳化县', '610400');
INSERT INTO `area` VALUES ('610431', '武功县', '610400');
INSERT INTO `area` VALUES ('610481', '兴平市', '610400');
INSERT INTO `area` VALUES ('610500', '渭南市', '610000');
INSERT INTO `area` VALUES ('610501', '市辖区', '610500');
INSERT INTO `area` VALUES ('610502', '临渭区', '610501');
INSERT INTO `area` VALUES ('610521', '华县', '610500');
INSERT INTO `area` VALUES ('610522', '潼关县', '610500');
INSERT INTO `area` VALUES ('610523', '大荔县', '610500');
INSERT INTO `area` VALUES ('610524', '合阳县', '610500');
INSERT INTO `area` VALUES ('610525', '澄城县', '610500');
INSERT INTO `area` VALUES ('610526', '蒲城县', '610500');
INSERT INTO `area` VALUES ('610527', '白水县', '610500');
INSERT INTO `area` VALUES ('610528', '富平县', '610500');
INSERT INTO `area` VALUES ('610581', '韩城市', '610500');
INSERT INTO `area` VALUES ('610582', '华阴市', '610500');
INSERT INTO `area` VALUES ('610600', '延安市', '610000');
INSERT INTO `area` VALUES ('610601', '市辖区', '610600');
INSERT INTO `area` VALUES ('610602', '宝塔区', '610601');
INSERT INTO `area` VALUES ('610621', '延长县', '610600');
INSERT INTO `area` VALUES ('610622', '延川县', '610600');
INSERT INTO `area` VALUES ('610623', '子长县', '610600');
INSERT INTO `area` VALUES ('610624', '安塞县', '610600');
INSERT INTO `area` VALUES ('610625', '志丹县', '610600');
INSERT INTO `area` VALUES ('610626', '吴起县', '610600');
INSERT INTO `area` VALUES ('610627', '甘泉县', '610600');
INSERT INTO `area` VALUES ('610628', '富县', '610600');
INSERT INTO `area` VALUES ('610629', '洛川县', '610600');
INSERT INTO `area` VALUES ('610630', '宜川县', '610600');
INSERT INTO `area` VALUES ('610631', '黄龙县', '610600');
INSERT INTO `area` VALUES ('610632', '黄陵县', '610600');
INSERT INTO `area` VALUES ('610700', '汉中市', '610000');
INSERT INTO `area` VALUES ('610701', '市辖区', '610700');
INSERT INTO `area` VALUES ('610702', '汉台区', '610700');
INSERT INTO `area` VALUES ('610721', '南郑县', '610700');
INSERT INTO `area` VALUES ('610722', '城固县', '610700');
INSERT INTO `area` VALUES ('610723', '洋县', '610700');
INSERT INTO `area` VALUES ('610724', '西乡县', '610700');
INSERT INTO `area` VALUES ('610725', '勉县', '610700');
INSERT INTO `area` VALUES ('610726', '宁强县', '610700');
INSERT INTO `area` VALUES ('610727', '略阳县', '610700');
INSERT INTO `area` VALUES ('610728', '镇巴县', '610700');
INSERT INTO `area` VALUES ('610729', '留坝县', '610700');
INSERT INTO `area` VALUES ('610730', '佛坪县', '610700');
INSERT INTO `area` VALUES ('610800', '榆林市', '610000');
INSERT INTO `area` VALUES ('610801', '市辖区', '610800');
INSERT INTO `area` VALUES ('610802', '榆阳区', '610800');
INSERT INTO `area` VALUES ('610821', '神木县', '610800');
INSERT INTO `area` VALUES ('610822', '府谷县', '610800');
INSERT INTO `area` VALUES ('610823', '横山县', '610800');
INSERT INTO `area` VALUES ('610824', '靖边县', '610800');
INSERT INTO `area` VALUES ('610825', '定边县', '610800');
INSERT INTO `area` VALUES ('610826', '绥德县', '610800');
INSERT INTO `area` VALUES ('610827', '米脂县', '610800');
INSERT INTO `area` VALUES ('610828', '佳县', '610800');
INSERT INTO `area` VALUES ('610829', '吴堡县', '610800');
INSERT INTO `area` VALUES ('610830', '清涧县', '610800');
INSERT INTO `area` VALUES ('610831', '子洲县', '610800');
INSERT INTO `area` VALUES ('610900', '安康市', '610000');
INSERT INTO `area` VALUES ('610901', '市辖区', '610900');
INSERT INTO `area` VALUES ('610902', '汉滨区', '610900');
INSERT INTO `area` VALUES ('610921', '汉阴县', '610900');
INSERT INTO `area` VALUES ('610922', '石泉县', '610900');
INSERT INTO `area` VALUES ('610923', '宁陕县', '610900');
INSERT INTO `area` VALUES ('610924', '紫阳县', '610900');
INSERT INTO `area` VALUES ('610925', '岚皋县', '610900');
INSERT INTO `area` VALUES ('610926', '平利县', '610900');
INSERT INTO `area` VALUES ('610927', '镇坪县', '610900');
INSERT INTO `area` VALUES ('610928', '旬阳县', '610900');
INSERT INTO `area` VALUES ('610929', '白河县', '610900');
INSERT INTO `area` VALUES ('611000', '商洛市', '610000');
INSERT INTO `area` VALUES ('611001', '市辖区', '611000');
INSERT INTO `area` VALUES ('611002', '商州区', '611000');
INSERT INTO `area` VALUES ('611021', '洛南县', '611000');
INSERT INTO `area` VALUES ('611022', '丹凤县', '611000');
INSERT INTO `area` VALUES ('611023', '商南县', '611000');
INSERT INTO `area` VALUES ('611024', '山阳县', '611000');
INSERT INTO `area` VALUES ('611025', '镇安县', '611000');
INSERT INTO `area` VALUES ('611026', '柞水县', '611000');
INSERT INTO `area` VALUES ('611100', '杨凌示范区', '610000');
INSERT INTO `area` VALUES ('611103', '杨凌区', '611100');
INSERT INTO `area` VALUES ('620000', '甘肃', '0');
INSERT INTO `area` VALUES ('620100', '兰州市', '620000');
INSERT INTO `area` VALUES ('620101', '市辖区', '620100');
INSERT INTO `area` VALUES ('620102', '城关区', '620101');
INSERT INTO `area` VALUES ('620103', '七里河区', '620101');
INSERT INTO `area` VALUES ('620104', '西固区', '620101');
INSERT INTO `area` VALUES ('620105', '安宁区', '620101');
INSERT INTO `area` VALUES ('620111', '红古区', '620101');
INSERT INTO `area` VALUES ('620121', '永登县', '620100');
INSERT INTO `area` VALUES ('620122', '皋兰县', '620100');
INSERT INTO `area` VALUES ('620123', '榆中县', '620100');
INSERT INTO `area` VALUES ('620200', '嘉峪关市', '620000');
INSERT INTO `area` VALUES ('620201', '市辖区', '620200');
INSERT INTO `area` VALUES ('620300', '金昌市', '620000');
INSERT INTO `area` VALUES ('620301', '金川区', '620300');
INSERT INTO `area` VALUES ('620321', '永昌县', '620300');
INSERT INTO `area` VALUES ('620400', '白银市', '620000');
INSERT INTO `area` VALUES ('620401', '市辖区', '620400');
INSERT INTO `area` VALUES ('620402', '白银区', '620401');
INSERT INTO `area` VALUES ('620403', '平川区', '620401');
INSERT INTO `area` VALUES ('620421', '靖远县', '620400');
INSERT INTO `area` VALUES ('620422', '会宁县', '620400');
INSERT INTO `area` VALUES ('620423', '景泰县', '620400');
INSERT INTO `area` VALUES ('620500', '天水市', '620000');
INSERT INTO `area` VALUES ('620501', '麦积区', '620500');
INSERT INTO `area` VALUES ('620502', '秦州区', '620500');
INSERT INTO `area` VALUES ('620521', '清水县', '620500');
INSERT INTO `area` VALUES ('620522', '秦安县', '620500');
INSERT INTO `area` VALUES ('620523', '甘谷县', '620500');
INSERT INTO `area` VALUES ('620524', '武山县', '620500');
INSERT INTO `area` VALUES ('620525', '张家川回族自治县', '620500');
INSERT INTO `area` VALUES ('620600', '武威市', '620000');
INSERT INTO `area` VALUES ('620601', '市辖区', '620600');
INSERT INTO `area` VALUES ('620602', '凉州区', '620601');
INSERT INTO `area` VALUES ('620621', '民勤县', '620600');
INSERT INTO `area` VALUES ('620622', '古浪县', '620600');
INSERT INTO `area` VALUES ('620623', '天祝藏族自治县', '620600');
INSERT INTO `area` VALUES ('620700', '张掖市', '620000');
INSERT INTO `area` VALUES ('620701', '市辖区', '620700');
INSERT INTO `area` VALUES ('620702', '甘州区', '620700');
INSERT INTO `area` VALUES ('620721', '肃南裕固族自治县', '620700');
INSERT INTO `area` VALUES ('620722', '民乐县', '620700');
INSERT INTO `area` VALUES ('620723', '临泽县', '620700');
INSERT INTO `area` VALUES ('620724', '高台县', '620700');
INSERT INTO `area` VALUES ('620725', '山丹县', '620700');
INSERT INTO `area` VALUES ('620800', '平凉市', '620000');
INSERT INTO `area` VALUES ('620801', '市辖区', '620800');
INSERT INTO `area` VALUES ('620802', '崆峒区', '620800');
INSERT INTO `area` VALUES ('620821', '泾川县', '620800');
INSERT INTO `area` VALUES ('620822', '灵台县', '620800');
INSERT INTO `area` VALUES ('620823', '崇信县', '620800');
INSERT INTO `area` VALUES ('620824', '华亭县', '620800');
INSERT INTO `area` VALUES ('620825', '庄浪县', '620800');
INSERT INTO `area` VALUES ('620826', '静宁县', '620800');
INSERT INTO `area` VALUES ('620900', '酒泉市', '620000');
INSERT INTO `area` VALUES ('620901', '市辖区', '620900');
INSERT INTO `area` VALUES ('620902', '肃州区', '620900');
INSERT INTO `area` VALUES ('620921', '金塔县', '620900');
INSERT INTO `area` VALUES ('620922', '瓜洲县', '620900');
INSERT INTO `area` VALUES ('620923', '肃北蒙古族自治县', '620900');
INSERT INTO `area` VALUES ('620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `area` VALUES ('620981', '玉门市', '620900');
INSERT INTO `area` VALUES ('620982', '敦煌市', '620900');
INSERT INTO `area` VALUES ('621000', '庆阳市', '620000');
INSERT INTO `area` VALUES ('621001', '市辖区', '621000');
INSERT INTO `area` VALUES ('621002', '西峰区', '621001');
INSERT INTO `area` VALUES ('621021', '庆城县', '621000');
INSERT INTO `area` VALUES ('621022', '环县', '621000');
INSERT INTO `area` VALUES ('621023', '华池县', '621000');
INSERT INTO `area` VALUES ('621024', '合水县', '621000');
INSERT INTO `area` VALUES ('621025', '正宁县', '621000');
INSERT INTO `area` VALUES ('621026', '宁县', '621000');
INSERT INTO `area` VALUES ('621027', '镇原县', '621000');
INSERT INTO `area` VALUES ('621100', '定西市', '620000');
INSERT INTO `area` VALUES ('621101', '市辖区', '621100');
INSERT INTO `area` VALUES ('621102', '安定区', '621101');
INSERT INTO `area` VALUES ('621121', '通渭县', '621100');
INSERT INTO `area` VALUES ('621122', '陇西县', '621100');
INSERT INTO `area` VALUES ('621123', '渭源县', '621100');
INSERT INTO `area` VALUES ('621124', '临洮县', '621100');
INSERT INTO `area` VALUES ('621125', '漳县', '621100');
INSERT INTO `area` VALUES ('621126', '岷县', '621100');
INSERT INTO `area` VALUES ('621200', '陇南市', '620000');
INSERT INTO `area` VALUES ('621201', '武都区', '621200');
INSERT INTO `area` VALUES ('621221', '成县', '621200');
INSERT INTO `area` VALUES ('621222', '文县', '621200');
INSERT INTO `area` VALUES ('621223', '宕昌县', '621200');
INSERT INTO `area` VALUES ('621224', '康县', '621200');
INSERT INTO `area` VALUES ('621225', '西和县', '621200');
INSERT INTO `area` VALUES ('621226', '礼县', '621200');
INSERT INTO `area` VALUES ('621227', '徽县', '621200');
INSERT INTO `area` VALUES ('621228', '两当县', '621200');
INSERT INTO `area` VALUES ('622900', '临夏回族自治州', '620000');
INSERT INTO `area` VALUES ('622901', '临夏市', '622900');
INSERT INTO `area` VALUES ('622921', '临夏县', '622900');
INSERT INTO `area` VALUES ('622922', '康乐县', '622900');
INSERT INTO `area` VALUES ('622923', '永靖县', '622900');
INSERT INTO `area` VALUES ('622924', '广河县', '622900');
INSERT INTO `area` VALUES ('622925', '和政县', '622900');
INSERT INTO `area` VALUES ('622926', '东乡族自治县', '622900');
INSERT INTO `area` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `area` VALUES ('623000', '甘南藏族自治州', '620000');
INSERT INTO `area` VALUES ('623001', '合作市', '623000');
INSERT INTO `area` VALUES ('623021', '临潭县', '623000');
INSERT INTO `area` VALUES ('623022', '卓尼县', '623000');
INSERT INTO `area` VALUES ('623023', '舟曲县', '623000');
INSERT INTO `area` VALUES ('623024', '迭部县', '623000');
INSERT INTO `area` VALUES ('623025', '玛曲县', '623000');
INSERT INTO `area` VALUES ('623026', '碌曲县', '623000');
INSERT INTO `area` VALUES ('623027', '夏河县', '623000');
INSERT INTO `area` VALUES ('630000', '青海', '0');
INSERT INTO `area` VALUES ('630100', '西宁市', '630000');
INSERT INTO `area` VALUES ('630101', '市辖区', '630100');
INSERT INTO `area` VALUES ('630102', '城东区', '630101');
INSERT INTO `area` VALUES ('630103', '城中区', '630101');
INSERT INTO `area` VALUES ('630104', '城西区', '630101');
INSERT INTO `area` VALUES ('630105', '城北区', '630101');
INSERT INTO `area` VALUES ('630121', '大通回族土族自治县', '630100');
INSERT INTO `area` VALUES ('630122', '湟中县', '630100');
INSERT INTO `area` VALUES ('630123', '湟源县', '630100');
INSERT INTO `area` VALUES ('632100', '海东市', '630000');
INSERT INTO `area` VALUES ('632121', '平安县', '632100');
INSERT INTO `area` VALUES ('632122', '民和回族土族自治县', '632100');
INSERT INTO `area` VALUES ('632123', '乐都区', '632100');
INSERT INTO `area` VALUES ('632126', '互助土族自治县', '632100');
INSERT INTO `area` VALUES ('632127', '化隆回族自治县', '632100');
INSERT INTO `area` VALUES ('632128', '循化撒拉族自治县', '632100');
INSERT INTO `area` VALUES ('632200', '海北藏族自治州', '630000');
INSERT INTO `area` VALUES ('632221', '门源回族自治县', '632200');
INSERT INTO `area` VALUES ('632222', '祁连县', '632200');
INSERT INTO `area` VALUES ('632223', '海晏县', '632200');
INSERT INTO `area` VALUES ('632224', '刚察县', '632200');
INSERT INTO `area` VALUES ('632300', '黄南藏族自治州', '630000');
INSERT INTO `area` VALUES ('632321', '同仁县', '632300');
INSERT INTO `area` VALUES ('632322', '尖扎县', '632300');
INSERT INTO `area` VALUES ('632323', '泽库县', '632300');
INSERT INTO `area` VALUES ('632324', '河南蒙古族自治县', '632300');
INSERT INTO `area` VALUES ('632500', '海南藏族自治州', '630000');
INSERT INTO `area` VALUES ('632521', '共和县', '632500');
INSERT INTO `area` VALUES ('632522', '同德县', '632500');
INSERT INTO `area` VALUES ('632523', '贵德县', '632500');
INSERT INTO `area` VALUES ('632524', '兴海县', '632500');
INSERT INTO `area` VALUES ('632525', '贵南县', '632500');
INSERT INTO `area` VALUES ('632600', '果洛藏族自治州', '630000');
INSERT INTO `area` VALUES ('632621', '玛沁县', '632600');
INSERT INTO `area` VALUES ('632622', '班玛县', '632600');
INSERT INTO `area` VALUES ('632623', '甘德县', '632600');
INSERT INTO `area` VALUES ('632624', '达日县', '632600');
INSERT INTO `area` VALUES ('632625', '久治县', '632600');
INSERT INTO `area` VALUES ('632626', '玛多县', '632600');
INSERT INTO `area` VALUES ('632700', '玉树藏族自治州', '630000');
INSERT INTO `area` VALUES ('632721', '玉树县', '632700');
INSERT INTO `area` VALUES ('632722', '杂多县', '632700');
INSERT INTO `area` VALUES ('632723', '称多县', '632700');
INSERT INTO `area` VALUES ('632724', '治多县', '632700');
INSERT INTO `area` VALUES ('632725', '囊谦县', '632700');
INSERT INTO `area` VALUES ('632726', '曲麻莱县', '632700');
INSERT INTO `area` VALUES ('632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `area` VALUES ('632801', '格尔木市', '632800');
INSERT INTO `area` VALUES ('632802', '德令哈市', '632800');
INSERT INTO `area` VALUES ('632821', '乌兰县', '632800');
INSERT INTO `area` VALUES ('632822', '都兰县', '632800');
INSERT INTO `area` VALUES ('632823', '天峻县', '632800');
INSERT INTO `area` VALUES ('640000', '宁夏', '0');
INSERT INTO `area` VALUES ('640100', '银川市', '640000');
INSERT INTO `area` VALUES ('640104', '兴庆区', '640100');
INSERT INTO `area` VALUES ('640105', '西夏区', '640100');
INSERT INTO `area` VALUES ('640106', '金凤区', '640100');
INSERT INTO `area` VALUES ('640121', '永宁县', '640100');
INSERT INTO `area` VALUES ('640122', '贺兰县', '640100');
INSERT INTO `area` VALUES ('640181', '灵武市', '640100');
INSERT INTO `area` VALUES ('640200', '石嘴山市', '640000');
INSERT INTO `area` VALUES ('640202', '大武口区', '640200');
INSERT INTO `area` VALUES ('640205', '惠农县', '640200');
INSERT INTO `area` VALUES ('640221', '平罗县', '640200');
INSERT INTO `area` VALUES ('640300', '吴忠市', '640000');
INSERT INTO `area` VALUES ('640301', '红寺堡区', '640300');
INSERT INTO `area` VALUES ('640302', '利通区', '640300');
INSERT INTO `area` VALUES ('640323', '盐池县', '640300');
INSERT INTO `area` VALUES ('640324', '同心县', '640300');
INSERT INTO `area` VALUES ('640381', '青铜峡市', '640300');
INSERT INTO `area` VALUES ('640400', '固原市', '640000');
INSERT INTO `area` VALUES ('640401', '市辖区', '640400');
INSERT INTO `area` VALUES ('640402', '原州区', '640400');
INSERT INTO `area` VALUES ('640422', '西吉县', '640400');
INSERT INTO `area` VALUES ('640423', '隆德县', '640400');
INSERT INTO `area` VALUES ('640424', '泾源县', '640400');
INSERT INTO `area` VALUES ('640425', '彭阳县', '640400');
INSERT INTO `area` VALUES ('640500', '中卫市', '640000');
INSERT INTO `area` VALUES ('640501', '市辖区', '640500');
INSERT INTO `area` VALUES ('640502', '沙坡头区', '640500');
INSERT INTO `area` VALUES ('640521', '中宁县', '640500');
INSERT INTO `area` VALUES ('640522', '海原县', '640500');
INSERT INTO `area` VALUES ('650000', '新疆', '0');
INSERT INTO `area` VALUES ('650100', '乌鲁木齐市', '650000');
INSERT INTO `area` VALUES ('650101', '市辖区', '650100');
INSERT INTO `area` VALUES ('650102', '天山区', '650101');
INSERT INTO `area` VALUES ('650103', '沙依巴克区', '650101');
INSERT INTO `area` VALUES ('650104', '新市区', '650101');
INSERT INTO `area` VALUES ('650105', '水磨沟区', '650101');
INSERT INTO `area` VALUES ('650106', '头屯河区', '650101');
INSERT INTO `area` VALUES ('650107', '达坂城区', '650101');
INSERT INTO `area` VALUES ('650108', '东山区', '650101');
INSERT INTO `area` VALUES ('650121', '乌鲁木齐县', '650100');
INSERT INTO `area` VALUES ('650200', '克拉玛依市', '650000');
INSERT INTO `area` VALUES ('650201', '市辖区', '650200');
INSERT INTO `area` VALUES ('650202', '独山子区', '650201');
INSERT INTO `area` VALUES ('650203', '克拉玛依区', '650201');
INSERT INTO `area` VALUES ('650204', '白碱滩区', '650201');
INSERT INTO `area` VALUES ('650205', '乌尔禾区', '650201');
INSERT INTO `area` VALUES ('652100', '吐鲁番地区', '650000');
INSERT INTO `area` VALUES ('652101', '吐鲁番市', '652100');
INSERT INTO `area` VALUES ('652122', '鄯善县', '652100');
INSERT INTO `area` VALUES ('652123', '托克逊县', '652100');
INSERT INTO `area` VALUES ('652200', '哈密地区', '650000');
INSERT INTO `area` VALUES ('652201', '哈密市', '652200');
INSERT INTO `area` VALUES ('652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `area` VALUES ('652223', '伊吾县', '652200');
INSERT INTO `area` VALUES ('652300', '昌吉回族自治州', '650000');
INSERT INTO `area` VALUES ('652301', '昌吉市', '652300');
INSERT INTO `area` VALUES ('652302', '阜康市', '652300');
INSERT INTO `area` VALUES ('652303', '米泉市', '652300');
INSERT INTO `area` VALUES ('652323', '呼图壁县', '652300');
INSERT INTO `area` VALUES ('652324', '玛纳斯县', '652300');
INSERT INTO `area` VALUES ('652325', '奇台县', '652300');
INSERT INTO `area` VALUES ('652327', '吉木萨尔县', '652300');
INSERT INTO `area` VALUES ('652328', '木垒哈萨克自治县', '652300');
INSERT INTO `area` VALUES ('652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `area` VALUES ('652701', '博乐市', '652700');
INSERT INTO `area` VALUES ('652722', '精河县', '652700');
INSERT INTO `area` VALUES ('652723', '温泉县', '652700');
INSERT INTO `area` VALUES ('652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `area` VALUES ('652801', '库尔勒市', '652800');
INSERT INTO `area` VALUES ('652822', '轮台县', '652800');
INSERT INTO `area` VALUES ('652823', '尉犁县', '652800');
INSERT INTO `area` VALUES ('652824', '若羌县', '652800');
INSERT INTO `area` VALUES ('652825', '且末县', '652800');
INSERT INTO `area` VALUES ('652826', '焉耆回族自治县', '652800');
INSERT INTO `area` VALUES ('652827', '和静县', '652800');
INSERT INTO `area` VALUES ('652828', '和硕县', '652800');
INSERT INTO `area` VALUES ('652829', '博湖县', '652800');
INSERT INTO `area` VALUES ('652900', '阿克苏地区', '650000');
INSERT INTO `area` VALUES ('652901', '阿克苏市', '652900');
INSERT INTO `area` VALUES ('652922', '温宿县', '652900');
INSERT INTO `area` VALUES ('652923', '库车县', '652900');
INSERT INTO `area` VALUES ('652924', '沙雅县', '652900');
INSERT INTO `area` VALUES ('652925', '新和县', '652900');
INSERT INTO `area` VALUES ('652926', '拜城县', '652900');
INSERT INTO `area` VALUES ('652927', '乌什县', '652900');
INSERT INTO `area` VALUES ('652928', '阿瓦提县', '652900');
INSERT INTO `area` VALUES ('652929', '柯坪县', '652900');
INSERT INTO `area` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `area` VALUES ('653001', '阿图什市', '653000');
INSERT INTO `area` VALUES ('653022', '阿克陶县', '653000');
INSERT INTO `area` VALUES ('653023', '阿合奇县', '653000');
INSERT INTO `area` VALUES ('653024', '乌恰县', '653000');
INSERT INTO `area` VALUES ('653100', '喀什地区', '650000');
INSERT INTO `area` VALUES ('653101', '喀什市', '653100');
INSERT INTO `area` VALUES ('653121', '疏附县', '653100');
INSERT INTO `area` VALUES ('653122', '疏勒县', '653100');
INSERT INTO `area` VALUES ('653123', '英吉沙县', '653100');
INSERT INTO `area` VALUES ('653124', '泽普县', '653100');
INSERT INTO `area` VALUES ('653125', '莎车县', '653100');
INSERT INTO `area` VALUES ('653126', '叶城县', '653100');
INSERT INTO `area` VALUES ('653127', '麦盖提县', '653100');
INSERT INTO `area` VALUES ('653128', '岳普湖县', '653100');
INSERT INTO `area` VALUES ('653129', '伽师县', '653100');
INSERT INTO `area` VALUES ('653130', '巴楚县', '653100');
INSERT INTO `area` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `area` VALUES ('653200', '和田地区', '650000');
INSERT INTO `area` VALUES ('653201', '和田市', '653200');
INSERT INTO `area` VALUES ('653221', '和田县', '653200');
INSERT INTO `area` VALUES ('653222', '墨玉县', '653200');
INSERT INTO `area` VALUES ('653223', '皮山县', '653200');
INSERT INTO `area` VALUES ('653224', '洛浦县', '653200');
INSERT INTO `area` VALUES ('653225', '策勒县', '653200');
INSERT INTO `area` VALUES ('653226', '于田县', '653200');
INSERT INTO `area` VALUES ('653227', '民丰县', '653200');
INSERT INTO `area` VALUES ('654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `area` VALUES ('654002', '伊宁市', '654000');
INSERT INTO `area` VALUES ('654003', '奎屯市', '654000');
INSERT INTO `area` VALUES ('654021', '伊宁县', '654000');
INSERT INTO `area` VALUES ('654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `area` VALUES ('654023', '霍城县', '654000');
INSERT INTO `area` VALUES ('654024', '巩留县', '654000');
INSERT INTO `area` VALUES ('654025', '新源县', '654000');
INSERT INTO `area` VALUES ('654026', '昭苏县', '654000');
INSERT INTO `area` VALUES ('654027', '特克斯县', '654000');
INSERT INTO `area` VALUES ('654028', '尼勒克县', '654000');
INSERT INTO `area` VALUES ('654200', '塔城地区', '650000');
INSERT INTO `area` VALUES ('654201', '塔城市', '654200');
INSERT INTO `area` VALUES ('654202', '乌苏市', '654200');
INSERT INTO `area` VALUES ('654221', '额敏县', '654200');
INSERT INTO `area` VALUES ('654223', '沙湾县', '654200');
INSERT INTO `area` VALUES ('654224', '托里县', '654200');
INSERT INTO `area` VALUES ('654225', '裕民县', '654200');
INSERT INTO `area` VALUES ('654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `area` VALUES ('654300', '阿勒泰地区', '650000');
INSERT INTO `area` VALUES ('654301', '阿勒泰市', '654300');
INSERT INTO `area` VALUES ('654321', '布尔津县', '654300');
INSERT INTO `area` VALUES ('654322', '富蕴县', '654300');
INSERT INTO `area` VALUES ('654323', '福海县', '654300');
INSERT INTO `area` VALUES ('654324', '哈巴河县', '654300');
INSERT INTO `area` VALUES ('654325', '青河县', '654300');
INSERT INTO `area` VALUES ('654326', '吉木乃县', '654300');
INSERT INTO `area` VALUES ('659000', '省直辖行政单位', '650000');
INSERT INTO `area` VALUES ('659001', '石河子市', '659000');
INSERT INTO `area` VALUES ('659002', '阿拉尔市', '659000');
INSERT INTO `area` VALUES ('659003', '图木舒克市', '659000');
INSERT INTO `area` VALUES ('659004', '五家渠市', '659000');
INSERT INTO `area` VALUES ('888888', '台湾', '0');
INSERT INTO `area` VALUES ('990000', '新疆建设兵团', '0');
INSERT INTO `area` VALUES ('990100', '第一师', '990000');
INSERT INTO `area` VALUES ('990200', '第二师', '990000');
INSERT INTO `area` VALUES ('990300', '第三师', '990000');
INSERT INTO `area` VALUES ('990400', '第四师', '990000');
INSERT INTO `area` VALUES ('990500', '第五师', '990000');
INSERT INTO `area` VALUES ('990600', '第六师', '990000');
INSERT INTO `area` VALUES ('990700', '第七师', '990000');
INSERT INTO `area` VALUES ('990800', '第八师', '990000');
INSERT INTO `area` VALUES ('990900', '第九师', '990000');
INSERT INTO `area` VALUES ('991000', '第十师', '990000');
INSERT INTO `area` VALUES ('991100', '建工师', '990000');
INSERT INTO `area` VALUES ('991200', '第十二师', '990000');
INSERT INTO `area` VALUES ('991300', '第十三师', '990000');
INSERT INTO `area` VALUES ('991400', '第十四师', '990000');
INSERT INTO `area` VALUES ('999999', '南海诸岛', '0');

-- ----------------------------
-- Table structure for `campus`
-- ----------------------------
DROP TABLE IF EXISTS `campus`;
CREATE TABLE `campus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of campus
-- ----------------------------
INSERT INTO `campus` VALUES ('1', '广电丰和北苑幼儿园');
INSERT INTO `campus` VALUES ('2', '云飞路校区');
INSERT INTO `campus` VALUES ('3', '南昌市第一中学');

-- ----------------------------
-- Table structure for `classroom_comments`
-- ----------------------------
DROP TABLE IF EXISTS `classroom_comments`;
CREATE TABLE `classroom_comments` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(2000) DEFAULT NULL,
  `rater_id` int(10) DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  `course_id` varchar(10) DEFAULT NULL,
  `UUID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `class_time`
-- ----------------------------
DROP TABLE IF EXISTS `class_time`;
CREATE TABLE `class_time` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `time` time DEFAULT NULL COMMENT '1个小时之内只能有一节课，不能跨小时',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_time
-- ----------------------------
INSERT INTO `class_time` VALUES ('1', '08:50:00');
INSERT INTO `class_time` VALUES ('2', '09:40:00');
INSERT INTO `class_time` VALUES ('3', '10:30:00');
INSERT INTO `class_time` VALUES ('4', '09:05:00');
INSERT INTO `class_time` VALUES ('5', '09:00:00');
INSERT INTO `class_time` VALUES ('6', '09:35:00');
INSERT INTO `class_time` VALUES ('7', '10:10:00');
INSERT INTO `class_time` VALUES ('8', '10:35:00');
INSERT INTO `class_time` VALUES ('9', '10:55:00');
INSERT INTO `class_time` VALUES ('10', '10:00:00');
INSERT INTO `class_time` VALUES ('11', '14:00:00');
INSERT INTO `class_time` VALUES ('12', '15:00:00');
INSERT INTO `class_time` VALUES ('13', '16:00:00');
INSERT INTO `class_time` VALUES ('14', '14:30:00');
INSERT INTO `class_time` VALUES ('16', '16:10:00');
INSERT INTO `class_time` VALUES ('17', '16:20:00');
INSERT INTO `class_time` VALUES ('18', '16:30:00');
INSERT INTO `class_time` VALUES ('19', '16:40:00');
INSERT INTO `class_time` VALUES ('20', '16:50:00');
INSERT INTO `class_time` VALUES ('21', '15:10:00');
INSERT INTO `class_time` VALUES ('22', '15:20:00');
INSERT INTO `class_time` VALUES ('23', '15:40:00');
INSERT INTO `class_time` VALUES ('24', '14:10:00');
INSERT INTO `class_time` VALUES ('25', '14:20:00');
INSERT INTO `class_time` VALUES ('26', '14:40:00');
INSERT INTO `class_time` VALUES ('27', '14:50:00');
INSERT INTO `class_time` VALUES ('28', '11:20:00');

-- ----------------------------
-- Table structure for `contest`
-- ----------------------------
DROP TABLE IF EXISTS `contest`;
CREATE TABLE `contest` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `start_time` varchar(14) DEFAULT NULL,
  `end_time` varchar(14) DEFAULT NULL,
  `introduce` varchar(1000) DEFAULT NULL,
  `img_name` varchar(100) DEFAULT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contest
-- ----------------------------
INSERT INTO `contest` VALUES ('1', '媒体互动教学大赛', '20170528', '20170528', ' 					 					 					发送新消息：登录百度后，在个人中心我的消息页面点击发送新消息链接或者进入某个用户的用户信息中心页面，点击页面中的发送消息链接，在页面中展开的文本框中编辑您想要说的话就可以了。					回复消息：登录百度后，进入个人中心选择我的消息选项，点击其中一条留言的主题，进入该条留言的阅读页面，在这里点击右下方的回复此消息选项，在页面下方弹出的文本框中编辑您想要说的话就可以了。进入贴吧后点击右侧导航中的我的消息，也可进入消息页面进行回复。					加入/查看黑名单：在消息页面的用户名前选择您想要阻挡的用户，点击页面下方的加入/查看黑名单选项，即可将该用户加入您的黑名单中。加入黑名单后，该用户将不能再向您发送任何消息，但您依然可以给该用户发送消息。当您不选择用户名，点击页面下方的加入/查看黑名单选项时，将打开一个新页面显示您的黑名单列表，您可以在黑名单列表中选择删除用户，恢复他向您发送消息的权利。					投诉：在消息页面的用户名前选择您想要投诉的用户，点击页面下方的投诉选项，就可以在页面底部弹开的文本框中编辑您的投诉理由了。我们会在第一时间审核您的投诉，并将酌情惩罚违反消息功能使用协议的用户，甚至在一段时间内取消他使用消息功能的权利。					消息分组：我们将您收到的消息分为“好友消息”、“陌生人消息”、“系统消息”三个组别，通过好友消息您可以和好友感受沟通无极限的乐趣，通过陌生人消息您可以知道谁在关注着您，通过系统消息您可以及时的了解到百度对您的每一份关注。					PS：wap贴吧暂时不提供消息功能:)												', '292688.jpg', 'http://192.168.1.100:80/uploadFiles/file/2926881493101044539.jpg');

-- ----------------------------
-- Table structure for `contest_contacts`
-- ----------------------------
DROP TABLE IF EXISTS `contest_contacts`;
CREATE TABLE `contest_contacts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `contest_id` int(10) DEFAULT NULL,
  `mobile_phone` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contest_contacts
-- ----------------------------
INSERT INTO `contest_contacts` VALUES ('1', '许林', '1', '13910881285');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `teacher_id` int(10) DEFAULT NULL COMMENT '教师标识',
  `instructional_design` varchar(100) DEFAULT NULL COMMENT '教学设计',
  `date` varchar(14) DEFAULT NULL COMMENT '必须是大赛期间的某天',
  `class_time_id` int(11) DEFAULT NULL COMMENT '上课时间',
  `state` int(1) DEFAULT NULL COMMENT '0-未开始,1-进行中,2-已完成',
  `type` int(1) DEFAULT NULL COMMENT '0-授课,1-说课',
  `class_length` int(10) DEFAULT NULL COMMENT '课长',
  `evaluation_group_id` int(10) DEFAULT NULL COMMENT '评课组标示',
  `place_id` int(10) DEFAULT NULL COMMENT '上课地点',
  `grade_id` int(10) DEFAULT NULL COMMENT '年级标示',
  `subject` int(10) DEFAULT NULL COMMENT '科目标示',
  `evaluation_template_id` int(10) DEFAULT NULL COMMENT '教学环节模板标识',
  `lesson_class_id` int(10) DEFAULT NULL,
  `whiteboard_brand_id` int(10) DEFAULT NULL,
  `filp` int(1) DEFAULT NULL COMMENT '0-是,1-否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '会跳舞的水娃娃', '1', '', '20170528', '5', '0', '0', '25', '1', '29', '3', '1', '1', '2', '1', '1');
INSERT INTO `course` VALUES ('2', '汪汪的生日派对', '9', '', '20170528', '6', '0', '0', '25', '1', '29', '1', '1', '1', '2', '1', '1');
INSERT INTO `course` VALUES ('3', '面对经济全球化', '2', '', '20170528', '9', '0', '0', '45', '53', '28', '13', '19', '1', '2', '42', '1');
INSERT INTO `course` VALUES ('4', '椭圆及其标准方程', '3', '', '20170528', '10', '0', '0', '45', '53', '28', '16', '4', '1', '3', '1', '1');
INSERT INTO `course` VALUES ('5', '导数与函数的单调性', '4', '', '20170528', '4', '0', '0', '45', '53', '28', '16', '4', '1', '3', '4', '1');
INSERT INTO `course` VALUES ('6', '幂函数的性质与图像', '236', '', '20170528', '9', '0', '0', '45', '52', '27', '13', '4', '1', '3', '4', '1');
INSERT INTO `course` VALUES ('7', '中国古代人文画欣赏', '234', '', '20170528', '10', '0', '0', '45', '52', '27', '13', '9', '1', '3', '41', '0');
INSERT INTO `course` VALUES ('8', '空间几何体的三视图', '232', '', '20170528', '4', '0', '0', '45', '52', '27', '16', '4', '1', '3', '4', '1');
INSERT INTO `course` VALUES ('9', '山地的形成', '231', '', '20170528', '9', '0', '0', '45', '51', '26', '13', '17', '1', '2', '40', '1');
INSERT INTO `course` VALUES ('10', '有秩序的泡泡', '5', '', '20170528', '7', '0', '0', '25', '1', '29', '2', '2', '1', '3', '2', '1');
INSERT INTO `course` VALUES ('11', '雨霖铃', '229', '', '20170528', '10', '0', '0', '45', '51', '26', '16', '11', '1', '2', '4', '1');
INSERT INTO `course` VALUES ('12', '悲伤也享受——史铁生散文专题阅读', '227', '', '20170528', '4', '0', '0', '45', '51', '26', '16', '11', '1', '3', '37', '1');
INSERT INTO `course` VALUES ('13', '直流电动机的应用', '225', '', '20170528', '9', '0', '0', '45', '28', '25', '13', '16', '1', '5', '38', '1');
INSERT INTO `course` VALUES ('14', '激素的调节', '222', '', '20170528', '10', '0', '0', '45', '28', '25', '13', '15', '1', '5', '38', '1');
INSERT INTO `course` VALUES ('15', '等高线地形图的判读', '221', '', '20170528', '4', '0', '0', '45', '28', '25', '16', '17', '1', '5', '38', '1');
INSERT INTO `course` VALUES ('16', '雷鸣电闪波尔卡', '219', '', '20170528', '3', '0', '0', '40', '27', '21', '10', '13', '1', '2', '1', '1');
INSERT INTO `course` VALUES ('17', '七大洲和四大洋', '271', '', '20170528', '2', '0', '0', '40', '27', '21', '10', '17', '1', '2', '1', '1');
INSERT INTO `course` VALUES ('18', '神奇的视错觉', '8', '', '20170528', '11', '0', '1', '20', '32', '13', '3', '1', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('19', '小圆的美好时光', '6', '', '20170528', '5', '0', '0', '25', '2', '30', '3', '3', '1', '3', '1', '1');
INSERT INTO `course` VALUES ('20', '为什么要证明', '270', '', '20170528', '1', '0', '0', '40', '27', '21', '11', '4', '1', '2', '1', '1');
INSERT INTO `course` VALUES ('21', '细胞分裂复习课——解读数量变化的曲线', '10', '', '20170528', '11', '0', '1', '20', '30', '23', '19', '15', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('22', 'Running Man', '71', 'Running Man', '20170528', '12', '0', '1', '20', '36', '2', '8', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('23', '中国的行政区划', '216', '', '20170528', '3', '0', '0', '40', '26', '20', '11', '17', '1', '2', '3', '1');
INSERT INTO `course` VALUES ('24', '乡下人家', '166', '乡下人家', '20170528', '11', '0', '1', '20', '41', '6', '7', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('25', '穿越侏罗纪', '7', '', '20170528', '6', '0', '0', '25', '2', '30', '3', '1', '1', '5', '1', '1');
INSERT INTO `course` VALUES ('26', '认识年、月、日', '72', '认识年、月、日', '20170528', '12', '0', '1', '20', '37', '16', '6', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('27', '生态系统的结构', '13', '', '20170528', '12', '0', '1', '20', '30', '23', '16', '15', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('28', '奔跑吧~宝贝', '11', '', '20170528', '12', '0', '1', '20', '32', '13', '3', '1', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('29', '比一比', '167', '比一比', '20170528', '13', '0', '1', '20', '41', '6', '4', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('30', '搭配中的学问', '73', '搭配中的学问', '20170528', '11', '0', '1', '20', '37', '16', '6', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('31', '紫藤萝瀑布', '213', '', '20170528', '2', '0', '0', '40', '26', '20', '11', '11', '1', '2', '5', '1');
INSERT INTO `course` VALUES ('32', '盘古开天辟地', '106', '', '20170528', '7', '0', '0', '25', '2', '30', '3', '3', '1', '3', '3', '1');
INSERT INTO `course` VALUES ('33', '铜-锌原电池及其原理', '27', '', '20170528', '14', '0', '1', '20', '30', '23', '13', '28', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('34', '认识多边形', '74', '认识多边形', '20170528', '13', '0', '1', '20', '37', '16', '5', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('35', '少年正是读书时', '211', '', '20170528', '1', '0', '0', '40', '26', '20', '10', '11', '1', '2', '3', '1');
INSERT INTO `course` VALUES ('36', '对号入座', '14', '', '20170528', '14', '0', '1', '20', '32', '13', '2', '1', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('37', '冬阳·童年·骆驼队', '169', '冬阳·童年·骆驼队', '20170528', '14', '0', '1', '20', '41', '6', '8', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('38', '美丽的蝴蝶', '17', '', '20170528', '13', '0', '1', '20', '32', '13', '1', '9', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('39', '引导层动画', '209', '', '20170528', '3', '0', '0', '40', '25', '24', '11', '8', '1', '11', '35', '1');
INSERT INTO `course` VALUES ('40', '盛开的格桑花', '18', '', '20170528', '17', '0', '1', '20', '32', '13', '3', '20', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('41', '植树问题', '75', '', '20170528', '14', '0', '1', '20', '37', '16', '6', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('42', '氧化铝 氢氧化铝', '29', '', '20170528', '21', '0', '1', '20', '30', '23', '13', '28', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('43', '人类的“老师”', '171', '人类的“老师”', '20170528', '11', '0', '1', '20', '42', '7', '7', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('44', '美味的汉堡', '20', '', '20170528', '21', '0', '1', '20', '32', '13', '2', '20', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('45', '设计纹样', '207', '', '20170528', '2', '0', '0', '40', '25', '24', '11', '9', '1', '2', '34', '1');
INSERT INTO `course` VALUES ('46', '小小采购员', '21', '', '20170528', '18', '0', '1', '20', '32', '13', '3', '21', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('47', '乐府诗歌赏析', '174', '乐府诗歌赏析', '20170528', '14', '0', '1', '20', '42', '7', '9', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('48', '让谁先吃好呢？', '15', '', '20170528', '8', '0', '0', '35', '1', '29', '3', '1', '1', '3', '2', '1');
INSERT INTO `course` VALUES ('49', '认识平行线', '95', '认识平行线', '20170528', '24', '0', '1', '20', '38', '3', '7', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('50', '圆柱、圆锥、圆台和球', '57', '', '20170528', '22', '0', '1', '20', '30', '23', '13', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('51', 'She often goes to concerts', '205', '', '20170528', '1', '0', '0', '40', '25', '24', '10', '7', '1', '2', '2', '0');
INSERT INTO `course` VALUES ('52', '哇，弟弟来啦', '22', '', '20170528', '23', '0', '1', '20', '32', '13', '3', '21', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('53', '我是安全文明小乘客', '24', '', '20170528', '20', '0', '1', '20', '32', '13', '3', '21', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('54', '金钱的魔力', '179', '金钱的魔力', '20170528', '16', '0', '1', '20', '42', '7', '8', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('56', '有用的田字格', '26', '', '20170528', '22', '0', '1', '20', '32', '13', '3', '22', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('57', '平移与旋转', '77', '平移与旋转', '20170528', '17', '0', '1', '20', '37', '16', '5', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('58', '图形变变变', '28', '', '20170528', '14', '0', '1', '20', '33', '14', '2', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('59', '从现在开始', '181', '从现在开始', '20170528', '17', '0', '1', '20', '42', '7', '5', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('60', '多边形的内角和', '78', '多边形的内角和', '20170528', '18', '0', '1', '20', '37', '16', '8', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('61', '我的舞台', '182', '我的舞台', '20170528', '18', '0', '1', '20', '42', '7', '9', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('62', '分一分来数一数', '108', '', '20170528', '5', '0', '0', '35', '2', '30', '2', '1', '1', '2', '3', '1');
INSERT INTO `course` VALUES ('63', '玩一玩，做一做', '79', '玩一玩，做一做', '20170528', '19', '0', '1', '20', '37', '16', '5', '4', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('64', '二进制与计算机', '198', '', '20170528', '1', '0', '0', '40', '24', '19', '10', '8', '1', '3', '9', '0');
INSERT INTO `course` VALUES ('65', '方程的根和函数的零点', '81', '', '20170528', '18', '0', '1', '20', '30', '23', '13', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('66', '狼和鹿', '164', '狼和鹿', '20170528', '13', '0', '1', '20', '42', '7', '6', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('67', '整理与复习', '80', '整理与复习', '20170528', '20', '0', '1', '20', '37', '16', '5', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('68', '晓出净慈寺送林子方', '187', '袁玉茹', '20170528', '19', '0', '1', '20', '42', '7', '8', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('69', '南瓜爷爷找邻居', '30', '', '20170528', '16', '0', '1', '20', '33', '14', '2', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('70', '学校小当家', '82', '学校小当家', '20170528', '21', '0', '1', '20', '37', '16', '9', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('71', '拯救朱迪', '12', '', '20170528', '5', '0', '0', '25', '3', '31', '2', '1', '1', '3', '4', '1');
INSERT INTO `course` VALUES ('72', '富饶的西沙群岛', '191', '富饶的西沙群岛', '20170528', '21', '0', '1', '20', '42', '7', '6', '11', '1', '2', '6', '0');
INSERT INTO `course` VALUES ('73', '父母与孩子之间的爱', '83', '', '20170528', '23', '0', '1', '20', '30', '23', '16', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('74', '数字宝宝与小白兔', '32', '', '20170528', '17', '0', '1', '20', '33', '14', '1', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('75', '小火车', '33', '', '20170528', '18', '0', '1', '20', '33', '14', '2', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('76', '雪地里的小画家', '193', '雪地里的小画家', '20170528', '12', '0', '1', '20', '42', '7', '4', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('77', '打电话', '84', '打电话', '20170528', '11', '0', '1', '20', '38', '3', '8', '4', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('78', '小魔仙寻宝记', '34', '', '20170528', '19', '0', '1', '20', '33', '14', '3', '4', '1', '2', '6', '0');
INSERT INTO `course` VALUES ('79', '凸显人物个性----动作描写', '85', '', '20170528', '16', '0', '1', '20', '30', '23', '13', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('80', '要是你在野外迷了路', '197', '要是你在野外迷了路', '20170528', '1', '0', '1', '20', '42', '7', '5', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('81', '圣诞爷爷的礼物', '35', '', '20170528', '20', '0', '1', '20', '33', '14', '3', '3', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('82', '整理复习：因数与倍数', '86', '整理复习：因数与倍数', '20170528', '12', '0', '1', '20', '38', '3', '8', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('83', '语文园地七', '200', '语文园地七', '20170528', '20', '0', '1', '20', '42', '7', '5', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('84', '是谁的嗯嗯在我头上', '36', '', '20170528', '21', '0', '1', '20', '33', '14', '2', '3', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('85', '奇妙的朋友', '111', '', '20170528', '6', '0', '0', '25', '3', '31', '3', '1', '1', '3', '4', '1');
INSERT INTO `course` VALUES ('86', '归园田居（其一）', '88', '', '20170528', '17', '0', '1', '20', '30', '23', '13', '11', '1', '2', '6', '0');
INSERT INTO `course` VALUES ('87', '谁敢嘲笑狮子', '37', '', '20170528', '22', '0', '1', '20', '33', '14', '2', '3', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('88', '有趣的汉字', '203', '有趣的汉字', '20170528', '21', '0', '1', '20', '42', '7', '8', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('89', '小动物去旅行', '38', '', '20170528', '12', '0', '1', '20', '33', '14', '1', '3', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('90', '认识方向', '87', '认识方向', '20170528', '13', '0', '1', '20', '38', '3', '5', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('91', '林教头风雪山神庙', '96', '', '20170528', '19', '0', '1', '20', '30', '23', '16', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('92', '美丽的花树', '39', '', '20170528', '13', '0', '1', '20', '33', '14', '2', '3', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('93', '点图与数', '89', '点图与数', '20170528', '14', '0', '1', '20', '38', '3', '5', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('94', '苏菲生气了', '16', '', '20170528', '7', '0', '0', '25', '3', '31', '3', '3', '1', '3', '4', '1');
INSERT INTO `course` VALUES ('95', 'Travel in London', '206', 'Travel in London', '20170528', '12', '0', '1', '20', '43', '16', '8', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('96', '圆明园的毁灭', '40', '', '20170528', '11', '0', '1', '20', '34', '22', '8', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('97', '雷雨', '97', '', '20170528', '20', '0', '1', '20', '30', '23', '13', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('98', 'Country life ', '208', 'Country life ', '20170528', '13', '0', '1', '20', '43', '16', '9', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('99', '平行四边形和梯形', '90', '平行四边形和梯形', '20170528', '16', '0', '1', '20', '38', '3', '7', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('100', '青蛙写诗', '41', '', '20170528', '12', '0', '1', '20', '34', '22', '4', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('101', '望月', '42', '', '20170528', '13', '0', '1', '20', '34', '22', '8', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('102', 'Dinner’s Ready', '143', 'Dinner’s Ready', '20170528', '1', '0', '1', '20', '43', '16', '7', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('103', '奇妙的密铺图形', '91', '奇妙的密铺图形', '20170528', '17', '0', '1', '20', '38', '3', '8', '4', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('104', '走进牛文化', '43', '', '20170528', '14', '0', '1', '20', '34', '22', '5', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('105', '认识半点', '113', '', '20170528', '8', '0', '0', '35', '3', '31', '3', '4', '1', '3', '5', '1');
INSERT INTO `course` VALUES ('106', 'Merry Christmas', '215', 'Merry Christmas', '20170528', '16', '0', '1', '20', '43', '16', '5', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('107', '程序的基本结构——顺序结构', '100', '', '20170528', '11', '0', '1', '20', '29', '24', '16', '8', '1', '11', '6', '1');
INSERT INTO `course` VALUES ('108', '去年的树', '44', '', '20170528', '16', '0', '1', '20', '34', '22', '7', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('109', '周长是多少', '92', '周长是多少', '20170528', '18', '0', '1', '20', '38', '3', '6', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('110', '水乡歌', '45', '', '20170528', '19', '0', '1', '20', '34', '22', '5', '11', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('111', 'A Let\'s spell', '217', 'A Let\'s spell', '20170528', '17', '0', '1', '20', '43', '16', '7', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('112', '认识面积', '93', '认识面积', '20170528', '19', '0', '1', '20', '38', '3', '6', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('113', '20微笑着面对一切', '46', '', '20170528', '20', '0', '1', '20', '34', '22', '6', '11', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('114', 'At the zoo C. Story time', '220', 'At the zoo C. Story time', '20170528', '18', '0', '1', '20', '43', '16', '6', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('115', '七律•长征', '47', '', '20170528', '21', '0', '1', '20', '34', '22', '8', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('116', '优化', '94', '优化', '20170528', '20', '0', '1', '20', '38', '3', '7', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('117', '迟到', '48', '', '20170528', '22', '0', '1', '20', '34', '22', '8', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('118', '桥的设计答辩会', '49', '', '20170528', '23', '0', '1', '20', '34', '22', '7', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('120', '成长的故事', '51', '', '20170528', '11', '0', '1', '20', '35', '1', '7', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('121', '从现在开始……', '52', '', '20170528', '12', '0', '1', '20', '35', '1', '5', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('122', '神奇飞书', '53', '', '20170528', '13', '0', '1', '20', '35', '1', '6', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('123', '托物言志 寓味深长', '54', '', '20170528', '14', '0', '1', '20', '35', '1', '7', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('124', '奇妙的国际互联网', '55', '', '20170528', '16', '0', '1', '20', '35', '1', '7', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('125', '自然之道', '56', '', '20170528', '17', '0', '1', '20', '35', '1', '7', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('126', '神奇的鸟岛', '58', '', '20170528', '18', '0', '1', '20', '35', '1', '7', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('127', '全面调查', '196', '', '20170528', '3', '0', '0', '40', '23', '18', '10', '4', '1', '3', '44', '0');
INSERT INTO `course` VALUES ('128', '水上飞机', '59', '', '20170528', '19', '0', '1', '20', '35', '1', '6', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('129', 'Insects I can see', '226', 'Insects I can see', '20170528', '19', '0', '1', '20', '43', '16', '5', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('130', '恐龙', '117', '', '20170528', '1', '0', '0', '40', '4', '22', '6', '5', '1', '5', '6', '1');
INSERT INTO `course` VALUES ('131', '食物的消化', '194', '', '20170528', '2', '0', '0', '40', '23', '18', '10', '15', '1', '3', '44', '0');
INSERT INTO `course` VALUES ('132', '石头书', '60', '', '20170528', '20', '0', '1', '20', '35', '1', '6', '11', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('133', 'The Juicy Fruit Tree', '228', 'The Juicy Fruit Tree', '20170528', '20', '0', '1', '20', '43', '16', '7', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('134', '壶口瀑布', '61', '', '20170528', '21', '0', '1', '20', '35', '1', '9', '11', '1', '5', '6', '1');
INSERT INTO `course` VALUES ('135', '人体能量的供给', '192', '', '20170528', '1', '0', '0', '40', '23', '18', '10', '15', '1', '3', '9', '1');
INSERT INTO `course` VALUES ('136', 'I have a pen pal', '230', 'I have a pen pal', '20170528', '21', '0', '1', '20', '43', '16', '9', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('137', 'We fly kites in spring.', '62', '', '20170528', '11', '0', '1', '20', '36', '2', '6', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('138', 'Kitty is happy on the farm', '63', '', '20170528', '12', '0', '1', '20', '36', '2', '6', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('139', 'We love animals', '64', '', '20170528', '14', '0', '1', '20', '36', '2', '6', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('140', '京调', '98', '京调', '20170528', '11', '0', '1', '20', '39', '4', '8', '13', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('141', 'Do you like pears?', '65', '', '20170528', '16', '0', '1', '20', '36', '2', '6', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('142', 'Happy New Year', '235', 'Happy New Year', '20170528', '22', '0', '1', '20', '43', '16', '6', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('143', '从宇宙到地球-天体的探究', '190', '', '20170528', '3', '0', '0', '40', '22', '23', '11', '17', '1', '5', '38', '1');
INSERT INTO `course` VALUES ('144', 'School life', '66', '', '20170528', '17', '0', '1', '20', '36', '2', '7', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('145', '人类生存的家园', '19', '', '20170528', '2', '0', '0', '40', '4', '22', '8', '6', '1', '5', '7', '1');
INSERT INTO `course` VALUES ('146', '生旦净丑', '99', '生旦净丑', '20170528', '12', '0', '1', '20', '39', '4', '7', '13', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('147', 'B Read and write', '67', '', '20170528', '18', '0', '1', '20', '36', '2', '7', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('148', 'Shapes Period 1 Finding shapes', '312', '', '20170528', '19', '0', '1', '20', '36', '2', '7', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('149', '电路的基本连接方式', '188', '', '20170528', '2', '0', '0', '40', '22', '23', '11', '16', '1', '5', '38', '1');
INSERT INTO `course` VALUES ('150', '疯狂动物城——韵律活动大派对', '101', '疯狂动物城——韵律活动大派对', '20170528', '13', '0', '1', '20', '39', '4', '5', '24', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('151', 'Let\'s learn', '69', '', '20170528', '21', '0', '1', '20', '36', '2', '7', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('152', 'My garden Period 1 The butterfly and the plant', '70', '', '20170528', '20', '0', '1', '20', '36', '2', '7', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('153', '虚心解构，穿越律动', '185', '', '20170528', '1', '0', '0', '40', '22', '23', '10', '15', '1', '5', '38', '1');
INSERT INTO `course` VALUES ('154', 'The journey of a plastic bottle', '233', 'The journey of a plastic bottle', '20170528', '23', '0', '1', '20', '43', '16', '9', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('155', '辛亥革命', '242', '', '20170528', '13', '0', '1', '20', '48', '11', '11', '27', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('156', '我要学游泳', '102', '我要学游泳', '20170528', '14', '0', '1', '20', '39', '4', '4', '24', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('157', '植物的蒸腾作用', '269', '', '20170528', '3', '0', '0', '40', '21', '13', '8', '5', '1', '2', '4', '1');
INSERT INTO `course` VALUES ('158', '重复的形', '267', '', '20170528', '2', '0', '0', '40', '21', '13', '6', '9', '1', '2', '4', '1');
INSERT INTO `course` VALUES ('159', 'family', '23', '', '20170528', '3', '0', '0', '40', '4', '22', '4', '7', '1', '5', '8', '1');
INSERT INTO `course` VALUES ('160', '前滚翻', '103', '前滚翻', '20170528', '17', '0', '1', '20', '39', '4', '5', '24', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('161', '瑶族舞曲', '265', '', '20170528', '1', '0', '0', '40', '21', '13', '8', '13', '1', '2', '4', '1');
INSERT INTO `course` VALUES ('162', 'In a nature park A Let’s try  ＆ Let’s talk ', '224', 'In a nature park A Let’s try  ＆ Let’s talk ', '20170528', '14', '0', '1', '20', '43', '16', '8', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('163', 'What would you like to be: Different jobs', '246', '', '20170528', '12', '0', '1', '20', '48', '11', '10', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('164', '心字底的写法', '178', '', '20170528', '3', '0', '0', '40', '20', '12', '8', '14', '1', '2', '1', '1');
INSERT INTO `course` VALUES ('165', '无笔画', '104', '无笔画', '20170528', '18', '0', '1', '20', '39', '4', '8', '9', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('166', '快乐的音乐会', '176', '', '20170528', '2', '0', '0', '40', '20', '12', '5', '13', '1', '2', '1', '1');
INSERT INTO `course` VALUES ('167', 'Where\'s my schoolbag?', '250', '', '20170528', '14', '0', '1', '20', '48', '11', '10', '7', '1', '2', '6', '0');
INSERT INTO `course` VALUES ('168', '平移和旋转', '239', '平移和旋转', '20170528', '11', '0', '1', '20', '44', '8', '6', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('169', '形的组合', '175', '', '20170528', '1', '0', '0', '40', '20', '12', '4', '9', '1', '2', '2', '1');
INSERT INTO `course` VALUES ('170', '猜猜我是谁', '105', '猜猜我是谁', '20170528', '19', '0', '1', '20', '39', '4', '5', '9', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('171', '24时记时法', '241', '24时记时法', '20170528', '12', '0', '1', '20', '44', '7', '6', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('172', 'I was trying to pick it up when it bit me again.', '277', '', '20170528', '12', '0', '1', '20', '48', '11', '11', '7', '1', '2', '6', '0');
INSERT INTO `course` VALUES ('173', '趣味波普', '107', '趣味波普', '20170528', '20', '0', '1', '20', '39', '4', '9', '9', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('174', ' If you go to the party, you’ll have a great time!', '201', '', '20170528', '2', '0', '0', '40', '24', '19', '11', '7', '1', '3', '32', '0');
INSERT INTO `course` VALUES ('175', '创作3D假面', '118', '', '20170528', '1', '0', '0', '40', '5', '1', '8', '8', '1', '7', '1', '1');
INSERT INTO `course` VALUES ('176', '确定位置', '243', '确定位置', '20170528', '1', '0', '1', '20', '44', '8', '7', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('177', 'Lesson 8', '173', '', '20170528', '3', '0', '0', '40', '13', '11', '8', '7', '1', '2', '4', '1');
INSERT INTO `course` VALUES ('178', '剪花边', '109', '剪花边', '20170528', '21', '0', '1', '20', '39', '4', '5', '9', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('179', 'How much are these socks?', '283', '', '20170528', '16', '0', '1', '20', '48', '11', '10', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('180', '平行与垂直', '244', '平行与垂直', '20170528', '14', '0', '1', '20', '44', '8', '7', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('181', 'My Friend', '263', '', '20170528', '2', '0', '0', '40', '19', '11', '7', '7', '1', '2', '4', '1');
INSERT INTO `course` VALUES ('182', '“水上狂欢节”一日游出行计划', '112', '“水上狂欢节”一日游出行计划', '20170528', '23', '0', '1', '20', '39', '4', '7', '22', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('183', '三角形的认识', '248', '三角形的认识', '20170528', '16', '0', '1', '20', '44', '8', '7', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('184', 'Tec and the litter', '170', '', '20170528', '1', '0', '0', '40', '19', '11', '6', '7', '1', '2', '4', '1');
INSERT INTO `course` VALUES ('185', '鸟', '285', '', '20170528', '17', '0', '1', '20', '48', '11', '10', '11', '1', '2', '6', '0');
INSERT INTO `course` VALUES ('186', '展开与折叠', '251', '展开与折叠', '20170528', '17', '0', '1', '20', '44', '8', '8', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('187', '分物游戏', '168', '', '20170528', '3', '0', '0', '40', '18', '10', '5', '4', '1', '2', '3', '1');
INSERT INTO `course` VALUES ('188', '找规律', '262', '', '20170528', '2', '0', '0', '40', '18', '10', '4', '4', '1', '2', '1', '0');
INSERT INTO `course` VALUES ('189', '请到我的家乡来', '114', '请到我的家乡来', '20170528', '11', '0', '1', '20', '40', '5', '7', '2', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('190', '爱莲说', '290', '', '20170528', '18', '0', '1', '20', '48', '11', '11', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('191', '不含括号的三步混合运算', '253', '不含括号的三步混合运算', '20170528', '2', '0', '1', '20', '44', '8', '7', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('192', '图形的运动——轴对称', '163', '', '20170528', '1', '0', '0', '40', '18', '10', '6', '4', '1', '2', '1', '1');
INSERT INTO `course` VALUES ('193', '家乡古建筑', '119', '', '20170528', '2', '0', '0', '40', '5', '1', '8', '9', '1', '7', '9', '0');
INSERT INTO `course` VALUES ('194', '故宫博物院', '293', '', '20170528', '19', '0', '1', '20', '48', '11', '11', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('195', '角的度量', '161', '', '20170528', '3', '0', '0', '40', '17', '9', '7', '4', '1', '2', '4', '1');
INSERT INTO `course` VALUES ('196', '一起来分类', '255', '一起来分类', '20170528', '20', '0', '1', '20', '44', '8', '4', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('197', '分数的再认识（一）', '159', '', '20170528', '2', '0', '0', '40', '17', '9', '8', '4', '1', '2', '29', '1');
INSERT INTO `course` VALUES ('198', '我的老师', '296', '', '20170528', '20', '0', '1', '20', '48', '11', '10', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('199', '上海是“人海”', '115', '上海是“人海”', '20170528', '12', '0', '1', '20', '40', '5', '7', '2', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('200', '认识三角形', '156', '', '20170528', '1', '0', '0', '40', '17', '9', '7', '4', '1', '2', '3', '1');
INSERT INTO `course` VALUES ('201', '6-10的认识（3）（基数与序数）', '258', '6-10的认识（3）（基数与序数）', '20170528', '19', '0', '1', '20', '44', '8', '4', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('202', '桥之美', '298', '', '20170528', '21', '0', '1', '20', '48', '11', '11', '11', '1', '2', '6', '0');
INSERT INTO `course` VALUES ('203', '认识几分之一', '261', '认识几分之一', '20170528', '21', '0', '1', '20', '44', '8', '6', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('204', '神奇的植物王国', '116', '神奇的植物王国', '20170528', '13', '0', '1', '20', '40', '5', '9', '2', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('205', '折线统计图', '260', '', '20170528', '3', '0', '0', '40', '16', '8', '8', '4', '1', '2', '4', '1');
INSERT INTO `course` VALUES ('206', '智能报警器', '247', '', '20170528', '3', '0', '0', '40', '5', '1', '8', '8', '1', '8', '1', '1');
INSERT INTO `course` VALUES ('207', '集市和超市', '259', '', '20170528', '2', '0', '0', '40', '16', '8', '6', '11', '1', '2', '4', '1');
INSERT INTO `course` VALUES ('208', '数独', '264', '数独', '20170528', '22', '0', '1', '20', '44', '8', '5', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('209', 'New trends in entertainment technology', '110', '', '20170528', '14', '0', '1', '20', '29', '24', '13', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('210', '我们的班级', '129', '我们的班级', '20170528', '14', '0', '1', '20', '40', '5', '8', '26', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('211', '开发涂鸦App（下）', '299', '', '20170528', '11', '0', '1', '20', '47', '10', '11', '8', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('212', '角的初步认识', '266', '角的初步认识', '20170528', '23', '0', '1', '20', '44', '8', '5', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('213', '变色龙', '151', '', '20170528', '1', '0', '0', '40', '16', '8', '8', '11', '1', '2', '27', '1');
INSERT INTO `course` VALUES ('214', '种子植物', '300', '', '20170528', '14', '0', '1', '20', '47', '10', '10', '15', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('215', 'Interpersonal relationships', '140', '', '20170528', '12', '0', '1', '20', '29', '24', '16', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('216', '地图上找中国', '130', '地图上找中国', '20170528', '16', '0', '1', '20', '40', '5', '8', '26', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('217', '三角形的内角和', '268', '三角形的内角和', '20170528', '18', '0', '1', '20', '44', '8', '8', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('218', '密度与社会生活', '302', '', '20170528', '16', '0', '1', '20', '47', '1', '11', '16', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('219', 'Wildlife protection', '146', 'Wildlife protection', '20170528', '21', '0', '1', '20', '29', '24', '13', '7', '1', '2', '6', '0');
INSERT INTO `course` VALUES ('220', '解密二维码', '132', '解密二维码', '20170528', '17', '0', '1', '20', '40', '5', '9', '8', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('221', '表格的制作', '136', '表格的制作', '20170528', '18', '0', '1', '20', '40', '5', '9', '8', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('222', '分式方程的解法', '305', '', '20170528', '17', '0', '1', '20', '47', '10', '11', '4', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('223', '探究信息技术在生活中的应用', '272', '探究信息技术在生活中的应用', '20170528', '11', '0', '1', '20', '45', '17', '6', '8', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('224', '虚拟语气练习', '150', '', '20170528', '22', '0', '1', '20', '29', '24', '16', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('225', '用心体会家乡', '273', '用心体会家乡', '20170528', '12', '0', '1', '20', '45', '17', '7', '2', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('226', '小车的运动', '139', '小车的运动', '20170528', '19', '0', '1', '20', '40', '5', '7', '5', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('227', '命题与证明（四）——三角形的外角', '307', '', '20170528', '18', '0', '1', '20', '47', '10', '11', '4', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('228', '英国代议制的确立与完善', '153', '', '20170528', '23', '0', '1', '20', '29', '24', '13', '27', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('229', '将心比心心更宽', '274', '', '20170528', '14', '0', '1', '20', '45', '17', '8', '2', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('230', '食物的消化之旅', '141', '食物的消化之旅', '20170528', '20', '0', '1', '20', '40', '5', '6', '5', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('231', '整式数学活动', '308', '', '20170528', '19', '0', '1', '20', '47', '10', '10', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('232', '弹力', '157', '', '20170528', '13', '0', '1', '20', '29', '24', '13', '16', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('233', '吉祥图案', '275', '吉祥图案', '20170528', '16', '0', '1', '20', '45', '17', '6', '9', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('234', '赵州桥', '257', '', '20170528', '3', '0', '0', '40', '15', '7', '6', '11', '1', '2', '3', '1');
INSERT INTO `course` VALUES ('235', '买？没那么简单！', '143', '买？没那么简单！', '20170528', '21', '0', '1', '20', '40', '5', '7', '14', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('236', '相反数', '306', '', '20170528', '20', '0', '1', '20', '47', '10', '10', '4', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('237', '交通信号灯', '31', '', '20170528', '1', '0', '0', '40', '7', '16', '6', '10', '1', '9', '10', '1');
INSERT INTO `course` VALUES ('238', '识字6', '148', '', '20170528', '2', '0', '0', '40', '15', '7', '5', '11', '1', '2', '2', '1');
INSERT INTO `course` VALUES ('239', '中心对称与中心对称图形', '304', '', '20170528', '21', '0', '1', '20', '47', '10', '11', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('240', '大规模的海水运动', '162', '', '20170528', '17', '0', '1', '20', '29', '24', '16', '17', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('241', '比尾巴', '145', '', '20170528', '1', '0', '0', '40', '15', '7', '4', '11', '1', '2', '2', '1');
INSERT INTO `course` VALUES ('242', '扇形的面积', '303', '', '20170528', '22', '0', '1', '20', '47', '10', '10', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('243', '荷花美', '276', '荷花美', '20170528', '17', '0', '1', '20', '45', '17', '6', '9', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('244', '梨园英秀', '256', '', '20170528', '3', '0', '0', '40', '14', '6', '8', '13', '1', '3', '4', '1');
INSERT INTO `course` VALUES ('245', '水墨江南民居', '142', '', '20170528', '2', '0', '0', '40', '14', '6', '8', '9', '1', '3', '2', '1');
INSERT INTO `course` VALUES ('246', '马铃薯在液体中的沉浮', '278', '马铃薯在液体中的沉浮', '20170528', '18', '0', '1', '20', '45', '17', '8', '5', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('247', '图形的旋转', '301', '', '20170528', '23', '0', '1', '20', '47', '10', '11', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('248', '露珠', '144', '露珠', '20170528', '12', '0', '1', '20', '41', '6', '6', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('249', '光的反射', '254', '', '20170528', '1', '0', '0', '40', '14', '6', '8', '5', '1', '3', '5', '1');
INSERT INTO `course` VALUES ('250', '沉浮与什么因素有关', '279', '沉浮与什么因素有关', '20170528', '19', '0', '1', '20', '45', '17', '8', '5', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('251', '弹跳的小球', '120', '', '20170528', '2', '0', '0', '40', '7', '16', '8', '8', '1', '9', '10', '1');
INSERT INTO `course` VALUES ('252', '组合图形的面积', '252', '', '20170528', '3', '0', '0', '40', '13', '5', '8', '4', '1', '3', '22', '1');
INSERT INTO `course` VALUES ('253', '学用交通地图', '297', '', '20170528', '11', '0', '1', '20', '46', '9', '10', '17', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('254', '分扣子', '138', '', '20170528', '2', '0', '0', '40', '13', '5', '4', '4', '1', '3', '3', '1');
INSERT INTO `course` VALUES ('255', '水的表面张力', '281', '水的表面张力', '20170528', '20', '0', '1', '20', '45', '17', '6', '5', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('256', '画风', '147', '画风', '20170528', '23', '0', '1', '20', '41', '6', '5', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('258', '观察蜗牛', '295', '', '20170528', '12', '0', '1', '20', '46', '9', '10', '5', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('259', '探密拼插玩具  设计长城模型', '282', '探密拼插玩具  设计长城模型', '20170528', '21', '0', '1', '20', '45', '17', '9', '22', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('260', '七颗钻石', '149', '七颗钻石', '20170528', '22', '0', '1', '20', '41', '6', '9', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('261', '太阳系的八大行星', '294', '', '20170528', '16', '0', '1', '20', '46', '9', '10', '10', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('262', '钉子板上的多边形', '135', '', '20170528', '3', '0', '0', '40', '12', '4', '8', '4', '1', '3', '4', '1');
INSERT INTO `course` VALUES ('263', 'Writing：The Spring Festival', '165', '', '20170528', '18', '0', '1', '20', '29', '24', '16', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('264', '恰当描写  形象鲜明', '152', '恰当描写  形象鲜明', '20170528', '21', '0', '1', '20', '41', '6', '8', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('265', '因数中间有0的乘法', '245', '', '20170528', '2', '0', '0', '40', '12', '4', '6', '4', '1', '3', '21', '1');
INSERT INTO `course` VALUES ('266', '趣味拼搭', '121', '', '20170528', '3', '0', '0', '40', '7', '16', '8', '8', '1', '10', '10', '1');
INSERT INTO `course` VALUES ('267', '最后一片叶子', '312', '最后一片叶子', '20170528', '23', '0', '1', '20', '46', '9', '10', '11', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('268', '位置', '134', '', '20170528', '1', '0', '0', '40', '12', '4', '8', '4', '1', '3', '4', '0');
INSERT INTO `course` VALUES ('269', '第一次世界大战', '292', '', '20170528', '18', '0', '1', '20', '46', '9', '11', '27', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('271', '超市购物车引发的思考', '172', '', '20170528', '19', '0', '1', '20', '29', '24', '13', '16', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('272', '麻雀', '155', '麻雀', '20170528', '20', '0', '1', '20', '41', '6', '7', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('273', '联通世界的新航路', '291', '', '20170528', '19', '0', '1', '20', '46', '9', '11', '2', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('274', '中国民间艺术', '177', '', '20170528', '20', '0', '1', '20', '29', '24', '16', '9', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('275', '期末复习', '289', '', '20170528', '20', '0', '1', '20', '46', '9', '11', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('276', '曹冲称象', '158', '曹冲称象', '20170528', '18', '0', '1', '20', '41', '6', '5', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('277', '辉煌的科学技术', '180', '', '20170528', '16', '0', '1', '20', '29', '24', '13', '27', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('278', '书签巧设计（交通标志巧设计）', '122', '', '20170528', '1', '0', '0', '40', '8', '17', '7', '8', '1', '11', '11', '1');
INSERT INTO `course` VALUES ('279', '厄运打不垮的信念', '160', '厄运打不垮的信念', '20170528', '17', '0', '1', '20', '41', '6', '8', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('280', 'Arnwick is a big city with 200,000 people.', '288', '', '20170528', '22', '0', '1', '20', '46', '9', '11', '7', '1', '3', '6', '0');
INSERT INTO `course` VALUES ('281', '爱在家人间', '183', '', '20170528', '11', '0', '1', '20', '49', '12', '10', '26', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('283', '小小蜗牛跑得快', '123', '', '20170528', '2', '0', '0', '40', '8', '17', '7', '8', '1', '11', '12', '1');
INSERT INTO `course` VALUES ('284', '发展与合作', '186', '', '20170528', '14', '0', '1', '20', '49', '12', '10', '17', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('285', 'It smells delicious.', '287', '', '20170528', '21', '0', '1', '20', '46', '9', '11', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('286', '二氧化碳制取的研究', '189', '', '20170528', '12', '0', '1', '20', '49', '12', '12', '28', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('287', 'Games', '124', '', '20170528', '3', '0', '0', '40', '8', '17', '7', '7', '1', '11', '13', '1');
INSERT INTO `course` VALUES ('288', '宋庆龄故居的樟树', '237', '', '20170528', '1', '0', '0', '40', '9', '15', '7', '11', '1', '3', '2', '1');
INSERT INTO `course` VALUES ('289', 'Choosing a new flat', '286', '', '20170528', '17', '0', '1', '20', '46', '9', '10', '7', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('290', '开花和结果', '195', '', '20170528', '17', '0', '1', '20', '49', '12', '10', '15', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('291', '细菌', '199', '', '20170528', '19', '0', '1', '20', '49', '12', '11', '15', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('292', '”诺曼底号”遇难记', '249', '', '20170528', '2', '0', '0', '40', '9', '15', '8', '11', '1', '3', '15', '1');
INSERT INTO `course` VALUES ('293', '等腰三角形', '204', '', '20170528', '20', '0', '1', '20', '49', '12', '11', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('294', '坐井观天', '125', '', '20170528', '3', '0', '0', '40', '9', '15', '5', '11', '1', '3', '9', '1');
INSERT INTO `course` VALUES ('296', '平面图形的镶嵌', '214', '', '20170528', '20', '0', '1', '20', '49', '12', '11', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('297', '大作家的小老师', '126', '', '20170528', '2', '0', '0', '40', '10', '2', '6', '11', '1', '3', '1', '1');
INSERT INTO `course` VALUES ('298', '命题与证明', '218', '', '20170528', '18', '0', '1', '20', '49', '12', '11', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('299', '趣聊中华姓 初探自家门', '127', '趣聊中华姓 初探自家门', '20170528', '3', '0', '0', '40', '10', '2', '6', '11', '1', '3', '4', '1');
INSERT INTO `course` VALUES ('300', '光的折射', '223', '', '20170528', '16', '0', '1', '20', '49', '12', '11', '16', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('301', '探究熔化和凝固的特点', '240', '', '20170528', '24', '0', '1', '20', '49', '12', '11', '16', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('302', '文成公主进藏', '128', '文成公主进藏', '20170528', '1', '0', '0', '40', '11', '3', '7', '11', '1', '3', '4', '0');
INSERT INTO `course` VALUES ('303', '火车的故事', '238', '', '20170528', '2', '0', '0', '40', '11', '3', '4', '11', '1', '3', '21', '1');
INSERT INTO `course` VALUES ('304', 'At the weekends', '131', 'At the weekends', '20170528', '3', '0', '0', '40', '11', '3', '8', '7', '1', '3', '20', '1');
INSERT INTO `course` VALUES ('305', 'It\'s red.', '133', '', '20170528', '28', '0', '0', '40', '11', '3', '4', '7', '1', '3', '4', '1');
INSERT INTO `course` VALUES ('306', '生态系统的结构', '25', '', '20170528', '24', '0', '1', '20', '30', '23', '16', '15', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('307', '等腰三角形', '210', '', '20170528', '23', '0', '1', '20', '49', '12', '11', '4', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('308', 'How much are these socks?', '280', '', '20170528', '18', '0', '1', '20', '48', '11', '10', '7', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('309', '比尾巴', '50', '', '20170528', '1', '0', '0', '40', '10', '2', '4', '11', '1', '3', '4', '1');
INSERT INTO `course` VALUES ('310', '找规律', '137', '', '20170528', '1', '0', '0', '40', '13', '5', '4', '4', '1', '3', '9', '1');
INSERT INTO `course` VALUES ('311', '少年正是读书时', '202', '', '20170528', '3', '0', '0', '40', '24', '19', '10', '11', '1', '3', '3', '1');
INSERT INTO `course` VALUES ('312', '认识平行线', '76', '认识平行线', '20170528', '16', '0', '1', '20', '37', '16', '7', '4', '1', '3', '6', '1');
INSERT INTO `course` VALUES ('313', '乡下人家', '154', '', '20170528', '16', '0', '1', '20', '41', '6', '7', '11', '1', '2', '6', '1');
INSERT INTO `course` VALUES ('314', '狼和鹿', '164', '', '20170528', '19', '0', '1', '20', '41', '6', '6', '11', '1', '2', '6', '1');

-- ----------------------------
-- Table structure for `course_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `course_attachment`;
CREATE TABLE `course_attachment` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `course_id` int(10) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `suffix` varchar(10) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `evaluation_group`
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_group`;
CREATE TABLE `evaluation_group` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `contest_contacts_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uniquename` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluation_group
-- ----------------------------
INSERT INTO `evaluation_group` VALUES ('1', '上课幼儿1组', '1');
INSERT INTO `evaluation_group` VALUES ('2', '上课幼儿2组', '1');
INSERT INTO `evaluation_group` VALUES ('3', '上课幼儿3组', '1');
INSERT INTO `evaluation_group` VALUES ('4', '上课小学虚拟/增强现实组', '1');
INSERT INTO `evaluation_group` VALUES ('5', '上课小学3D及创客1组', '1');
INSERT INTO `evaluation_group` VALUES ('7', '上课小学3D及创客2组', '1');
INSERT INTO `evaluation_group` VALUES ('8', '上课小学云课堂组', '1');
INSERT INTO `evaluation_group` VALUES ('9', '上课小学移动1组', '1');
INSERT INTO `evaluation_group` VALUES ('10', '上课小学移动2组', '1');
INSERT INTO `evaluation_group` VALUES ('11', '上课小学移动3组', '1');
INSERT INTO `evaluation_group` VALUES ('12', '上课小学移动4组', '1');
INSERT INTO `evaluation_group` VALUES ('13', '上课小学移动5组', '1');
INSERT INTO `evaluation_group` VALUES ('14', '上课小学移动6组', '1');
INSERT INTO `evaluation_group` VALUES ('15', '上课小学白板1组', '1');
INSERT INTO `evaluation_group` VALUES ('16', '上课小学白板2组', '1');
INSERT INTO `evaluation_group` VALUES ('17', '上课小学白板3组', '1');
INSERT INTO `evaluation_group` VALUES ('18', '上课小学白板4组', '1');
INSERT INTO `evaluation_group` VALUES ('19', '上课小学白板5组', '1');
INSERT INTO `evaluation_group` VALUES ('20', '上课小学白板6组', '1');
INSERT INTO `evaluation_group` VALUES ('21', '上课小学白板7组', '1');
INSERT INTO `evaluation_group` VALUES ('22', '上课初中虚拟/增强现实组', '1');
INSERT INTO `evaluation_group` VALUES ('23', '上课初中移动1组', '1');
INSERT INTO `evaluation_group` VALUES ('24', '上课初中移动2组', '1');
INSERT INTO `evaluation_group` VALUES ('25', '上课初中云课堂组', '1');
INSERT INTO `evaluation_group` VALUES ('26', '上课初中白板1组', '1');
INSERT INTO `evaluation_group` VALUES ('27', '上课初中白板2组', '1');
INSERT INTO `evaluation_group` VALUES ('28', '上课高中虚拟/增强现实组', '1');
INSERT INTO `evaluation_group` VALUES ('29', '说课高中1组', '1');
INSERT INTO `evaluation_group` VALUES ('30', '说课高中2组', '1');
INSERT INTO `evaluation_group` VALUES ('32', '说课幼儿园1组', '1');
INSERT INTO `evaluation_group` VALUES ('33', '说课幼儿园2组', '1');
INSERT INTO `evaluation_group` VALUES ('34', '说课小学移动1组', '1');
INSERT INTO `evaluation_group` VALUES ('35', '说课小学移动2组', '1');
INSERT INTO `evaluation_group` VALUES ('36', '说课小学移动3组', '1');
INSERT INTO `evaluation_group` VALUES ('37', '说课小学移动4组', '1');
INSERT INTO `evaluation_group` VALUES ('38', '说课小学移动5组', '1');
INSERT INTO `evaluation_group` VALUES ('39', '说课小学移动6组', '1');
INSERT INTO `evaluation_group` VALUES ('40', '说课小学移动7组', '1');
INSERT INTO `evaluation_group` VALUES ('41', '说课小学白板1组', '1');
INSERT INTO `evaluation_group` VALUES ('42', '说课小学白板2组', '1');
INSERT INTO `evaluation_group` VALUES ('43', '说课小学白板3组', '1');
INSERT INTO `evaluation_group` VALUES ('44', '说课小学白板4组', '1');
INSERT INTO `evaluation_group` VALUES ('45', '说课小学白板5组', '1');
INSERT INTO `evaluation_group` VALUES ('46', '说课初中移动1组', '1');
INSERT INTO `evaluation_group` VALUES ('47', '说课初中移动2组', '1');
INSERT INTO `evaluation_group` VALUES ('48', '说课初中白板1组', '1');
INSERT INTO `evaluation_group` VALUES ('49', '说课初中白板2组', '1');
INSERT INTO `evaluation_group` VALUES ('51', '上课高中1组', '1');
INSERT INTO `evaluation_group` VALUES ('52', '上课高中2组', '1');
INSERT INTO `evaluation_group` VALUES ('53', '上课高中3组', '1');

-- ----------------------------
-- Table structure for `evaluation_group_rater`
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_group_rater`;
CREATE TABLE `evaluation_group_rater` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `evaluation_group_id` int(10) DEFAULT NULL,
  `rater_id` int(10) DEFAULT NULL,
  `group_leader` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluation_group_rater
-- ----------------------------
INSERT INTO `evaluation_group_rater` VALUES ('65', '25', '4', '0');
INSERT INTO `evaluation_group_rater` VALUES ('66', '26', '4', '0');
INSERT INTO `evaluation_group_rater` VALUES ('69', '26', '6', '0');
INSERT INTO `evaluation_group_rater` VALUES ('70', '26', '8', '1');
INSERT INTO `evaluation_group_rater` VALUES ('71', '26', '1', '0');
INSERT INTO `evaluation_group_rater` VALUES ('72', '25', '2', '0');
INSERT INTO `evaluation_group_rater` VALUES ('73', '25', '1', '1');
INSERT INTO `evaluation_group_rater` VALUES ('74', '25', '8', '0');
INSERT INTO `evaluation_group_rater` VALUES ('75', '27', '1', '0');
INSERT INTO `evaluation_group_rater` VALUES ('76', '27', '7', '1');
INSERT INTO `evaluation_group_rater` VALUES ('77', '27', '8', '0');
INSERT INTO `evaluation_group_rater` VALUES ('78', '23', '76', '1');
INSERT INTO `evaluation_group_rater` VALUES ('79', '23', '75', '0');
INSERT INTO `evaluation_group_rater` VALUES ('80', '23', '66', '0');
INSERT INTO `evaluation_group_rater` VALUES ('81', '23', '63', '0');
INSERT INTO `evaluation_group_rater` VALUES ('82', '24', '65', '1');
INSERT INTO `evaluation_group_rater` VALUES ('83', '24', '66', '0');
INSERT INTO `evaluation_group_rater` VALUES ('84', '24', '73', '0');
INSERT INTO `evaluation_group_rater` VALUES ('85', '24', '60', '0');
INSERT INTO `evaluation_group_rater` VALUES ('86', '22', '15', '1');
INSERT INTO `evaluation_group_rater` VALUES ('87', '22', '17', '0');
INSERT INTO `evaluation_group_rater` VALUES ('88', '22', '19', '0');
INSERT INTO `evaluation_group_rater` VALUES ('89', '22', '22', '0');
INSERT INTO `evaluation_group_rater` VALUES ('90', '5', '10', '1');
INSERT INTO `evaluation_group_rater` VALUES ('91', '5', '9', '0');
INSERT INTO `evaluation_group_rater` VALUES ('92', '5', '8', '0');
INSERT INTO `evaluation_group_rater` VALUES ('93', '5', '7', '0');
INSERT INTO `evaluation_group_rater` VALUES ('94', '7', '11', '1');
INSERT INTO `evaluation_group_rater` VALUES ('95', '7', '12', '0');
INSERT INTO `evaluation_group_rater` VALUES ('96', '7', '13', '0');
INSERT INTO `evaluation_group_rater` VALUES ('97', '7', '17', '0');
INSERT INTO `evaluation_group_rater` VALUES ('102', '8', '35', '1');
INSERT INTO `evaluation_group_rater` VALUES ('103', '8', '33', '0');
INSERT INTO `evaluation_group_rater` VALUES ('104', '8', '32', '0');
INSERT INTO `evaluation_group_rater` VALUES ('105', '8', '31', '0');
INSERT INTO `evaluation_group_rater` VALUES ('106', '15', '26', '1');
INSERT INTO `evaluation_group_rater` VALUES ('107', '15', '28', '0');
INSERT INTO `evaluation_group_rater` VALUES ('108', '15', '25', '0');
INSERT INTO `evaluation_group_rater` VALUES ('109', '15', '24', '0');
INSERT INTO `evaluation_group_rater` VALUES ('110', '30', '10', '0');
INSERT INTO `evaluation_group_rater` VALUES ('111', '30', '17', '0');
INSERT INTO `evaluation_group_rater` VALUES ('112', '30', '24', '0');
INSERT INTO `evaluation_group_rater` VALUES ('113', '30', '18', '1');
INSERT INTO `evaluation_group_rater` VALUES ('114', '39', '29', '1');
INSERT INTO `evaluation_group_rater` VALUES ('115', '39', '30', '0');
INSERT INTO `evaluation_group_rater` VALUES ('116', '39', '31', '0');
INSERT INTO `evaluation_group_rater` VALUES ('117', '39', '32', '0');
INSERT INTO `evaluation_group_rater` VALUES ('118', '16', '5', '1');
INSERT INTO `evaluation_group_rater` VALUES ('119', '16', '9', '0');
INSERT INTO `evaluation_group_rater` VALUES ('120', '16', '12', '0');
INSERT INTO `evaluation_group_rater` VALUES ('121', '16', '6', '0');
INSERT INTO `evaluation_group_rater` VALUES ('122', '17', '12', '0');
INSERT INTO `evaluation_group_rater` VALUES ('123', '17', '14', '0');
INSERT INTO `evaluation_group_rater` VALUES ('124', '17', '17', '0');
INSERT INTO `evaluation_group_rater` VALUES ('125', '17', '22', '1');
INSERT INTO `evaluation_group_rater` VALUES ('126', '18', '12', '1');
INSERT INTO `evaluation_group_rater` VALUES ('127', '18', '16', '0');
INSERT INTO `evaluation_group_rater` VALUES ('128', '18', '15', '0');
INSERT INTO `evaluation_group_rater` VALUES ('129', '18', '19', '0');
INSERT INTO `evaluation_group_rater` VALUES ('130', '19', '7', '0');
INSERT INTO `evaluation_group_rater` VALUES ('131', '19', '6', '0');
INSERT INTO `evaluation_group_rater` VALUES ('132', '19', '17', '0');
INSERT INTO `evaluation_group_rater` VALUES ('133', '19', '9', '1');
INSERT INTO `evaluation_group_rater` VALUES ('134', '20', '7', '0');
INSERT INTO `evaluation_group_rater` VALUES ('135', '20', '14', '0');
INSERT INTO `evaluation_group_rater` VALUES ('136', '20', '21', '0');
INSERT INTO `evaluation_group_rater` VALUES ('137', '20', '28', '1');
INSERT INTO `evaluation_group_rater` VALUES ('138', '21', '5', '0');
INSERT INTO `evaluation_group_rater` VALUES ('139', '21', '4', '1');
INSERT INTO `evaluation_group_rater` VALUES ('140', '21', '11', '0');
INSERT INTO `evaluation_group_rater` VALUES ('141', '21', '76', '0');
INSERT INTO `evaluation_group_rater` VALUES ('142', '9', '12', '0');
INSERT INTO `evaluation_group_rater` VALUES ('143', '9', '20', '0');
INSERT INTO `evaluation_group_rater` VALUES ('144', '9', '19', '0');
INSERT INTO `evaluation_group_rater` VALUES ('145', '9', '13', '1');
INSERT INTO `evaluation_group_rater` VALUES ('146', '11', '19', '1');
INSERT INTO `evaluation_group_rater` VALUES ('147', '11', '20', '0');
INSERT INTO `evaluation_group_rater` VALUES ('148', '11', '23', '0');
INSERT INTO `evaluation_group_rater` VALUES ('149', '11', '22', '0');
INSERT INTO `evaluation_group_rater` VALUES ('150', '10', '2', '1');
INSERT INTO `evaluation_group_rater` VALUES ('151', '10', '6', '0');
INSERT INTO `evaluation_group_rater` VALUES ('152', '10', '16', '0');
INSERT INTO `evaluation_group_rater` VALUES ('153', '10', '23', '0');
INSERT INTO `evaluation_group_rater` VALUES ('154', '12', '29', '0');
INSERT INTO `evaluation_group_rater` VALUES ('155', '12', '28', '0');
INSERT INTO `evaluation_group_rater` VALUES ('156', '12', '26', '0');
INSERT INTO `evaluation_group_rater` VALUES ('157', '12', '25', '1');
INSERT INTO `evaluation_group_rater` VALUES ('158', '13', '29', '0');
INSERT INTO `evaluation_group_rater` VALUES ('159', '13', '24', '1');
INSERT INTO `evaluation_group_rater` VALUES ('160', '13', '34', '0');
INSERT INTO `evaluation_group_rater` VALUES ('161', '13', '30', '0');
INSERT INTO `evaluation_group_rater` VALUES ('162', '14', '6', '1');
INSERT INTO `evaluation_group_rater` VALUES ('163', '14', '27', '0');
INSERT INTO `evaluation_group_rater` VALUES ('164', '14', '23', '0');
INSERT INTO `evaluation_group_rater` VALUES ('165', '14', '25', '0');
INSERT INTO `evaluation_group_rater` VALUES ('166', '14', '32', '0');
INSERT INTO `evaluation_group_rater` VALUES ('167', '4', '20', '0');
INSERT INTO `evaluation_group_rater` VALUES ('168', '4', '23', '0');
INSERT INTO `evaluation_group_rater` VALUES ('169', '4', '27', '0');
INSERT INTO `evaluation_group_rater` VALUES ('170', '4', '36', '1');
INSERT INTO `evaluation_group_rater` VALUES ('171', '1', '1', '0');
INSERT INTO `evaluation_group_rater` VALUES ('172', '1', '5', '0');
INSERT INTO `evaluation_group_rater` VALUES ('173', '1', '13', '0');
INSERT INTO `evaluation_group_rater` VALUES ('174', '1', '37', '1');
INSERT INTO `evaluation_group_rater` VALUES ('180', '3', '5', '0');
INSERT INTO `evaluation_group_rater` VALUES ('181', '3', '11', '0');
INSERT INTO `evaluation_group_rater` VALUES ('182', '3', '20', '0');
INSERT INTO `evaluation_group_rater` VALUES ('183', '3', '26', '1');
INSERT INTO `evaluation_group_rater` VALUES ('184', '51', '20', '0');
INSERT INTO `evaluation_group_rater` VALUES ('185', '51', '14', '0');
INSERT INTO `evaluation_group_rater` VALUES ('186', '51', '25', '0');
INSERT INTO `evaluation_group_rater` VALUES ('187', '51', '46', '1');
INSERT INTO `evaluation_group_rater` VALUES ('188', '52', '9', '0');
INSERT INTO `evaluation_group_rater` VALUES ('189', '52', '76', '0');
INSERT INTO `evaluation_group_rater` VALUES ('190', '52', '74', '0');
INSERT INTO `evaluation_group_rater` VALUES ('191', '52', '61', '1');
INSERT INTO `evaluation_group_rater` VALUES ('192', '2', '6', '0');
INSERT INTO `evaluation_group_rater` VALUES ('193', '2', '4', '0');
INSERT INTO `evaluation_group_rater` VALUES ('194', '2', '10', '0');
INSERT INTO `evaluation_group_rater` VALUES ('195', '2', '22', '0');
INSERT INTO `evaluation_group_rater` VALUES ('196', '2', '27', '1');
INSERT INTO `evaluation_group_rater` VALUES ('197', '53', '39', '1');
INSERT INTO `evaluation_group_rater` VALUES ('198', '53', '38', '0');
INSERT INTO `evaluation_group_rater` VALUES ('199', '53', '37', '0');
INSERT INTO `evaluation_group_rater` VALUES ('200', '53', '41', '0');
INSERT INTO `evaluation_group_rater` VALUES ('201', '28', '39', '0');
INSERT INTO `evaluation_group_rater` VALUES ('202', '28', '42', '1');
INSERT INTO `evaluation_group_rater` VALUES ('203', '28', '41', '0');
INSERT INTO `evaluation_group_rater` VALUES ('204', '28', '32', '0');
INSERT INTO `evaluation_group_rater` VALUES ('205', '48', '6', '0');
INSERT INTO `evaluation_group_rater` VALUES ('206', '48', '26', '0');
INSERT INTO `evaluation_group_rater` VALUES ('207', '48', '30', '0');
INSERT INTO `evaluation_group_rater` VALUES ('208', '48', '33', '1');
INSERT INTO `evaluation_group_rater` VALUES ('209', '49', '10', '0');
INSERT INTO `evaluation_group_rater` VALUES ('210', '49', '1', '0');
INSERT INTO `evaluation_group_rater` VALUES ('211', '49', '63', '1');
INSERT INTO `evaluation_group_rater` VALUES ('212', '49', '58', '0');
INSERT INTO `evaluation_group_rater` VALUES ('213', '46', '6', '0');
INSERT INTO `evaluation_group_rater` VALUES ('214', '46', '34', '1');
INSERT INTO `evaluation_group_rater` VALUES ('215', '46', '39', '0');
INSERT INTO `evaluation_group_rater` VALUES ('216', '46', '36', '0');
INSERT INTO `evaluation_group_rater` VALUES ('217', '47', '60', '1');
INSERT INTO `evaluation_group_rater` VALUES ('218', '47', '59', '0');
INSERT INTO `evaluation_group_rater` VALUES ('219', '47', '58', '0');
INSERT INTO `evaluation_group_rater` VALUES ('220', '47', '57', '0');
INSERT INTO `evaluation_group_rater` VALUES ('221', '47', '56', '0');
INSERT INTO `evaluation_group_rater` VALUES ('222', '41', '47', '0');
INSERT INTO `evaluation_group_rater` VALUES ('223', '41', '46', '0');
INSERT INTO `evaluation_group_rater` VALUES ('224', '41', '45', '0');
INSERT INTO `evaluation_group_rater` VALUES ('225', '41', '44', '0');
INSERT INTO `evaluation_group_rater` VALUES ('226', '41', '43', '1');
INSERT INTO `evaluation_group_rater` VALUES ('227', '42', '33', '0');
INSERT INTO `evaluation_group_rater` VALUES ('228', '42', '40', '0');
INSERT INTO `evaluation_group_rater` VALUES ('229', '42', '41', '0');
INSERT INTO `evaluation_group_rater` VALUES ('230', '42', '47', '1');
INSERT INTO `evaluation_group_rater` VALUES ('231', '42', '51', '0');
INSERT INTO `evaluation_group_rater` VALUES ('232', '44', '52', '1');
INSERT INTO `evaluation_group_rater` VALUES ('233', '44', '48', '0');
INSERT INTO `evaluation_group_rater` VALUES ('234', '44', '56', '0');
INSERT INTO `evaluation_group_rater` VALUES ('235', '44', '57', '0');
INSERT INTO `evaluation_group_rater` VALUES ('236', '44', '59', '0');
INSERT INTO `evaluation_group_rater` VALUES ('237', '44', '49', '0');
INSERT INTO `evaluation_group_rater` VALUES ('238', '43', '3', '1');
INSERT INTO `evaluation_group_rater` VALUES ('239', '43', '16', '0');
INSERT INTO `evaluation_group_rater` VALUES ('240', '43', '23', '0');
INSERT INTO `evaluation_group_rater` VALUES ('241', '43', '31', '0');
INSERT INTO `evaluation_group_rater` VALUES ('242', '43', '43', '0');
INSERT INTO `evaluation_group_rater` VALUES ('243', '43', '49', '0');
INSERT INTO `evaluation_group_rater` VALUES ('244', '43', '62', '0');
INSERT INTO `evaluation_group_rater` VALUES ('245', '43', '64', '0');
INSERT INTO `evaluation_group_rater` VALUES ('246', '45', '31', '1');
INSERT INTO `evaluation_group_rater` VALUES ('247', '45', '33', '0');
INSERT INTO `evaluation_group_rater` VALUES ('248', '45', '28', '0');
INSERT INTO `evaluation_group_rater` VALUES ('249', '45', '37', '0');
INSERT INTO `evaluation_group_rater` VALUES ('250', '45', '36', '0');
INSERT INTO `evaluation_group_rater` VALUES ('251', '45', '40', '0');
INSERT INTO `evaluation_group_rater` VALUES ('252', '45', '46', '0');
INSERT INTO `evaluation_group_rater` VALUES ('253', '45', '44', '0');
INSERT INTO `evaluation_group_rater` VALUES ('254', '45', '51', '0');
INSERT INTO `evaluation_group_rater` VALUES ('255', '34', '9', '0');
INSERT INTO `evaluation_group_rater` VALUES ('256', '34', '2', '0');
INSERT INTO `evaluation_group_rater` VALUES ('257', '34', '8', '0');
INSERT INTO `evaluation_group_rater` VALUES ('258', '34', '13', '0');
INSERT INTO `evaluation_group_rater` VALUES ('259', '34', '48', '0');
INSERT INTO `evaluation_group_rater` VALUES ('260', '34', '47', '0');
INSERT INTO `evaluation_group_rater` VALUES ('261', '34', '52', '0');
INSERT INTO `evaluation_group_rater` VALUES ('262', '34', '54', '1');
INSERT INTO `evaluation_group_rater` VALUES ('263', '34', '53', '0');
INSERT INTO `evaluation_group_rater` VALUES ('264', '35', '4', '0');
INSERT INTO `evaluation_group_rater` VALUES ('265', '35', '7', '0');
INSERT INTO `evaluation_group_rater` VALUES ('266', '35', '11', '0');
INSERT INTO `evaluation_group_rater` VALUES ('267', '35', '73', '0');
INSERT INTO `evaluation_group_rater` VALUES ('268', '35', '61', '0');
INSERT INTO `evaluation_group_rater` VALUES ('269', '35', '65', '0');
INSERT INTO `evaluation_group_rater` VALUES ('270', '35', '62', '0');
INSERT INTO `evaluation_group_rater` VALUES ('271', '35', '54', '0');
INSERT INTO `evaluation_group_rater` VALUES ('272', '35', '50', '0');
INSERT INTO `evaluation_group_rater` VALUES ('273', '36', '4', '0');
INSERT INTO `evaluation_group_rater` VALUES ('274', '36', '38', '0');
INSERT INTO `evaluation_group_rater` VALUES ('275', '36', '40', '0');
INSERT INTO `evaluation_group_rater` VALUES ('276', '36', '41', '0');
INSERT INTO `evaluation_group_rater` VALUES ('277', '36', '73', '0');
INSERT INTO `evaluation_group_rater` VALUES ('278', '36', '67', '0');
INSERT INTO `evaluation_group_rater` VALUES ('279', '36', '66', '0');
INSERT INTO `evaluation_group_rater` VALUES ('280', '36', '65', '0');
INSERT INTO `evaluation_group_rater` VALUES ('281', '36', '60', '0');
INSERT INTO `evaluation_group_rater` VALUES ('282', '37', '46', '0');
INSERT INTO `evaluation_group_rater` VALUES ('283', '37', '45', '0');
INSERT INTO `evaluation_group_rater` VALUES ('284', '37', '44', '0');
INSERT INTO `evaluation_group_rater` VALUES ('285', '37', '51', '0');
INSERT INTO `evaluation_group_rater` VALUES ('286', '37', '55', '0');
INSERT INTO `evaluation_group_rater` VALUES ('287', '37', '56', '0');
INSERT INTO `evaluation_group_rater` VALUES ('288', '37', '60', '0');
INSERT INTO `evaluation_group_rater` VALUES ('289', '37', '73', '0');
INSERT INTO `evaluation_group_rater` VALUES ('291', '29', '1', '0');
INSERT INTO `evaluation_group_rater` VALUES ('292', '29', '2', '0');
INSERT INTO `evaluation_group_rater` VALUES ('293', '29', '8', '1');

-- ----------------------------
-- Table structure for `evaluation_template`
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_template`;
CREATE TABLE `evaluation_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluation_template
-- ----------------------------
INSERT INTO `evaluation_template` VALUES ('1', '评价模板');

-- ----------------------------
-- Table structure for `evaluation_template_item`
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_template_item`;
CREATE TABLE `evaluation_template_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `weight` int(10) DEFAULT NULL COMMENT '权重',
  `evaluation_template_id` int(11) DEFAULT NULL COMMENT '评价模板标识',
  `pid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluation_template_item
-- ----------------------------
INSERT INTO `evaluation_template_item` VALUES ('1', '教学文案', '20', '1', '0');
INSERT INTO `evaluation_template_item` VALUES ('2', '教学过程', '30', '1', '0');
INSERT INTO `evaluation_template_item` VALUES ('3', '技术运用', '30', '1', '0');
INSERT INTO `evaluation_template_item` VALUES ('4', '教师素养', '10', '1', '0');
INSERT INTO `evaluation_template_item` VALUES ('5', '教学效果', '10', '1', '0');
INSERT INTO `evaluation_template_item` VALUES ('7', '教学目标符合新课程标准，明确完整，具有可操作性、可检测性、体现对学生高级高级认知能力的培养', '0', '1', '1');
INSERT INTO `evaluation_template_item` VALUES ('8', '教学设计要素完整，教学结构严谨，重难点突出，策略与技术的应用得当', '6', '1', '1');
INSERT INTO `evaluation_template_item` VALUES ('9', '教学反思中的技术应用成效归因分析明确，问题挖掘准确，改进设想具体', '6', '1', '1');
INSERT INTO `evaluation_template_item` VALUES ('10', '在教学中突出学生的主体地位，体现新媒体教学环境下学与教方式的改变', '10', '1', '2');
INSERT INTO `evaluation_template_item` VALUES ('11', '能够采取多种策略组织教学，教学环节合理、自然、流畅', '10', '1', '2');
INSERT INTO `evaluation_template_item` VALUES ('12', '教学中重视学生已有的经验，符合幼儿和中小学生的认知特点和规律', '10', '1', '2');
INSERT INTO `evaluation_template_item` VALUES ('13', '能够将新媒体新技术作为学生学习和认知的工具', '10', '1', '3');
INSERT INTO `evaluation_template_item` VALUES ('14', '有效解决教学重难点问题，促进了师生、生生深层次互动、共享课堂', '10', '1', '3');
INSERT INTO `evaluation_template_item` VALUES ('15', '巧妙运用技术手段和工具，引导学生开展多种形式的学习', '10', '1', '3');
INSERT INTO `evaluation_template_item` VALUES ('16', '教态亲切、自然，语言准确、清晰、生动，书写规范，教学设备操作娴熟', '5', '1', '4');
INSERT INTO `evaluation_template_item` VALUES ('17', '专业知识扎实，能够准确把握学科的基本特征实施教学', '5', '1', '4');
INSERT INTO `evaluation_template_item` VALUES ('18', '完成教学目标，不同层次的学生都得到相应提高、获得发展', '5', '1', '5');
INSERT INTO `evaluation_template_item` VALUES ('19', '课堂教学氛围和谐、民主、向上，学生情感、行动和思维参与积极、活跃', '5', '1', '5');
INSERT INTO `evaluation_template_item` VALUES ('21', '第一步', '10', '2', '0');
INSERT INTO `evaluation_template_item` VALUES ('22', '第二部', '20', '2', '0');
INSERT INTO `evaluation_template_item` VALUES ('23', '第三部', '10', '2', '0');
INSERT INTO `evaluation_template_item` VALUES ('24', '第四部', '20', '2', '0');
INSERT INTO `evaluation_template_item` VALUES ('25', 'a', '0', '2', '21');
INSERT INTO `evaluation_template_item` VALUES ('26', 'b', '0', '2', '21');
INSERT INTO `evaluation_template_item` VALUES ('29', 'c', '0', '2', '21');
INSERT INTO `evaluation_template_item` VALUES ('30', 'd', '0', '2', '21');
INSERT INTO `evaluation_template_item` VALUES ('31', 'e', '0', '2', '21');
INSERT INTO `evaluation_template_item` VALUES ('32', 'f', '0', '2', '21');
INSERT INTO `evaluation_template_item` VALUES ('33', '1', '0', '2', '22');
INSERT INTO `evaluation_template_item` VALUES ('34', '2', '0', '2', '22');
INSERT INTO `evaluation_template_item` VALUES ('35', '3', '0', '2', '22');
INSERT INTO `evaluation_template_item` VALUES ('36', '4', '0', '2', '22');
INSERT INTO `evaluation_template_item` VALUES ('37', '5', '0', '2', '22');
INSERT INTO `evaluation_template_item` VALUES ('38', '6', '0', '2', '22');

-- ----------------------------
-- Table structure for `evaluation_template_statistics`
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_template_statistics`;
CREATE TABLE `evaluation_template_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL COMMENT '课程标示',
  `rater_id` int(11) DEFAULT NULL COMMENT '评委标示',
  `score` int(11) DEFAULT NULL COMMENT '分数',
  `evaluation_template_id` int(11) DEFAULT NULL COMMENT '评价模板标示',
  `evaluation_template_item_id` int(11) DEFAULT NULL COMMENT '评价模板详细标示',
  `group_leader` int(1) DEFAULT NULL COMMENT '0-非,1-是',
  `submit_time` varchar(14) DEFAULT NULL COMMENT '时间',
  `UUID` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluation_template_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `middle_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '小班', '1');
INSERT INTO `grade` VALUES ('2', '中班', '1');
INSERT INTO `grade` VALUES ('3', '大班', '1');
INSERT INTO `grade` VALUES ('4', '一年级', '2');
INSERT INTO `grade` VALUES ('5', '二年级', '2');
INSERT INTO `grade` VALUES ('6', '三年级', '2');
INSERT INTO `grade` VALUES ('7', '四年级', '2');
INSERT INTO `grade` VALUES ('8', '五年级', '2');
INSERT INTO `grade` VALUES ('9', '六年级', '2');
INSERT INTO `grade` VALUES ('10', '七年级', '3');
INSERT INTO `grade` VALUES ('11', '八年级', '3');
INSERT INTO `grade` VALUES ('12', '九年级', '3');
INSERT INTO `grade` VALUES ('13', '十年级', '4');
INSERT INTO `grade` VALUES ('16', '十一年级', '4');
INSERT INTO `grade` VALUES ('19', '十二年级', '4');

-- ----------------------------
-- Table structure for `lecture_notes`
-- ----------------------------
DROP TABLE IF EXISTS `lecture_notes`;
CREATE TABLE `lecture_notes` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) DEFAULT NULL,
  `time` varchar(14) DEFAULT NULL,
  `rater_id` int(10) DEFAULT NULL,
  `course_id` int(10) DEFAULT NULL,
  `UUID` char(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lecture_notes
-- ----------------------------

-- ----------------------------
-- Table structure for `lesson_class`
-- ----------------------------
DROP TABLE IF EXISTS `lesson_class`;
CREATE TABLE `lesson_class` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniquename` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson_class
-- ----------------------------
INSERT INTO `lesson_class` VALUES ('7', '3D打印笔');
INSERT INTO `lesson_class` VALUES ('11', '云课堂计算机教室');
INSERT INTO `lesson_class` VALUES ('8', '创客（笔记本电脑）');
INSERT INTO `lesson_class` VALUES ('9', '创客（计算机教室）');
INSERT INTO `lesson_class` VALUES ('10', '创客（计算机教室）（32位win）');
INSERT INTO `lesson_class` VALUES ('2', '电子白板/互动电视');
INSERT INTO `lesson_class` VALUES ('3', '移动终端');
INSERT INTO `lesson_class` VALUES ('5', '虚拟/增强现实');

-- ----------------------------
-- Table structure for `level`
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL,
  `max` int(10) DEFAULT NULL,
  `min` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES ('2', 'C', '84', '75');
INSERT INTO `level` VALUES ('4', 'B', '94', '85');
INSERT INTO `level` VALUES ('5', 'A', '140', '95');

-- ----------------------------
-- Table structure for `middle`
-- ----------------------------
DROP TABLE IF EXISTS `middle`;
CREATE TABLE `middle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of middle
-- ----------------------------
INSERT INTO `middle` VALUES ('3', '初中');
INSERT INTO `middle` VALUES ('2', '小学');
INSERT INTO `middle` VALUES ('1', '幼儿园');
INSERT INTO `middle` VALUES ('4', '高中');

-- ----------------------------
-- Table structure for `place`
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `campus_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES ('1', '一（1）班', '2');
INSERT INTO `place` VALUES ('2', '一（2）班', '2');
INSERT INTO `place` VALUES ('3', '一（3）班', '2');
INSERT INTO `place` VALUES ('4', '一（4）班', '2');
INSERT INTO `place` VALUES ('5', '一（5）班', '2');
INSERT INTO `place` VALUES ('6', '一（6）班', '2');
INSERT INTO `place` VALUES ('7', '一（7）班', '2');
INSERT INTO `place` VALUES ('8', '一（8）班', '2');
INSERT INTO `place` VALUES ('9', '一（9）班', '2');
INSERT INTO `place` VALUES ('10', '一（10）班', '2');
INSERT INTO `place` VALUES ('11', '一（11）班', '2');
INSERT INTO `place` VALUES ('12', '一（12）班', '2');
INSERT INTO `place` VALUES ('13', '二（1）班', '2');
INSERT INTO `place` VALUES ('14', '二（2）班', '2');
INSERT INTO `place` VALUES ('15', '五（5）班', '2');
INSERT INTO `place` VALUES ('16', '五（6）班', '2');
INSERT INTO `place` VALUES ('17', '五（7）班', '2');
INSERT INTO `place` VALUES ('18', '七（1）班', '2');
INSERT INTO `place` VALUES ('19', '七（2）班', '2');
INSERT INTO `place` VALUES ('20', '七（3）班', '2');
INSERT INTO `place` VALUES ('21', '七（4）班', '2');
INSERT INTO `place` VALUES ('22', '书法教室', '2');
INSERT INTO `place` VALUES ('23', '科技楼二楼右边教室', '2');
INSERT INTO `place` VALUES ('24', '实验楼三楼物理实验室', '2');
INSERT INTO `place` VALUES ('25', '教学楼北楼一楼阶梯教室', '3');
INSERT INTO `place` VALUES ('26', '图书科技楼二楼高一智慧课堂（一）', '3');
INSERT INTO `place` VALUES ('27', '图书科技楼二楼高一智慧课堂（二）', '3');
INSERT INTO `place` VALUES ('28', '图书科技楼三楼高二智慧课堂（一）', '3');
INSERT INTO `place` VALUES ('29', '向日葵班（二楼）', '1');
INSERT INTO `place` VALUES ('30', '舞美大厅(三楼)', '1');
INSERT INTO `place` VALUES ('31', '月亮班（三楼）', '1');

-- ----------------------------
-- Table structure for `prizes`
-- ----------------------------
DROP TABLE IF EXISTS `prizes`;
CREATE TABLE `prizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `number` int(10) DEFAULT NULL COMMENT '人数',
  `score_standard` int(10) DEFAULT NULL COMMENT '分数标准',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prizes
-- ----------------------------
INSERT INTO `prizes` VALUES ('1', '一等奖', '10', '90');
INSERT INTO `prizes` VALUES ('2', '二等奖', '20', '80');

-- ----------------------------
-- Table structure for `qualitative_evaluation`
-- ----------------------------
DROP TABLE IF EXISTS `qualitative_evaluation`;
CREATE TABLE `qualitative_evaluation` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `course_id` int(10) NOT NULL,
  `rater_id` int(10) NOT NULL,
  `content` varchar(300) DEFAULT NULL,
  `group_leader` int(1) NOT NULL COMMENT '0-非,1-是',
  `submit_time` varchar(14) DEFAULT NULL,
  `UUID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qualitative_evaluation
-- ----------------------------

-- ----------------------------
-- Table structure for `qualitative_evaluation_img`
-- ----------------------------
DROP TABLE IF EXISTS `qualitative_evaluation_img`;
CREATE TABLE `qualitative_evaluation_img` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `qualitative_evaluation_id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `UUID` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qualitative_evaluation_img
-- ----------------------------

-- ----------------------------
-- Table structure for `rater`
-- ----------------------------
DROP TABLE IF EXISTS `rater`;
CREATE TABLE `rater` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobile_phone` char(11) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `password` char(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rater
-- ----------------------------
INSERT INTO `rater` VALUES ('1', '13439191391', '梁一凡', '123456');
INSERT INTO `rater` VALUES ('2', '15928654418', '陶蕾', '123456');
INSERT INTO `rater` VALUES ('3', '13851891609', '李为', '123456');
INSERT INTO `rater` VALUES ('4', '13803910023', '郑跃杰', '123456');
INSERT INTO `rater` VALUES ('5', '15606303029', '桂君', '123456');
INSERT INTO `rater` VALUES ('6', '15010246121', '高小芹', '123456');
INSERT INTO `rater` VALUES ('7', '13842428058', '姜振华', '123456');
INSERT INTO `rater` VALUES ('8', '13515238249', '张兆军', '123456');
INSERT INTO `rater` VALUES ('9', '13777140947', '黄吉雁', '123456');
INSERT INTO `rater` VALUES ('10', '13707722443', '韦小涛', '123456');
INSERT INTO `rater` VALUES ('11', '13607728830', '黄煜欣', '123456');
INSERT INTO `rater` VALUES ('12', '13332095100', '李维钧', '123456');
INSERT INTO `rater` VALUES ('13', '13817211121', '张群', '123456');
INSERT INTO `rater` VALUES ('14', '13386307069', '张海军', '123456');
INSERT INTO `rater` VALUES ('15', '17720577280', '吕军', '123456');
INSERT INTO `rater` VALUES ('16', '13302061500', '高淑印', '123456');
INSERT INTO `rater` VALUES ('17', '13920281116', '庄燕', '123456');
INSERT INTO `rater` VALUES ('18', '15891666662', '张铮', '123456');
INSERT INTO `rater` VALUES ('19', '18845916738', '周爱萍', '123456');
INSERT INTO `rater` VALUES ('20', '13991600211', '刘静', '123456');
INSERT INTO `rater` VALUES ('21', '13936997363', '宋万金', '123456');
INSERT INTO `rater` VALUES ('22', '13910208518', '张学虎', '123456');
INSERT INTO `rater` VALUES ('23', '13621238668', '熊倩', '123456');
INSERT INTO `rater` VALUES ('24', '18912779055', '凌秋虹', '123456');
INSERT INTO `rater` VALUES ('25', '13851565564', '吴宁', '123456');
INSERT INTO `rater` VALUES ('26', '13398166628', '阳涌', '123456');
INSERT INTO `rater` VALUES ('27', '13382888800', '毛炜', '123456');
INSERT INTO `rater` VALUES ('28', '13912354268', '顾筱玲', '123456');
INSERT INTO `rater` VALUES ('29', '18905537158', '喻薇萍', '123456');
INSERT INTO `rater` VALUES ('30', '13098806831', '丁军', '123456');
INSERT INTO `rater` VALUES ('31', '18610123252', '肖明', '123456');
INSERT INTO `rater` VALUES ('32', '13880852758', '周英', '123456');
INSERT INTO `rater` VALUES ('33', '18740190796', '罗颖', '123456');
INSERT INTO `rater` VALUES ('34', '15838572518', '魏韶军', '123456');
INSERT INTO `rater` VALUES ('35', '13501361749', '马涛', '123456');
INSERT INTO `rater` VALUES ('36', '13947180999', '张彦春', '123456');
INSERT INTO `rater` VALUES ('37', '13866164656', '左广', '123456');
INSERT INTO `rater` VALUES ('38', '13675758922', '周学东', '123456');
INSERT INTO `rater` VALUES ('39', '13955944992', '胡斌', '123456');
INSERT INTO `rater` VALUES ('40', '13901638957', '朱林辉', '123456');
INSERT INTO `rater` VALUES ('41', '18005317999', '刘彩霞', '123456');
INSERT INTO `rater` VALUES ('42', '13706975037', '姚春杰', '123456');
INSERT INTO `rater` VALUES ('43', '13940226658', '杜娟', '123456');
INSERT INTO `rater` VALUES ('44', '13141253469', '张大光', '123456');
INSERT INTO `rater` VALUES ('45', '13963987303', '牟晓东', '123456');
INSERT INTO `rater` VALUES ('46', '13681789829', '邵勇', '123456');
INSERT INTO `rater` VALUES ('47', '18600269114', '李小春', '123456');
INSERT INTO `rater` VALUES ('48', '13810875196', '李雪萍', '123456');
INSERT INTO `rater` VALUES ('49', '15811365527', '刘辛', '123456');
INSERT INTO `rater` VALUES ('50', '13940864065', '苗宏宾', '123456');
INSERT INTO `rater` VALUES ('51', '18621361816', '潘丽芳', '123456');
INSERT INTO `rater` VALUES ('52', '13603643258', '张向东', '123456');
INSERT INTO `rater` VALUES ('53', '18011988112', '曹慧萍', '123456');
INSERT INTO `rater` VALUES ('54', '18705371199', '寻素华', '123456');
INSERT INTO `rater` VALUES ('55', '13869897738', '侯健健', '123456');
INSERT INTO `rater` VALUES ('56', '13808068288', '任莉', '123456');
INSERT INTO `rater` VALUES ('57', '18011538858', '曾乾炳', '123456');
INSERT INTO `rater` VALUES ('58', '18502289359', '郑丽', '123456');
INSERT INTO `rater` VALUES ('59', '17305601007', '刘涛', '123456');
INSERT INTO `rater` VALUES ('60', '13892678880', '张剑', '123456');
INSERT INTO `rater` VALUES ('61', '13931240079', '魏星', '123456');
INSERT INTO `rater` VALUES ('62', '13678189168', '张延蓉', '123456');
INSERT INTO `rater` VALUES ('63', '18600201357', '张禹', '123456');
INSERT INTO `rater` VALUES ('64', '13801084707', '潘克明', '123456');
INSERT INTO `rater` VALUES ('65', '13710771525', '容梅', '123456');
INSERT INTO `rater` VALUES ('66', '13910095607', '赵保和', '123456');
INSERT INTO `rater` VALUES ('67', '15502107292', '柳栋', '123456');
INSERT INTO `rater` VALUES ('73', '13693280581', '藤秋莉', '123456');
INSERT INTO `rater` VALUES ('74', '13901065495', '陈美玲', '123456');
INSERT INTO `rater` VALUES ('75', '15011152498', '徐彤', '123456');
INSERT INTO `rater` VALUES ('76', '13910881285', '许林', '123456');

-- ----------------------------
-- Table structure for `rater_place`
-- ----------------------------
DROP TABLE IF EXISTS `rater_place`;
CREATE TABLE `rater_place` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `rater_id` int(10) DEFAULT NULL,
  `place_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rater_place
-- ----------------------------
INSERT INTO `rater_place` VALUES ('1', '1', '2');
INSERT INTO `rater_place` VALUES ('2', '1', '1');
INSERT INTO `rater_place` VALUES ('3', '2', '6');
INSERT INTO `rater_place` VALUES ('4', '2', '5');
INSERT INTO `rater_place` VALUES ('5', '3', '3');

-- ----------------------------
-- Table structure for `school`
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `uniqueName` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('204', ' 流美中心小学');
INSERT INTO `school` VALUES ('133', ' 深圳市龙岗区横岗中心学校');
INSERT INTO `school` VALUES ('109', '丁香家园幼儿园');
INSERT INTO `school` VALUES ('131', '上杭县第一中学');
INSERT INTO `school` VALUES ('293', '上海外国语大学苏河湾实验中学');
INSERT INTO `school` VALUES ('306', '上海市向东中学');
INSERT INTO `school` VALUES ('96', '上海市吴泾中学');
INSERT INTO `school` VALUES ('114', '上海市回民中学');
INSERT INTO `school` VALUES ('255', '上海市大宁路小学');
INSERT INTO `school` VALUES ('80', '上海市实验学校西校');
INSERT INTO `school` VALUES ('186', '上海市杨浦区平凉路第三小学');
INSERT INTO `school` VALUES ('316', '上海市第六十中学');
INSERT INTO `school` VALUES ('275', '上海市进才中学北校');
INSERT INTO `school` VALUES ('165', '上海市闵行区中心小学');
INSERT INTO `school` VALUES ('195', '上海市闵行区梅陇中心小学');
INSERT INTO `school` VALUES ('154', '上海市青浦佳禾小学');
INSERT INTO `school` VALUES ('62', '上海市青浦区实验中学');
INSERT INTO `school` VALUES ('43', '上海市静安区大宁路小学');
INSERT INTO `school` VALUES ('69', '上海市静安区彭浦新村第一小学');
INSERT INTO `school` VALUES ('200', '上海市龙柏中学');
INSERT INTO `school` VALUES ('328', '上海新纪元四川省广元外国语学校');
INSERT INTO `school` VALUES ('277', '东莞市黄江中学');
INSERT INTO `school` VALUES ('20', '东营市垦利区第二实验小学');
INSERT INTO `school` VALUES ('263', '东阳市横店小学教育集团');
INSERT INTO `school` VALUES ('15', '中国传媒大学附属小学');
INSERT INTO `school` VALUES ('88', '中山市黄圃镇培红小学');
INSERT INTO `school` VALUES ('138', '临猗县城关镇贵戚坊小学');
INSERT INTO `school` VALUES ('157', '佛山市禅城区南庄镇中心小学');
INSERT INTO `school` VALUES ('314', '勐海县第一中学');
INSERT INTO `school` VALUES ('127', '北京市东城区分司厅小学');
INSERT INTO `school` VALUES ('4', '北京市丰台区丰台第一幼儿园');
INSERT INTO `school` VALUES ('10', '北京市丰台区人民政府机关幼儿园');
INSERT INTO `school` VALUES ('101', '北京市丰台区育英幼儿园');
INSERT INTO `school` VALUES ('168', '北京市丰台区阳春小学');
INSERT INTO `school` VALUES ('128', '北京市八一中学');
INSERT INTO `school` VALUES ('149', '北京市大兴区黄村镇第一中心小学');
INSERT INTO `school` VALUES ('84', '北京市密云区十里堡镇中心小学');
INSERT INTO `school` VALUES ('273', '北京市密云区第五小学（民族小学）');
INSERT INTO `school` VALUES ('60', '北京市密云区第四小学');
INSERT INTO `school` VALUES ('29', '北京市昌平区城关小学');
INSERT INTO `school` VALUES ('245', '北京市朝阳师范附属小学');
INSERT INTO `school` VALUES ('266', '北京市海淀区上庄中心小学');
INSERT INTO `school` VALUES ('74', '北京市牛栏山一中实验学校');
INSERT INTO `school` VALUES ('308', '北京市第五十中学');
INSERT INTO `school` VALUES ('141', '北京市第五十中学分校');
INSERT INTO `school` VALUES ('278', '北京市第十一中学');
INSERT INTO `school` VALUES ('251', '北京市门头沟区龙泉小学');
INSERT INTO `school` VALUES ('115', '北京市顺义区李桥中心幼儿园');
INSERT INTO `school` VALUES ('181', '北京师范大学朝阳附属小学');
INSERT INTO `school` VALUES ('77', '北京师范大学沈阳附属学校');
INSERT INTO `school` VALUES ('294', '北京师范大学石家庄附属学校');
INSERT INTO `school` VALUES ('89', '北京汇文中学');
INSERT INTO `school` VALUES ('35', '北京第二实验小学怡海分校');
INSERT INTO `school` VALUES ('45', '华南理工大学附属实验学校');
INSERT INTO `school` VALUES ('188', '南京市光华东街小学');
INSERT INTO `school` VALUES ('92', '南京市共青团路中学');
INSERT INTO `school` VALUES ('259', '南京市北京东路小学');
INSERT INTO `school` VALUES ('107', '南京市南湖沿河幼儿园');
INSERT INTO `school` VALUES ('116', '南京市南湖育英幼儿园');
INSERT INTO `school` VALUES ('90', '南京市宁海中学分校');
INSERT INTO `school` VALUES ('104', '南京市江宁示范幼儿园');
INSERT INTO `school` VALUES ('17', '南京市浦口区实验小学');
INSERT INTO `school` VALUES ('34', '南京市白云园小学');
INSERT INTO `school` VALUES ('81', '南京市立贤小学');
INSERT INTO `school` VALUES ('219', '南充市顺庆区搬罾镇小学');
INSERT INTO `school` VALUES ('33', '南昌市站前路学校教育集团');
INSERT INTO `school` VALUES ('113', '南昌市第一中学');
INSERT INTO `school` VALUES ('254', '南昌市豫章小学');
INSERT INTO `school` VALUES ('91', '南昌新建三中');
INSERT INTO `school` VALUES ('205', '厦门同安区阳翟小学');
INSERT INTO `school` VALUES ('108', '厦门市东浦幼儿园');
INSERT INTO `school` VALUES ('72', '厦门市同安区新城小学');
INSERT INTO `school` VALUES ('228', '厦门市同安区阳翟小学');
INSERT INTO `school` VALUES ('24', '合肥市习友路小学');
INSERT INTO `school` VALUES ('98', '合肥市五十中学东校');
INSERT INTO `school` VALUES ('227', '合肥市五十中学新校');
INSERT INTO `school` VALUES ('8', '合肥市仁和佳园幼儿园');
INSERT INTO `school` VALUES ('67', '合肥市和平小学大兴分校');
INSERT INTO `school` VALUES ('267', '合肥市和平小学花冲分校');
INSERT INTO `school` VALUES ('225', '合肥市园上园小学');
INSERT INTO `school` VALUES ('212', '合肥市庐东学校');
INSERT INTO `school` VALUES ('121', '合肥市康园幼儿园');
INSERT INTO `school` VALUES ('155', '合肥市新安江路小学');
INSERT INTO `school` VALUES ('279', '合肥市望龙中学');
INSERT INTO `school` VALUES ('297', '合肥市江淮学校');
INSERT INTO `school` VALUES ('117', '合肥市滨湖启明星幼儿园');
INSERT INTO `school` VALUES ('291', '合肥市琥珀中学');
INSERT INTO `school` VALUES ('95', '合肥市琥珀山庄第一幼儿园');
INSERT INTO `school` VALUES ('144', '合肥市第八中学');
INSERT INTO `school` VALUES ('318', '合肥市第十一中学');
INSERT INTO `school` VALUES ('319', '合肥市第十七中学');
INSERT INTO `school` VALUES ('164', '合肥市绿怡小学');
INSERT INTO `school` VALUES ('49', '合肥市蚌埠路第五小学');
INSERT INTO `school` VALUES ('285', '合肥市金湖中学');
INSERT INTO `school` VALUES ('211', '含山县环峰第四小学');
INSERT INTO `school` VALUES ('312', '呼和浩特市回民中学');
INSERT INTO `school` VALUES ('253', '和平小学大兴分校');
INSERT INTO `school` VALUES ('242', '哈尔滨市友协第二小学校');
INSERT INTO `school` VALUES ('76', '哈尔滨市新疆第一小学校');
INSERT INTO `school` VALUES ('265', '唐山市丰南区第一实验小学');
INSERT INTO `school` VALUES ('182', '唐山市路北区幸福小学');
INSERT INTO `school` VALUES ('274', '四川省成都市七中育才学校');
INSERT INTO `school` VALUES ('118', '四川省武胜县沿口镇第一幼儿园');
INSERT INTO `school` VALUES ('208', '城固县考院实验小学');
INSERT INTO `school` VALUES ('303', '大庆市万宝学校');
INSERT INTO `school` VALUES ('134', '大庆市景园小学');
INSERT INTO `school` VALUES ('99', '大庆市靓湖学校');
INSERT INTO `school` VALUES ('321', '大石桥市第三高级中学');
INSERT INTO `school` VALUES ('324', '大连市旅顺第二高级中学');
INSERT INTO `school` VALUES ('194', '大连市甘井子区周水子小学');
INSERT INTO `school` VALUES ('223', '大连市第三十九中学');
INSERT INTO `school` VALUES ('178', '天津市北辰区模范小学');
INSERT INTO `school` VALUES ('230', '天津市北辰区西堤头小学');
INSERT INTO `school` VALUES ('38', '天津市和平区岳阳道小学');
INSERT INTO `school` VALUES ('238', '天津市和平区新星小学');
INSERT INTO `school` VALUES ('12', '天津市和平区第十三幼儿园');
INSERT INTO `school` VALUES ('282', '天津市小淀中学');
INSERT INTO `school` VALUES ('122', '天津市津南区双港联合小学');
INSERT INTO `school` VALUES ('148', '天津市滨海新区塘沽浙江路小学');
INSERT INTO `school` VALUES ('299', '天津市第二十一中学');
INSERT INTO `school` VALUES ('281', '天津市第五中学');
INSERT INTO `school` VALUES ('305', '天津市第六十一中学');
INSERT INTO `school` VALUES ('53', '天津市静海区团泊镇华源小学');
INSERT INTO `school` VALUES ('302', '天津经济技术开发区第一中学');
INSERT INTO `school` VALUES ('22', '威海临港经济技术开发区蔄山小学');
INSERT INTO `school` VALUES ('87', '威海市实验中学');
INSERT INTO `school` VALUES ('185', '威海市翠竹小学');
INSERT INTO `school` VALUES ('288', '宁波市鄞州区钟公庙中学');
INSERT INTO `school` VALUES ('250', '安徽省肥西县官亭镇中心学校');
INSERT INTO `school` VALUES ('119', '安徽省铜陵市杨家山幼儿园');
INSERT INTO `school` VALUES ('224', '宝鸡文理学院附属中学');
INSERT INTO `school` VALUES ('298', '寿光市洛城街道留吕初级中学');
INSERT INTO `school` VALUES ('153', '山东省威海市河北小学');
INSERT INTO `school` VALUES ('325', '山东省泰山中学');
INSERT INTO `school` VALUES ('93', '山东省青岛第五十七中学');
INSERT INTO `school` VALUES ('295', '巢湖市黄麓镇初级中学');
INSERT INTO `school` VALUES ('180', '常州市北环路小学');
INSERT INTO `school` VALUES ('28', '广州市越秀区东风东路小学');
INSERT INTO `school` VALUES ('290', '广德县滨河学校');
INSERT INTO `school` VALUES ('197', '徐州市青年路小学');
INSERT INTO `school` VALUES ('97', '成都市七中育才学校');
INSERT INTO `school` VALUES ('75', '成都市双林小学');
INSERT INTO `school` VALUES ('102', '成都市新都区第一幼儿园');
INSERT INTO `school` VALUES ('132', '成都市泡桐树小学');
INSERT INTO `school` VALUES ('54', '成都市泡桐树小学绿舟分校');
INSERT INTO `school` VALUES ('40', '成都市泡桐树小学西区分校');
INSERT INTO `school` VALUES ('27', '成都市泡桐树小学（天府校区）');
INSERT INTO `school` VALUES ('145', '成都市百草园小学校');
INSERT INTO `school` VALUES ('73', '成都市盐道街小学');
INSERT INTO `school` VALUES ('169', '成都市石笋街小学校');
INSERT INTO `school` VALUES ('57', '成都市磨子桥小学分校');
INSERT INTO `school` VALUES ('110', '成都市第三幼儿园');
INSERT INTO `school` VALUES ('146', '成都市青白江区大弯小学');
INSERT INTO `school` VALUES ('268', '成都市龙祥路小学');
INSERT INTO `school` VALUES ('19', '成都师范银都小学');
INSERT INTO `school` VALUES ('137', '成都师范附属小学万科分校');
INSERT INTO `school` VALUES ('207', '成都师范附属小学华润分校');
INSERT INTO `school` VALUES ('21', '成都泡桐树小学绿舟分校');
INSERT INTO `school` VALUES ('276', '扬州树人学校');
INSERT INTO `school` VALUES ('106', '无锡市古运河实验幼儿园');
INSERT INTO `school` VALUES ('9', '无锡市太湖实验幼儿园');
INSERT INTO `school` VALUES ('167', '景行双语实验学校');
INSERT INTO `school` VALUES ('196', '朝阳区呼家楼中心小学');
INSERT INTO `school` VALUES ('23', '本溪市北星小学');
INSERT INTO `school` VALUES ('68', '本溪市溪湖区彩一小学');
INSERT INTO `school` VALUES ('71', '本溪市溪湖区河畔小学');
INSERT INTO `school` VALUES ('310', '本溪市第一中学');
INSERT INTO `school` VALUES ('289', '本溪市第二十四中学');
INSERT INTO `school` VALUES ('206', '本溪市迎宾小学');
INSERT INTO `school` VALUES ('260', '本溪满族自治县碱厂镇兰河峪逸夫学校');
INSERT INTO `school` VALUES ('192', '杭州市饮马井巷小学');
INSERT INTO `school` VALUES ('61', '枣庄市实验学校');
INSERT INTO `school` VALUES ('156', '柳州市东环路小学');
INSERT INTO `school` VALUES ('166', '柳州市和平路小学');
INSERT INTO `school` VALUES ('179', '柳州市弯塘路小学');
INSERT INTO `school` VALUES ('30', '柳州市景行小学');
INSERT INTO `school` VALUES ('193', '柳州市潭中路小学');
INSERT INTO `school` VALUES ('280', '柳州市第四十六中学');
INSERT INTO `school` VALUES ('64', '柳州市龙城中学');
INSERT INTO `school` VALUES ('320', '柳州高级中学');
INSERT INTO `school` VALUES ('50', '桂林市乐群小学');
INSERT INTO `school` VALUES ('210', '桂林市榕湖小学');
INSERT INTO `school` VALUES ('136', '武汉市东方红小学');
INSERT INTO `school` VALUES ('152', '武汉市光谷第三小学');
INSERT INTO `school` VALUES ('184', '武汉市光谷第五小学');
INSERT INTO `school` VALUES ('11', '武汉市武昌丁字桥幼儿园');
INSERT INTO `school` VALUES ('36', '武汉市武昌区丁字桥小学');
INSERT INTO `school` VALUES ('171', '武汉市江岸区沈阳路小学');
INSERT INTO `school` VALUES ('13', '武汉市洪山区实验幼儿园');
INSERT INTO `school` VALUES ('173', '武汉市硚口区韩家墩小学');
INSERT INTO `school` VALUES ('307', '武汉市第二十中学');
INSERT INTO `school` VALUES ('130', '武汉市第二十九中学');
INSERT INTO `school` VALUES ('31', '武汉市育才第二小学');
INSERT INTO `school` VALUES ('199', '武汉市鲁巷实验小学');
INSERT INTO `school` VALUES ('25', '武汉经济技术开发区新城小学');
INSERT INTO `school` VALUES ('94', '武汉经济技术开发区第一初级中学');
INSERT INTO `school` VALUES ('175', '沈阳市沈河区文化路学校');
INSERT INTO `school` VALUES ('203', '沈阳市沈河区文化路第二小学');
INSERT INTO `school` VALUES ('311', '沈阳市第一二〇中学');
INSERT INTO `school` VALUES ('112', '沈阳市第十中学');
INSERT INTO `school` VALUES ('214', '河东区第二中心小学');
INSERT INTO `school` VALUES ('287', '河北省三河市第八中学');
INSERT INTO `school` VALUES ('37', '河南省洛阳市涧西区景华实验小学');
INSERT INTO `school` VALUES ('209', '法库县东湖小学');
INSERT INTO `school` VALUES ('264', '淮北市梅苑学校');
INSERT INTO `school` VALUES ('292', '淮南市洞山中学朝阳校区');
INSERT INTO `school` VALUES ('317', '淮南第二中学');
INSERT INTO `school` VALUES ('44', '淮安市外国语实验小学');
INSERT INTO `school` VALUES ('147', '淮安市天津路小学');
INSERT INTO `school` VALUES ('120', '淮安市淮海路幼儿园');
INSERT INTO `school` VALUES ('270', '淮安市深圳路小学');
INSERT INTO `school` VALUES ('216', '淮阴师范学院学院第一附属小学');
INSERT INTO `school` VALUES ('86', '淮阴师范学院第一附属小学');
INSERT INTO `school` VALUES ('172', '深圳实验学校中学部');
INSERT INTO `school` VALUES ('42', '深圳市锦田小学');
INSERT INTO `school` VALUES ('161', '深圳市龙岗区深圳大学师范学院附属坂田学校');
INSERT INTO `school` VALUES ('283', '深圳市龙岗区龙城初级中学');
INSERT INTO `school` VALUES ('159', '深圳市龙岗区龙城街道千林山小学');
INSERT INTO `school` VALUES ('296', '湖北省孝感市孝南区肖港镇肖港初级中学');
INSERT INTO `school` VALUES ('135', '湖北省武汉经济技术开发区新城小学');
INSERT INTO `school` VALUES ('70', '湖州新世纪外国语学校');
INSERT INTO `school` VALUES ('229', '滦县第四中学');
INSERT INTO `school` VALUES ('140', '焉耆县一中');
INSERT INTO `school` VALUES ('226', '焦作市万方中学');
INSERT INTO `school` VALUES ('55', '田家庵区第十六小学');
INSERT INTO `school` VALUES ('105', '福安市实验幼儿园');
INSERT INTO `school` VALUES ('6', '福安市第二幼儿园');
INSERT INTO `school` VALUES ('190', '福安市逸夫小学');
INSERT INTO `school` VALUES ('201', '福州市台江第三中心小学');
INSERT INTO `school` VALUES ('85', '福州市潘墩中心小学');
INSERT INTO `school` VALUES ('100', '福州金山中学');
INSERT INTO `school` VALUES ('234', '福州金山小学');
INSERT INTO `school` VALUES ('66', '福建宁德蕉城中学');
INSERT INTO `school` VALUES ('262', '福建省宁德市蕉城区实验小学');
INSERT INTO `school` VALUES ('191', '福清市龙山中心小学');
INSERT INTO `school` VALUES ('129', '福鼎市实验小学');
INSERT INTO `school` VALUES ('220', '秦皇岛市海港区东港里小学');
INSERT INTO `school` VALUES ('158', '绍兴市柯桥区华舍小学');
INSERT INTO `school` VALUES ('59', '绍兴市柯桥区实验小学');
INSERT INTO `school` VALUES ('231', '肥西县上派初级中学');
INSERT INTO `school` VALUES ('103', '肥西县高店乡中心学校');
INSERT INTO `school` VALUES ('41', '芜湖市延安小学');
INSERT INTO `school` VALUES ('258', '芜湖市赭山小学');
INSERT INTO `school` VALUES ('304', '苏州工业园区东沙湖学校');
INSERT INTO `school` VALUES ('256', '苏州工业园区娄葑实验小学');
INSERT INTO `school` VALUES ('232', '苏州工业园区星洲学校');
INSERT INTO `school` VALUES ('26', '苏州工业园区第二实验小学');
INSERT INTO `school` VALUES ('14', '苏州市善耕实验小学校');
INSERT INTO `school` VALUES ('2', '苏州市平江实验幼儿园');
INSERT INTO `school` VALUES ('46', '苏州市金阊实验小学校');
INSERT INTO `school` VALUES ('300', '营口市第二十九中学');
INSERT INTO `school` VALUES ('301', '融水实验中学');
INSERT INTO `school` VALUES ('252', '赣州市章贡区沙石龙埠小学');
INSERT INTO `school` VALUES ('217', '酒泉市南苑小学');
INSERT INTO `school` VALUES ('51', '酒泉市康盛小学');
INSERT INTO `school` VALUES ('82', '重庆市沙坪坝区上桥小学校');
INSERT INTO `school` VALUES ('269', '重庆市沙坪坝区南开景阳小学校');
INSERT INTO `school` VALUES ('1', '重庆市沙坪坝区实验幼儿园');
INSERT INTO `school` VALUES ('32', '重庆市沙坪坝区树人景瑞小学');
INSERT INTO `school` VALUES ('170', '重庆市沙坪坝区树人景瑞小学校');
INSERT INTO `school` VALUES ('198', '重庆市沙坪坝区森林实验小学校');
INSERT INTO `school` VALUES ('58', '金华市东苑小学');
INSERT INTO `school` VALUES ('213', '铜陵市新桥小学');
INSERT INTO `school` VALUES ('323', '铜陵市第十七中学');
INSERT INTO `school` VALUES ('257', '铜陵市西湖中心学校');
INSERT INTO `school` VALUES ('18', '长沙市芙蓉区大同古汉城小学');
INSERT INTO `school` VALUES ('39', '长沙市雨花区长塘里第二小学');
INSERT INTO `school` VALUES ('142', '闵行区七宝镇明强小学');
INSERT INTO `school` VALUES ('313', '阜阳市第五中学');
INSERT INTO `school` VALUES ('47', '陕西省汉中师范附属小学');
INSERT INTO `school` VALUES ('272', '青岛宾川路小学');
INSERT INTO `school` VALUES ('5', '青岛市李沧区商业幼儿园');
INSERT INTO `school` VALUES ('16', '青岛弘德小学');
INSERT INTO `school` VALUES ('176', '青岛李沧区第二实验小学');
INSERT INTO `school` VALUES ('151', '青岛枣山小学');
INSERT INTO `school` VALUES ('163', '青岛永平路小学');
INSERT INTO `school` VALUES ('143', '首都师范大学附属中学');
INSERT INTO `school` VALUES ('309', '马鞍山市第二十二中学');
INSERT INTO `school` VALUES ('218', '马鞍山雨山实验学校');
INSERT INTO `school` VALUES ('111', '鸡西市第十九中学');
INSERT INTO `school` VALUES ('63', '黑龙江省大庆市登峰学校');
INSERT INTO `school` VALUES ('177', '齐齐哈尔路第一小学');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqueName` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('24', '体育');
INSERT INTO `subject` VALUES ('8', '信息技术');
INSERT INTO `subject` VALUES ('28', '化学');
INSERT INTO `subject` VALUES ('27', '历史');
INSERT INTO `subject` VALUES ('26', '品德');
INSERT INTO `subject` VALUES ('2', '品德与社会');
INSERT INTO `subject` VALUES ('14', '地方课程');
INSERT INTO `subject` VALUES ('17', '地理');
INSERT INTO `subject` VALUES ('19', '思想政治');
INSERT INTO `subject` VALUES ('4', '数学');
INSERT INTO `subject` VALUES ('10', '校本课程');
INSERT INTO `subject` VALUES ('16', '物理');
INSERT INTO `subject` VALUES ('15', '生物');
INSERT INTO `subject` VALUES ('21', '社会活动');
INSERT INTO `subject` VALUES ('5', '科学');
INSERT INTO `subject` VALUES ('1', '科学活动');
INSERT INTO `subject` VALUES ('22', '综合实践活动');
INSERT INTO `subject` VALUES ('9', '美术');
INSERT INTO `subject` VALUES ('6', '自然与科学');
INSERT INTO `subject` VALUES ('20', '艺术活动');
INSERT INTO `subject` VALUES ('7', '英语');
INSERT INTO `subject` VALUES ('11', '语文');
INSERT INTO `subject` VALUES ('3', '语言活动');
INSERT INTO `subject` VALUES ('13', '音乐');

-- ----------------------------
-- Table structure for `sys_department`
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department` (
  `DEPARTMENT_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `CHIEFNAME` varchar(30) DEFAULT NULL,
  `CHIEFPHONE` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_department
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_dept_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_user`;
CREATE TABLE `sys_dept_user` (
  `ID` varchar(100) NOT NULL DEFAULT '',
  `NAME` varchar(100) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `TYPE` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dept_user
-- ----------------------------
INSERT INTO `sys_dept_user` VALUES ('2a7db171b75645a2b4d0ab1fcc1e1e2b', '周永超', '', '1');
INSERT INTO `sys_dept_user` VALUES ('31781c84eaf94f21bf1e8546cc2b82bd', '高龙', '', '1');
INSERT INTO `sys_dept_user` VALUES ('54d3cfd8d6dc40bd9621faeb640d7d80', '姚丽霞', '', '1');
INSERT INTO `sys_dept_user` VALUES ('7bf0cc3d107c4f56ac83165585ef78b9', '翁文杰', '', '1');
INSERT INTO `sys_dept_user` VALUES ('820ffc28c2e74ac396e7fcfd416d0367', '张丁', '', '1');
INSERT INTO `sys_dept_user` VALUES ('86b1ac69c90d41bd9e1eb904eec55c49', '高阳', '', '1');
INSERT INTO `sys_dept_user` VALUES ('a4b1667c6d0841da8041cf35d9c77cba', '赵伟天', '', '1');
INSERT INTO `sys_dept_user` VALUES ('be1868e5d58a4be7a6215d4d460bb95c', '李明', '', '1');
INSERT INTO `sys_dept_user` VALUES ('d1b48db374f94ab3bec4c595b4959476', '张绍良', '', '1');
INSERT INTO `sys_dept_user` VALUES ('d23df27ba3c74d809ace532cc47a33d5', '席琴琴', '', '1');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` int(11) DEFAULT NULL,
  `MENU_ICON` varchar(60) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  `MENU_STATE` int(11) DEFAULT NULL,
  `ISQTMENU` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '#', '0', '1', 'menu-icon fa fa-desktop black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '#', '0', '3', 'menu-icon fa fa-bell black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('5', '公告管理', '#', '0', '5', 'menu-icon fa fa-cog black', '2', '1', '0');
INSERT INTO `sys_menu` VALUES ('6', '模板管理', '#', '0', '6', 'menu-icon fa fa-leaf black', '4', '1', '0');
INSERT INTO `sys_menu` VALUES ('7', '页面控件', '#', '0', '7', 'menu-icon fa fa-gavel black', '2', '1', '0');
INSERT INTO `sys_menu` VALUES ('8', '开发控件', '#', '0', '8', 'menu-icon fa fa-key black', '2', '1', '0');
INSERT INTO `sys_menu` VALUES ('9', '用户管理', '#', '0', '9', 'menu-icon fa fa-users blue', '3', '1', '0');
INSERT INTO `sys_menu` VALUES ('10', '运营管理信息', '#', '0', '10', 'menu-icon fa fa-calendar black', '2', '1', '0');
INSERT INTO `sys_menu` VALUES ('12', '基础信息表', '#', '0', '12', 'menu-icon fa fa-film black', '4', '1', '0');
INSERT INTO `sys_menu` VALUES ('13', '内容管理', '#', '0', '13', 'menu-icon fa fa-download black', '4', '1', '0');
INSERT INTO `sys_menu` VALUES ('14', '消息管理', '#', '0', '14', 'menu-icon fa fa-leaf black', '4', '1', '0');
INSERT INTO `sys_menu` VALUES ('15', '日志管理', '#', '0', '15', 'menu-icon fa fa-pencil-square-o black', '2', '1', '0');
INSERT INTO `sys_menu` VALUES ('16', '信息管理', '#', '0', '16', 'menu-icon fa fa-leaf black', '4', '1', '0');
INSERT INTO `sys_menu` VALUES ('17', '权限管理', 'role/toList', '1', '1', 'menu-icon fa fa-lock black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('18', '角色(基础权限)', 'role.do', '17', '1', 'menu-icon fa fa-key orange', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('19', '菜单管理', 'menu/listAllMenu.do', '1', '2', 'menu-icon fa fa-folder-open-o brown', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('20', '系统用户  ', 'user/list.do', '9', '1', 'menu-icon fa fa-leaf black', '3', '1', '0');
INSERT INTO `sys_menu` VALUES ('21', '组织机构管理  ', 'department/listAllDepartment.do', '1', '3', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('27', '课程管理', 'course/list', '1', '5', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('28', '教师管理', 'teacher/list', '1', '6', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('30', '成绩统计', 'course/statistics', '1', '8', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('31', '奖项设置', 'prizes/list', '1', '9', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('36', '大赛管理', 'contest/contestList', '1', '14', 'menu-icon fa fa-leaf black', '2', '1', '0');
INSERT INTO `sys_menu` VALUES ('37', '评课组管理', 'evaluationGroup/list', '1', '15', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('38', '评委管理', 'rater/list', '1', '16', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('40', '上课时间管理', 'classTime/management', '1', '17', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('41', '年级管理', 'grade/list', '1', '18', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('42', '地点管理', 'place/list', '1', '19', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('43', '科目管理', 'subject/list', '1', '20', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('45', '学校管理', 'school/list', '1', '21', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('46', '评价模板', 'evaluationTemplate/list', '1', '22', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('47', '用户管理', 'user/list.do', '3', '1', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('48', '职称管理', 'titles/list', '1', '23', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('49', '地区管理', 'area/provinceList', '1', '24', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('50', '等级管理', 'level/list', '1', '25', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('51', '课例管理', 'lessonClass/list', '1', '26', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('52', '白板管理', 'whiteboardBrand/list', '1', '27', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('53', '学段管理', 'middle/list', '1', '28', 'menu-icon fa fa-leaf black', '1', '1', '0');
INSERT INTO `sys_menu` VALUES ('54', '大赛联系人管理', 'contestContacts/list', '1', '29', 'menu-icon fa fa-leaf black', '1', '1', '0');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL DEFAULT '',
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('0c1aa39f673247bf840c077a9ab81ec6', '系统管理组', '35166165053470698', '0', '140737622573066', '140737488355336', '11403266', '140737894023178');
INSERT INTO `sys_role` VALUES ('3264c8e83d0248bb9e3ea6195b4c021', '一级管理员', '26440440775440362', '0c1aa39f673247bf840c077a9ab81ec6', '140737626765290', '140737492547562', '140737492547562', '140737895200746');
INSERT INTO `sys_role` VALUES ('823fd4189e9e46359b218a0542c9fcbb', '开发工程师', '34321740123338730', '0c1aa39f673247bf840c077a9ab81ec6', '213907434', '0', '0', '414056450');
INSERT INTO `sys_role` VALUES ('9265e9850036424bbf3f23fb60a78b7a', '开发测试', '809725220354026', 'a378ae9d2f6d43e48805c947e2902b32', '213907434', '', '', '414056450');
INSERT INTO `sys_role` VALUES ('a378ae9d2f6d43e48805c947e2902b32', '测试组', '810412415121386', '0', '406845418', '140737489404424', '140737489404424', '140737895072266');
INSERT INTO `sys_role` VALUES ('b6dad2e43763498798bfe88bac473511', '大赛管理员', '16166604123406338', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(50) NOT NULL DEFAULT '',
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `BIRTH_DATE` varchar(10) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `POSTCODE` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  `PATH` varchar(100) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATE_DATE` varchar(255) DEFAULT NULL,
  `DEPT_ID` varchar(50) DEFAULT NULL,
  `LOGIN_KEY` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('13b4cf8b4c104fb0bc152d1aba71fc21', 'etmrrgl', '577bdf3a59d0972ad918a38b30688440425717cc', '任国良', '0', null, null, '0', '', '18023665985', null, '0', '', '2017-05-13 11:58:25', '', 'c7b83bc42a8e367bbcd1a7790393d00bee6547cc');
INSERT INTO `sys_user` VALUES ('273e25a54c384ae0a510b4afca604f39', 'ZYC', '577bdf3a59d0972ad918a38b30688440425717cc', '周永超', '0', null, null, '0', '465465@qq.com', '13000000000', null, '0', '', '2017-05-12 16:35:38', '', '9907b5ced9699485af2408d8bcac44f62acb2fc5');
INSERT INTO `sys_user` VALUES ('42b4f0d671c142698c6df69614186417', 'etmrzwt', '577bdf3a59d0972ad918a38b30688440425717cc', '赵伟天', '0', null, null, '0', '', '15002115698', null, '0', '', '2017-05-13 11:57:29', 'a6c6695217ba4a4dbfe9f7e9d2c06730', 'a5844b06b65528644d108660a99014a5928103e9');
INSERT INTO `sys_user` VALUES ('54d3cfd8d6dc40bd9621faeb640d7d80', 'etmrylx', '6276f0de7492c26dd1aa6c25b442db66476da481', '姚丽霞', '1', null, null, '0', '1478596235@qq.com', '15200010006', null, '0', '', '2017-04-20 10:17:00', '', '277bb7047633fb845fcbc5f83bef892d5126fe68');
INSERT INTO `sys_user` VALUES ('5dce56aca05343b5a894cd3b089cb21b', 'xinde', '1862dce7e06b63a17f5d9857b6af3c392343a4f4', '手动阀', '0', null, null, '0', '', '15035698656', null, '0', '', '2017-04-26 11:22:13', '', null);
INSERT INTO `sys_user` VALUES ('68b15387e38b4fbba96190f4f66187cf', 'etmrzd', '577bdf3a59d0972ad918a38b30688440425717cc', '张丁', '0', null, null, '0', '', '15658996986', null, '0', '', '2017-05-13 11:57:48', '', '9962f71dc518851e5f7436b3a0d47e94a83260ce');
INSERT INTO `sys_user` VALUES ('69177258a06e4927b4639ab1684c3321', 'admin', 'de41b7fb99201d8334c23c014db35ecd92df81bc', '系统管理员', '1', null, null, '0', 'QQ313596790@main.com', '18788888888', '20160713/8d9c46d2eeef4fff938273b38f8c5339.jpg', null, null, null, 'a6c6695217ba4a4dbfe9f7e9d2c06730', null);
INSERT INTO `sys_user` VALUES ('ac88d702d1d24f40b47f4d41ca1f4d7f', 'etmrlm', '577bdf3a59d0972ad918a38b30688440425717cc', '李明', '0', null, null, '0', '', '15002335658', null, '0', '', '2017-05-13 11:56:17', '', 'b744bf2001d1ef328c1c89b6b8f42b23a00ddba9');
INSERT INTO `sys_user` VALUES ('add6ef1aff2447529f3e1521c4acdf90', 'da', 'ad203b93e66ca3c2c81f4a83a929734cffb55e19', '阿道夫', '0', null, null, '0', '', '15001556956', null, '0', '', '2017-04-26 11:07:54', '', null);
INSERT INTO `sys_user` VALUES ('c7882251cb79492c9d32eb3b199e3645', 'etmryj', '577bdf3a59d0972ad918a38b30688440425717cc', '杨晋', '0', null, null, '0', '', '15023668698', null, '0', '', '2017-05-13 11:59:34', '', '0420649b32b7a7ced5308aaff95f4b3b7fdf66c4');
INSERT INTO `sys_user` VALUES ('d23df27ba3c74d809ace532cc47a33d5', 'etmrxqq', '577bdf3a59d0972ad918a38b30688440425717cc', '席琴琴', '1', null, null, '0', '124578451@qq.com', '15200010008', null, '0', '', '2017-04-20 10:18:48', '', '52b3eb9923faa449b5dc0f562314ad6665fa4497');
INSERT INTO `sys_user` VALUES ('dbff0c265cea4bafb3c2f04d1a832af3', 'etmrwwj', '577bdf3a59d0972ad918a38b30688440425717cc', '翁文杰', '0', null, null, '0', '', '15245859878', null, '0', '', '2017-05-15 10:12:24', '', '19cef86aa58a74cc2c0f98d494c47b20121d0401');
INSERT INTO `sys_user` VALUES ('e133dbf4de53437ebe17a1bc00ca6cea', 'etmrgl', '577bdf3a59d0972ad918a38b30688440425717cc', '高龙', '0', null, null, '0', '', '15023556989', null, '0', '', '2017-05-13 11:56:55', '', 'ac67a6bbf9c855c6730c8b203e1d1bec4ce60d31');
INSERT INTO `sys_user` VALUES ('e84a8b7bf2ba4df6bb4e7b75f7acae73', 'dfasf', '40779207e8893e3e2877bc4cabb7dd6fbf0a05ea', '大师傅', '0', null, null, '0', '', '15023556865', null, '0', '', '2017-04-26 13:46:12', '', null);
INSERT INTO `sys_user` VALUES ('fda2f222d6e248f1a9a0dd699b6cda11', 'etmrzsl', '577bdf3a59d0972ad918a38b30688440425717cc', '张绍良', '0', null, null, '0', '', '15032666986', null, '0', '', '2017-05-13 11:59:06', '', 'e8fbfcf3f1bb762294757b61a17576f0b8fee31d');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `USERID` varchar(100) NOT NULL DEFAULT '',
  `ROLEID` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`USERID`,`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('13b4cf8b4c104fb0bc152d1aba71fc21', '0c1aa39f673247bf840c077a9ab81ec6');
INSERT INTO `sys_user_role` VALUES ('273e25a54c384ae0a510b4afca604f39', '0c1aa39f673247bf840c077a9ab81ec6');
INSERT INTO `sys_user_role` VALUES ('42b4f0d671c142698c6df69614186417', '0c1aa39f673247bf840c077a9ab81ec6');
INSERT INTO `sys_user_role` VALUES ('42b4f0d671c142698c6df69614186417', 'a378ae9d2f6d43e48805c947e2902b32');
INSERT INTO `sys_user_role` VALUES ('54d3cfd8d6dc40bd9621faeb640d7d80', 'b6dad2e43763498798bfe88bac473511');
INSERT INTO `sys_user_role` VALUES ('68b15387e38b4fbba96190f4f66187cf', '0c1aa39f673247bf840c077a9ab81ec6');
INSERT INTO `sys_user_role` VALUES ('ac88d702d1d24f40b47f4d41ca1f4d7f', '0c1aa39f673247bf840c077a9ab81ec6');
INSERT INTO `sys_user_role` VALUES ('ba259df89bb04569957079226bd95a6a', '3264c8e83d0248bb9e3ea6195b4c021');
INSERT INTO `sys_user_role` VALUES ('c7882251cb79492c9d32eb3b199e3645', '0c1aa39f673247bf840c077a9ab81ec6');
INSERT INTO `sys_user_role` VALUES ('d23df27ba3c74d809ace532cc47a33d5', 'b6dad2e43763498798bfe88bac473511');
INSERT INTO `sys_user_role` VALUES ('dbff0c265cea4bafb3c2f04d1a832af3', 'b6dad2e43763498798bfe88bac473511');
INSERT INTO `sys_user_role` VALUES ('e133dbf4de53437ebe17a1bc00ca6cea', '0c1aa39f673247bf840c077a9ab81ec6');
INSERT INTO `sys_user_role` VALUES ('fda2f222d6e248f1a9a0dd699b6cda11', '0c1aa39f673247bf840c077a9ab81ec6');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `school_id` int(10) DEFAULT NULL COMMENT '学校标识',
  `area_id_province` int(10) DEFAULT NULL,
  `area_id_city` int(10) DEFAULT NULL,
  `titles_id` int(10) DEFAULT NULL,
  `age` varchar(8) DEFAULT NULL,
  `experience` int(10) DEFAULT NULL COMMENT '教龄',
  `area_id_district` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '邓丽娟', '1', '100003', '500000', '11', '20170508', '2', '500600');
INSERT INTO `teacher` VALUES ('2', '刘鑫鑫', '111', '230000', '230300', '11', '19790517', '10', '230301');
INSERT INTO `teacher` VALUES ('3', '蒋丽', '112', '210000', '210100', '8', '19821013', '6', '210101');
INSERT INTO `teacher` VALUES ('4', '彭勇', '113', '360000', '360100', '8', '19830813', '5', '360101');
INSERT INTO `teacher` VALUES ('5', '杨阳', '4', '100000', '110000', '11', '20170501', '2', '110600');
INSERT INTO `teacher` VALUES ('6', '王凌燕', '6', '350000', '350900', '11', '20170501', '2', '350981');
INSERT INTO `teacher` VALUES ('7', '李颖', '1', '100003', '500000', '11', '20170501', '2', '500600');
INSERT INTO `teacher` VALUES ('8', '徐国兰', '95', '340000', '340100', '2', '20170501', '2', '340101');
INSERT INTO `teacher` VALUES ('9', '杜玉成', '2', '320000', '320500', '11', '20170501', '2', '320503');
INSERT INTO `teacher` VALUES ('10', '李婧', '299', '100001', '120000', '11', '19880105', '10', '120100');
INSERT INTO `teacher` VALUES ('11', '杨如', '101', '100000', '110000', '2', '20170501', '2', '110600');
INSERT INTO `teacher` VALUES ('12', '毛毛', '10', '100000', '110000', '11', '20170501', '2', '110600');
INSERT INTO `teacher` VALUES ('13', '李脉', '328', '510000', '510800', '11', '19840510', '2', '510801');
INSERT INTO `teacher` VALUES ('14', '王莹莹', '102', '510000', '510100', '2', '20170501', '2', '510101');
INSERT INTO `teacher` VALUES ('15', '徐菊', '5', '370000', '370200', '11', '20170501', '2', '370213');
INSERT INTO `teacher` VALUES ('16', '任晓', '12', '100001', '120000', '11', '20170501', '2', '120100');
INSERT INTO `teacher` VALUES ('17', '王宝娟', '103', '340000', '340100', '6', '20170501', '2', '340123');
INSERT INTO `teacher` VALUES ('18', '丁梦梅', '104', '320000', '320100', '2', '20170501', '2', '320101');
INSERT INTO `teacher` VALUES ('19', '薛宝卫', '15', '100000', '110000', '11', '20170501', '2', '110500');
INSERT INTO `teacher` VALUES ('20', '全秀春', '105', '350000', '350900', '2', '20170501', '2', '350981');
INSERT INTO `teacher` VALUES ('21', '秦旭', '4', '100000', '110000', '2', '20170501', '2', '110600');
INSERT INTO `teacher` VALUES ('22', '邵云', '106', '320000', '320200', '3', '20170501', '2', '320283');
INSERT INTO `teacher` VALUES ('23', '徐世生', '16', '370000', '370200', '11', '20170501', '2', '370286');
INSERT INTO `teacher` VALUES ('24', '张辉', '107', '320000', '320100', '2', '20170501', '2', '320101');
INSERT INTO `teacher` VALUES ('25', '徐彬', '314', '530000', '532800', '7', '19860507', '3', '532822');
INSERT INTO `teacher` VALUES ('26', '李迎新', '8', '340000', '340100', '2', '20170501', '2', '340125');
INSERT INTO `teacher` VALUES ('27', '赵屹', '316', '100002', '310000', '6', '20000510', '5', '310600');
INSERT INTO `teacher` VALUES ('28', '陈碧兰', '108', '350000', '350200', '2', '20170501', '2', '350201');
INSERT INTO `teacher` VALUES ('29', '王兴荣', '325', '370000', '370900', '7', '19980505', '1', '370902');
INSERT INTO `teacher` VALUES ('30', '姚慧', '109', '340000', '340100', '2', '20170501', '2', '340101');
INSERT INTO `teacher` VALUES ('31', '张树杰', '20', '370000', '370500', '11', '20170501', '2', '370521');
INSERT INTO `teacher` VALUES ('32', '邹琴', '110', '510000', '510100', '11', '20170501', '2', '510101');
INSERT INTO `teacher` VALUES ('33', '王星', '115', '100000', '110000', '2', '20170501', '2', '111300');
INSERT INTO `teacher` VALUES ('34', '蒋雅婷', '116', '320000', '320100', '2', '20170501', '2', '320101');
INSERT INTO `teacher` VALUES ('35', '华琳琳', '117', '340000', '340100', '2', '20170501', '2', '340125');
INSERT INTO `teacher` VALUES ('36', '莫芮', '118', '510000', '511600', '2', '20170501', '2', '511622');
INSERT INTO `teacher` VALUES ('37', '叶明歆', '119', '340000', '340700', '2', '20170501', '2', '340701');
INSERT INTO `teacher` VALUES ('38', '陈媛', '120', '320000', '320800', '2', '20170501', '2', '320801');
INSERT INTO `teacher` VALUES ('39', '许冬云', '121', '340000', '340100', '2', '20170501', '2', '340125');
INSERT INTO `teacher` VALUES ('40', '田洪宇', '122', '100001', '120000', '2', '20170501', '2', '121200');
INSERT INTO `teacher` VALUES ('41', '王雅丹', '127', '100000', '110000', '2', '20170501', '2', '110100');
INSERT INTO `teacher` VALUES ('42', '张颖', '129', '350000', '350900', '2', '20170501', '2', '350982');
INSERT INTO `teacher` VALUES ('43', '任丽颖', '132', '510000', '510100', '2', '20170501', '2', '510186');
INSERT INTO `teacher` VALUES ('44', '曾莉珍', '133', '440000', '440300', '3', '20170501', '2', '440301');
INSERT INTO `teacher` VALUES ('45', '孔庆凯', '134', '230000', '230600', '2', '20170501', '2', '230601');
INSERT INTO `teacher` VALUES ('46', '刘智芹', '135', '420000', '420100', '2', '20170501', '2', '420101');
INSERT INTO `teacher` VALUES ('47', '章瑜', '58', '330000', '330700', '3', '20170501', '2', '330701');
INSERT INTO `teacher` VALUES ('48', '郭伯欢', '136', '420000', '420100', '3', '20170501', '2', '420101');
INSERT INTO `teacher` VALUES ('49', '童琳', '137', '510000', '510100', '4', '20170501', '2', '510101');
INSERT INTO `teacher` VALUES ('50', '卢海燕', '29', '100000', '110000', '11', '20170501', '2', '111400');
INSERT INTO `teacher` VALUES ('51', '赵萌', '138', '140000', '140800', '3', '20170501', '2', '140821');
INSERT INTO `teacher` VALUES ('52', '盛霞萍', '142', '100002', '310000', '3', '20170501', '2', '311200');
INSERT INTO `teacher` VALUES ('53', '郭依梅', '145', '510000', '510100', '3', '20170501', '2', '510101');
INSERT INTO `teacher` VALUES ('54', '杨苗', '146', '510000', '510100', '3', '20170501', '2', '510101');
INSERT INTO `teacher` VALUES ('55', '陈金梅', '147', '320000', '320800', '11', '20170501', '2', '320801');
INSERT INTO `teacher` VALUES ('56', '张晴', '148', '100001', '120000', '2', '20170501', '2', '120900');
INSERT INTO `teacher` VALUES ('57', '谷耀东', '324', '210000', '210200', '11', '19700501', '10', '210212');
INSERT INTO `teacher` VALUES ('58', '何昕', '149', '100000', '110000', '2', '20170501', '2', '111500');
INSERT INTO `teacher` VALUES ('59', '康泉', '86', '320000', '320800', '2', '20170501', '2', '320801');
INSERT INTO `teacher` VALUES ('60', '梁璐', '151', '370000', '370200', '2', '20170501', '2', '370286');
INSERT INTO `teacher` VALUES ('61', '方利', '152', '420000', '420100', '2', '20170501', '2', '420119');
INSERT INTO `teacher` VALUES ('62', '刘娟', '153', '370000', '371000', '2', '20170501', '2', '371001');
INSERT INTO `teacher` VALUES ('63', '王文娟', '154', '100002', '310000', '2', '20170501', '2', '311800');
INSERT INTO `teacher` VALUES ('64', '王钰', '155', '340000', '340100', '2', '20170501', '2', '340101');
INSERT INTO `teacher` VALUES ('65', '潘灵君', '156', '450000', '450200', '2', '20170501', '2', '450201');
INSERT INTO `teacher` VALUES ('66', '卢晓坤', '157', '440000', '440600', '2', '20170501', '2', '440604');
INSERT INTO `teacher` VALUES ('67', '柴佳佳', '158', '330000', '330600', '11', '20170501', '2', '330601');
INSERT INTO `teacher` VALUES ('68', '王敏', '159', '440000', '440300', '2', '20170501', '2', '440307');
INSERT INTO `teacher` VALUES ('69', '周馨', '30', '450000', '450200', '2', '20170501', '2', '450201');
INSERT INTO `teacher` VALUES ('70', '程淑芬', '161', '440000', '440300', '2', '20170501', '2', '440301');
INSERT INTO `teacher` VALUES ('71', '章静', '86', '320000', '320800', '11', '20170501', '2', '320801');
INSERT INTO `teacher` VALUES ('72', '李菲菲', '163', '370000', '370200', '2', '20170501', '2', '370201');
INSERT INTO `teacher` VALUES ('73', '王鸣', '164', '340000', '340100', '2', '20170501', '2', '340101');
INSERT INTO `teacher` VALUES ('74', '李小静', '86', '320000', '320800', '2', '20170501', '2', '320801');
INSERT INTO `teacher` VALUES ('75', '沈利锋', '165', '100002', '310000', '2', '20170501', '2', '311200');
INSERT INTO `teacher` VALUES ('76', '莫书婷', '166', '450000', '450200', '2', '20170501', '2', '450201');
INSERT INTO `teacher` VALUES ('77', '龙入云', '167', '450000', '450200', '3', '20170501', '2', '450201');
INSERT INTO `teacher` VALUES ('78', '侯少云', '168', '100000', '110000', '2', '20170501', '2', '110600');
INSERT INTO `teacher` VALUES ('79', '王乐峥', '169', '510000', '510100', '2', '20170501', '2', '510101');
INSERT INTO `teacher` VALUES ('80', '熊攀', '170', '100003', '500000', '2', '20170501', '2', '500600');
INSERT INTO `teacher` VALUES ('81', '李霞', '323', '340000', '340700', '8', '19820426', '3', '340702');
INSERT INTO `teacher` VALUES ('82', '胡莎', '171', '420000', '420100', '2', '20170501', '2', '420101');
INSERT INTO `teacher` VALUES ('83', '郭晶', '113', '360000', '360100', '7', '19840507', '6', '360101');
INSERT INTO `teacher` VALUES ('84', '胡婷婷', '173', '420000', '420100', '2', '20170501', '2', '420104');
INSERT INTO `teacher` VALUES ('85', '李玉兰', '321', '210000', '210800', '4', '19840508', '8', '210882');
INSERT INTO `teacher` VALUES ('86', '袁春鹏', '175', '210000', '210100', '2', '20170501', '2', '210101');
INSERT INTO `teacher` VALUES ('87', '王云霞', '176', '370000', '370200', '2', '20170501', '2', '370213');
INSERT INTO `teacher` VALUES ('88', '刘剑', '320', '450000', '450200', '5', '19820514', '5', '450202');
INSERT INTO `teacher` VALUES ('89', '唐文珺', '177', '100002', '310000', '2', '20170501', '2', '311000');
INSERT INTO `teacher` VALUES ('90', '田荣倩', '178', '100001', '120000', '11', '20170501', '2', '121300');
INSERT INTO `teacher` VALUES ('91', '张慧', '179', '450000', '450200', '2', '20170501', '2', '450201');
INSERT INTO `teacher` VALUES ('92', '刘娇', '180', '320000', '320400', '3', '20170501', '2', '320401');
INSERT INTO `teacher` VALUES ('93', '张静', '181', '100000', '110000', '11', '20170501', '2', '110500');
INSERT INTO `teacher` VALUES ('94', '黄秀婷', '182', '130000', '130200', '2', '20170501', '2', '130201');
INSERT INTO `teacher` VALUES ('95', '石惠临', '129', '350000', '350900', '2', '20170501', '2', '350982');
INSERT INTO `teacher` VALUES ('96', '吴健雄', '319', '340000', '340100', '6', '19820511', '3', '340104');
INSERT INTO `teacher` VALUES ('97', '王凤云', '318', '340000', '340100', '6', '19830618', '2', '340102');
INSERT INTO `teacher` VALUES ('98', '代英红', '184', '420000', '420100', '2', '20170501', '2', '420111');
INSERT INTO `teacher` VALUES ('99', '江涛', '185', '370000', '371000', '2', '20170501', '2', '371002');
INSERT INTO `teacher` VALUES ('100', '孙全鹏', '317', '340000', '340400', '5', '19800515', '12', '340403');
INSERT INTO `teacher` VALUES ('101', '朱晓玲', '186', '100002', '310000', '2', '20170501', '2', '311000');
INSERT INTO `teacher` VALUES ('102', '刘沙沙', '16', '370000', '370200', '3', '20170501', '2', '370213');
INSERT INTO `teacher` VALUES ('103', '黄绢', '188', '320000', '320100', '2', '20170501', '2', '320104');
INSERT INTO `teacher` VALUES ('104', '韦为', '166', '450000', '450200', '2', '20170501', '2', '450204');
INSERT INTO `teacher` VALUES ('105', '陈桢', '190', '350000', '350900', '2', '20170501', '2', '350981');
INSERT INTO `teacher` VALUES ('106', '贾霞磊', '8', '340000', '340100', '11', '20170501', '2', '340111');
INSERT INTO `teacher` VALUES ('107', '林媚', '191', '350000', '350100', '2', '20170501', '2', '350181');
INSERT INTO `teacher` VALUES ('108', '张李英', '9', '320000', '320200', '11', '20170501', '2', '320203');
INSERT INTO `teacher` VALUES ('109', '陈婉婉', '192', '330000', '330100', '2', '20170501', '2', '330101');
INSERT INTO `teacher` VALUES ('110', '梁亦迟', '316', '100002', '310000', '6', '19820525', '2', '310600');
INSERT INTO `teacher` VALUES ('111', '白云', '11', '420000', '420100', '11', '20170501', '2', '420106');
INSERT INTO `teacher` VALUES ('112', '黄梅芳', '193', '450000', '450200', '2', '20170501', '2', '450202');
INSERT INTO `teacher` VALUES ('113', '聂蓓', '13', '420000', '420100', '11', '20170501', '2', '420111');
INSERT INTO `teacher` VALUES ('114', '李雪', '194', '210000', '210200', '2', '20170501', '2', '210211');
INSERT INTO `teacher` VALUES ('115', '毛澄宇', '195', '100002', '310000', '3', '20170501', '2', '311200');
INSERT INTO `teacher` VALUES ('116', '王杰', '196', '100000', '110000', '2', '20170501', '2', '110500');
INSERT INTO `teacher` VALUES ('117', '沈晓茜', '14', '320000', '320500', '11', '20170501', '2', '320508');
INSERT INTO `teacher` VALUES ('118', '陈蕾', '17', '320000', '320100', '11', '20170501', '2', '320111');
INSERT INTO `teacher` VALUES ('119', '何思佳', '18', '430000', '430100', '11', '20170501', '2', '430102');
INSERT INTO `teacher` VALUES ('120', '谢美君', '21', '510000', '510100', '11', '20170501', '2', '510105');
INSERT INTO `teacher` VALUES ('121', '乔华军', '22', '370000', '371000', '11', '20170501', '2', '371003');
INSERT INTO `teacher` VALUES ('122', '尤秀媛', '23', '210000', '210500', '11', '20170501', '2', '210502');
INSERT INTO `teacher` VALUES ('123', '叶东燕', '24', '340000', '340100', '11', '20170501', '2', '340104');
INSERT INTO `teacher` VALUES ('124', '吕静', '25', '420000', '420100', '11', '20170501', '2', '420113');
INSERT INTO `teacher` VALUES ('125', '李诤', '28', '440000', '440100', '11', '20170501', '2', '440104');
INSERT INTO `teacher` VALUES ('126', '朱秋琳', '30', '450000', '450200', '11', '20170501', '2', '450202');
INSERT INTO `teacher` VALUES ('127', '雷春', '31', '420000', '420100', '11', '20170501', '2', '420102');
INSERT INTO `teacher` VALUES ('128', '何恩蒲', '32', '100003', '500000', '11', '20170501', '2', '500600');
INSERT INTO `teacher` VALUES ('129', '宋梅', '197', '320000', '320300', '2', '20170501', '2', '320303');
INSERT INTO `teacher` VALUES ('130', '梅桂花', '198', '100003', '500000', '2', '20170501', '2', '500600');
INSERT INTO `teacher` VALUES ('131', '顾茜', '34', '320000', '320100', '11', '20170501', '2', '320106');
INSERT INTO `teacher` VALUES ('132', '李丹', '199', '420000', '420100', '2', '20170501', '2', '420104');
INSERT INTO `teacher` VALUES ('133', '蔡霞', '35', '100000', '110000', '11', '20170501', '2', '110600');
INSERT INTO `teacher` VALUES ('134', '高寒', '36', '420000', '420100', '11', '20170501', '2', '420106');
INSERT INTO `teacher` VALUES ('135', '张令强', '38', '100001', '120000', '11', '20170501', '2', '120100');
INSERT INTO `teacher` VALUES ('136', '黎发龙', '200', '100002', '310000', '2', '20170501', '2', '311200');
INSERT INTO `teacher` VALUES ('137', '胡蓉', '39', '430000', '430100', '11', '20170501', '2', '430111');
INSERT INTO `teacher` VALUES ('138', '马静月', '40', '510000', '510100', '11', '20170501', '2', '510105');
INSERT INTO `teacher` VALUES ('139', '李琳', '201', '350000', '350100', '2', '20170501', '2', '350101');
INSERT INTO `teacher` VALUES ('140', '郑建华', '112', '210000', '210100', '6', '19820722', '9', '210105');
INSERT INTO `teacher` VALUES ('141', '朱磊', '154', '100002', '310000', '2', '20170501', '2', '311800');
INSERT INTO `teacher` VALUES ('142', '沙文娴', '43', '100002', '310000', '11', '20170501', '2', '310600');
INSERT INTO `teacher` VALUES ('143', '张萌萌', '203', '210000', '210100', '2', '20170501', '2', '210182');
INSERT INTO `teacher` VALUES ('144', '陈爱宁', '204', '350000', '350900', '2', '20170501', '2', '350982');
INSERT INTO `teacher` VALUES ('145', '潘霞', '45', '440000', '440100', '11', '20170501', '2', '440106');
INSERT INTO `teacher` VALUES ('146', '彭雅然', '314', '530000', '532800', '5', '19780516', '16', '532822');
INSERT INTO `teacher` VALUES ('147', '洪小嫱', '205', '350000', '350200', '2', '20170501', '2', '350201');
INSERT INTO `teacher` VALUES ('148', '潘琪', '46', '320000', '320500', '11', '20170501', '2', '320508');
INSERT INTO `teacher` VALUES ('149', '郭雪娇', '206', '210000', '210500', '2', '20170501', '2', '210502');
INSERT INTO `teacher` VALUES ('150', '时序', '313', '340000', '341200', '5', '19830112', '10', '341202');
INSERT INTO `teacher` VALUES ('151', '程华艳', '49', '340000', '340100', '11', '20170501', '2', '340102');
INSERT INTO `teacher` VALUES ('152', '张琳玲', '207', '510000', '510100', '2', '20170501', '2', '510104');
INSERT INTO `teacher` VALUES ('153', '赵永丽', '312', '150000', '150100', '6', '19860822', '8', '150103');
INSERT INTO `teacher` VALUES ('154', '陈喜连', '208', '610000', '610700', '2', '20170501', '2', '610722');
INSERT INTO `teacher` VALUES ('155', '吴艳', '209', '210000', '210100', '2', '20170501', '2', '210124');
INSERT INTO `teacher` VALUES ('156', '章绘利', '67', '340000', '340100', '11', '20170501', '2', '340102');
INSERT INTO `teacher` VALUES ('157', '高晓楠', '311', '210000', '210100', '6', '19850215', '6', '210105');
INSERT INTO `teacher` VALUES ('158', '廖曼瑶', '210', '450000', '450300', '2', '20170501', '2', '450301');
INSERT INTO `teacher` VALUES ('159', '刘晓溪', '68', '210000', '210500', '11', '20170501', '2', '210503');
INSERT INTO `teacher` VALUES ('160', '王解', '211', '340000', '340500', '2', '20170501', '2', '340522');
INSERT INTO `teacher` VALUES ('161', '周嘉欣', '69', '100002', '310000', '11', '20170501', '2', '310600');
INSERT INTO `teacher` VALUES ('162', '吕怿南', '310', '210000', '210500', '6', '19810620', '5', '210504');
INSERT INTO `teacher` VALUES ('163', '祁智', '71', '210000', '210500', '11', '20170501', '2', '210503');
INSERT INTO `teacher` VALUES ('164', '曾俊', '212', '340000', '340100', '2', '20170501', '2', '340102');
INSERT INTO `teacher` VALUES ('165', '郭庆', '309', '340000', '340500', '7', '19840215', '3', '340503');
INSERT INTO `teacher` VALUES ('166', '李强', '213', '340000', '340700', '2', '20170501', '2', '340702');
INSERT INTO `teacher` VALUES ('167', '陈倜', '214', '100001', '120000', '2', '20170501', '2', '120200');
INSERT INTO `teacher` VALUES ('168', '龚玲', '73', '510000', '510100', '11', '20170501', '2', '510104');
INSERT INTO `teacher` VALUES ('169', '曹昌灵', '33', '360000', '360100', '2', '20170501', '2', '360101');
INSERT INTO `teacher` VALUES ('170', '赵开全', '75', '510000', '510100', '11', '20170501', '2', '510108');
INSERT INTO `teacher` VALUES ('171', '徐林林', '216', '320000', '320800', '2', '20170501', '2', '320801');
INSERT INTO `teacher` VALUES ('172', '金然', '308', '100000', '110000', '5', '19820504', '2', '110100');
INSERT INTO `teacher` VALUES ('173', '荆涛', '38', '100001', '120000', '11', '20170501', '2', '120100');
INSERT INTO `teacher` VALUES ('174', '马丽芬', '217', '620000', '620900', '2', '20170501', '2', '620901');
INSERT INTO `teacher` VALUES ('175', '张婧', '81', '320000', '320100', '11', '20170501', '2', '320102');
INSERT INTO `teacher` VALUES ('176', '陈李冬', '82', '100003', '500000', '11', '20170501', '2', '500600');
INSERT INTO `teacher` VALUES ('177', '胡芳', '307', '420000', '420100', '5', '19860514', '3', '420102');
INSERT INTO `teacher` VALUES ('178', '王加俊', '84', '100000', '110000', '11', '20170501', '2', '112800');
INSERT INTO `teacher` VALUES ('179', '钱广荣', '218', '340000', '340500', '2', '20170501', '1', '340501');
INSERT INTO `teacher` VALUES ('180', '张绍俊', '306', '100002', '310000', '7', '19820811', '6', '310600');
INSERT INTO `teacher` VALUES ('181', '谢茂莲', '219', '510000', '511300', '2', '20170501', '2', '511301');
INSERT INTO `teacher` VALUES ('182', '吴鑫云', '220', '130000', '130300', '2', '20170501', '2', '130301');
INSERT INTO `teacher` VALUES ('183', '韩起', '305', '100001', '120000', '6', '19840517', '3', '120100');
INSERT INTO `teacher` VALUES ('185', '韩烁', '89', '100000', '110000', '11', '20170501', '2', '110100');
INSERT INTO `teacher` VALUES ('186', '杨煜', '304', '320000', '320500', '6', '19870513', '2', '320509');
INSERT INTO `teacher` VALUES ('187', '袁玉茹', '225', '340000', '340100', '2', '20170501', '2', '340101');
INSERT INTO `teacher` VALUES ('188', '徐波', '90', '320000', '320100', '11', '20170501', '2', '320106');
INSERT INTO `teacher` VALUES ('189', '王继红', '303', '230000', '230600', '6', '19880518', '2', '230602');
INSERT INTO `teacher` VALUES ('190', '毛嘉斌', '91', '360000', '360100', '11', '20170501', '2', '360122');
INSERT INTO `teacher` VALUES ('191', '纪小燕', '228', '350000', '350200', '2', '20170501', '2', '350201');
INSERT INTO `teacher` VALUES ('192', '卢静静', '92', '320000', '320100', '11', '20170501', '2', '320114');
INSERT INTO `teacher` VALUES ('193', '郭旖旎', '230', '100001', '120000', '2', '20170501', '2', '121300');
INSERT INTO `teacher` VALUES ('194', '孔恬恬', '93', '370000', '370200', '11', '20170501', '2', '370202');
INSERT INTO `teacher` VALUES ('195', '赵志军', '302', '100001', '120000', '7', '19820525', '6', '120900');
INSERT INTO `teacher` VALUES ('196', '陆露', '94', '420000', '420100', '11', '20170501', '2', '420113');
INSERT INTO `teacher` VALUES ('197', '林姗', '234', '350000', '350100', '2', '20170501', '2', '350101');
INSERT INTO `teacher` VALUES ('198', '向仕宏', '96', '100002', '310000', '11', '20170501', '2', '311200');
INSERT INTO `teacher` VALUES ('199', '苏梅为', '301', '450000', '450200', '7', '19891027', '3', '450225');
INSERT INTO `teacher` VALUES ('200', '代瑶', '238', '100001', '120000', '2', '20170501', '2', '120100');
INSERT INTO `teacher` VALUES ('201', '甘李', '97', '510000', '510100', '11', '20170501', '2', '510104');
INSERT INTO `teacher` VALUES ('202', '王蕾蕾', '98', '340000', '340100', '11', '20170501', '2', '340104');
INSERT INTO `teacher` VALUES ('203', '王海鸿', '242', '230000', '230100', '2', '20170501', '2', '230102');
INSERT INTO `teacher` VALUES ('204', '张洪国', '300', '210000', '210800', '6', '19901201', '1', '210804');
INSERT INTO `teacher` VALUES ('205', '何莹莹', '99', '230000', '230600', '11', '20170501', '2', '230602');
INSERT INTO `teacher` VALUES ('206', '刘文博', '245', '100000', '110000', '2', '20170501', '2', '110500');
INSERT INTO `teacher` VALUES ('207', '梁媛', '100', '350000', '350100', '11', '20170501', '2', '350104');
INSERT INTO `teacher` VALUES ('208', '邵如玉', '45', '440000', '440100', '11', '20170501', '2', '440106');
INSERT INTO `teacher` VALUES ('209', '顾峰', '232', '320000', '320500', '11', '20170501', '2', '320509');
INSERT INTO `teacher` VALUES ('210', '赵淑杰', '299', '100001', '120000', '6', '19890805', '1', '120100');
INSERT INTO `teacher` VALUES ('211', '许晓玲', '231', '340000', '340100', '11', '20170501', '2', '340123');
INSERT INTO `teacher` VALUES ('213', '李海娜', '229', '130000', '130200', '11', '20170501', '2', '130223');
INSERT INTO `teacher` VALUES ('214', '赵永兰', '298', '370000', '370700', '6', '19900131', '1', '370783');
INSERT INTO `teacher` VALUES ('215', '王洁欣', '251', '100000', '110000', '2', '20170501', '2', '110900');
INSERT INTO `teacher` VALUES ('216', '刘晓辉', '227', '340000', '340100', '11', '20170501', '2', '340104');
INSERT INTO `teacher` VALUES ('217', '钟艳芳', '252', '360000', '360700', '2', '20170501', '2', '360701');
INSERT INTO `teacher` VALUES ('218', '江卫三', '297', '340000', '340100', '5', '19770802', '12', '340104');
INSERT INTO `teacher` VALUES ('219', '刘佳妮', '223', '210000', '210200', '11', '20170501', '2', '210202');
INSERT INTO `teacher` VALUES ('220', '付凤云', '253', '340000', '340100', '2', '20170501', '2', '340102');
INSERT INTO `teacher` VALUES ('221', '杨洁兰', '172', '440000', '440300', '11', '20170501', '2', '440304');
INSERT INTO `teacher` VALUES ('222', '苗传波', '144', '340000', '340100', '11', '20170501', '2', '340111');
INSERT INTO `teacher` VALUES ('223', '黄平安', '296', '420000', '420900', '6', '19930513', '1', '420901');
INSERT INTO `teacher` VALUES ('224', '涂凤艳', '254', '360000', '360100', '2', '20170501', '2', '360102');
INSERT INTO `teacher` VALUES ('225', '张跃', '143', '100000', '110000', '11', '20170501', '2', '110800');
INSERT INTO `teacher` VALUES ('226', '张兰', '255', '100002', '310000', '2', '20170501', '2', '310600');
INSERT INTO `teacher` VALUES ('227', '刁理白', '141', '100000', '110000', '11', '20170501', '2', '110100');
INSERT INTO `teacher` VALUES ('228', '徐可欣', '256', '320000', '320500', '2', '20170501', '2', '320509');
INSERT INTO `teacher` VALUES ('229', '刘又源', '140', '650000', '652800', '11', '20170501', '2', '652826');
INSERT INTO `teacher` VALUES ('230', '崔玉婷', '257', '340000', '340700', '2', '20170501', '2', '340702');
INSERT INTO `teacher` VALUES ('231', '陈世珩', '131', '350000', '350800', '11', '20170501', '2', '350823');
INSERT INTO `teacher` VALUES ('232', '陈文', '130', '420000', '420100', '11', '20170501', '2', '420104');
INSERT INTO `teacher` VALUES ('233', '方安云', '258', '340000', '340200', '2', '20170501', '2', '340202');
INSERT INTO `teacher` VALUES ('234', '张尊高', '128', '100000', '110000', '11', '20170501', '2', '110800');
INSERT INTO `teacher` VALUES ('235', '唐晨倩', '259', '320000', '320100', '2', '20170501', '2', '320102');
INSERT INTO `teacher` VALUES ('236', '李成荫', '114', '100002', '310000', '11', '20170501', '2', '310600');
INSERT INTO `teacher` VALUES ('237', '项飞', '26', '320000', '320500', '11', '20170501', '2', '320509');
INSERT INTO `teacher` VALUES ('238', '杨三芳', '33', '360000', '360100', '11', '20170501', '2', '360103');
INSERT INTO `teacher` VALUES ('239', '刘兴涛', '260', '210000', '210500', '2', '20170501', '2', '210521');
INSERT INTO `teacher` VALUES ('240', '张文宏', '295', '340000', '340100', '6', '19850507', '2', '340181');
INSERT INTO `teacher` VALUES ('241', '陈言萍', '262', '350000', '350900', '2', '20170501', '2', '350901');
INSERT INTO `teacher` VALUES ('242', '阎文辉', '294', '130000', '130100', '6', '19820113', '3', '130102');
INSERT INTO `teacher` VALUES ('243', '李江辉', '263', '330000', '330700', '2', '20170501', '2', '330783');
INSERT INTO `teacher` VALUES ('244', '丁小梅', '264', '340000', '340600', '2', '20170501', '2', '340601');
INSERT INTO `teacher` VALUES ('245', '张艳红', '37', '410000', '410300', '11', '20170501', '2', '410305');
INSERT INTO `teacher` VALUES ('246', '陈婧', '293', '100002', '310000', '7', '19840508', '3', '310600');
INSERT INTO `teacher` VALUES ('247', '冰洁', '19', '510000', '510100', '11', '20170501', '2', '510133');
INSERT INTO `teacher` VALUES ('248', '李震霞', '265', '130000', '130200', '2', '20170501', '2', '130201');
INSERT INTO `teacher` VALUES ('249', '罗艳梅', '27', '510000', '510100', '11', '20170501', '2', '510133');
INSERT INTO `teacher` VALUES ('250', '王克瑶', '292', '340000', '340400', '6', '19850509', '3', '340403');
INSERT INTO `teacher` VALUES ('251', '朱东站', '266', '100000', '110000', '2', '20170501', '2', '110800');
INSERT INTO `teacher` VALUES ('252', '潘尚强', '41', '340000', '340200', '11', '20170501', '2', '340208');
INSERT INTO `teacher` VALUES ('253', '王朋飞', '267', '340000', '340100', '2', '20170501', '2', '340102');
INSERT INTO `teacher` VALUES ('254', '王赛', '42', '440000', '440300', '11', '20170501', '2', '440303');
INSERT INTO `teacher` VALUES ('255', '赵波', '268', '510000', '510100', '2', '20170501', '2', '510107');
INSERT INTO `teacher` VALUES ('256', '益子惠', '44', '320000', '320800', '11', '20170501', '2', '320802');
INSERT INTO `teacher` VALUES ('257', '许雅芝', '47', '610000', '610700', '11', '20170501', '2', '610702');
INSERT INTO `teacher` VALUES ('258', '张越', '269', '100003', '500000', '2', '20170501', '2', '500600');
INSERT INTO `teacher` VALUES ('259', '刘霞', '51', '620000', '620900', '11', '20170501', '2', '620902');
INSERT INTO `teacher` VALUES ('260', '舒乐', '33', '360000', '360100', '11', '20170501', '2', '360103');
INSERT INTO `teacher` VALUES ('261', '高建', '270', '320000', '320800', '2', '20170513', '2', '320802');
INSERT INTO `teacher` VALUES ('262', '王寒冰', '72', '350000', '350200', '11', '20170501', '2', '350212');
INSERT INTO `teacher` VALUES ('263', '王一迪', '76', '230000', '230100', '11', '20170501', '2', '230108');
INSERT INTO `teacher` VALUES ('264', '吴颂欣', '45', '440000', '440100', '2', '20170501', '2', '440106');
INSERT INTO `teacher` VALUES ('265', '陈文婷', '85', '350000', '350100', '11', '20170501', '2', '350104');
INSERT INTO `teacher` VALUES ('266', '蓝晓明', '272', '370000', '370200', '2', '20170501', '2', '370213');
INSERT INTO `teacher` VALUES ('267', '赵新颖', '86', '320000', '320800', '11', '20170501', '2', '320802');
INSERT INTO `teacher` VALUES ('268', '张程远', '273', '100000', '110000', '2', '20170501', '2', '112800');
INSERT INTO `teacher` VALUES ('269', '梁贤慧', '88', '440000', '442000', '11', '20170501', '2', '441883');
INSERT INTO `teacher` VALUES ('270', '姚文利', '226', '410000', '410800', '11', '20170501', '2', '410811');
INSERT INTO `teacher` VALUES ('271', '王彩琴', '224', '610000', '610300', '11', '20170501', '2', '610302');
INSERT INTO `teacher` VALUES ('272', '侯洁', '50', '450000', '450300', '2', '20170501', '2', '450301');
INSERT INTO `teacher` VALUES ('273', '邢广艳', '53', '100001', '120000', '2', '20170501', '2', '122300');
INSERT INTO `teacher` VALUES ('274', '薛江屏', '54', '510000', '510100', '2', '20170501', '2', '510105');
INSERT INTO `teacher` VALUES ('275', '徐海', '55', '340000', '340400', '2', '20170501', '2', '340403');
INSERT INTO `teacher` VALUES ('276', '顾维维', '33', '360000', '360100', '2', '20170501', '2', '360103');
INSERT INTO `teacher` VALUES ('277', '黄娇娇', '291', '340000', '340100', '6', '19860508', '3', '340104');
INSERT INTO `teacher` VALUES ('278', '刘瑜', '57', '510000', '510100', '2', '20170501', '2', '510107');
INSERT INTO `teacher` VALUES ('279', '王庆', '58', '330000', '330700', '2', '20170501', '2', '330701');
INSERT INTO `teacher` VALUES ('280', '李洁', '290', '340000', '341800', '5', '19840506', '3', '341822');
INSERT INTO `teacher` VALUES ('281', '丁建国', '59', '330000', '330600', '2', '20170501', '2', '330621');
INSERT INTO `teacher` VALUES ('282', '刘秋媛', '60', '100000', '110000', '2', '20170501', '2', '112800');
INSERT INTO `teacher` VALUES ('283', '郭浩', '289', '210000', '210500', '8', '19870514', '4', '210503');
INSERT INTO `teacher` VALUES ('285', '朱伟娣', '288', '330000', '330200', '8', '19840509', '3', '330212');
INSERT INTO `teacher` VALUES ('286', '陈程', '62', '100002', '310000', '2', '20170501', '2', '311800');
INSERT INTO `teacher` VALUES ('287', '王冬雪', '63', '230000', '230600', '2', '20170501', '2', '230602');
INSERT INTO `teacher` VALUES ('288', '吴文颖', '64', '450000', '450200', '6', '20170501', '2', '450202');
INSERT INTO `teacher` VALUES ('289', '刘红', '66', '350000', '350900', '6', '20170501', '2', '350902');
INSERT INTO `teacher` VALUES ('290', '赵雅静', '287', '130000', '131000', '7', '20170510', '3', '131082');
INSERT INTO `teacher` VALUES ('291', '赵莉英', '70', '330000', '330500', '11', '20170501', '2', '330501');
INSERT INTO `teacher` VALUES ('292', '蔡晓燕', '74', '100000', '110000', '6', '20170501', '2', '111300');
INSERT INTO `teacher` VALUES ('293', '路萍', '212', '340000', '340100', '7', '19820426', '2', '340102');
INSERT INTO `teacher` VALUES ('294', '关莹', '77', '210000', '210100', '8', '20170501', '2', '210112');
INSERT INTO `teacher` VALUES ('295', '袁晶', '80', '100002', '310000', '2', '20170502', '2', '311200');
INSERT INTO `teacher` VALUES ('296', '丁昭', '285', '340000', '340100', '8', '19830520', '3', '340104');
INSERT INTO `teacher` VALUES ('297', '张馨元', '87', '370000', '371000', '6', '20170501', '2', '371002');
INSERT INTO `teacher` VALUES ('298', '颜燕琳', '100', '350000', '350100', '8', '19820513', '3', '350104');
INSERT INTO `teacher` VALUES ('299', '程俊英', '283', '440000', '440300', '6', '19820507', '3', '440307');
INSERT INTO `teacher` VALUES ('300', '白茹雪', '282', '100001', '120000', '7', '19850525', '2', '121300');
INSERT INTO `teacher` VALUES ('301', '何瑜', '274', '510000', '510100', '7', '20170501', '2', '510104');
INSERT INTO `teacher` VALUES ('302', '符柏涛', '281', '100001', '120000', '8', '19850508', '6', '120600');
INSERT INTO `teacher` VALUES ('303', '汪华', '275', '100002', '310000', '6', '20170501', '2', '311500');
INSERT INTO `teacher` VALUES ('304', '曹莉莉', '276', '320000', '321000', '11', '20170501', '2', '321002');
INSERT INTO `teacher` VALUES ('305', '彭湖英', '280', '450000', '450200', '8', '19830511', '3', '450204');
INSERT INTO `teacher` VALUES ('306', '李群辉', '277', '440000', '441900', '6', '20170501', '2', '441803');
INSERT INTO `teacher` VALUES ('307', '洪伟', '279', '340000', '340100', '7', '19810508', '6', '340104');
INSERT INTO `teacher` VALUES ('308', '郭豫英', '278', '100000', '110000', '6', '20170501', '2', '110100');
INSERT INTO `teacher` VALUES ('311', '枣庄市实', '61', '370000', '370400', '7', '19700514', '6', '370401');
INSERT INTO `teacher` VALUES ('312', '王敏', '61', '370000', '370400', '7', '19830513', '6', '370403');

-- ----------------------------
-- Table structure for `titles`
-- ----------------------------
DROP TABLE IF EXISTS `titles`;
CREATE TABLE `titles` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of titles
-- ----------------------------
INSERT INTO `titles` VALUES ('1', '小学高级教师');
INSERT INTO `titles` VALUES ('2', '小学一级教师');
INSERT INTO `titles` VALUES ('3', '小学二级教师');
INSERT INTO `titles` VALUES ('4', '小学三级教师');
INSERT INTO `titles` VALUES ('5', '中学高级教师');
INSERT INTO `titles` VALUES ('6', '中学一级教师');
INSERT INTO `titles` VALUES ('7', '中学二级教师');
INSERT INTO `titles` VALUES ('8', '中学三级教师');
INSERT INTO `titles` VALUES ('9', '助理讲师');
INSERT INTO `titles` VALUES ('10', '讲师');
INSERT INTO `titles` VALUES ('11', '高级讲师');

-- ----------------------------
-- Table structure for `whiteboard_brand`
-- ----------------------------
DROP TABLE IF EXISTS `whiteboard_brand`;
CREATE TABLE `whiteboard_brand` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIqueName` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of whiteboard_brand
-- ----------------------------
INSERT INTO `whiteboard_brand` VALUES ('6', '4D书城');
INSERT INTO `whiteboard_brand` VALUES ('7', 'P3D');
INSERT INTO `whiteboard_brand` VALUES ('3', 'SMART');
INSERT INTO `whiteboard_brand` VALUES ('15', 'SMART/网奕');
INSERT INTO `whiteboard_brand` VALUES ('38', 'Zspace');
INSERT INTO `whiteboard_brand` VALUES ('5', '东方中原');
INSERT INTO `whiteboard_brand` VALUES ('20', '优学派');
INSERT INTO `whiteboard_brand` VALUES ('21', '天仕博/科大讯飞');
INSERT INTO `whiteboard_brand` VALUES ('9', '天闻数媒');
INSERT INTO `whiteboard_brand` VALUES ('29', '威科姆');
INSERT INTO `whiteboard_brand` VALUES ('41', '寸光阴');
INSERT INTO `whiteboard_brand` VALUES ('11', '巨龙/锐捷');
INSERT INTO `whiteboard_brand` VALUES ('4', '希沃');
INSERT INTO `whiteboard_brand` VALUES ('27', '希沃/优学派');
INSERT INTO `whiteboard_brand` VALUES ('37', '希沃/天闻数媒');
INSERT INTO `whiteboard_brand` VALUES ('19', '希沃/科大讯飞');
INSERT INTO `whiteboard_brand` VALUES ('40', '希沃/网奕');
INSERT INTO `whiteboard_brand` VALUES ('12', '希沃/锐捷');
INSERT INTO `whiteboard_brand` VALUES ('2', '普罗米休斯');
INSERT INTO `whiteboard_brand` VALUES ('22', '科大讯飞');
INSERT INTO `whiteboard_brand` VALUES ('34', '金视');
INSERT INTO `whiteboard_brand` VALUES ('35', '锐捷云课堂');
INSERT INTO `whiteboard_brand` VALUES ('10', '锐捷计算机教室');
INSERT INTO `whiteboard_brand` VALUES ('42', '锐达');
INSERT INTO `whiteboard_brand` VALUES ('1', '鸿合');
INSERT INTO `whiteboard_brand` VALUES ('32', '鸿合/东方闻道');
INSERT INTO `whiteboard_brand` VALUES ('44', '鸿合/天闻数媒');
INSERT INTO `whiteboard_brand` VALUES ('13', '鸿合/锐捷');
INSERT INTO `whiteboard_brand` VALUES ('8', '黑晶/4D书城');
