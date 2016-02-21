package defpackage;

import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;

public class c {
    private static final String a = "http://api.twitter.com/1/";
    private static AsyncHttpClient b;

    static {
        b = new AsyncHttpClient();
    }

    private static String a(String str) {
        return a + str;
    }

    public static void a(String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        b.get(a(str), requestParams, asyncHttpResponseHandler);
    }

    public static void b(String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        b.post(a(str), requestParams, asyncHttpResponseHandler);
    }
}