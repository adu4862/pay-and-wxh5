package com.github.binarywang.demo.spring.handler;

import com.github.binarywang.demo.spring.builder.TextBuilder;
import com.github.binarywang.demo.spring.controller.SoResultController;
import com.github.binarywang.demo.spring.service.WeixinService;
import me.chanjar.weixin.common.api.WxConsts;
import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
import org.springframework.stereotype.Component;

import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.Map;

/**
 * @author Binary Wang
 */
@Component
public class MsgHandler extends AbstractHandler {

    private static String note_message = "sorry！没有找到该影剧！";

    @Override
    public WxMpXmlOutMessage handle(WxMpXmlMessage wxMessage,
                                    Map<String, Object> context, WxMpService wxMpService,
                                    WxSessionManager sessionManager) {

        WeixinService weixinService = (WeixinService) wxMpService;

        if (!wxMessage.getMsgType().equals(WxConsts.XmlMsgType.EVENT)) {
            //TODO 可以选择将消息保存到本地
        }
        String wxMessageContent = wxMessage.getContent();
        if ("随机".equals(wxMessageContent) || "1".equals(wxMessageContent)) {

            String randomX = getRandomNum();
//            if (randomX.startsWith("3")) {
//
//            }

//            String movieRandom = getMovieRandom(randomX);
            String content = "http://www.changs1992.cn/wechat/web?code=" + randomX + "";

            return new TextBuilder().build(content, wxMessage, weixinService);
        }

//        String content = searchMovie(wxMessageContent);
//        if ("".equals(content)) {
//            //没有找到影片,使用万能接口
//            content = "http://video.fastsoso.cn/search2?q=";
//            try {
//                String name = java.net.URLEncoder.encode("" + wxMessageContent, "UTF-8");
//                content = content + name;
//            } catch (UnsupportedEncodingException e) {
//                e.printStackTrace();
//            }
//        } else {
//
//            content = "http://www.changs1992.cn/wechat/web?code=" + content + "";
//        }
//        String content = "http://www.changs1992.cn/wechat/so?name=" +  String name = java.net.URLEncoder.encode("" + wxMessageContent, "UTF-8"); + "";
        String content = null;
        try {
                String name = java.net.URLEncoder.encode("" + wxMessageContent, "UTF-8");
                content = "http://www.changs1992.cn/wechat/so?name="  + name;
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }

        return new TextBuilder().build(content, wxMessage, weixinService);

    }

    private String getRandomNum() {

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

//            sql = "SELECT * FROM tb_movie WHERE code >= ((SELECT MAX(code) FROM tb_movie)-(SELECT MIN(code) FROM tb_movie)) * RAND() + (SELECT MIN(code) FROM tb_movie)  LIMIT 1";
            sql = "select code from tb_movie2_copy order by rand() limit 1";
            ResultSet rs = stmt.executeQuery(sql);
            int rowcount = 0;
            if (rs.last()) {
                rowcount = rs.getRow();
                rs.beforeFirst(); // not rs.first() because the rs.next() below will move on, missing the first element

            }
            while (rs.next()) {
                System.out
                        .println(rs.getString(1));// 入如果返回的是int类型可以用getInt()
                String s = rs.getString(1) + "\n" ;
                System.out.println("code:" + s);
                return rs.getString(1);


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
        return "";

    }




    private String searchMovie(String movieName) {
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
            StringBuffer sbSql = new StringBuffer();
            sbSql.append("select code from tb_movie2_copy where ");
            int length = movieName.length();
            SoResultController.dbSearch(movieName, sbSql, length);

            ResultSet rs = stmt.executeQuery(sbSql.toString());// executeQuery会返回结果的集合，否则返回空值
            System.out.println("标题");

            String s = note_message;
            while (rs.next()) {
                System.out
                        .println(rs.getString(1));// 入如果返回的是int类型可以用getInt()
                s = rs.getString(1);


            }
            if (note_message.equals(s)) {

                sql = "insert into tb_error_name(name) values('" + movieName + "')";
                stmt.executeUpdate(sql);
            }

            return s;
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
        return "";

    }



}
