package com.github.binarywang.demo.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.sql.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestController
@RequestMapping("/wechat/result")
public class WebResultController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    private String detail ="";
    private boolean hasResult =false;
    private String rDetail;

    @ResponseBody
    @GetMapping(produces = "text/plain;charset=utf-8")
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView get(@RequestParam(name = "pay_id", required = false) String pay_id,
                            @RequestParam(name = "param", required = false) String param
                            ) {
        this.logger.info("\n接收到消息：[{pay_id}]", pay_id);
//        searchMovie(code);
//        boolean b = searchResult(pay_id);
//        pay_id = pay_id.substring(0, pay_id.indexOf(","));
        String[] split = param.split(",");
        if (split.length>0) {
            param = split[0];
        }
        String[] split1 = pay_id.split(",");
        if (split1.length>0) {
            pay_id = split1[0];
        }
        ModelAndView mav = new ModelAndView("result");
        if ( searchResult(pay_id)) {
            searchUrl(param);


            mav.addObject("detail", rDetail);
        }



        //将参数返回给页面
//


        return mav;
    }

    private boolean searchResult(String pay_id) {
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


            StringBuffer sbSql1 = new StringBuffer("select pay_id from tb_pay_id where  pay_id =" +'\"'+ pay_id +'\"');

            ResultSet rs = stmt.executeQuery(sbSql1.toString());// executeQuery会返回结果的集合，否则返回空值
            if (rs!=null) {

                hasResult = true;
                return hasResult;
            }




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
        return hasResult;

    }


    private void searchUrl(String rId) {
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


            StringBuffer sbSql1 = new StringBuffer("select rDetail from tb_resource where  rId ="+rId);

            ResultSet rs1 = stmt.executeQuery(sbSql1.toString());// executeQuery会返回结果的集合，否则返回空值
            System.out.println("标题");
            while (rs1.next()) {

                rDetail = rs1.getString(1);

            }




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
