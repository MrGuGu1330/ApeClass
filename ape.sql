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
);
insert into course_classification values(null,'python');
insert into course_classification values(null,'前端');
insert into course_classification values(null,'数据分析');
insert into course_classification values(null,'软件测试');
insert into course_classification values(null,'云计算');
insert into course_classification values(null,'小课');
insert into course_classification values(null,'Java(新)');
insert into course_classification values(null,'云计算(新)');
insert into course_classification values(null,'Java');
insert into course_classification values(null,'网络工程');

--创建课程模块表
create table course_moudle(
	cm_type varchar(8) unique,
	title varchar(32),
);
insert into course_moudle values('py01','Python环境安装');
insert into course_moudle values('py02','Python基础知识');
insert into course_moudle values('py03','Python进阶知识');
insert into course_moudle values('py03','TCP-IP协议相关与抓包');
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
	ps_id int unique auto_increment,
	section varchar(16),
	title varchar(128),
	cmid varchar(8),
	foreign key(cmid) references course_moudle(cm_type)
);
insert into py_section values(null,'前言','Python环境安装','py01');
insert into py_section values(null,'第一章','变量与数据类型','py02');
insert into py_section values(null,'第二章','函数、运算符与数据类型的常用方法','py02');
insert into py_section values(null,'第三章','流程控制、循环语句、异常处理、函数的高级用法','py02');
insert into py_section values(null,'第四章','常用模块和面向对象','py03');
insert into py_section values(null,'第五章','线程与进程、网络编程、生成器与迭代器、协程、异步IO','py03');
insert into py_section values(null,'第六章','TCP-IP协议与抓包','py04');
insert into py_section values(null,'第七章','数据库基础','py05');
insert into py_section values(null,'第八章','数据库进阶','py05');
insert into py_section values(null,'第九章','前端基础知识与爬虫','py06');
insert into py_section values(null,'第十章','Scrapy框架基础','py07');
insert into py_section values(null,'第十一章','Scrapy框架进阶与Redis','py07');
insert into py_section values(null,'第十二章','分布式爬虫与Selenium框架','py07');
insert into py_section values(null,'第十三章','Django基础','py08');
insert into py_section values(null,'第十四章','Django进阶','py08');
insert into py_section values(null,'第十五章','Django拾遗与博客项目','py08');
insert into py_section values(null,'第十六章','博客项目','py08');
insert into py_section values(null,'第十七章','Linux基础与项目部署','py09');
insert into py_section values(null,'第十八章','JavaScript基础','py10');
insert into py_section values(null,'第十九章','JavaScript进阶','py10');
insert into py_section values(null,'第二十章','Chrome开发工具与js加密','py11');
insert into py_section values(null,'第二十一章','js加密进阶与搭建Node服务','py11');
insert into py_section values(null,'第二十二章','数据结构','py12');
insert into py_section values(null,'第二十三章','常用算法','py12');
insert into py_section values(null,'第二十四章','Python面试宝典','py13');
insert into py_section values(null,'第二十五章','破解常见验证码(赠送)','py14');
insert into py_section values(null,'第二十六章','知乎爬虫项目(赠送)','py14');


--创建python课程表
create table py_course(
	pc_id int primary key auto_increment,
	title varchar(128),
	src varchar(128),
	section_id varchar(8),
	foreign key(section_id) references py_section(ps_id)
);