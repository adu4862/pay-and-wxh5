package com.github.binarywang.demo.spring.utils;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;

import java.io.IOException;

public class CommonFunForHttp {


    public static String getHTTP(String url){
        StringBuilder builder = new StringBuilder();
        HttpClient client = new DefaultHttpClient();
        HttpGet request = new HttpGet(url);
//        request.setParams(params);
        try {
            HttpResponse response = client.execute(request);

            String result = EntityUtils.toString(response.getEntity());//可以很好的处理中文，保证中文没有乱码
            //System.out.println("得到CRM内容:"+result);
            return result;


        } catch (ClientProtocolException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "";
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "";
        }
    }

}