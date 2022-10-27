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
insert into course_classification values(null,'python',' #64CEFF 0%, #5A9CFF 100%','v2_r5rj7n','bg_course_0',226414,'年度最热门语言','bg_course_bottom_0');
insert into course_classification values(null,'前端','#82DFDB 0%, #5BCDB3 100%','v2_r5rjez','bg_course_1',228110,'前端小白的基础启蒙','bg_course_bottom_1');
insert into course_classification values(null,'数据分析','#74CDE7 0%, #26AED6 100%','v2_r5rjh7','bg_course_2',91890,'阿里冠军团队讲解','bg_course_bottom_2');
insert into course_classification values(null,'软件测试','#A4A0FF 0%, #9B6DFF 100%','v2_r5rjke','bg_course_3',115906,'从小白到高级测试工程师','bg_course_bottom_3');
insert into course_classification values(null,'云计算','#B88AFF 0%, #9B5AFF 100%','v2_r5sr8f','bg_course_4',55863,'程序员进阶必备技能','bg_course_bottom_4');
insert into course_classification values(null,'小课','#88E2A8 0%, #5BCD84 100%','v2_r5sraf','bg_course_5',58760,'Python进阶课程','bg_course_bottom_5');
insert into course_classification values(null,'Java(新)','#6BA6FF 0%, #297EFE 100%','v2_r5srff','bg_course_6',93966,'最热门的后端语言','bg_course_bottom_6');
insert into course_classification values(null,'云计算(新)','#FFBA73 0%, #FDA348 100%','v2_r5sr8f','bg_course_7',9784,'运维进阶首选课程','bg_course_bottom_7');
insert into course_classification values(null,'Java','#64CEFF 0%, #5A9CFF 100%','v2_r5srff','bg_course_0',70403,'最热门的后端语言','bg_course_bottom_0');
insert into course_classification values(null,'网络工程','#82DFDB 0%, #5BCDB3 100%','v2_r5rjh7','bg_course_1',14760,'','bg_course_bottom_1');

--创建课程模块表
create table course_moudle(
	cm_type varchar(8) unique,
	title varchar(32)
);

insert into course_moudle values('py01','Python环境安装');
insert into course_moudle values('py02','Python基础知识');
insert into course_moudle values('py03','Python进阶知识');
insert into course_moudle values('py04','TCP-IP协议相关与抓包');
insert into course_moudle values('py05','数据库相关');
insert into course_moudle values('py06','前端基础知识与爬虫相关');
insert into course_moudle values('py07','Scrapy框架相关');
insert into course_moudle values('py08','Django框架相关');
insert into course_moudle values('py09','服务器与项目部署');
insert into course_moudle values('py10','JavaScript相关');
insert into course_moudle values('py11','JS加密相关');
insert into course_moudle values('py12','数据结构与常用算法');
insert into course_moudle values('py13','面试内容');
insert into course_moudle values('py14','额外赠送爬虫集锦');

--创建python课程章节表
create table py_section(
	ps_id varchar(8) unique,
	section varchar(16),
	title varchar(128),
	cmid varchar(8),
	foreign key(cmid) references course_moudle(cm_type)
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