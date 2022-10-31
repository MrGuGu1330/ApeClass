-- 设置客户端连接服务器端的编码
set names utf8;
-- 丢弃数据，如果存在的话
drop database if exists ape;
-- 创建新的数据库，设置存储字符串的编码
create database ape charset=utf8;
--进入数据库
use ape;

--创建课程大类表
create table course_classification(
	cc_id int primary key auto_increment,
	title varchar(32),
	bgc varchar(32),
	pic varchar(16),
	bg_pic varchar(16),
	quantity int,
	info varchar(64),
	bg_bottom varchar(32)
);
insert into course_classification values(null,'Python',' #64CEFF 0%, #5A9CFF 100%','v2_r5rj7n','bg_course_0.png',226414,'年度最热门语言','bg_course_bottom_0');
insert into course_classification values(null,'前端','#82DFDB 0%, #5BCDB3 100%','v2_r5rjez','bg_course_1.png',228110,'前端小白的基础启蒙','bg_course_bottom_1');
insert into course_classification values(null,'数据分析','#74CDE7 0%, #26AED6 100%','v2_r5rjh7','bg_course_2.png',91890,'阿里冠军团队讲解','bg_course_bottom_2');
insert into course_classification values(null,'软件测试','#A4A0FF 0%, #9B6DFF 100%','v2_r5rjke','bg_course_3.png',115906,'从小白到高级测试工程师','bg_course_bottom_3');
insert into course_classification values(null,'云计算','#B88AFF 0%, #9B5AFF 100%','v2_r5sr8f','bg_course_4.png',55863,'程序员进阶必备技能','bg_course_bottom_4');
insert into course_classification values(null,'小课','#88E2A8 0%, #5BCD84 100%','v2_r5sraf','bg_course_5.png',58760,'Python进阶课程','bg_course_bottom_5');
insert into course_classification values(null,'Java(新)','#6BA6FF 0%, #297EFE 100%','v2_r5srff','bg_course_6.png',93966,'最热门的后端语言','bg_course_bottom_6');
insert into course_classification values(null,'云计算(新)','#FFBA73 0%, #FDA348 100%','v2_r5sr8f','bg_course_7.png',9784,'运维进阶首选课程','bg_course_bottom_7');
insert into course_classification values(null,'Java','#64CEFF 0%, #5A9CFF 100%','v2_r5srff','bg_course_0.png',70403,'最热门的后端语言','bg_course_bottom_0');
insert into course_classification values(null,'网络工程','#82DFDB 0%, #5BCDB3 100%','v2_r5rjh7','bg_course_1.png',14760,'','bg_course_bottom_1');

--创建课程模块表
create table course_module(
	cm_type varchar(8) unique,
	title varchar(32)
);

insert into course_module values('py01','Python环境安装');
insert into course_module values('py02','Python基础知识');
insert into course_module values('py03','Python进阶知识');
insert into course_module values('py04','TCP-IP协议相关与抓包');
insert into course_module values('py05','数据库相关');
insert into course_module values('py06','前端基础知识与爬虫相关');
insert into course_module values('py07','Scrapy框架相关');
insert into course_module values('py08','Django框架相关');
insert into course_module values('py09','服务器与项目部署');
insert into course_module values('py10','JavaScript相关');
insert into course_module values('py11','JS加密相关');
insert into course_module values('py12','数据结构与常用算法');
insert into course_module values('py13','面试内容');
insert into course_module values('py14','额外赠送爬虫集锦');

