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

<h2>数据库结构</h2>
<p><img src="https://i.imgur.com/9ZFvufq.png" /></p>
<p><img src="https://i.imgur.com/luxszGa.png" /></p>
<h2>在线学习Web工程搭建</h2>
<ol>
<li>
<p>创建maven project，在pom.xml中追加定义</p>
<pre><code><parent>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-parent</artifactId>
    <version>1.4.7.RELEASE</version>
</parent>

<dependencies>
    <!-- web -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>

        <!-- jsp -->
    <dependency>
      <groupId>jstl</groupId>
      <artifactId>jstl</artifactId>
      <version>1.2</version>
    </dependency>

    <dependency>
      <groupId>org.apache.tomcat.embed</groupId>
      <artifactId>tomcat-embed-jasper</artifactId>
    </dependency>

</dependencies>
</code></pre>

</li>
<li>
<p>添加application.properties,追加定义</p>
<pre><code>server.port=9001
spring.mvc.view.prefix=/study/
spring.mvc.view.suffix=.jsp
</code></pre>

</li>
<li>
<p>添加启动类</p>
<pre><code>@SpringBootApplication
public class StudyBootApplication {

    public static void main(String[] args) {
        SpringApplication.run(StudyBootApplication.class, args);
    }

}
</code></pre>

</li>
<li>
<p>在src/main下创建webapp目录，将study界面复制进去。</p>
</li>
<li>
<p>映射html请求，显示jsp页面</p>
<p>/study/<em>.html-->DispatcherServlet-->StudyController-->ViewResolver-->webapp/study/</em>.jsp</p>
<pre><code>@Controller
public class StudyController {

    @RequestMapping("/study/index.html")
    public String toIndex(){
        return "index";//viewresolver-->index.jsp
    }

    @RequestMapping("/study/course.html")
    public String toCourse(){
        return "course";
    }

}
</code></pre>

</li>
</ol>
<h2>在线考试Web工程搭建</h2>
<ol>
<li>
<p>创建maven project,在pom.xml添加定义</p>
<pre><code><parent>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-parent</artifactId>
    <version>1.4.7.RELEASE</version>
</parent>

<dependencies>
    <!-- web -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>

    <!-- thymeleaf -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-thymeleaf</artifactId>
    </dependency>
    <!-- 取消严格thymeleaf模板校验 -->
    <dependency>
        <groupId>net.sourceforge.nekohtml</groupId>
        <artifactId>nekohtml</artifactId>
    </dependency>

</dependencies>
</code></pre>

</li>
<li>
<p>在application.properties添加参数定义</p>
<pre><code>server.port=9002
#nekohtml
spring.thymeleaf.mode=LEGACYHTML5
</code></pre>

</li>
<li>
<p>编写主启动类</p>
<pre><code>@SpringBootApplication
public class ExamBootApplication {

    public static void main(String[] args) {
        SpringApplication.run(ExamBootApplication.class, args);
    }

}
</code></pre>

</li>
<li>
<p>将html模板文件放入src\main\resources\templates目录中</p>
<ul>
<li>创建templates目录，将html放入</li>
<li>创建static或public，将resources文件静态资源放入</li>
</ul>
</li>
<li>
<p>映射html请求，显示thymeleaf模板页面</p>
<p>/exam/<em>.html-->DispatcherServlet-->ExamController-->thymeleaf(</em>.html界面)</p>
<pre><code>@Controller
public class ExamController {

    @RequestMapping("/exam/home.html")
    public String toHome(){
        return "home";
    }

}
</code></pre>

</li>
</ol>
<h2>用户服务模块</h2>
<h3>功能接口设计</h3>
<ol>
<li>
<p>注册</p>
<ul>
<li>
<p>表操作：对USER表进行插入。</p>
</li>
<li>
<p>请求地址：/user/regist  POST</p>
</li>
<li>
<p>请求参数：用户名、密码</p>
</li>
<li>
<p>响应结果：{"status":1,"msg":"注册成功"}</p>
</li>
<li>
<p>详细设计：</p>
</li>
</ul>
<p>/user/regist-->UserController.regist-->UserService.addUser-->UserMapper-->返回JSON结果</p>
</li>
<li>
<p>登录</p>
<ul>
<li>表操作：对USER表进行查询。</li>
<li>请求地址：/user/login  POST</li>
<li>请求参数：用户名、密码</li>
<li>响应结果：{"status":1,"msg":"登录成功"}</li>
<li>详细设计：</li>
</ul>
<p>/user/login-->UserController.login-->UserService.checkUser-->UserMapper-->返回JSON结果</p>
</li>
<li>
<p>查看个人信息</p>
<p>对USER表进行查询。</p>
</li>
<li>
<p>修改个人信息</p>
<p>对USER表进行更新。</p>
</li>
<li>
<p>修改密码</p>
<p>对USER表进行更新。</p>
</li>
</ol>




