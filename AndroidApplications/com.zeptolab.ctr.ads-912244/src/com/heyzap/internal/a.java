package com.heyzap.internal;

import android.content.Context;
import com.heyzap.http.AsyncHttpResponseHandler;
import com.heyzap.http.RequestParams;

final class a implements Runnable {
    final /* synthetic */ RequestParams a;
    final /* synthetic */ Context b;
    final /* synthetic */ String c;
    final /* synthetic */ AsyncHttpResponseHandler d;

    a(RequestParams requestParams, Context context, String str, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        this.a = requestParams;
        this.b = context;
        this.c = str;
        this.d = asyncHttpResponseHandler;
    }

    public void run() {
        RequestParams augmentParams = APIClient.augmentParams(this.a, this.b);
        Logger.format("GET %s?%s", new Object[]{APIClient.access$000(this.c), augmentParams});
        APIClient.access$100().get(this.b, str, augmentParams, this.d);
    }
}