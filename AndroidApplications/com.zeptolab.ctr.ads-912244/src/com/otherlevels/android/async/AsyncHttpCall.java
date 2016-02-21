package com.otherlevels.android.async;

import android.os.Handler;
import android.os.Message;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.zeptolab.utils.HTMLEncoder;
import java.util.List;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public class AsyncHttpCall {
    private static AsyncHttpClient client;
    protected Handler handler;
    protected String strResponse;

    class AnonymousClass_2 extends Thread {
        final /* synthetic */ String val$requestURL;

        AnonymousClass_2(String str) {
            this.val$requestURL = str;
        }

        public void run() {
            try {
                HttpClient defaultHttpClient = new DefaultHttpClient(new BasicHttpParams());
                HttpUriRequest httpGet = new HttpGet(this.val$requestURL);
                ResponseHandler basicResponseHandler = new BasicResponseHandler();
                AsyncHttpCall.this.strResponse = (String) defaultHttpClient.execute(httpGet, basicResponseHandler);
                AsyncHttpCall.this.handler.sendEmptyMessage(0);
            } catch (Exception e) {
                AsyncHttpCall.this.handler.sendEmptyMessage(-1);
            }
        }
    }

    class AnonymousClass_3 extends Thread {
        final /* synthetic */ List val$body;
        final /* synthetic */ String val$requestURL;

        AnonymousClass_3(String str, List list) {
            this.val$requestURL = str;
            this.val$body = list;
        }

        public void run() {
            try {
                HttpParams basicHttpParams = new BasicHttpParams();
                HttpProtocolParams.setContentCharset(basicHttpParams, HTMLEncoder.ENCODE_NAME_DEFAULT);
                HttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
                HttpUriRequest httpPost = new HttpPost(this.val$requestURL);
                httpPost.setEntity(new UrlEncodedFormEntity(this.val$body));
                ResponseHandler basicResponseHandler = new BasicResponseHandler();
                AsyncHttpCall.this.strResponse = (String) defaultHttpClient.execute(httpPost, basicResponseHandler);
                AsyncHttpCall.this.handler.sendEmptyMessage(0);
            } catch (Exception e) {
                AsyncHttpCall.this.handler.sendEmptyMessage(-1);
            }
        }
    }

    static {
        client = new AsyncHttpClient();
    }

    public AsyncHttpCall() {
        this.handler = new Handler() {
            public void handleMessage(Message message) {
            }
        };
    }

    public void makeAsyncHTTPRequestGet(String str) {
        new AsyncHttpClient().get(str, new AsyncHttpResponseHandler() {
            public void onSuccess(String str) {
                AsyncHttpCall.this.handler.sendEmptyMessage(0);
            }
        });
        new AnonymousClass_2(str).start();
    }

    public void makeAsyncHTTPRequestPost(String str, List list) {
        new AnonymousClass_3(str, list).start();
    }
}