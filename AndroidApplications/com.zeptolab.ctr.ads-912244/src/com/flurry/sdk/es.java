package com.flurry.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.Iterator;
import java.util.List;

public class es extends BroadcastReceiver {
    private static es e;
    boolean a;
    Boolean b;
    private final dq c;
    private boolean d;

    public enum a {
        NONE_OR_UNKNOWN(0),
        WIFI(1),
        CELL(2);
        private int d;

        static {
            a = new com.flurry.sdk.es.a("NONE_OR_UNKNOWN", 0, 0);
            b = new com.flurry.sdk.es.a("WIFI", 1, 1);
            c = new com.flurry.sdk.es.a("CELL", 2, 2);
            e = new com.flurry.sdk.es.a[]{a, b, c};
        }

        private a(int i) {
            this.d = i;
        }

        public int a_() {
            return this.d;
        }
    }

    public es() {
        this.d = false;
        this.c = new dq();
    }

    public static synchronized es a() {
        es esVar;
        synchronized (es.class) {
            if (e == null) {
                e = new es();
            }
            esVar = e;
        }
        return esVar;
    }

    private boolean a(Context context) {
        if (!this.d || context == null) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private synchronized List f() {
        return this.c.a();
    }

    public synchronized void a(er erVar) {
        this.c.a(erVar);
    }

    public synchronized void b() {
        Context b = dl.a().b();
        this.d = b.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0;
        this.a = a(b);
        if (this.d) {
            d();
        }
    }

    public boolean c() {
        return this.b != null ? this.b.booleanValue() : this.a;
    }

    void d() {
        Context b = dl.a().b();
        this.a = a(b);
        b.registerReceiver(this, new IntentFilter(AdTrackerConstants.CONNECTIVITY_INTENT_ACTION));
    }

    public a e() {
        if (!this.d) {
            return a.a;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) dl.a().b().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return a.a;
        }
        switch (activeNetworkInfo.getType()) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
            case GoogleScorer.CLIENT_PLUS:
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
            case GoogleScorer.CLIENT_APPSTATE:
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
            case GoogleScorer.CLIENT_ALL:
                return a.c;
            case GoogleScorer.CLIENT_GAMES:
            case ZBuildConfig.$minsdk:
                return a.b;
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                return a.a;
            default:
                return a.c;
        }
    }

    public void onReceive(Context context, Intent intent) {
        boolean a = a(context);
        if (this.a != a) {
            this.a = a;
            Iterator it = f().iterator();
            while (it.hasNext()) {
                ((er) it.next()).a(this.a);
            }
        }
    }
}