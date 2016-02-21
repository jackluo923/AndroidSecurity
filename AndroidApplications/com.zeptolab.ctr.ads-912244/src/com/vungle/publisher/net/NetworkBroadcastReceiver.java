package com.vungle.publisher.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.log.Logger;
import com.vungle.publisher.bj;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
class NetworkBroadcastReceiver extends BroadcastReceiver {
    private static final IntentFilter d;
    boolean a;
    @Inject
    Context b;
    @Inject
    bj c;

    static {
        d = new IntentFilter(AdTrackerConstants.CONNECTIVITY_INTENT_ACTION);
    }

    NetworkBroadcastReceiver() {
    }

    final void a(boolean z) {
        if (this.a != z) {
            if (this.a) {
                Logger.d(Logger.NETWORK_TAG, "Network listener disabled");
                this.b.unregisterReceiver(this);
            } else {
                Logger.d(Logger.NETWORK_TAG, "Network listener enabled");
                this.b.registerReceiver(this, d);
            }
            this.a = z;
        }
    }

    public void onReceive(Context context, Intent intent) {
        if (AdTrackerConstants.CONNECTIVITY_INTENT_ACTION.equals(intent.getAction()) && !intent.getBooleanExtra("noConnectivity", false) && !intent.getBooleanExtra("isFailover", false)) {
            Logger.d(Logger.NETWORK_TAG, "Network connectivity established");
            synchronized (this) {
                a(false);
                notifyAll();
            }
        }
    }
}