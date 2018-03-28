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

        create database studyonline;
        use studyonline;
        set names utf8;
        source D:\\studyonline.sql


<h2>数据库结构</h2>
<p><img src="https://i.imgur.com/9ZFvufq.png" /></p>
<p><img src="https://i.imgur.com/luxszGa.png" /></p>
<h2>在线学习Web工程搭建</h2>
<ol>
<li>
<p>创建maven project，在pom.xml中追加定义</p>

        <parent>
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


</li>
<li>
<p>添加application.properties,追加定义</p>

        server.port=9001
        spring.mvc.view.prefix=/study/
        spring.mvc.view.suffix=.jsp

</li>
<li>
<p>添加启动类</p>

        @SpringBootApplication
        public class StudyBootApplication {
        
            public static void main(String[] args) {
                SpringApplication.run(StudyBootApplication.class, args);
            }
        
        }

</li>
<li>
<p>在src/main下创建webapp目录，将study界面复制进去。</p>
</li>
<li>
<p>映射html请求，显示jsp页面</p>
<p>/study/<em>.html-->DispatcherServlet-->StudyController-->ViewResolver-->webapp/study/</em>.jsp</p>

        @Controller
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

</li>
</ol>
<h2>在线考试Web工程搭建</h2>
<ol>
<li>
<p>创建maven project,在pom.xml添加定义</p>

        <parent>
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

</li>
<li>
<p>在application.properties添加参数定义</p>

        server.port=9002
        #nekohtml
        spring.thymeleaf.mode=LEGACYHTML5


</li>
<li>
<p>编写主启动类</p>

        @SpringBootApplication
        public class ExamBootApplication {
        
            public static void main(String[] args) {
                SpringApplication.run(ExamBootApplication.class, args);
            }
        
        }

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

        @Controller
        public class ExamController {
        
            @RequestMapping("/exam/home.html")
            public String toHome(){
                return "home";
            }
        
        }


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
<h3>密码加密</h3>
<p>密码使用MD5(密码+salt随机盐)算法处理。</p>
<h3>Ajax跨域解决</h3>
<p>有两种解决方案，一个是jsonp，另一个是CORS</p>
<p>JSONP只能实现GET请求，而CORS支持所有类型的HTTP请求。这里不考虑JSONP。 HTML5带来了一个新的跨域解决方案CORS，CORS是一个W3C标准，全称是”跨域资源共享”（Cross-Origin Resource Sharing）</p>
<p>定义一个Filter，对CORS参数设置</p>

        @WebFilter(servletNames={"dispatcherServlet"})
        public class AjaxDomainFilter implements Filter{
        
            public void init(FilterConfig filterConfig) throws ServletException {
                // TODO Auto-generated method stub
        
            }
        
            public void doFilter(ServletRequest request, 
                    ServletResponse response, FilterChain chain)
                    throws IOException, ServletException {
                HttpServletResponse httpResponse = (HttpServletResponse)response;
                httpResponse.setHeader("Access-Control-Allow-Origin", "*");
                httpResponse.setHeader("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE");
                chain.doFilter(request, response);
            }
        
            public void destroy() {
                // TODO Auto-generated method stub
        
            }
        
        }

<p>注意：在启动类前添加@ServletComponentScan注解标记。</p>
<h3>热启动</h3>
<p>每次修改代码后，可以自动启动boot。</p>

        <dependency>
          <groupId>org.springframework.boot</groupId>
          <artifactId>spring-boot-devtools</artifactId>
        </dependency>

<h3>MySQL添加乱码</h3>
<p>在指定mysql连接字符串时指定编码</p>

        spring.datasource.url=jdbc:mysql://localhost:3306/studyonline?useUnicode=true&characterEncoding=utf8


<h3>登录</h3>
<p><img src="https://i.imgur.com/mK3J4HO.png" /></p>
<h2>登录涉及技术</h2>
<ol>
<li>密码MD5+盐加密技术</li>
<li>SSO单点登录技术</li>
<li>采用token令牌机制</li>
<li>采用服务器端redis存储和客户端h5本地存储</li>
<li>采用UUID算法</li>
</ol>
<h2>课程服务工程搭建</h2>
<ol>
<li>
<p>创建maven project,在pom.xml添加引入</p>

		<dependencies>
		    <dependency>
		        <groupId>cn.xdl</groupId>
		        <artifactId>ovls_common_service</artifactId>
		        <version>0.0.1-SNAPSHOT</version>
		    </dependency>
		</dependencies>

</li>
<li>
<p>添加application.properties文件</p>

server.port=8002

		#datasource
		spring.datasource.username=root
		spring.datasource.password=1234
		spring.datasource.url=jdbc:mysql://localhost:3306/studyonline?useUnicode=true&characterEncoding=utf8
		spring.datasource.driverClassName=com.mysql.jdbc.Driver



</li>
<li>
<p>添加主启动类定义</p>

		@SpringBootApplication
		@MapperScan(basePackages={"cn.xdl.ovls.course.dao"})
		@ServletComponentScan
		public class CourseBootApplication {

		    public static void main(String[] args) {
		        SpringApplication.run(CourseBootApplication.class, args);
		    }

		}


</li>
<li>
<p>添加entity和Mapper映射器</p>
</li>
</ol>
<h2>设计和实现免费好课推荐功能</h2>
<p>/course/free-->DispatcherServlet-->CourseController-->CourseService-->CourseMapper-->返回JSON结果</p>
<p>{"status":1,"msg":"查询成功","data":课程集合}</p>
<p>查询免费好课，条件是免费、好课（评价）、前5个</p>





