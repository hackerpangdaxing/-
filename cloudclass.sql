/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : cloudclass

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2016-12-11 20:54:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fileupload`
-- ----------------------------
DROP TABLE IF EXISTS `fileupload`;
CREATE TABLE `fileupload` (
  `id` varchar(50) NOT NULL,
  `path` char(100) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `username` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `pdfName` varchar(50) DEFAULT NULL,
  `pdfPath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fileupload
-- ----------------------------
INSERT INTO `fileupload` VALUES ('033765DBE94C45228E17B49561FD6B83', 'C:Tomcat7.0me-webappsCloudupload上传文件第15章  再 论 指 针.ppt', '第15章  再 论 指 针.ppt', '胖大星', '2016-11-26 20:54:29', '第15章  再 论 指 针.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第15章  再 论 指 针.pdf');
INSERT INTO `fileupload` VALUES ('0404F6BE24754D8496D975F7486B8FC5', 'C:Tomcat7.0me-webappsCloudupload上传文件第7章  循 环 结 构.ppt', '第7章  循 环 结 构.ppt', '胖大星', '2016-11-26 20:53:28', '第7章  循 环 结 构.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第7章  循 环 结 构.pdf');
INSERT INTO `fileupload` VALUES ('0B5AF6853AD54FBEA0A27D1C0DEFB8F7', 'C:Tomcat7.0me-webappsCloudupload上传文件第5章  表达式与操作符.ppt', '第5章  表达式与操作符.ppt', '胖大星', '2016-11-26 20:53:13', '第5章  表达式与操作符.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第5章  表达式与操作符.pdf');
INSERT INTO `fileupload` VALUES ('0B9C9940DEEF428AA143129045BC09E3', 'C:Tomcat7.0me-webappsCloudupload上传文件第20章  预 处 理.ppt', '第20章  预 处 理.ppt', '胖大星', '2016-11-26 20:55:06', '第20章  预 处 理.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第20章  预 处 理.pdf');
INSERT INTO `fileupload` VALUES ('17BFD983D0BD4F7A931F064DD0CADA0D', 'C:Tomcat7.0me-webappsCloudupload上传文件第19章  共用体、枚举和位域.ppt', '第19章  共用体、枚举和位域.ppt', '胖大星', '2016-11-26 20:54:59', '第19章  共用体、枚举和位域.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第19章  共用体、枚举和位域.pdf');
INSERT INTO `fileupload` VALUES ('19B38A6403064A89A7A1717C5DF03F43', 'C:Tomcat7.0me-webappsCloudupload上传文件第17章  位运算操作符.ppt', '第17章  位运算操作符.ppt', '胖大星', '2016-11-26 20:54:45', '第17章  位运算操作符.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第17章  位运算操作符.pdf');
INSERT INTO `fileupload` VALUES ('1FC548F104E541349EFE4300679115FF', 'C:Tomcat7.0me-webappsCloudupload上传文件第14章  指    针.ppt', '第14章  指    针.ppt', '胖大星', '2016-11-26 20:54:22', '第14章  指    针.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第14章  指    针.pdf');
INSERT INTO `fileupload` VALUES ('2DF4B4E7E64B4322806E4034EFB4D213', 'C:Tomcat7.0me-webappsCloudupload上传文件第2章  C语言编程准备.ppt', '第2章  C语言编程准备.ppt', '胖大星', '2016-11-26 20:52:52', '第2章  C语言编程准备.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第2章  C语言编程准备.pdf');
INSERT INTO `fileupload` VALUES ('3005B032FB2245AFA020319A618EEEF5', 'C:Tomcat7.0me-webappsCloudupload上传文件第1章 C语言与程序概述.ppt', '第1章 C语言与程序概述.ppt', '胖大星', '2016-11-28 18:40:52', '第1章 C语言与程序概述.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第1章 C语言与程序概述.pdf');
INSERT INTO `fileupload` VALUES ('30830EC5EED84237B12B50CE15CAA6F8', 'C:Tomcat7.0me-webappsCloudupload上传文件第1章 C语言与程序概述.ppt', '第1章 C语言与程序概述.ppt', '胖大星', '2016-11-27 13:46:00', '第1章 C语言与程序概述.pdf', '..file第1章 C语言与程序概述.pdf');
INSERT INTO `fileupload` VALUES ('31D1DFA990F44409B0B884B5D9263432', 'C:Tomcat7.0me-webappsCloudupload上传文件第1章 C语言与程序概述.ppt', '第1章 C语言与程序概述.ppt', '胖大星', '2016-11-27 13:43:21', '第1章 C语言与程序概述.pdf', '..file第1章 C语言与程序概述.pdf');
INSERT INTO `fileupload` VALUES ('38ED891462E249B5AA79049E9C0F0EAE', 'C:Tomcat7.0me-webappsCloudupload上传文件第11章  函数与文件.ppt', '第11章  函数与文件.ppt', '胖大星', '2016-11-26 20:54:00', '第11章  函数与文件.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第11章  函数与文件.pdf');
INSERT INTO `fileupload` VALUES ('3BF9DF09B43D400081E5B33ACD2DD44B', 'C:Tomcat7.0me-webappsCloudupload上传文件第13章  字符串处理函数.ppt', '第13章  字符串处理函数.ppt', '胖大星', '2016-11-26 20:54:14', '第13章  字符串处理函数.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第13章  字符串处理函数.pdf');
INSERT INTO `fileupload` VALUES ('4531D519C28C454092D16928EC5E3840', 'C:Tomcat7.0me-webappsCloudupload上传文件第16章  堆 管 理.ppt', '第16章  堆 管 理.ppt', '胖大星', '2016-11-26 20:54:37', '第16章  堆 管 理.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第16章  堆 管 理.pdf');
INSERT INTO `fileupload` VALUES ('55F78D8C0DDB40B09F4C5F67775C919D', 'C:Tomcat7.0me-webappsCloudupload上传文件第8章  数    组.ppt', '第8章  数    组.ppt', '胖大星', '2016-11-26 20:53:36', '第8章  数    组.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第8章  数    组.pdf');
INSERT INTO `fileupload` VALUES ('75293E4414734BD9B3F991C9E03DB665', 'C:Tomcat7.0me-webappsCloudupload上传文件第3章  常量与变量.ppt', '第3章  常量与变量.ppt', '胖大星', '2016-11-26 20:52:59', '第3章  常量与变量.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第3章  常量与变量.pdf');
INSERT INTO `fileupload` VALUES ('7D6018FF29B24DEB82E34A01B69EC90B', 'C:Tomcat7.0me-webappsCloudupload上传文件第9章  字 符 串.ppt', '第9章  字 符 串.ppt', '胖大星', '2016-11-26 20:53:44', '第9章  字 符 串.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第9章  字 符 串.pdf');
INSERT INTO `fileupload` VALUES ('A7FEF29786444E3C9B240CF11C688FC5', 'C:Tomcat7.0me-webappsCloudupload上传文件第1章 C语言与程序概述.ppt', '第1章 C语言与程序概述.ppt', '胖大星', '2016-11-26 20:52:37', '第1章 C语言与程序概述.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第1章 C语言与程序概述.pdf');
INSERT INTO `fileupload` VALUES ('B46095CDD8E04C0EBA75F4DC6A424B9D', 'C:Tomcat7.0me-webappsCloudupload上传文件第18章  结 构 体.ppt', '第18章  结 构 体.ppt', '胖大星', '2016-11-26 20:54:52', '第18章  结 构 体.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第18章  结 构 体.pdf');
INSERT INTO `fileupload` VALUES ('B656118DB2C94B84AB117A740D24DCD8', 'C:Tomcat7.0me-webappsCloudupload上传文件第1章 C语言与程序概述.ppt', '第1章 C语言与程序概述.ppt', '胖大星', '2016-11-28 18:30:26', '第1章 C语言与程序概述.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第1章 C语言与程序概述.pdf');
INSERT INTO `fileupload` VALUES ('B9F853E995F9481999EF91029B6CBA34', 'C:Tomcat7.0me-webappsCloudupload上传文件qt讲稿.doc', 'qt讲稿.doc', '12', '2016-12-05 21:39:55', 'qt讲稿.pdf', 'C:Tomcat7.0me-webappsClouduploadPDFqt讲稿.pdf');
INSERT INTO `fileupload` VALUES ('C0272F8DF3804D4B985832800743BB0F', 'C:Tomcat7.0me-webappsCloudupload上传文件必读.txt', '必读.txt', '121', '2016-12-10 13:36:10', '必读.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF必读.pdf');
INSERT INTO `fileupload` VALUES ('D415A36CA2154EAC92AD4865693A360F', 'C:Tomcat7.0me-webappsCloudupload\\上传文件qt讲稿.doc', 'qt讲稿.doc', '2123', '2016-12-05 21:49:37', 'qt讲稿.pdf', 'C:Tomcat7.0me-webappsCloudupload\\PDFqt讲稿.pdf');
INSERT INTO `fileupload` VALUES ('DAF41BBF2B4542E58B5AEAC558429F26', 'C:Tomcat7.0me-webappsCloudupload上传文件2014年上半年软件设计师考试上午真题（标准参考答案）.docx', '2014年上半年软件设计师考试上午真题（标准参考答案）.docx', '12', '2016-12-06 21:45:49', '2014年上半年软件设计师考试上午真题（标准参考答案）.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF2014年上半年软件设计师考试上午真题（标准参考答案）.pdf');
INSERT INTO `fileupload` VALUES ('DB658609F3B246C69138C8BB3DEB79C2', 'C:Tomcat7.0me-webappsCloudupload上传文件第10章  函    数.ppt', '第10章  函    数.ppt', '胖大星', '2016-11-26 20:53:53', '第10章  函    数.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第10章  函    数.pdf');
INSERT INTO `fileupload` VALUES ('E2B16A9ED2954747809B47B8B6629511', 'C:Tomcat7.0me-webappsCloudupload上传文件第4章  基本数据类型.ppt', '第4章  基本数据类型.ppt', '胖大星', '2016-11-26 20:53:06', '第4章  基本数据类型.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第4章  基本数据类型.pdf');
INSERT INTO `fileupload` VALUES ('E47A99F527B047639FAE3EBD1B21DCCD', 'C:Tomcat7.0me-webappsCloudupload上传文件第6章  选 择 结 构.ppt', '第6章  选 择 结 构.ppt', '胖大星', '2016-11-26 20:53:21', '第6章  选 择 结 构.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第6章  选 择 结 构.pdf');
INSERT INTO `fileupload` VALUES ('EE326D006CE745DA82E20A60B368EF57', 'C:Tomcat7.0me-webappsCloudupload上传文件第12章  函数中的变量.ppt', '第12章  函数中的变量.ppt', '胖大星', '2016-11-26 20:54:07', '第12章  函数中的变量.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第12章  函数中的变量.pdf');
INSERT INTO `fileupload` VALUES ('F84B088E535D43739DA0E8246A49117A', 'C:Tomcat7.0me-webappsCloudupload上传文件1.ppt', '1.ppt', '拉拉', '2016-11-26 22:21:33', '1.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF1.pdf');
INSERT INTO `fileupload` VALUES ('FF8F7C4D257A4DB2AFF1F9DE1C49D9E0', 'C:Tomcat7.0me-webappsCloudupload上传文件第21章  图书管理系统开发实例.ppt', '第21章  图书管理系统开发实例.ppt', '胖大星', '2016-11-26 20:55:12', '第21章  图书管理系统开发实例.pdf', 'C:Tomcat7.0me-webappsClouduploadPDF第21章  图书管理系统开发实例.pdf');