--创建python课程章节表
create table py_section(
	ps_id varchar(8) unique,
	section varchar(16),
	title varchar(128),
	cmid varchar(8),
	foreign key(cmid) references course_module(cm_type)
);
insert into py_section values('pyc01','前言','Python环境安装','py01');
insert into py_section values('pyc02','第一章','变量与数据类型','py02');
insert into py_section values('pyc03','第二章','函数、运算符与数据类型的常用方法','py02');
insert into py_section values('pyc04','第三章','流程控制、循环语句、异常处理、函数的高级用法','py02');
insert into py_section values('pyc05','第四章','常用模块和面向对象','py03');
insert into py_section values('pyc06','第五章','线程与进程、网络编程、生成器与迭代器、协程、异步IO','py03');
insert into py_section values('pyc07','第六章','TCP-IP协议与抓包','py04');
insert into py_section values('pyc08','第七章','数据库基础','py05');
insert into py_section values('pyc09','第八章','数据库进阶','py05');
insert into py_section values('pyc10','第九章','前端基础知识与爬虫','py06');
insert into py_section values('pyc11','第十章','Scrapy框架基础','py07');
insert into py_section values('pyc12','第十一章','Scrapy框架进阶与Redis','py07');
insert into py_section values('pyc13','第十二章','分布式爬虫与Selenium框架','py07');
insert into py_section values('pyc14','第十三章','Django基础','py08');
insert into py_section values('pyc15','第十四章','Django进阶','py08');
insert into py_section values('pyc16','第十五章','Django拾遗与博客项目','py08');
insert into py_section values('pyc17','第十六章','博客项目','py08');
insert into py_section values('pyc18','第十七章','Linux基础与项目部署','py09');
insert into py_section values('pyc19','第十八章','JavaScript基础','py10');
insert into py_section values('pyc20','第十九章','JavaScript进阶','py10');
insert into py_section values('pyc21','第二十章','Chrome开发工具与js加密','py11');
insert into py_section values('pyc22','第二十一章','js加密进阶与搭建Node服务','py11');
insert into py_section values('pyc23','第二十二章','数据结构','py12');
insert into py_section values('pyc24','第二十三章','常用算法','py12');
insert into py_section values('pyc25','第二十四章','Python面试宝典','py13');
insert into py_section values('pyc26','第二十五章','破解常见验证码(赠送)','py14');
insert into py_section values('pyc27','第二十六章','知乎爬虫项目(赠送)','py14');


--创建python课程表
create table py_course(
	pc_id int primary key auto_increment,
	title varchar(128),
	src varchar(128),
	section_id varchar(8),
	foreign key(section_id) references py_section(ps_id)
);

insert into py_course values(null,'从0到1学Python','','pyc01');
insert into py_course values(null,'Python环境的安装','','pyc01');
insert into py_course values(null,'Pycharm的安装','','pyc01');
insert into py_course values(null,'Typora的安装','','pyc01');
insert into py_course values(null,'Notepad++的安装','','pyc01');
insert into py_course values(null,'Python简介','','pyc01');
insert into py_course values(null,'Python版本介绍','','pyc01');
insert into py_course values(null,'编译型语言和解释型语言的区别','','pyc01');
insert into py_course values(null,'Python的解释器','','pyc01');

--创建sub表
create table sub_left(
    sub_id int,
    title varchar(64),
    type varchar(32)
);

insert into sub_left values(1,'1-从0到1学Python','Python');
insert into sub_left values(1,'2-Python环境的安装','Python');
insert into sub_left values(1,'3-Pycharm的安装','Python');
insert into sub_left values(1,'4-Typora的安装','Python');
insert into sub_left values(1,'5-Notepad++的安装','Python');
insert into sub_left values(2,'1-前端开发是什么以及我们要学什么','前端');
insert into sub_left values(2,'2-什么是HTML','前端');
insert into sub_left values(2,'3-什么是CSS','前端');
insert into sub_left values(2,'4-什么是JavaScript','前端');
insert into sub_left values(2,'5-HBuilder使用介绍','前端');
insert into sub_left values(3,'1-什么是数据库','数据分析');
insert into sub_left values(3,'2-数据库的管理','数据分析');
insert into sub_left values(3,'3-数据库的分类','数据分析');
insert into sub_left values(3,'4-数据表的管理','数据分析');
insert into sub_left values(3,'5-MySQL与Navicat的安装','数据分析');
insert into sub_left values(4,'1-测试导学','软件测试');
insert into sub_left values(4,'2-测试概述','软件测试');
insert into sub_left values(4,'3-工作流程与项目流程','软件测试');
insert into sub_left values(4,'4-项目各阶段产物','软件测试');
insert into sub_left values(4,'5-项目测试计划','软件测试');
insert into sub_left values(5,'1-学前必看-云计算课程说明','云计算');
insert into sub_left values(5,'2-Linux开班概述','云计算');
insert into sub_left values(5,'3-计算机基础概述','云计算');
insert into sub_left values(5,'4-office办公软件使用','云计算');
insert into sub_left values(5,'5-Notepad++文件编辑工具使用','云计算');
insert into sub_left values(6,'1-办公自动化之PPT课程介绍','小课');
insert into sub_left values(6,'2-python-pptx库简介','小课');
insert into sub_left values(6,'3-写入文本到PPT-1','小课');
insert into sub_left values(6,'4-写入文本到PPT-2','小课');
insert into sub_left values(6,'5-写入图片到PPT-1','小课');
insert into sub_left values(7,'1-第一个Java程序HelloWorld','Java(新)');
insert into sub_left values(7,'2-第一个Java程序HelloWorld下','Java(新)');
insert into sub_left values(7,'3-注释基本概念','Java(新)');
insert into sub_left values(7,'4-Java关键字和保留字','Java(新)');
insert into sub_left values(7,'5-变量和常量','Java(新)');
insert into sub_left values(8,'1-Linux操作系统配置ip地址','云计算(新)');
insert into sub_left values(8,'2-NFS服务搭建配置','云计算(新)');
insert into sub_left values(8,'3-Linux基本基础命令学习','云计算(新)');
insert into sub_left values(8,'4-vsftpd服务的安装配置','云计算(新)');
insert into sub_left values(8,'5-Linux vim编辑器的指令使用','云计算(新)');
insert into sub_left values(9,'1-二进制的基本概念','Java');
insert into sub_left values(9,'2-原码补码反码概念','Java');
insert into sub_left values(9,'3-字符集和字符编码概念','Java');
insert into sub_left values(9,'4-Java简介','Java');
insert into sub_left values(9,'5-JDK和jre的认识','Java');
insert into sub_left values(10,'1-网络通信基本概念','网络工程');
insert into sub_left values(10,'2-信息传递过程(上)','网络工程');
insert into sub_left values(10,'3-信息传递过程(下)','网络工程');
insert into sub_left values(10,'4-常见术语','网络工程');

