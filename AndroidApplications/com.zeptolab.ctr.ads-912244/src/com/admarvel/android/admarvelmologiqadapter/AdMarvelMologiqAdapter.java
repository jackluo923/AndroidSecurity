package com.admarvel.android.admarvelmologiqadapter;

import android.content.Context;
import com.admarvel.android.ads.AdMarvelAnalyticsAdapter;
import com.mologiq.analytics.a;
import java.lang.ref.WeakReference;
import java.util.Map;

public class AdMarvelMologiqAdapter extends AdMarvelAnalyticsAdapter {
    private final WeakReference contextReference;

    public AdMarvelMologiqAdapter(Context context) {
        super(context);
        this.contextReference = new WeakReference(context);
    }

    public String getAdapterAnalyticsVersion() {
        return "1.3.2 2014-08-26";
    }

    public Map getEnhancedTargetParams(String str, Map map) {
        Context context = (Context) this.contextReference.get();
        return context != null ? a.a(context).a(str, map) : null;
    }

    public void onAdClick(String str, int i, Map map, String str2, String str3) {
        Context context = (Context) this.contextReference.get();
        if (context != null) {
            a.a(context).a(str, i, map, str2, str3);
        }
    }

    public void onFailedToReceiveAd(String str, int i, Map map, String str2) {
        Context context = (Context) this.contextReference.get();
        if (context != null) {
            a.a(context).a(str, i, map, str2);
        }
    }

    public void onReceiveAd(String str, int i, Map map, String str2) {
        Context context = (Context) this.contextReference.get();
        if (context != null) {
            a.a(context).b(str, i, map, str2);
        }
    }

    public void pause() {
        Context context = (Context) this.contextReference.get();
        if (context != null) {
            a.a(context).b();
        }
    }

    public void resume() {
        Context context = (Context) this.contextReference.get();
        if (context != null) {
            a.a(context).a();
        }
    }

    public void start() {
        Context context = (Context) this.contextReference.get();
        if (context != null) {
            a.a(context).c();
        }
    }

    public void stop() {
        Context context = (Context) this.contextReference.get();
        if (context != null) {
            a.a(context).d();
        }
    }
}