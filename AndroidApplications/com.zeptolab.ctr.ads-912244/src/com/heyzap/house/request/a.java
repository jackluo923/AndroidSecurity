package com.heyzap.house.request;

import android.content.Context;
import com.heyzap.house.impl.AbstractFetchHandler;
import com.heyzap.internal.APIClient;

class a implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ AbstractFetchHandler b;
    final /* synthetic */ FetchRequest c;

    a(FetchRequest fetchRequest, Context context, AbstractFetchHandler abstractFetchHandler) {
        this.c = fetchRequest;
        this.a = context;
        this.b = abstractFetchHandler;
    }

    public void run() {
        APIClient.post(this.a, this.c.getUrl(), this.c.getParams(this.a), this.b);
    }
}