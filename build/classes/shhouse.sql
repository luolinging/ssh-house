/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : shhouse
Target Host     : localhost:3306
Target Database : shhouse
Date: 2017-11-07 09:58:45
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for buyinfo
-- ----------------------------
DROP TABLE IF EXISTS `buyinfo`;
CREATE TABLE `buyinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tcontent` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `linkmen` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buyinfo
-- ----------------------------
INSERT INTO `buyinfo` VALUES ('1', '123', '求购一套二室或三室', '光谷中心，价格在一千以下', '02711111111', '王先生', '2015-03-02 17:16:14');
INSERT INTO `buyinfo` VALUES ('2', '123', '南京河西莱蒙水榭春天首推290套精装', '南京河西莱蒙水榭春天首推290套精装', '1321111', '王先生', '2015-03-02 17:16:14');
INSERT INTO `buyinfo` VALUES ('3', '123', '东湖居四房热卖中', '东湖居四房热卖中', '13221211', '王先生', '2015-03-02 17:16:14');
INSERT INTO `buyinfo` VALUES ('4', '123', '狮城名居二房热卖中', '狮城名居二房热卖中', '159812323333', '王先生', '2015-03-02 17:16:14');
INSERT INTO `buyinfo` VALUES ('5', '123', '阳光城三期三房低价出售', '阳光城三期三房低价出售', '1321222211', '王先生', '2015-03-02 17:16:14');

-- ----------------------------
-- Table structure for idatadic
-- ----------------------------
DROP TABLE IF EXISTS `idatadic`;
CREATE TABLE `idatadic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itype` varchar(255) DEFAULT NULL,
  `icontent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idatadic
-- ----------------------------
INSERT INTO `idatadic` VALUES ('2', '楼房地区', '江岸');
INSERT INTO `idatadic` VALUES ('3', '楼房地区', '江汉');
INSERT INTO `idatadic` VALUES ('4', '楼房地区', '武昌');
INSERT INTO `idatadic` VALUES ('5', '楼房地区', '硚口');
INSERT INTO `idatadic` VALUES ('6', '楼房地区', '汉阳');
INSERT INTO `idatadic` VALUES ('7', '楼房地区', '洪山');
INSERT INTO `idatadic` VALUES ('8', '楼房地区', '青山');
INSERT INTO `idatadic` VALUES ('9', '楼房地区', '东西湖');
INSERT INTO `idatadic` VALUES ('10', '楼房地区', '其他');
INSERT INTO `idatadic` VALUES ('11', '楼房类型', '公寓');
INSERT INTO `idatadic` VALUES ('12', '楼房类型', '住宅');
INSERT INTO `idatadic` VALUES ('13', '楼房类型', '别墅');
INSERT INTO `idatadic` VALUES ('14', '楼房类型', '商铺');
INSERT INTO `idatadic` VALUES ('15', '楼房类型', '写字楼');
INSERT INTO `idatadic` VALUES ('16', '楼房面积', '30以下');
INSERT INTO `idatadic` VALUES ('17', '楼房面积', '30-50');
INSERT INTO `idatadic` VALUES ('18', '楼房面积', '50-80');
INSERT INTO `idatadic` VALUES ('19', '楼房面积', '80-100');
INSERT INTO `idatadic` VALUES ('20', '楼房面积', '100-150');
INSERT INTO `idatadic` VALUES ('21', '楼房面积', '150以上');
INSERT INTO `idatadic` VALUES ('22', '楼房房型', '一室');
INSERT INTO `idatadic` VALUES ('23', '楼房房型', '二室');
INSERT INTO `idatadic` VALUES ('24', '楼房房型', '三室');
INSERT INTO `idatadic` VALUES ('25', '楼房房型', '四室');
INSERT INTO `idatadic` VALUES ('26', '楼房房型', '五室');
INSERT INTO `idatadic` VALUES ('27', '楼房房型', '五室以上');
INSERT INTO `idatadic` VALUES ('28', '楼房价格', '10000以下');
INSERT INTO `idatadic` VALUES ('29', '楼房价格', '10000—15000');
INSERT INTO `idatadic` VALUES ('30', '楼房价格', '15000—20000');
INSERT INTO `idatadic` VALUES ('31', '楼房价格', '20000之上');

-- ----------------------------
-- Table structure for lyb
-- ----------------------------
DROP TABLE IF EXISTS `lyb`;
CREATE TABLE `lyb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `mcontent` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `recontent` varchar(255) DEFAULT NULL,
  `resavetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lyb
-- ----------------------------
INSERT INTO `lyb` VALUES ('2', '123', 'dasdasd', '2015-03-30 11:20:38', '', '');
INSERT INTO `lyb` VALUES ('3', '123', 'sdfsdfsdf', '2015-03-30 11:20:38', '说得不错', '2015-03-30 11:20:38');

-- ----------------------------
-- Table structure for mixinfo
-- ----------------------------
DROP TABLE IF EXISTS `mixinfo`;
CREATE TABLE `mixinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `content` text,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `infob` varchar(255) DEFAULT NULL,
  `infotype` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mixinfo