create table sub_right(
    sub_id int,
    title varchar(32),
    type varchar(16)
);

insert into sub_right values(1,'Python环境安装','Python');
insert into sub_right values(1,'Python基础知识','Python');
insert into sub_right values(1,'Python进阶知识','Python');
insert into sub_right values(1,'TCP-IP协议相关与抓包','Python');
insert into sub_right values(1,'数据库相关','Python');
insert into sub_right values(2,'前端基础知识','前端');
insert into sub_right values(2,'兼容性问题与综合案例','前端');
insert into sub_right values(2,'CSS进阶','前端');
insert into sub_right values(2,'Bootstrap框架与移动端开发','前端');
insert into sub_right values(2,'JavaScript相关','前端');
insert into sub_right values(3,'数据库基础','数据分析');
insert into sub_right values(3,'MySQL之基础篇','数据分析');
insert into sub_right values(3,'MySQL之进阶篇','数据分析');
insert into sub_right values(3,'Python之基础篇','数据分析');
insert into sub_right values(3,'Python之进阶篇','数据分析');
insert into sub_right values(4,'软件测试基础','软件测试');
insert into sub_right values(4,'Linux操作系统','软件测试');
insert into sub_right values(4,'数据库基础','软件测试');
insert into sub_right values(4,'数据库进阶与实战','软件测试');
insert into sub_right values(4,'Python编程基础','软件测试');
insert into sub_right values(5,'Linux运维篇','云计算');
insert into sub_right values(5,'Apache Web部署篇','云计算');
insert into sub_right values(5,'MySQL与Redis安装部署篇','云计算');
insert into sub_right values(5,'MySQL进阶篇','云计算');
insert into sub_right values(5,'Zabbix+Nginx篇','云计算');
insert into sub_right values(6,'Python办公自动化','小课');
insert into sub_right values(6,'Python数据处理与实战','小课');
insert into sub_right values(6,'Python微信公众号开发实战','小课');
insert into sub_right values(6,'YOLOv4目标检测实战','小课');
insert into sub_right values(6,'爬虫项目实战','小课');
insert into sub_right values(7,'Java入门','Java(新)');
insert into sub_right values(7,'Java基础','Java(新)');
insert into sub_right values(7,'Java进阶','Java(新)');
insert into sub_right values(7,'Java8的特性与网络编程','Java(新)');
insert into sub_right values(7,'Java设计模式','Java(新)');
insert into sub_right values(8,'云计算基础','云计算(新)');
insert into sub_right values(8,'云计算进阶','云计算(新)');
insert into sub_right values(8,'云计算高级','云计算(新)');
insert into sub_right values(9,'Java基础','Java');
insert into sub_right values(9,'Java进阶','Java');
insert into sub_right values(9,'JDBC','Java');
insert into sub_right values(9,'Java实战基础','Java');
insert into sub_right values(9,'Spring & SpringBoot框架','Java');
insert into sub_right values(10,'网络基础原理','网络工程');
insert into sub_right values(10,'路由基础','网络工程');
insert into sub_right values(10,'网络工程进阶','网络工程');
insert into sub_right values(10,'园区项目实战','网络工程');
