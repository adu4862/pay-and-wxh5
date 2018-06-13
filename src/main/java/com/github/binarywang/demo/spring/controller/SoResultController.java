package com.github.binarywang.demo.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestController
@RequestMapping("/wechat/so")
public class SoResultController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private String title;
    private String descb;
    private String movInfoOuter;
    private String detail ="";
    private List<Map<String, Object>> list = new ArrayList<>();

    @ResponseBody
    @GetMapping(produces = "text/plain;charset=UTF-8")
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView get(@RequestParam(name = "name", required = false) String name) throws UnsupportedEncodingException {
        this.logger.info("\n接收到消息：[{}]", name);
        searchMovie(name);
        byte[] b = name.getBytes("gbk");//编码
        String sa = new String(b, "gbk");//解码:用什么字符集编码就用什么字符集解码
        System.out.println(sa);


//        String msg = request.getParameter("message");
        String str=new String(name.getBytes("ISO-8859-1"),"GBK");
        System.out.println(str);

        str = new String(name.getBytes("ISO-8859-1"),"GB2312");
        System.out.println(str);
//        Pattern pattern = Pattern.compile("\\\\"); //去掉空格符合换行符
//        Matcher matcher = pattern.matcher(detail);
//        String result = matcher.replaceAll("");
//        result = result.replaceAll("n ", "");
//        result = result.replaceAll(" n", "");
//        result = result.replaceAll("n<", "<");

//        movInfoOuter = movInfoOuter.replace("src=\"http://static.miguyu.com/View/images/imgLoad.png\"", "");
//        movInfoOuter = movInfoOuter.replace("data-url", "src");

        ModelAndView mav = new ModelAndView("so");
        //将参数返回给页面
        mav.addObject("list", list);
        return mav;
    }
    private void searchMovie(String movieName) {
        list = new ArrayList<>();
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


            // 一个Connection代表一个数据库连接
            conn = DriverManager.getConnection(url);
            // Statement里面带有很多方法，比如executeUpdate可以实现插入，更新和删除等
            Statement stmt = conn.createStatement();
            StringBuffer sbSql = new StringBuffer();
            sbSql.append("select * from tb_movie2_copy where ");
            int length = movieName.length();
            dbSearch(movieName, sbSql, length);

            ResultSet rs = stmt.executeQuery(sbSql.toString());// executeQuery会返回结果的集合，否则返回空值
            System.out.println(sbSql.toString());
            ResultSetMetaData md = rs.getMetaData(); //获得结果集结构信息,元数据
            int columnCount = md.getColumnCount();   //获得列数

            while (rs.next()) {
                Map<String,Object> rowData = new HashMap<String,Object>();
                for (int i = 1; i <= columnCount; i++) {
                    String columnName = md.getColumnName(i);
                    Object object = rs.getObject(i);
                    if ("code".equals(columnName)) {
                        String s = object.toString();
                        rowData.put(columnName, "http://www.changs1992.cn/wechat/web?code=" + s);
                    } else {

                        rowData.put(columnName, object);
                    }
                }
                list.add(rowData);

            }

        } catch (Exception e) {
            System.out.println("MySQL操作错误");
            e.printStackTrace();
        }  finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    public static void dbSearch(String movieName, StringBuffer sbSql, int length) {
        for (int i = 0; i < length; i++) {
            char c = movieName.charAt(i);
            if (i != 0) {

                sbSql.append("and title like '%" + c + "%'");
            } else {

                sbSql.append("title like '%" + c + "%'");
            }
        }
    }

}
