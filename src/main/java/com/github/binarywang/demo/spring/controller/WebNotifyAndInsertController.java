package com.github.binarywang.demo.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;
import java.util.*;

@RestController
@RequestMapping("/wechat/notify")
public class WebNotifyAndInsertController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    private String detail ="";
    private boolean hasResult =false;
    private String rDetail;

    @ResponseBody
    @GetMapping(produces = "text/plain;charset=utf-8")
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView get(@RequestParam(name = "pay_id", required = false) String pay_id,
                            @RequestParam(name = "rId", required = false) String rId

    ) throws NoSuchAlgorithmException {
        this.logger.info("\n接收到消息：[{pay_id}]", pay_id);

        String key = "5S2H2yYBO1X7g4RF1SKY26E5GEoY83"; //记得更改 http://codepay.fateqq.com 后台可设置
        Map<String,String> params = new HashMap<String,String>(); //申明hashMap变量储存接收到的参数名用于排序
        List<String> keys = new ArrayList<String>(params.keySet()); //转为数组
        Collections.sort(keys); //重新排序
        String prestr = "";
        String sign= params.get("sign"); //获取接收到的sign 参数

        for (int i = 0; i < keys.size(); i++) { //遍历拼接url 拼接成a=1&b=2 进行MD5签名
            String key_name = keys.get(i);
            String value = params.get(key_name);
            if(value== null || value.equals("") ||key_name.equals("sign")){ //跳过这些 不签名
                continue;
            }
            if (prestr.equals("")){
                prestr =  key_name + "=" + value;
            }else{
                prestr =  prestr +"&" + key_name + "=" + value;
            }
        }
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update((prestr+key).getBytes());
        String  mySign = new BigInteger(1, md.digest()).toString(16).toLowerCase();
        if(mySign.length()!=32)mySign="0"+mySign;
        if(mySign.equals(sign)){
            //编码要匹配 编码不一致中文会导致加密结果不一致
            //参数合法处理业务

            //request.getParameter("pay_no") 流水号
//		request.getParameter("pay_id") 用户唯一标识
            //request.getParameter("money") 付款金额
            //request.getParameter("price") 提交的金额
//            out.print("ok");
        }else{
            //参数不合法
//            out.print("fail");
        }
//        searchMovie(code);
//        boolean b = searchResult(pay_id);
//        generatePayInfo(rId,pay_id,rDetail);
        ModelAndView mav = new ModelAndView("result");

        return mav;
    }



}
