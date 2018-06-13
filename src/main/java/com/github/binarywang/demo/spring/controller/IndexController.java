package com.github.binarywang.demo.spring.controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/")
public class IndexController {
    @ResponseBody
    @GetMapping(produces = "text/plain;charset=utf-8")
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView get() {
        ModelAndView mav = new ModelAndView("Home");
        //将参数返回给页面

        return mav;
    }
}
