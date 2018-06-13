package com.github.binarywang.demo.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.sql.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestController
@RequestMapping("/wechat/web")
public class WebOutputController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private String title;
    private String descb;
    private String movInfoOuter;
    private String detail ="";

    @ResponseBody
    @GetMapping(produces = "text/plain;charset=utf-8")
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView get(@RequestParam(name = "code", required = false) String code) {
        this.logger.info("\n接收到消息：[{}]", code);
        searchMovie(code);

        Pattern pattern = Pattern.compile("\\\\"); //去掉空格符合换行符
        Matcher matcher = pattern.matcher(detail);
        String result = matcher.replaceAll("");
        result = result.replaceAll("n ", "");
        result = result.replaceAll(" n", "");
        result = result.replaceAll("n<", "<");

        movInfoOuter = movInfoOuter.replace("src=\"http://static.miguyu.com/View/images/imgLoad.png\"", "");
        movInfoOuter = movInfoOuter.replace("data-url", "src");

        ModelAndView mav = new ModelAndView("Index");
        //将参数返回给页面
        mav.addObject("detail", result);
        mav.addObject("descb", descb);
        mav.addObject("title", this.title);
        mav.addObject("movInfoOuter", this.movInfoOuter);

        return mav;
    }

    private void searchMovie(String code) {
        Connection conn = null;
        String sql;
        // MySQL的JDBC URL编写方式：jdbc:mysql://主机名称：连接端口/数据库的名称?参数=值
        // 避免中文乱码要指定useUnicode和characterEncoding
        // 执行数据库操作之前要在数据库管理系统上创建一个数据库，名字自己定，
        // 下面语句之前就要先创建javademo数据库
        String url = "jdbc:mysql://localhost:3306/Movie_db?"
                + "user=yanglong&password=123456&useUnicode=true&characterEncoding=gbk";

        try {
            // 之所以要使用下面这条语句，是因为要使用MySQL的驱动，所以我们要把它驱动起来，
            // 可以通过Class.forName把它加载进去，也可以通过初始化来驱动起来，下面三种形式都可以
            Class.forName("com.mysql.jdbc.Driver");// 动态加载mysql驱动
            // or:
            // com.mysql.jdbc.Driver driver = new com.mysql.jdbc.Driver();
            // or：
            // new com.mysql.jdbc.Driver();

            System.out.println("成功加载MySQL驱动程序");
            // 一个Connection代表一个数据库连接
            conn = DriverManager.getConnection(url);
            // Statement里面带有很多方法，比如executeUpdate可以实现插入，更新和删除等
            Statement stmt = conn.createStatement();

            StringBuffer sbSql1 = new StringBuffer("select title,descb from tb_movie2_copy where  code =" + code);

            ResultSet rs1 = stmt.executeQuery(sbSql1.toString());// executeQuery会返回结果的集合，否则返回空值
            System.out.println("标题");
            title = "sorry！没有找到该影剧！";
            while (rs1.next()) {
                System.out.println("title:"+rs1.getString(1)+"\ndescb:"+rs1.getString(2));// 入如果返回的是int类型可以用getInt()
                title = rs1.getString(1);
                descb = rs1.getString(2);

            }

            StringBuffer sbSql2 = new StringBuffer("select movInfoOuter from tb_movie_movinfoouter where  code =" + code);

            ResultSet rs2 = stmt.executeQuery(sbSql2.toString());// executeQuery会返回结果的集合，否则返回空值
            while (rs2.next()) {
                System.out.println("movInfoOuter:"+rs2.getString(1));// 入如果返回的是int类型可以用getInt()
                movInfoOuter = rs2.getString(1);

            }

            StringBuffer sbSql = new StringBuffer("select detail from tb_movie_detail2 where  code =" + code);

            ResultSet rs = stmt.executeQuery(sbSql.toString());// executeQuery会返回结果的集合，否则返回空值
            System.out.println("code\t地址");
            while (rs.next()) {
//                System.out
//                        .println(rs.getString(1) + "\t" + rs.getString(2));// 入如果返回的是int类型可以用getInt()
                detail = rs.getString(1);

            }


//			}
        } catch (SQLException e) {
            System.out.println("MySQL操作错误");
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

}
