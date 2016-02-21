package com.vungle.publisher.device;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.vungle.publisher.ad.AdManager;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class ExternalStorageStateBroadcastReceiver extends BroadcastReceiver {
    @Inject
    AdManager a;
    @Inject
    public Context b;

    ExternalStorageStateBroadcastReceiver() {
    }

    public final void a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addDataScheme("file");
        this.b.registerReceiver(this, intentFilter);
    }

    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.MEDIA_MOUNTED".equals(intent.getAction())) {
            this.a.a();
        }
    }
}