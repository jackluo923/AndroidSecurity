package com.vungle.publisher.net;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.vungle.log.Logger;
import com.vungle.publisher.bi;
import com.vungle.publisher.bj;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

@Singleton
public class AndroidNetwork implements bj {
    @Inject
    ConnectivityManager a;
    @Inject
    Provider b;
    @Inject
    TelephonyManager c;

    public final bi a() {
        bi biVar = null;
        try {
            NetworkInfo activeNetworkInfo = this.a.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return biVar;
            }
            int type = activeNetworkInfo.getType();
            switch (type) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    return bi.a;
                case GoogleScorer.CLIENT_GAMES:
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    return bi.b;
                default:
                    Logger.d(Logger.NETWORK_TAG, new StringBuilder("unknown connectivity type: ").append(type).toString());
                    return biVar;
            }
        } catch (Exception e) {
            Logger.d(Logger.NETWORK_TAG, "error getting connectivity type", e);
            return biVar;
        }
    }

    public final String b() {
        String str = null;
        try {
            return this.c.getNetworkOperatorName();
        } catch (Exception e) {
            Logger.d(Logger.NETWORK_TAG, "error getting network operator", e);
            return str;
        }
    }

    public final boolean c() {
        boolean z = false;
        try {
            NetworkInfo activeNetworkInfo = this.a.getActiveNetworkInfo();
            return (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) ? z : true;
        } catch (Exception e) {
            Logger.d(Logger.NETWORK_TAG, "error getting connectivity availability", e);
            return z;
        }
    }

    public final void d() {
        NetworkBroadcastReceiver networkBroadcastReceiver = (NetworkBroadcastReceiver) this.b.get();
        if (!networkBroadcastReceiver.c.c()) {
            String name = Thread.currentThread().getName();
            synchronized (networkBroadcastReceiver) {
                if (!(networkBroadcastReceiver.a || networkBroadcastReceiver.c.c())) {
                    networkBroadcastReceiver.a(true);
                }
                while (networkBroadcastReceiver.a) {
                    try {
                        Logger.d(Logger.NETWORK_TAG, new StringBuilder("Waiting for network availability: ").append(name).toString());
                        networkBroadcastReceiver.wait();
                        Logger.d(Logger.NETWORK_TAG, new StringBuilder("Connectivity restored: ").append(name).toString());
                    } catch (InterruptedException e) {
                    }
                }
            }
        }
    }
}