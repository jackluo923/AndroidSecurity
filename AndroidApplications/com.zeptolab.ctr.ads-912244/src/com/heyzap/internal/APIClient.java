package com.heyzap.internal;

import android.content.Context;
import com.heyzap.http.AsyncHttpClient;
import com.heyzap.http.AsyncHttpResponseHandler;
import com.heyzap.http.RequestParams;
import com.heyzap.http.SDKCookieStore;
import java.util.Iterator;
import java.util.Map.Entry;

public class APIClient {
    public static final int API_STATUS_NOT_LOGGED_IN = 504;
    private static final String BASE_ENDPOINT = "/in_game_api/ads/";
    public static final String BASE_URL = "http://ads.heyzap.com";
    public static final String DOMAIN = "ads.heyzap.com";
    private static final String USER_AGENT = "Heyzap Android Client";
    private static AsyncHttpClient client;
    private static SDKCookieStore cookieStore;
    public static final Object lock;

    static {
        client = new AsyncHttpClient();
        lock = new Object();
        client = new AsyncHttpClient();
        client.setThreadPool(ExecutorPool.getInstance());
    }

    public static RequestParams augmentParams(RequestParams requestParams, Context context) {
        synchronized (lock) {
            if (requestParams == null) {
                requestParams = new RequestParams();
            }
            Iterator it = Utils.extraParams(context).entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                requestParams.put((String) entry.getKey(), (String) entry.getValue());
            }
        }
        return requestParams;
    }

    public static void cancelRequests(Context context) {
        client.cancelRequests(context, true);
    }

    public static void clearCookies(Context context) {
        cookieStore.clear();
        cookieStore = new SDKCookieStore(context);
        client.setCookieStore(cookieStore);
    }

    public static void get(Context context, String str, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        get(context, str, null, asyncHttpResponseHandler);
    }

    public static void get(Context context, String str, RequestParams requestParams) {
        get(context, str, requestParams, null);
    }

    public static void get(Context context, String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        init(context);
        ExecutorPool.getInstance().execute(new a(requestParams, context, str, asyncHttpResponseHandler));
    }

    private static String getAbsoluteUrl(String str) {
        if (str != null && str.startsWith("/")) {
            return BASE_URL + str;
        }
        return (str == null || (!str.startsWith("http://") && !str.startsWith("https://"))) ? "http://ads.heyzap.com/in_game_api/ads/" + str : str;
    }

    public static synchronized void init(Context context) {
        synchronized (APIClient.class) {
            if (cookieStore == null) {
                cookieStore = new SDKCookieStore(context);
                client.setCookieStore(cookieStore);
            }
        }
    }

    public static void post(Context context, String str, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        post(context, str, null, asyncHttpResponseHandler);
    }

    public static void post(Context context, String str, RequestParams requestParams) {
        post(context, str, requestParams, null);
    }

    public static void post(Context context, String str, RequestParams requestParams, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        init(context);
        ExecutorPool.getInstance().execute(new b(requestParams, context, str, asyncHttpResponseHandler));
    }
}