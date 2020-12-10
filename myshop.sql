SET NAMES UTF8;
DROP DATABASE IF EXISTS myshop;
CREATE DATABASE myshop CHARSET=UTF8;
USE myshop;
CREATE TABLE user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32) UNIQUE,
  email VARCHAR(64) UNIQUE,
  phone VARCHAR(16) UNIQUE,
  upwd VARCHAR(32),
  gender INT
);
INSERT INTO user VALUES (1,'lyric','812415465@qq.com','18141349969','123456',1);

CREATE TABLE product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  cid INT,
  bid INT,
  title VARCHAR(128),
  info VARCHAR(128),
  price DECIMAL(10,2),
  hot INT,
  stock INT,
  image VARCHAR(128)
);
INSERT INTO product VALUES (1,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',23,20,'http://localhost:3000/image/product/1.jpg');
INSERT INTO product VALUES (2,91,2,'Remax睿量RB-S6颈挂式蓝牙耳机悟空脑后挂脖','','122',2303,51,'http://localhost:3000/image/product/2.jpg');
INSERT INTO product VALUES (3,43,9,'飞利浦烤面包机家用早餐机全自动多功能吐司片多士炉小烤箱HD2519','','269',1459,34,'http://localhost:3000/image/product/3.jpg');
INSERT INTO product VALUES (4,151,1,'单人日式日料店矮脚榻榻米休闲咖啡椅出口和室椅喂奶椅懒人沙发椅','','288',76,200,'http://localhost:3000/image/product/4.jpg');
INSERT INTO product VALUES (5,151,1,'现代卧室梳妆台书桌一体镜子可隐化妆台折叠','','288',1,20,'http://localhost:3000/image/product/5.jpg');
INSERT INTO product VALUES (6,151,1,'皮质储物凳子 换鞋凳  收纳凳 可坐人 创意现代床尾凳 包邮','','288',1,20,'http://localhost:3000/image/product/6.jpg');
INSERT INTO product VALUES (7,151,1,'北欧客厅沙发边几角几创意实木墩茶几简约迷你移动小圆桌床头边柜','','288',1,20,'http://localhost:3000/image/product/7.jpg');
INSERT INTO product VALUES (8,151,1,'印度进口手工拼接绗缝棉布 波西米亚东南亚北欧家用软包凳子矮凳','','288',1,20,'http://localhost:3000/image/product/8.jpg');
INSERT INTO product VALUES (9,151,1,'换鞋凳实木矮凳小凳子时尚创意沙发凳茶几穿鞋坐墩梳妆脚凳换鞋凳','','288',1,20,'http://localhost:3000/image/product/9.jpg');
INSERT INTO product VALUES (10,151,1,'喝茶凳时尚创意换鞋凳家用圆凳实木矮凳草编沙发凳板凳小凳子包邮','','288',1,20,'http://localhost:3000/image/product/10.jpg');
INSERT INTO product VALUES (11,151,1,'实木家具 乌金木茶几凳 功夫茶几椅 真皮实木椅靠背换鞋凳','','288',1,20,'http://localhost:3000/image/product/11.jpg');
INSERT INTO product VALUES (12,151,1,'试衣间可坐方形储物凳收纳箱座椅子换鞋凳小沙发凳皮墩子穿鞋板凳','','288',1,20,'http://localhost:3000/image/product/12.jpg');
INSERT INTO product VALUES (13,151,1,'实木脚凳创意河马换鞋凳沙发凳设计师家具储物矮凳试鞋凳收纳脚凳','','288',1,20,'http://localhost:3000/image/product/13.jpg');
INSERT INTO product VALUES (14,151,1,'Sharda品牌印度进口坐墩时尚圆墩美式懒人沙发脚墩 创意搁脚凳子','','288',1,20,'http://localhost:3000/image/product/14.jpg');
INSERT INTO product VALUES (15,151,1,'欧式复古白皮革拉扣钢琴凳梳妆凳穿鞋换鞋凳搁脚凳实木凳化妆脚凳','','288',1,20,'http://localhost:3000/image/product/15.jpg');
INSERT INTO product VALUES (16,151,1,'藤草编收纳凳子换鞋凳储物凳子可坐人有盖整理收纳箱沙发凳搁脚凳','','288',1,20,'http://localhost:3000/image/product/16.jpg');
INSERT INTO product VALUES (17,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/17.jpg');
INSERT INTO product VALUES (18,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/18.jpg');
INSERT INTO product VALUES (19,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/19.jpg');
INSERT INTO product VALUES (20,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/20.jpg');
INSERT INTO product VALUES (21,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/21.jpg');
INSERT INTO product VALUES (22,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/22.jpg');
INSERT INTO product VALUES (23,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/23.jpg');
INSERT INTO product VALUES (24,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/24.jpg');
INSERT INTO product VALUES (25,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/25.jpg');
INSERT INTO product VALUES (26,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/26.jpg');
INSERT INTO product VALUES (27,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/27.jpg');
INSERT INTO product VALUES (28,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/28.jpg');
INSERT INTO product VALUES (29,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/29.jpg');
INSERT INTO product VALUES (30,151,1,'创意简约皮质抽屉式收纳储物凳 圆形皮革床头柜/床边柜 换鞋坐凳','','288',1,20,'http://localhost:3000/image/product/30.jpg');

CREATE TABLE pro_pic(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pid INT,
  sm VARCHAR(128),
  md VARCHAR(128),
  lg VARCHAR(128)
);
INSERT INTO pro_pic VALUES (1,1,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (2,1,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (3,1,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (4,2,'http://localhost:3000/image/product/4.jpg_50x50.jpg','http://localhost:3000/image/product/4.jpg_400x400.jpg','http://localhost:3000/image/product/4.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (5,2,'http://localhost:3000/image/product/5.jpg_50x50.jpg','http://localhost:3000/image/product/5.jpg_400x400.jpg','http://localhost:3000/image/product/5.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (6,3,'http://localhost:3000/image/product/6.jpg_50x50.jpg','http://localhost:3000/image/product/6.jpg_400x400.jpg','http://localhost:3000/image/product/6.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (7,3,'http://localhost:3000/image/product/7.jpg_50x50.jpg','http://localhost:3000/image/product/7.jpg_400x400.jpg','http://localhost:3000/image/product/7.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (8,4,'http://localhost:3000/image/product/8.jpg_50x50.jpg','http://localhost:3000/image/product/8.jpg_400x400.jpg','http://localhost:3000/image/product/8.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (9,4,'http://localhost:3000/image/product/9.jpg_50x50.jpg','http://localhost:3000/image/product/9.jpg_400x400.jpg','http://localhost:3000/image/product/9.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (10,4,'http://localhost:3000/image/product/10.jpg_50x50.jpg','http://localhost:3000/image/product/10.jpg_400x400.jpg','http://localhost:3000/image/product/10.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (11,4,'http://localhost:3000/image/product/11.jpg_50x50.jpg','http://localhost:3000/image/product/11.jpg_400x400.jpg','http://localhost:3000/image/product/11.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (12,4,'http://localhost:3000/image/product/12.jpg_50x50.jpg','http://localhost:3000/image/product/12.jpg_400x400.jpg','http://localhost:3000/image/product/12.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (16,5,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (17,5,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (18,5,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (19,6,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (20,6,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (21,6,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (22,7,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (23,7,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (24,7,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (13,8,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (14,8,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (15,8,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (25,9,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (26,9,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (27,9,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (28,10,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (29,10,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (30,10,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (31,11,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (32,11,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (33,11,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (34,12,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (35,12,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (36,12,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (37,13,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (38,13,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (39,13,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (40,14,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (41,14,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (42,14,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (43,15,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (44,15,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (45,15,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (46,16,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (47,16,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (48,16,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (49,17,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (50,17,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (51,17,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (52,18,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (53,18,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (54,18,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (55,19,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (56,19,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (57,19,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (58,20,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (59,20,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (60,20,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (61,21,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (62,21,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (63,21,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (64,22,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (65,22,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (66,22,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (67,23,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (68,23,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (69,23,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (70,24,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (71,24,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (72,24,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (73,25,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (74,25,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (75,25,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (76,26,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (78,26,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (79,26,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (80,27,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (81,27,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (82,27,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (83,28,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (84,28,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (85,28,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (86,29,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (87,29,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (88,29,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (89,30,'http://localhost:3000/image/product/1.jpg_50x50.jpg','http://localhost:3000/image/product/1.jpg_400x400.jpg','http://localhost:3000/image/product/1.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (90,30,'http://localhost:3000/image/product/2.jpg_50x50.jpg','http://localhost:3000/image/product/2.jpg_400x400.jpg','http://localhost:3000/image/product/2.jpg_800x800.jpg');
INSERT INTO pro_pic VALUES (91,30,'http://localhost:3000/image/product/3.jpg_50x50.jpg','http://localhost:3000/image/product/3.jpg_400x400.jpg','http://localhost:3000/image/product/3.jpg_800x800.jpg');


CREATE TABLE business(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,
  bname VARCHAR(128)
);

CREATE TABLE shopcar(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  pid INT,
  uid INT,
  number INT
);