package com.github.binarywang.demo.spring.controller;

import org.apache.commons.lang3.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import java.sql.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestController
@RequestMapping("/wechat/pay")
public class WebPayController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private String rPrice;
    private String rUrl;
    private String rDetail;


    @ResponseBody
    @GetMapping(produces = "text/plain;charset=utf-8")
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView get(@RequestParam(name = "rId", required = false) String rId) {
        this.logger.info("\n接收到消息：[{}]", "rId:"+rId);
        searchUrl(rId);

        String token = "9uSthlpmuBOhknyBQSYYf5nnMIiyGXbu"; //记得更改 http://codepay.fateqq.com 后台可设置
        String codepay_id ="50563" ;//记得更改 http://codepay.fateqq.com 后台可获得

        String price=rPrice; //表单提交的价格

        String type="1"; //支付类型  1：支付宝 2：QQ钱包 3：微信
        String pay_id= RandomStringUtils.randomAlphanumeric(32);
//        String pay_id="adu4862"; //支付人的唯一标识
        String param=rId; //自定义一些参数 支付后返回
        generatePayInfo(rId , pay_id,rDetail);

//        String notify_url="http://localhost:8080/wechat/notify?pay_id="+pay_id+"&rId="+rId;//通知地址
        String notify_url="http://localhost:8080/codepay.jsp";//通知地址
        String return_url = "http://localhost:8080/wechat/result?pay_id="+pay_id+"&param="+param;//支付成功跳转地址
        if(price==null){
            price="1";
        }
        //参数有中文则需要URL编码
        String url="http://codepay.fateqq.com:52888/creat_order?id="+codepay_id+"&pay_id="+pay_id+"&price="+price+"&type="+type+"&token="+token
                +"&param="+param
                +"&notify_url="+notify_url
                +"&return_url="+return_url;

        return  new ModelAndView(new RedirectView(url));
    }



    private void searchUrl(String s) {
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


            StringBuffer sbSql1 = new StringBuffer("select rPrice,rUrl,rDetail from tb_resource where  rId =" + s);

            ResultSet rs1 = stmt.executeQuery(sbSql1.toString());// executeQuery会返回结果的集合，否则返回空值
            System.out.println("标题");
            while (rs1.next()) {
                System.out.println("rPrice:"+rs1.getString(1)+"\nrUrl:"+rs1.getString(2));// 入如果返回的是int类型可以用getInt()
                rPrice = rs1.getString(1);
                rUrl = rs1.getString(2);
                rDetail = rs1.getString(3);

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
    private void generatePayInfo(String rId, String pay_id, String rDetail) {
        Connection conn = null;
        String sql;

        String url = "jdbc:mysql://localhost:3306/Movie_db?"
                + "user=yanglong&password=123456&useUnicode=true&characterEncoding=gbk";

        try {
            // 之所以要使用下面这条语句，是因为要使用MySQL的驱动，所以我们要把它驱动起来，
            // 可以通过Class.forName把它加载进去，也可以通过初始化来驱动起来，下面三种形式都可以
            Class.forName("com.mysql.jdbc.Driver");// 动态加载mysql驱动


            System.out.println("成功加载MySQL驱动程序");
            conn = DriverManager.getConnection(url);
            Statement stmt = conn.createStatement();

            sql = "insert into tb_pay_id(rId,pay_id) values('"+rId+"','"+pay_id+"')";
            int result = stmt.executeUpdate(sql);

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
