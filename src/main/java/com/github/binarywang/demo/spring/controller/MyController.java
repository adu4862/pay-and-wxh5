package com.github.binarywang.demo.spring.controller;

import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.result.WxMpUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/wechat/my")
public class MyController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    private String title;
    private String descb;
    private String movInfoOuter;
    private String detail ="";
    private List<Map<String, Object>> list = new ArrayList<>();

    @Autowired
    private WxMpService wxService;

    @ResponseBody
    @GetMapping(produces = "text/plain;charset=UTF-8")
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView get() {
        this.logger.info("\n：[{}]");
//        searchCourseList();
        String lang = "zh_CN"; //语言
//        WxMpUser user = wxMpService.getUserService().userInfo(openid,lang);

        ModelAndView mav = new ModelAndView("my");
        //将参数返回给页面
        mav.addObject("my", list);
        return mav;
    }


}