-- ----------------------------
INSERT INTO `mixinfo` VALUES ('1', null, null, '<p>&nbsp;&nbsp;&nbsp;&nbsp;上海搜房数据监控中心分析师张银萍认为，&ldquo;五一&rdquo;假期难觅大幅优惠，一方面是因为&ldquo;新国五条&rdquo;细则落地一个月，购房者已不像3月份时&ldquo;抢时交易&rdquo;，而是适当放缓了购房计划；另一方面，由于3月份时二手房交易量剧增，目前二手房市场房源供应紧缺、成交回落明显，开发商也想观望一下后市，再作打算。<br />\r\n<br />\r\n　　据汉宇地产市场研究部监测，&ldquo;国五条&rdquo;上海细则3月底落地后，4月份上海新房表现为先抑后扬。月初，开发商推盘意愿较低，随后缓慢释放，最后两周供应量明显回升。4月份截至27日，全市商品住宅的成交面积81.40万平方米，与3月份150万平方米的市场高位相比，环比下降超过40%。不过这一成交量与去年相比，仍处于正常区间。<br />\r\n<br />\r\n&nbsp;</p>', null, null, null, null, '网站简介', null);
INSERT INTO `mixinfo` VALUES ('2', null, null, '<p><strong>北京市朝阳区成寿寺路威仪路5号<br />\r\n</strong><span style=\"color: #000000\">　　</span><strong><span style=\"color: #000000\">北京市内公交线路：</span><br />\r\n</strong><span style=\"color: #000000\">　　乘坐公交车826、927区间、927、25、655、723、运通202、654、680、685到郭家村站下车，往南50米路西。自驾车路线：南四环肖村桥往北（成寿寺路）800米路西或南三环方庄桥往南（成寿寺路）到上海大众4S店（大众川页）南边路口50米。</span><br />\r\n<span style=\"color: #000000\">　　</span><strong><span style=\"color: #000000\">北京站乘车路线：</span><br />\r\n</strong><span style=\"color: #000000\">　　步行约360米，到达北京站东站乘坐25路，经过16站，到达郭家村站或乘坐地铁2号线，经过1站，到达崇文门站乘坐723路，经过14站，到达郭家村站。</span><br />\r\n&nbsp;</p>', null, null, null, null, '联系我们', null);
INSERT INTO `mixinfo` VALUES ('3', '广州五月近半新盘有优惠', '', '<div id=\"newxq_B01_05\">\r\n<div id=\"news_body\" class=\"xsfsxqzw\">\r\n<p>搜房网数据监控中心统计，截止至2013年4月27日，广州在售项目（包括洋房和别墅）一共有327个，5月推出优惠的项目有144个，优惠占比为45.28%，优惠楼盘个数比4月份减少19个。其中，洋房优惠项目有126个，占在售洋房项目45.00%；别墅优惠项目18个，在售别墅项目47.36%。虽然5月优惠楼盘数量与4月相差不大，但五一小黄金周的优惠力度还是相当可观的，众多大集团旗下楼盘均有优惠。</p>\r\n<p>另据搜房网数据监控中心统计，广州5月份预计推新优惠数量多达26个，比4月份增加12个。而新增优惠楼盘基本都是市区的，天河、荔湾、白云、越秀、海珠均有推新。而全市楼盘打折占比最高的前三甲区域依次为花都、番禺、黄埔。其中，花都有41个楼盘打折；番禺有31个，与4月份相比减少7个，但优惠折扣力度加大。</p>\r\n</div>\r\n</div>\r\n<!--20091230翻页 begin-->', '', '', '', '', '公告', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('4', '“直考驾照”能否打破驾校垄断', '201304152200500011.jpg', '<p>　公安部交管局的回应显然包含两层意思：其一，考驾照需要经过培训，但接受培训未必非得上驾校；其二，虽然可以不上驾校，但驾培必须使用教练车，并在教练员指导下进行。这两层意思都有法律依据，交管局的回应其实是对既有规定的澄清和重申。</p>\r\n<p>　　先看第二层意思。可能很多人对此不太满意，因为，有些人希望通过自学，也就是私下跟老司机学习驾驶，然后直接申考驾照，省下一笔培训费。这种想法看上去不错，实则很不可取。驾驶员培训是人命关天的事情，一个不会开车的人在马路上练习驾驶，对自己、对路人都是相当危险的，必须有专业教练随车指导，而且必须使用教练车。今年2月宁波市就发生过这样的惨剧：一名父亲教女儿学开车，女儿误把油门当刹车，车子失控冲入路边鱼塘，导致坐在后座的两个孩子遇难。可见，为了保证安全，学习驾驶必须使用教练车并在教练员指导下进行，这样规定是非常必要的。</p>', '阿呆', '科目一', '', '', '学习内容', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('5', '能正常上班，这样对于改善心理状态也大有益处。', '201204221812590005.jpg', '<p>妇体内已经形成了适应胎儿生长的新的平衡，孕吐等不适应反应也逐渐消失，孕妇的情绪也变得相对稳定。所以，孕中期心理安定，其保健的重点应在于通过生活、工作和休息的适当调整，保证良好的心理状态。</p>\r\n<p>　<strong>　一、 避免心理上过于放松</strong></p>\r\n<p>　　身体状况的安定，可能会导致精神上的松懈，孕妇会大舒一口气。但是，孕中期并不一定就平安事。如由于怀孕造成各个系统的负担，可能加重原有的、、等病情;孕中期也可能会出现各种病理状况，如和等，放松对身体状况的注意，很可能会导致不良后果。所以，应定期到接受检查。</p>\r\n<p>　<strong>　二、 减轻对</strong><strong>的</strong></p>\r\n<p>　　虽然中期距分娩时间尚有一段距离，但毕竟使孕妇感受到一种压力，有些孕妇会从这时开始感到惶恐不安。这是因为她听信了分娩如何痛苦的传言，或受到影视伤口过分渲染分娩场面的原因。其实，分娩痛苦是不可能的，但过分恐惧并不是好办法，孕妇应学习一些分娩的知识，对分娩是怀孕必然结局有所了解。另外，如果孕妇和家人一起为未出世的孩子准备一些必需品，也许能使孕妇心情好转。这样做往往可以使孕妇从对分娩的恐惧变为急切的盼望。</p>\r\n<p>　　<strong>三、 过分依赖</strong></p>\r\n<p>　　毫疑问，孕中期妇女适当做一些工作，并参加一些平缓的运动没有危害。但有些孕妇因体形显而不愿活动，每天不干任何事情，凡事都由丈夫包办，以为这样才会对胎儿有利。可这样做却易引起心理上的郁闷、压抑、孤独，这对胎儿是不利的。医学界认为，孕期适当的活动可以增强孕妇的肌肉力量，对分娩有一定帮助。所以，孕妇可以从事家务劳动，如果没有异常情况，孕中期仍能正常上班，这样对于改善心理状态也大有益处。</p>', '阿呆', '新浪网', '', '', '治疗方案', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('6', '京版国五条落地满月 楼市降量不降价', '201305021041160005.jpg', '<p>&emsp;对于市场成交量的腰斩，链家地产市场研究部张旭认为，主要是受到了供应急剧下滑的影响。她进一步解释道，受新政影响4月商品住宅供应一反常态，出现大幅下滑。供应量达到2011年限购同期的最低值。一方面，是受价格管制的影响，部分楼盘无法按计划入市。另一方面，当前房企的涨价意愿仍然较强，存在博弈心态。短期可能会坚守价格保持观望，但在资金和销售进度的压力下，也会调整价格逐步入市。随着传统销售旺季的到来，预计5月上旬市场供应或会出现小幅增长，但较难出现集中释放，低量供应依旧持续。</p>\r\n<p>&emsp;&emsp;北京商报记者从北京市住建委网站获悉，4月新增商品住宅期房项目13个，仅4月25日-27日三天就集中供应5个项目，占到全月供应的一半。截至4月27日，总供应量3119套，较3月全月下降21.4%，同比去年同期下降26.3%。4月新增项目中除了别墅项目红杉溪谷嘉园、龙景湾与高端大户型项目望京<a class=\"akey\" target=\"_blank\" href=\"http://data.house.sina.com.cn/bj3794/\">金茂府</a> (<a class=\"akey\" target=\"_blank\" href=\"http://bj.bbs.house.sina.com.cn/bbs/forum/forumdisplay/?fid=1408680553631305\">论坛</a> <a class=\"akey\" target=\"_blank\" href=\"http://data.house.sina.com.cn/bj3794/shequ/0_1/\">相册</a> <a class=\"akey\" target=\"_blank\" href=\"http://data.house.sina.com.cn/bj3794/huxing/0_1/\">户型</a> <a class=\"akey\" target=\"_blank\" href=\"http://data.house.sina.com.cn/bj3794/yangban/0_1/\">样板间</a> <a class=\"akey\" target=\"_blank\" href=\"http://data.house.sina.com.cn/bj3794/pinglun\">点评</a> <a class=\"akey\" target=\"_blank\" href=\"http://map.house.sina.com.cn/bj/index.php?type=h&amp;hid=3794&amp;keyword=金茂府\">地图搜索</a>)外，大部分项目价位集中在2万元以下的刚需楼盘。截至目前，2013年新增商品住宅期房项目34个，总供应9737套，比去年同期下降17.6%。</p>', '小张', '利好信息', '', '', '新闻信息', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('7', '深圳房博会内地楼盘折扣少 近200个海外楼盘来抢客', '201305021040350004.jpg', '<p>尽管到场开发商、参展项目少了，但前来推介的城市比去年有所增多。土地展作为房博会保留曲目，今年已经是第8届了。</p>\r\n<p>对比今年、去年展位分布图发现，来深推荐土地的城市比去年增多。除合肥、海口、咸宁、天津、重庆等地外，还有汕头、青岛、威海等新城市带着土地来推荐。主办方介绍，今年超过30个城市的国土、招商部门来深推介，是迄今规模最大的一届，仅5月1日举办的汕头、天津两地推介会上，便带来420万平方米的土地。</p>', '小张', '楼盘活动', '', '', '新闻信息', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('8', '五一楼市蛰伏：成交量低迷 房价未明显下跌', '201305021039410002.jpg', '<p style=\"text-indent: 2em\">腾讯财经了解到，今年的五一楼市，各地随着新政松紧程度不一，呈现出了截然不同的境况。北京市场上，新盘入市积极程度锐减，观望情绪浓烈；上海，五一假日楼市展人气相对火爆，但房企也意在探路；广州，中等价位楼盘成为五一期间的主角；长沙、西安等二线城市则多打出促销牌，去库存意愿强烈。</p>\r\n<p style=\"text-indent: 2em\">链家地产分析师张旭对腾讯财经表示，新政对于新房市场的影响，主要是作用于房企，抑制需求的作用并不大。传统旺季将至，上半年能否出现成交小高峰，也主要取决于未来的市场供应。在五一期间，新房供应量也已成为各地楼市活跃度的核心指标。但从过去三天能捕捉到的信号来看，楼市的下一次旺销在短期内并不会到来。</p>', '阿呆', '优惠政策', '', '', '新闻信息', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('9', '楼市五月，硝烟弥漫', '201305021037540001.jpg', '<p>刚刚过去的五一假期，杭州楼市成交量还算有些热度。根据透明售房网成交数据，主城区4月29日成交商品房124套，4月30日成交62套，5月1日成交26套，总共212套，不及去年五一假期441套成交量的一半。</p>\r\n<p>4月开盘潮刚过，又要迎来传统中的红5月。为了借力即将登场的十三届人居展（5月17-20日），本月预计房源又将扎堆上市，据初步统计，5月大约50个楼盘会推出新房源，其中包括大家之江悦、顺发江南丽锦、龙湖春江彼岸、贝利西溪望府、探梅里臻藏版、庆春御府等首次推出房源的新盘。而这50多个有所动作的楼盘大部分集中在余杭、桥西、下沙、萧山等板块。</p>', '阿呆', '优惠政策', '', '', '新闻信息', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('10', '妇的肌肉力量，对分娩有一定帮助。所以', '201204221847310010.jpg', '<p>妇体内已经形成了适应胎儿生长的新的平衡，孕吐等不适应反应也逐渐消失，孕妇的情绪也变得相对稳定。所以，孕中期心理安定，其保健的重点应在于通过生活、工作和休息的适当调整，保证良好的心理状态。</p>\r\n<p>　<strong>　一、 避免心理上过于放松</strong></p>\r\n<p>　　身体状况的安定，可能会导致精神上的松懈，孕妇会大舒一口气。但是，孕中期并不一定就平安事。如由于怀孕造成各个系统的负担，可能加重原有的、、等病情;孕中期也可能会出现各种病理状况，如和等，放松对身体状况的注意，很可能会导致不良后果。所以，应定期到接受检查。</p>\r\n<p>　<strong>　二、 减轻对</strong><strong>的</strong></p>\r\n<p>　　虽然中期距分娩时间尚有一段距离，但毕竟使孕妇感受到一种压力，有些孕妇会从这时开始感到惶恐不安。这是因为她听信了分娩如何痛苦的传言，或受到影视伤口过分渲染分娩场面的原因。其实，分娩痛苦是不可能的，但过分恐惧并不是好办法，孕妇应学习一些分娩的知识，对分娩是怀孕必然结局有所了解。另外，如果孕妇和家人一起为未出世的孩子准备一些必需品，也许能使孕妇心情好转。这样做往往可以使孕妇从对分娩的恐惧变为急切的盼望。</p>\r\n<p>　　<strong>三、 过分依赖</strong></p>\r\n<p>　　毫疑问，孕中期妇女适当做一些工作，并参加一些平缓的运动没有危害。但有些孕妇因体形显而不愿活动，每天不干任何事情，凡事都由丈夫包办，以为这样才会对胎儿有利。可这样做却易引起心理上的郁闷、压抑、孤独，这对胎儿是不利的。医学界认为，孕期适当的活动可以增强孕妇的肌肉力量，对分娩有一定帮助。所以，孕妇可以从事家务劳动，如果没有异常情况，孕中期仍能正常上班，这样对于改善心理状态也大有益处。</p>', '阿呆', '新浪网', '', '', '治疗方案', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('11', '过分渲染分娩场面的原因。其实，分娩痛苦是不可能的', '201204221847580011.jpg', '<p>妇体内已经形成了适应胎儿生长的新的平衡，孕吐等不适应反应也逐渐消失，孕妇的情绪也变得相对稳定。所以，孕中期心理安定，其保健的重点应在于通过生活、工作和休息的适当调整，保证良好的心理状态。</p>\r\n<p>　<strong>　一、 避免心理上过于放松</strong></p>\r\n<p>　　身体状况的安定，可能会导致精神上的松懈，孕妇会大舒一口气。但是，孕中期并不一定就平安事。如由于怀孕造成各个系统的负担，可能加重原有的、、等病情;孕中期也可能会出现各种病理状况，如和等，放松对身体状况的注意，很可能会导致不良后果。所以，应定期到接受检查。</p>\r\n<p>　<strong>　二、 减轻对</strong><strong>的</strong></p>\r\n<p>　　虽然中期距分娩时间尚有一段距离，但毕竟使孕妇感受到一种压力，有些孕妇会从这时开始感到惶恐不安。这是因为她听信了分娩如何痛苦的传言，或受到影视伤口过分渲染分娩场面的原因。其实，分娩痛苦是不可能的，但过分恐惧并不是好办法，孕妇应学习一些分娩的知识，对分娩是怀孕必然结局有所了解。另外，如果孕妇和家人一起为未出世的孩子准备一些必需品，也许能使孕妇心情好转。这样做往往可以使孕妇从对分娩的恐惧变为急切的盼望。</p>\r\n<p>　　<strong>三、 过分依赖</strong></p>\r\n<p>　　毫疑问，孕中期妇女适当做一些工作，并参加一些平缓的运动没有危害。但有些孕妇因体形显而不愿活动，每天不干任何事情，凡事都由丈夫包办，以为这样才会对胎儿有利。可这样做却易引起心理上的郁闷、压抑、孤独，这对胎儿是不利的。医学界认为，孕期适当的活动可以增强孕妇的肌肉力量，对分娩有一定帮助。所以，孕妇可以从事家务劳动，如果没有异常情况，孕中期仍能正常上班，这样对于改善心理状态也大有益处。</p>', '阿呆', '新浪网', '', '', '治疗方案', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('12', '有一定帮助。所以，孕妇可以从事家务劳动，如果没有', '201204221848330012.jpg', '<p>妇体内已经形成了适应胎儿生长的新的平衡，孕吐等不适应反应也逐渐消失，孕妇的情绪也变得相对稳定。所以，孕中期心理安定，其保健的重点应在于通过生活、工作和休息的适当调整，保证良好的心理状态。</p>\r\n<p>　<strong>　一、 避免心理上过于放松</strong></p>\r\n<p>　　身体状况的安定，可能会导致精神上的松懈，孕妇会大舒一口气。但是，孕中期并不一定就平安事。如由于怀孕造成各个系统的负担，可能加重原有的、、等病情;孕中期也可能会出现各种病理状况，如和等，放松对身体状况的注意，很可能会导致不良后果。所以，应定期到接受检查。</p>\r\n<p>　<strong>　二、 减轻对</strong><strong>的</strong></p>\r\n<p>　　虽然中期距分娩时间尚有一段距离，但毕竟使孕妇感受到一种压力，有些孕妇会从这时开始感到惶恐不安。这是因为她听信了分娩如何痛苦的传言，或受到影视伤口过分渲染分娩场面的原因。其实，分娩痛苦是不可能的，但过分恐惧并不是好办法，孕妇应学习一些分娩的知识，对分娩是怀孕必然结局有所了解。另外，如果孕妇和家人一起为未出世的孩子准备一些必需品，也许能使孕妇心情好转。这样做往往可以使孕妇从对分娩的恐惧变为急切的盼望。</p>\r\n<p>　　<strong>三、 过分依赖</strong></p>\r\n<p>　　毫疑问，孕中期妇女适当做一些工作，并参加一些平缓的运动没有危害。但有些孕妇因体形显而不愿活动，每天不干任何事情，凡事都由丈夫包办，以为这样才会对胎儿有利。可这样做却易引起心理上的郁闷、压抑、孤独，这对胎儿是不利的。医学界认为，孕期适当的活动可以增强孕妇的肌肉力量，对分娩有一定帮助。所以，孕妇可以从事家务劳动，如果没有异常情况，孕中期仍能正常上班，这样对于改善心理状态也大有益处。</p>', '阿呆', '新浪网', '', '', '治疗方案', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('13', '动可以增强孕妇的肌肉力量，对分娩有一定帮助。所', '201204221848570013.jpg', '<p>妇体内已经形成了适应胎儿生长的新的平衡，孕吐等不适应反应也逐渐消失，孕妇的情绪也变得相对稳定。所以，孕中期心理安定，其保健的重点应在于通过生活、工作和休息的适当调整，保证良好的心理状态。</p>\r\n<p>　<strong>　一、 避免心理上过于放松</strong></p>\r\n<p>　　身体状况的安定，可能会导致精神上的松懈，孕妇会大舒一口气。但是，孕中期并不一定就平安事。如由于怀孕造成各个系统的负担，可能加重原有的、、等病情;孕中期也可能会出现各种病理状况，如和等，放松对身体状况的注意，很可能会导致不良后果。所以，应定期到接受检查。</p>\r\n<p>　<strong>　二、 减轻对</strong><strong>的</strong></p>\r\n<p>　　虽然中期距分娩时间尚有一段距离，但毕竟使孕妇感受到一种压力，有些孕妇会从这时开始感到惶恐不安。这是因为她听信了分娩如何痛苦的传言，或受到影视伤口过分渲染分娩场面的原因。其实，分娩痛苦是不可能的，但过分恐惧并不是好办法，孕妇应学习一些分娩的知识，对分娩是怀孕必然结局有所了解。另外，如果孕妇和家人一起为未出世的孩子准备一些必需品，也许能使孕妇心情好转。这样做往往可以使孕妇从对分娩的恐惧变为急切的盼望。</p>\r\n<p>　　<strong>三、 过分依赖</strong></p>\r\n<p>　　毫疑问，孕中期妇女适当做一些工作，并参加一些平缓的运动没有危害。但有些孕妇因体形显而不愿活动，每天不干任何事情，凡事都由丈夫包办，以为这样才会对胎儿有利。可这样做却易引起心理上的郁闷、压抑、孤独，这对胎儿是不利的。医学界认为，孕期适当的活动可以增强孕妇的肌肉力量，对分娩有一定帮助。所以，孕妇可以从事家务劳动，如果没有异常情况，孕中期仍能正常上班，这样对于改善心理状态也大有益处。</p>', '阿呆', '新浪网', '', '', '治疗方案', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('14', '人民日报质疑抄底海外楼市：无风险馅饼砸不到国人头上', '', '<p>&ldquo;投资中国楼市不如去美国买房地产。&rdquo;中国社科院近日的这一表态，再度引发了舆论的广泛关注。中国社科院发布的2013年《投资蓝皮书》称，由于中国楼市上涨的空间有限，并且对投资需求有诸多限制，而美国房地产正处于触底回升阶段，上升趋势大致能维持5到7年，有较大的上涨空间，所以投资中国楼市不如去美国买房地产。</p>\r\n<p>事实上，海外置业近年来渐成热潮，中国人置业的身影正在遍布全球，而美国是首选。据美国全国地产经纪商协会发布报告显示，2007年，中国人在美国的购房花费仅占所有外国人在美国购房花费的5%。而2012年，这个比例跃升至11%，中国人在美国购置房产花费90亿美元，使其连续两年成为美国房产第二大海外买家。</p>', '', '', '', '', '公告', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('15', '今年杭城楼市五一成交量,五年里排名前三名', '', '<p><font color=\"#231f1f\">　<font color=\"#000000\"> 位于桥西板块的九龙仓&middot;碧玺在4月29日加推C3号楼120余套房源，户型为83&mdash;131㎡，单价在23000&mdash;26000元/㎡之间。开盘当日认筹9.6折，折合均价22000&mdash;24000元/㎡。当日下午15:30，据九龙仓&middot;碧玺官方传来的去化数据显示，当日所推房源去化8成。</font></font>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp; 位于下沙大学城北区块的盈都&middot;江悦城也同时选择了4月29日加推6、7号楼100余套，户型面积为66、73、86㎡，增值面积最多可达22㎡，均价7000元/㎡，总价40万/套。开盘仅40分钟就劲销九成。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 作为快房电商的<span class=\"dwkaddtext\"><a href=\"http://www.kfw001.com/home/floor.php?housing_id=2882\" target=\"_blank\">世茂&middot;西西湖</a><span class=\"dwkaddlink\">(<a href=\"http://www.kfw001.com/home/floor.php?housing_id=2882\" target=\"_blank\">详情</a> <a href=\"http://www.kfw001.com/kuaiba/forum.php?fid=2882\" target=\"_blank\">快吧</a>)</span></span>则是在4月30日推二期高层组团&ldquo;熙园&rdquo;7号楼160套，户型60-110㎡，主力户型88㎡，优惠后6888元/㎡起，均价8000多元/㎡。之前和快房网合作推出的团购活动吸引了上百组客户，在开盘现场更是人山人海，当日认购九成左右。</p>\r\n<p>&nbsp;</p>', '', '', '', '', '公告', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('16', '60楼盘闹五一，“变形金刚”来揽客', '', '<p><font color=\"#231f1f\"><font color=\"#000000\">开发商举办活动的同时，顺势推出新品。鼎峰花漫里楼王户型VIP诚意登记2万元抵8万元；天骄峰景257平方米-308平方米全新组团8万元抵20万元，新里城推79平方米绝版三房，3000元抵3万元；滨江公馆推134平方米-205平方米临江美墅5万元抵10万元，沿海江湾国际推12套一口价单位。</font></font><br />\r\n&nbsp;</p>\r\n<p>　　记者观察发现，活动虽多，但房价整体优惠力度不大，多数楼盘价格与节前相差无几。不过也有楼盘例外，中天城市之门最后6套复式三房产品，一口价31万元起，单价4200元/平方米起；银湖山庄&ldquo;越湖湾&rdquo;别墅认筹20万元可抵120万元；敏捷春天推出100套特价房，单价低至&ldquo;4字头&rdquo;。</p>\r\n<p>&nbsp;</p>', '', '', '', '', '公告', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('17', '“国五条”落地满月：沪楼市成交量环比跌41% 同比仍涨48%', '', '<p><font color=\"#231f1f\"><font color=\"#000000\">&ldquo;国五条&rdquo;细则落地满月，上海楼市仍延续平稳态势，多个楼盘加推房源，成交踊跃。</font></font></p>\r\n<p>　　昨日是&ldquo;五一&rdquo;小长假最后一天。在浦东新区的新城碧翠售楼处，销售人员对早报记者介绍，此次加推约100套两房、三房公寓和花园洋房，其中公寓均价3.3万元/平方米，开盘推出3万元抵扣20万元优惠，洋房均价4.4万元/平方米，开盘推出5万元抵扣30万元优惠，&ldquo;长假期间约售出一半左右。&rdquo;</p>\r\n<p>　　与改善型楼盘表现&ldquo;中热&rdquo;不同，&ldquo;五一&rdquo;期间入市的刚需楼盘继续表现出旺销势头。昨日下午，浦东明天华城售楼处人员称，在小长假期间推出的100多套优惠房源已全部卖完，&ldquo;主要为两房、三房，优惠后的均价在1.7万&mdash;1.8万元/平方米。&rdquo;</p>\r\n<p>　　嘉定莱英北郡售楼处人员则称，假期推出180套两房、三房房源，均价1.3万元/平方米，&ldquo;只剩下几十套了，现在刚需楼盘都卖得非常快。&rdquo;</p>\r\n<p>　　另外，浦东的中高端别墅楼盘尚东鼎假期加推10多套叠加、联排别墅，&ldquo;均价5万元左右，全款9.6折，贷款9.8折，假期三天共售出3套，总价在850万&mdash;1500万元。&rdquo;该楼盘相关负责人说。</p>\r\n<p>　　据该负责人介绍，在4月中上旬，楼盘的来访量、成交量较3月明显下降，但从4月中下旬开始，楼盘来访量又开始回升上来，呈现出前低后高的趋势，但总体来看，整个4月的楼盘来访量、成交量较3月略有下降，&ldquo;五一假期三天的来访量较此前的普通周末明显增加，成交也较理想。&rdquo;</p>', '', '', '', '', '公告', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('18', '五月郑州楼市新楼盘剧增 优惠减少', '', '<p>五一小长假期间，有人忙着访友、踏青，也有不少人忙着看房、购房。因此，郑州不少售楼部在小长假期间的访客量都比较大。与购房者的热情稍有反差的是，今年郑州楼市的五一优惠幅度远没有往年高。</p>\r\n<div id=\"newsdiv\" class=\"xw3_1146_rh\">\r\n<p>　　五一小长假期间，有人忙着访友、踏青，也有不少人忙着看房、购房。因此，郑州不少售楼部在小长假期间的访客量都比较大。与购房者的热情稍有反差的是，今年郑州楼市的五一优惠幅度远没有往年高。</p>\r\n</div>\r\n<p>&nbsp;</p>', '', '', '', '', '公告', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('19', '金州新区房交会成交462套 多数单价万元以下', '', '<p>在金州新区春交会上，共有33家企业参展，展会规模达到了5000余平方米。因为这是迄今为止金州新区举办的参展企业最多、展览面积最大的地产类展会，3天时间，位于开发区大连民族学院体育馆的展馆内外，人气相当火爆。记者从主办方获悉，观展者不光有金州新区当地居民，也有不少大连市内购房者专程前往金州新区参加房交会。与市内四区楼盘价格相比，金州新区楼盘价格明显处于&ldquo;价格洼地&rdquo;。参展楼盘单价基本没有超过万元的，以6000元~8000元/平方米价格居多。再加之本届房交会上七成楼盘推出优惠，金州新区楼盘价格因此成为吸引市内居民的利器。开发商推出的促销措施包括每平方米优惠500元、特价房、开发商提供契税补贴等等。</p>', '', '', '', '', '公告', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('22', 'dfsdf', '201304152202500013.jpg', '<p>sdfsdf</p>', 'admin', 'sdfsdf', '', '', '用户文章', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('23', '倒桩教学视频', '', '', '', '', '201304151616550003.jpg', '倒桩教学视频...', '学习资料', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('24', 'dtefsd', '201304152202210012.jpg', '<p>fsfds</p>', 'member01', 'fsdfsd', '', '', '用户文章', '2015-03-30 11:20:38');
INSERT INTO `mixinfo` VALUES ('25', '我开车的雄姿', '201304151706420005.gif', '', 'member01', '', '', '...', '相册', '2015-03-30 11:20:38');

-- ----------------------------
-- Table structure for pros
-- ----------------------------
DROP TABLE IF EXISTS `pros`;
CREATE TABLE `pros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(255) DEFAULT NULL,
  `hitem` varchar(255) DEFAULT NULL,
  `fishing` varchar(255) DEFAULT NULL,
  `hxaddr` varchar(255) DEFAULT NULL,
  `addrs` varchar(255) DEFAULT NULL,
  `dpdate` varchar(255) DEFAULT NULL,
  `rzdate` varchar(255) DEFAULT NULL,
  `inrate` varchar(255) DEFAULT NULL,
  `greensate` varchar(255) DEFAULT NULL,
  `hnums` varchar(255) DEFAULT NULL,
  `hcharge` varchar(255) DEFAULT NULL,
  `allno` varchar(255) DEFAULT NULL,
  `developer` varchar(255) DEFAULT NULL,
  `tcontent` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `hstype` varchar(255) DEFAULT NULL,
  `atype` varchar(255) DEFAULT NULL,
  `mjs` varchar(255) DEFAULT NULL,
  `ftype` varchar(255) DEFAULT NULL,
  `ptype` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pros
-- ----------------------------
INSERT INTO `pros` VALUES ('1', '枫林园二期三房热卖中', '欧式风格', '精装修', '三环', '...', '2014-03-12', '随时', '百分之八十', '百分之九十', '300', '23元 / 平米', 'NO.ACDCD124123123', '万科', '...', '东西湖', '别墅', '80-100', '99平方', '四室', '10000—15000', '12000元 / 平方', '201305021048350007.jpg', '2015-03-30 11:20:38\r\n2015-03-30 11:20:38\r\n2015-03-30 11:20:38\r\n2015-03-30 11:20:38\r\n2015-03-30 11:20:38\r\n2015-03-30 11:20:38\r\n2015-03-30 11:20:38\r\n2015-03-30 11:20:38\r\n2015-03-30 11:20:38\r\n2015-03-30 11:20:38');
INSERT INTO `pros` VALUES ('2', '南京河西莱蒙水榭春天首推290套精装', '欧式风格', '精装修', '三环', '...', '2014-03-12', '随时', '百分之八十', '百分之九十', '300', '23元 / 平米', 'NO.ACDCD124123123', '万科', '...', '东西湖', '别墅', '80-100', '99平方', '四室', '10000—15000', '12000元 / 平方', '201305021051160008.jpg', '2015-03-30 11:20:38');
INSERT INTO `pros` VALUES ('3', '东湖居四房热卖中', '欧式风格', '精装修', '三环', '...', '2014-03-12', '随时', '百分之八十', '百分之九十', '300', '23元 / 平米', 'NO.ACDCD124123123', '万科', '...', '东西湖', '别墅', '80-100', '99平方', '四室', '10000—15000', '12000元 / 平方', '201305021105150011.jpg', '2015-03-30 11:20:38');
INSERT INTO `pros` VALUES ('4', '狮城名居二房热卖中', '欧式风格', '精装修', '三环', '...', '2014-03-12', '随时', '百分之八十', '百分之九十', '300', '23元 / 平米', 'NO.ACDCD124123123', '万科', '...', '东西湖', '别墅', '80-100', '99平方', '四室', '10000—15000', '12000元 / 平方', '201305021104390010.jpg', '2015-03-30 11:20:38');
INSERT INTO `pros` VALUES ('5', '阳光城三期三房低价出售', '欧式风格', '精装修', '三环', '...', '2014-03-12', '随时', '百分之八十', '百分之九十', '300', '23元 / 平米', 'NO.ACDCD124123123', '万科', '...', '东西湖', '别墅', '80-100', '99平方', '四室', '10000—15000', '12000元 / 平方', '201305021104130009.jpg', '2015-03-30 11:20:38');

-- ----------------------------
-- Table structure for scinfo
-- ----------------------------
DROP TABLE IF EXISTS `scinfo`;
CREATE TABLE `scinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `sctype` varchar(255) DEFAULT NULL,
  `scid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scinfo
-- ----------------------------
INSERT INTO `scinfo` VALUES ('1', '123', '2', '1');
INSERT INTO `scinfo` VALUES ('2', '123', '1', '5');

-- ----------------------------
-- Table structure for sellinfo
-- ----------------------------
DROP TABLE IF EXISTS `sellinfo`;
CREATE TABLE `sellinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(255) DEFAULT NULL,
  `hxaddr` varchar(255) DEFAULT NULL,
  `addrs` varchar(255) DEFAULT NULL,
  `tcontent` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `mjs` varchar(255) DEFAULT NULL,
  `ftype` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sellinfo
-- ----------------------------
INSERT INTO `sellinfo` VALUES ('1', '出售陈家湾一套三室，便宜扔', '一环', '武昌陈家湾', '三室，简装，啥都有', '洪山', '80平米', '三室', '500000', '201403021731510001.jpg', '王先生', '09877777777', '123', '2015-03-30 11:20:38');

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(145) DEFAULT NULL,
  `upass` varchar(145) DEFAULT NULL,
  `utype` varchar(45) DEFAULT NULL,
  `tname` varchar(245) DEFAULT NULL,
  `sex` varchar(245) DEFAULT NULL,
  `birth` varchar(245) DEFAULT NULL,
  `linkphone` varchar(245) DEFAULT NULL,
  `sfid` varchar(245) DEFAULT NULL,
  `addrs` varchar(245) DEFAULT NULL,
  `filename` varchar(245) DEFAULT NULL,
  `ygtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('1', 'admin', '123', '管理员', '大采', '女', '2013-04-10', '0289999999', '42108719850213777X', '湖北武汉', '201304151515070001.jpg', null);
INSERT INTO `sysuser` VALUES ('4', 'member01', '123', '会员', '小采', '女', '2013-04-10', '0289999999', '42108719850213777X', '湖北武汉', '201304151515070001.jpg', null);
INSERT INTO `sysuser` VALUES ('11', '123', '123', '会员', '凤凰传奇', '女', '2013-04-10', '0289999999', '111111111111111', '北京中北三路346', '201403021734590002.jpg', null);
INSERT INTO `sysuser` VALUES ('12', 'xs01', '123', '销售员', '小明', '女', '2013-04-02', '0289999999', '42108719850213668X', '三号教学楼', '201304292115140001.jpg', null);

-- ----------------------------
-- Table structure for taolun
-- ----------------------------
DROP TABLE IF EXISTS `taolun`;
CREATE TABLE `taolun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `saver` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taolun
-- ----------------------------
INSERT INTO `taolun` VALUES ('3', '大家来讨论下感冒的治疗方法', '123', '2015-03-30 11:20:38', '-1');
INSERT INTO `taolun` VALUES ('4', '这有什么难治的', '123', '2015-03-30 11:20:38', '3');
INSERT INTO `taolun` VALUES ('5', '这有什么难治的', '123', '2015-03-30 11:20:38', '3');
INSERT INTO `taolun` VALUES ('6', 'sdfsdf', '123', '2015-03-30 11:20:38', '3');
INSERT INTO `taolun` VALUES ('8', '123', '123', '2015-03-30 11:20:38', '-1');
INSERT INTO `taolun` VALUES ('9', 'ddd', '123', '2017-11-07 09:54:31', '-1');

-- ----------------------------
-- Table structure for zxgs
-- ----------------------------
DROP TABLE IF EXISTS `zxgs`;
CREATE TABLE `zxgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gsname` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `jj` varchar(255) DEFAULT NULL,
  `addrs` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `lxr` varchar(255) DEFAULT NULL,
  `kb` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zxgs
-- ----------------------------
INSERT INTO `zxgs` VALUES ('1', '美丽装修公司', '201305021039530003.jpg', '...', '北京中北三路346', '02711111111', '老棉花', '很好', '2015-03-30 11:20:38');
