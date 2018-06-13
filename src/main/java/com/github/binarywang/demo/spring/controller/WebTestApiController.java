package com.github.binarywang.demo.spring.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.github.binarywang.demo.spring.domain.AstroRsp;
import com.github.binarywang.demo.spring.utils.CommonFunForHttp;
import com.google.gson.Gson;
import org.apache.http.params.DefaultedHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.SyncBasicHttpParams;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.sql.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestController
@RequestMapping("/wechat/testApi")
public class WebTestApiController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    public static final String APPKEY = "e20d9a112d77477f";// 你的appkey
    public static final String URL = "http://api.jisuapi.com/astro/fortune";
    public static final int astroid = 1;
    public static final String date = "2016-01-19";

    @ResponseBody
    @GetMapping(produces = "text/plain;charset=utf-8")
    @RequestMapping(method = RequestMethod.GET)
    public String  get(@RequestParam(name = "astroid", required = false) String astroid,
                       @RequestParam(name = "date", required = false) String date) {
        this.logger.info("\n接收到消息：[{}]", "astroid" + astroid+"\ndate" + date);

        String result = null;
        String url = URL + "?astroid=" + astroid + "&date=" + date + "&appkey=" + APPKEY;

//        HttpParams httpParams = new SyncBasicHttpParams();
//        httpParams.setParameter("astroid", astroid);
//        httpParams.setParameter("date", date);
//        httpParams.setParameter("appkey", APPKEY);

        try {
            result = CommonFunForHttp.getHTTP(url);
//            AstroRsp astroRsp = new Gson().fromJson(result, AstroRsp.class);

        } catch (Exception e) {
            e.printStackTrace();
        }

//        ModelAndView mav = new ModelAndView("Index");
//        //将参数返回给页面
//        mav.addObject("detail",result);
        return result;
    }

}
