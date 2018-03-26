<h1>OVLS在线学习平台</h1>
<h2>主要功能模块</h2>
<p><img src="https://i.imgur.com/N3Wfot6.png" /></p>
<h2>主要技术</h2>
<ul>
<li>
<p>服务器端</p>
<p>SpringMVC、SpringIOC、Spring AOP、MyBatis、SpringBoot、SpringCloud、pageHelper</p>
</li>
<li>
<p>客户端</p>
<p>Ajax、JQuery、layer、bootstrap、手风琴特效等</p>
</li>
<li>
<p>数据存储</p>
<p>MySQL、Redis</p>
</li>
<li>
<p>界面</p>
<p>动态：JSP、thymeleaf技术</p>
<p>静态：html技术</p>
</li>
</ul>
<h2>系统架构</h2>
<p><img src="https://i.imgur.com/iQIhF2W.png" /></p>
<h1>OVLS数据库（MySQL）</h1>
<h2>MySQL安装</h2>
<pre><code>参考安装文档。
</code></pre>

<h2>MySQL使用</h2>
<p><img src="https://i.imgur.com/tqOChp0.png" /></p>
<ol>
<li>
<p>库操作</p>
<p>库里面用于存储表，索引，视图，过程。如果想对表操作，必须先use库。</p>
<ul>
<li>show databases; //查看所有库名</li>
<li>use 库名 //使用某个库</li>
<li>drop database 库名 //删除某个库</li>
<li>create database 库名 default charset utf8; //创建一个库</li>
<li>show create database 库名; //显示创建库的sql语句</li>
</ul>
</li>
<li>
<p>表操作</p>
<ul>
<li>show tables; //查看当前库中有哪些表</li>
<li>desc 表名; //查看表结构</li>
<li>create table 表名(...) //创建表</li>
<li>drop table 表名; //删除表</li>
<li>alter table xxx ...; //修改表结构</li>
</ul>
<p>注意：与Oracle不同的是字段类型、自动递增、表引擎。</p>
<ul>
<li>字段类型,oracle使用NUMBER、VARCHAR2、CHAR、DATE、CLOB、BLOB、TIMESTAMP; mysql使用int、long、double、float、varchar、char、date、clob、blob、timestamp、text等</li>
<li>
<p>自动递增</p>
<p>create table dept(
	deptno int primary key auto_increment,
	dname varchar(20),
	loc varchar(20)
) engine=innodb default charset=utf8;</p>
</li>
<li>
<p>表引擎</p>
<p>MyISAM、InnoDB等类型。
一般默认为MyISAM，建议建表时指定为InnoDB类型。InnoDB支持事务、表行级锁功能。</p>
</li>
</ul>
</li>
<li>
<p>记录操作</p>
<ul>
<li>
<p>insert（与Oracle相同）</p>
<pre><code>insert into dept(dname,loc) values ('aa','bb'),('cc','dd');
</code></pre>

</li>
<li>
<p>update（与Oracle相同）</p>
</li>
<li>delete（与Oracle相同）</li>
<li>
<p>select（与Oracle相同）</p>
<pre><code>select * from dept limit 抓取起点,最大抓取数量;
select * from dept limit 10,5;
</code></pre>

</li>
</ul>
</li>
<li>
<p>函数和关键字</p>
<p>mysql和oracle都有各自的数值函数、字符函数、日期函数等。</p>
<p>select sysdate from dept;</p>
<p>select now() from dept;</p>
</li>
</ol>
<h2>数据库导入</h2>
<pre><code>create database studyonline;
use studyonline;
set names utf8;
source D:\\studyonline.sql
</code></pre>