-- ----------------------------
-- Table structure for `javaproblem`
-- ----------------------------
DROP TABLE IF EXISTS `javaproblem`;
CREATE TABLE `javaproblem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `problem` longtext,
  `pic` longblob,
  `chooseA` longtext,
  `chooseB` longtext,
  `chooseC` longtext,
  `chooseD` longtext,
  `answer` longtext,
  `sore` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of javaproblem
-- ----------------------------

-- ----------------------------
-- Table structure for `managerinfo`
-- ----------------------------
DROP TABLE IF EXISTS `managerinfo`;
CREATE TABLE `managerinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `userPassword` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of managerinfo
-- ----------------------------
INSERT INTO `managerinfo` VALUES ('1', 'root1', '123');
INSERT INTO `managerinfo` VALUES ('2', 'root2', '123');
INSERT INTO `managerinfo` VALUES ('3', 'root3', '123');

-- ----------------------------
-- Table structure for `problem`
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `problem` longtext,
  `pic` longblob,
  `chooseA` longtext,
  `chooseB` longtext,
  `chooseC` longtext,
  `chooseD` longtext,
  `answer` longtext,
  `sore` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES ('1', 'C语言程序是由           构成的。', null, 'A、一些可执行语言', 'B、main函数', 'C、函数 ', 'D、包含文件中的第一个函数', 'C', '20');
