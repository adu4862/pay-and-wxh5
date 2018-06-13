package com.github.binarywang.demo.spring.utils;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.client.AuthCache;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.utils.HttpClientUtils;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicAuthCache;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;



public class HttpClientUtil {


    private static final String ITIL_URL = "172.20.32.32";
    private static final int ITIL_PORT = 80;
    private static final String ITIL_PROTOCOL = "http";


    @SuppressWarnings("deprecation")
    public static String callingInterface(String jsonParams, String url) {
        CloseableHttpClient httpclient = HttpClients.createDefault();
        HttpClientContext  context = HttpClientContext.create();
        HttpHost targetHost = new HttpHost(ITIL_URL, ITIL_PORT, ITIL_PROTOCOL);
        //认证提供者
        CredentialsProvider credsProvider = new BasicCredentialsProvider();
        credsProvider.setCredentials(new AuthScope(targetHost.getHostName(), targetHost.getPort()), null);
        AuthCache authCache = new BasicAuthCache();
        context.setCredentialsProvider(credsProvider);
        context.setAuthCache(authCache);
        HttpPost httpPost = new HttpPost(url);
        StringEntity stringEntity = new StringEntity(jsonParams, "UTF-8");
        //设置请求参数
        httpPost.setEntity(stringEntity);
        BufferedReader reader = null;
        StringBuffer sb = new StringBuffer();
        try {
            HttpResponse response = httpclient.execute(targetHost, httpPost, context);
            System.out.println("status="+response.getStatusLine().getStatusCode());
            if(response.getStatusLine().getStatusCode() == 200){ //请求和响应都成功了
                //调用HttpResponse的getEntity()方法可获取HttpEntity对象，该对象包装了服务器的响应内容。程序可通过该对象获取服务器的响应内容。
                HttpEntity entity = response.getEntity();
                reader = new BufferedReader(new InputStreamReader(entity.getContent(), "UTF-8"));
                String buffer  = "";
                while((buffer = reader.readLine()) != null){
                    sb.append(buffer);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            try {
                if(reader != null){
                    reader.close();
                }
                httpPost.releaseConnection();
                httpclient.getConnectionManager().shutdown();
                HttpClientUtils.closeQuietly(httpclient);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return sb.toString();
    }
}