package com.heyzap.internal;

import android.content.Context;
import com.heyzap.http.AsyncHttpClient;
import com.heyzap.http.RequestHandle;
import com.heyzap.http.ResponseHandlerInterface;
import java.util.concurrent.Executors;

public class FileFetchClient {
    private static AsyncHttpClient client;

    static {
        client = new AsyncHttpClient();
        client.setThreadPool(Executors.newFixedThreadPool(1));
    }

    public static RequestHandle fetch(Context context, String str, ResponseHandlerInterface responseHandlerInterface) {
        return client.get(context, str, responseHandlerInterface);
    }
}