INSERT INTO `problem` VALUES ('2', 'C语言程序从main()函数开始执行，所以这个函数要写在____。', null, 'A、 程序文件的开始', 'B、 程序文件的最后', 'C、 它所调用的函数的前面', 'D、 程序文件的任何位置', 'D', '20');
INSERT INTO `problem` VALUES ('3', '下列说法错误的是：（   ） ', null, 'A、 C程序运行步骤是编辑、编译、连接、执行', 'B、C语言的变量名必须用小写，常量用大写', 'C、C语言的三种基本结构是顺序、选择、循环', 'D、C程序一定由函数构成的', 'B', '20');
INSERT INTO `problem` VALUES ('4', '不是C语言提供的合法关键字是', null, 'A、switch　', 'B、cher ', 'C、case', 'D、default', 'B', '20');
INSERT INTO `problem` VALUES ('5', '下列说法中正确的是（）', null, 'A、由于C源程序是高级语言程序，因此一定要在TC软件中输入', 'B、由于C源程序是由字符流组成的，因此可以作为文本文件在任何文本编辑的软件中输入', 'C、由于C程序是高级语言程序，因此输入后即可执行 ', 'D、由于C程序是高级语言程序，因此它是由命令组成的', 'B', '20');
INSERT INTO `problem` VALUES ('6', '以下选项中合法的用户标识符是  ', null, 'A、long', 'B、_2Test', 'C、3Dmax', 'D、 A.dat', 'B', '20');
INSERT INTO `problem` VALUES ('7', '下列C语言用户标识符中合法的是( )', null, 'A、*y', 'B、sum ', 'C、int  ', 'D、%5f', 'B', '20');
INSERT INTO `problem` VALUES ('8', '设a,b和c都是int型变量，且a=3,b=4,c=5,则下面表达式中，值为0的表达式是（ ）', null, 'A、’a’&&’b’', 'B、a<=b ', 'C、a||b+c&&b-c ', 'D、!((a<b)&&!c||1)', 'D', '20');
INSERT INTO `problem` VALUES ('9', '设整型变量 a=2，则执行下列语句后，浮点型变量b的值不为0.5的是（  ）', null, 'A、b=1.0/a', 'B、b=(float)(1/a)', 'C、b=1/(float)a', 'D、b=1/(a*1.0)', 'B', '20');
INSERT INTO `problem` VALUES ('10', 'C语言中运算对象必须是整型的运算符是(      )', null, 'A、%=', 'B、/', 'C、=', 'D、<=', 'A', '20');
INSERT INTO `problem` VALUES ('11', '在C语言程序中，表达式8/5的结果是(   )', null, 'A、1.6', 'B、1', 'C、3', 'D、0', 'B', '20');
INSERT INTO `problem` VALUES ('12', '如果int a=3,b=4；则条件表达式\"a<b? a:b\"的值是', null, 'A、3', 'B、4', 'C、0', 'D、1', 'A', '20');
INSERT INTO `problem` VALUES ('13', '已知字母A的ASCII码为十进制数65，且c2为字符型，则执行语句c2=\'A\'+\'6\'-\'3\';后，c2中的值为  (    )', null, 'A、68', 'B、“D”', 'C、错误', 'D、“d”', 'B', '20');
INSERT INTO `problem` VALUES ('14', '有：int w=11,x=12,y=3,m; 执行下面语句后m的结果是(  ) m=(w<x)?w:x;\r\n       m=(m<y)?m:y;\r\n', null, 'A、1', 'B、2', 'C、3', 'D、以上结果都不对', 'C', '20');
INSERT INTO `problem` VALUES ('15', '已知int x;char y;则下面错误的scanf函数调用语句为(  )', null, 'A、scanf(“%d,%d”,&x,&y)', 'B、 scanf(“%d,%c”,x,y)', 'C、 scanf(“%d%d”,&x,&y)', 'D、 scanf(“%d,%c”,&x,&y)', 'B', '20');
INSERT INTO `problem` VALUES ('16', '在C语言中，下列说法中正确的是（ 　）', null, ' A、 do-while语句构成的循环不能用其它语句构成的循环来代替', 'B、do-while语句构成的循环只能用break语句退出', 'C、do-while语句构成的循环在while后的表达式非零时结束循环', 'D、do-while语句构成的循环,在while后的表达式为零时结束循环', 'D', '20');
INSERT INTO `problem` VALUES ('17', 'main()\r\n{    int   x=0,a=0,b=0;\r\nswitch(x){\r\ncase 0:   b++;\r\ncase 1:   a++;\r\ncase 2:   a++;b++;}\r\nprintf(“a=%d,b=%d\\n”,a,b);}\r\n该程序的输出结果是      \r\n', null, 'A、 a=2,b=1', 'B、 a=1,b=1', 'C、 a=1,b=0', 'D、 a=2,b=2', 'D', '20');
INSERT INTO `problem` VALUES ('18', '若k是int型变量，且有下面的程序段：\r\nint k;\r\nk= -3;\r\nif  (k<=0)  printf(“####”)；\r\nelse  printf(“&&&&”)；\r\n上面程序段的输出结果是（   ）\r\n', null, 'A、####', 'B、&&&&', 'C、####&&&& ', 'D、有语法错误，无输出结果', 'A', '20');
INSERT INTO `problem` VALUES ('19', '假定所有变量均已正确定义，则下列程序段运行后y的值是（　）\r\n　　int a=0,y=10;\r\n    if(a=0) y--; \r\n    else if(a>0) y++; \r\n   else y+=y;\r\n', null, 'A、20 ', 'B、11', 'C、9', 'D、0', 'A', '20');
INSERT INTO `problem` VALUES ('20', '若int i=10; 执行下列程序后，变量i的正确结果是（    ）。\r\n   switch ( i ) \r\n     {  case   9:  i+=1;\r\n        case  10:  i+=1;\r\n        case  11:  i+=1;\r\n       default :   i+=1; }\r\n', null, 'A、13 ', 'B、12', 'C、11 ', 'D、10', 'A', '20');
INSERT INTO `problem` VALUES ('21', '有一函数的定义如：void fun(char *s){……}，则不正确的函数调用是(  )', null, 'A、main()\r\n{char a[20]=”abcdefgh”;\r\n fun(a);\r\n……\r\n}\r\n', 'B、main()\r\n{ char a[20]=”abcdefgh”;\r\n  fun(&a[0]);\r\n  ……\r\n}\r\n', 'C、	main()\r\n{ char a[20]=”abcdefgh”;\r\n  char *p=a;fun(p);\r\n  ……\r\n}\r\n', 'D、	main()\r\n{char a[20]=”abcdefgh”;\r\n fun(a[]);\r\n ……\r\n}\r\n', 'D', '20');
INSERT INTO `problem` VALUES ('22', '在C语言程序中，有关函数的定义正确的是( )', null, 'A、函数的定义可以嵌套，但函数的调用不可以嵌套', 'B、函数的定义不可以嵌套，但函数的调用可以嵌套', 'C、函数的定义和函数的调用均不可以嵌套', 'D、函数的定义和函数的均可以嵌套', 'B', '20');
INSERT INTO `problem` VALUES ('23', 'C语言中对函数的描述正确的是', null, 'A、可以嵌套调用,不可以递归调用', 'B、可以嵌套定义 ', 'C、嵌套调用，递归调用均可', 'D、不可以嵌套调用', 'C', '20');
INSERT INTO `problem` VALUES ('24', '以下程序的输出结果是   \r\nint   a, b;\r\nvoid fun()\r\n{   a=100; b=200;  }\r\nmain()\r\n{   int  a=100, b=100;\r\nfun();\r\nprintf(“%d％d \\n”, a,b); \r\n}\r\n', null, 'A、 100200', 'B、 100100', 'C、 200100', 'D、 200200', 'B', '20');
INSERT INTO `problem` VALUES ('25', '有如下程序\r\nint func(int a,int b)\r\n{   return(a+b);}\r\nmain()\r\n{   int   x=2,y=x,z=8,r;\r\nr=func(func(x,y),func(y,z));\r\nprintf(“%d\\n”,r);   }\r\n该程序的输出的结果是     \r\n', null, 'A、 12', 'B、 13', 'C、 14', 'D、15', 'C', '20');
INSERT INTO `problem` VALUES ('26', '语句int *p;说明了 ', null, 'A、p是指向一维数组的指针 ', 'B、p是指向函数的指针,该函数返回一int型数据', 'C、p是指向int型数据的指针', 'D、p是函数名,该函数返回一指向int型数据的指针', 'C', '20');
INSERT INTO `problem` VALUES ('27', '已知：int a, *p=&a; 则下列函数调用中错误的是（   ）', null, 'A、scanf(“%d”,&a);', 'B、scanf(“%d”,p);', 'C、printf(“%d”,a);', 'D、printf(“%d”,p);', 'D', '20');
INSERT INTO `problem` VALUES ('28', '有如下程序\r\nint  a[10]={1,2,3,4,5,6,7,8,9,10},*P=a;\r\n则数值为9的表达式是     \r\n', null, 'A、 *P+9  ', 'B、 *(P+8) ', 'C、 *P+=9 ', 'D、 P+8', 'B', '20');
INSERT INTO `problem` VALUES ('29', '下面程序的输出结果是   main()\r\n{  int  a[ ]={1,2,3,4,5,6,7,8,9,0},*p;\r\n   p=a;\r\n   printf(“%d\\n”,*p+1); \r\n}\r\n', null, 'A、0 ', 'B、 1', 'C、 2', 'D、 输出错误', 'C', '20');
INSERT INTO `problem` VALUES ('30', ' 请读程序,输出结果为:      \r\n#include<stdio.h>\r\nint a[]={2,4,6,8};\r\nmain()\r\n{ int i,b[4];\r\nint *p=a;\r\nfor(i=0;i<4;i++) {b[i]=*p；p++;}\r\nprintf(\"%d\\n\",b[2]);\r\n}\r\n', null, 'A、 6 ', 'B、 8  ', 'C、 4 ', 'D、 2', 'A', '20');

