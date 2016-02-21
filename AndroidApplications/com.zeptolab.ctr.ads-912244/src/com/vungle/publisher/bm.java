package com.vungle.publisher;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.vungle.log.Logger;
import com.vungle.publisher.inject.annotations.VungleServiceClass;
import com.vungle.publisher.net.http.HttpTransaction;
import javax.inject.Inject;

public abstract class bm {
    @Inject
    public Context b;
    @VungleServiceClass
    @Inject
    public Class c;

    public abstract String a();

    public final void a(HttpTransaction httpTransaction) {
        Logger.d(b(), new StringBuilder("sending ").append(httpTransaction).toString());
        Intent intent = new Intent(a(), Uri.parse(httpTransaction.a.b), this.b, this.c);
        intent.putExtra(VungleService.HTTP_TRANSACTION_EXTRA_KEY, httpTransaction);
        this.b.startService(intent);
    }

    public String b() {
        return Logger.NETWORK_TAG;
    }
}