-- ----------------------------
-- Table structure for `studentinfo`
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `school` varchar(20) CHARACTER SET utf8 NOT NULL,
  `profession` varchar(20) CHARACTER SET utf8 NOT NULL,
  `studentID` varchar(20) CHARACTER SET utf8 NOT NULL,
  `classID` varchar(20) CHARACTER SET utf8 NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(20) CHARACTER SET utf8 NOT NULL,
  `phoneNumber` varchar(20) CHARACTER SET utf8 NOT NULL,
  `QQ` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('1', '南昌工程学院', '计算机', '2014102204', '01', '林3', '女', '13047907767', '1090336402');
INSERT INTO `studentinfo` VALUES ('2', '南昌工程学院', '计算机', '2014102203', '01', '林2', '男', '13047907768', '1090336401');
INSERT INTO `studentinfo` VALUES ('3', '南昌工程学院', '计算机', '2014102202', '01', '林1', '男', '13047907769', '1090336400');
INSERT INTO `studentinfo` VALUES ('4', '南昌工程学院', '计算机', '2014102233', '01', '林某某', '男', '1100', '1200');

-- ----------------------------
-- Table structure for `teacherinfo`
-- ----------------------------
DROP TABLE IF EXISTS `teacherinfo`;
CREATE TABLE `teacherinfo` (
  `id` int(10) NOT NULL,
  `school` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `teacherID` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `QQ` varchar(20) NOT NULL,
  PRIMARY KEY (`QQ`,`phoneNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacherinfo
-- ----------------------------
INSERT INTO `teacherinfo` VALUES ('1', '南昌工程学院', 'C语言', '班主任', '2003102202', '张1', '女', '111', '222');
INSERT INTO `teacherinfo` VALUES ('2', '南昌工程学院', '数据结构', '课任老师', '2005102203', '张2', '男', '333', '444');
INSERT INTO `teacherinfo` VALUES ('3', '南昌工程学院', 'JAVA', '课任老师', '2001102206', '张3', '男', '555', '666');

-- ----------------------------
-- Table structure for `t_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password_md5` varchar(50) NOT NULL,
  `xm` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('1', 'root', '123', null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `userPwd` varchar(20) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '13047907769', '123123', '2016-11-30 21:59:00');
INSERT INTO `user` VALUES ('2', '13047907761', '123123', '2016-12-01 11:44:45');
INSERT INTO `user` VALUES ('3', '13047907762', '123123', '2016-12-01 11:44:55');
INSERT INTO `user` VALUES ('4', '13047907763', '123123', '2016-12-01 11:45:02');
INSERT INTO `user` VALUES ('5', '13047907764', '123123', '2016-12-01 11:45:10');
INSERT INTO `user` VALUES ('6', '13047907529', '123123q', '2016-12-07 13:07:09');
INSERT INTO `user` VALUES ('7', '18679458735', '1234567', '2016-12-07 13:51:21');
INSERT INTO `user` VALUES ('8', '13047585858', '123123', '2016-12-07 13:56:21');
INSERT INTO `user` VALUES ('9', '13047907722', '123123', '2016-12-10 12:05:01');
INSERT INTO `user` VALUES ('10', '13047555555', '123123', '2016-12-10 22:41:45');
INSERT INTO `user` VALUES ('11', '13047666666', '123123', '2016-12-10 22:42:33');
INSERT INTO `user` VALUES ('12', '13047907777', '123456', '2016-12-10 22:46:57');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET sjis NOT NULL,
  `pwd` varchar(32) CHARACTER SET sjis NOT NULL,
  `sex` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
