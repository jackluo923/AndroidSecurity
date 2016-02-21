package com.admob.android.ads;

import android.content.Context;
import android.util.Log;
import com.tic_mobile.android.connectfour.R;
import java.lang.ref.WeakReference;

// compiled from: AdView.java
final class a extends Thread {
    private WeakReference<AdView> a;

    public a(AdView adView) {
        this.a = new WeakReference(adView);
    }

    public final void run() {
        String str = AdManager.LOG;
        AdView adView = (AdView) this.a.get();
        if (adView != null) {
            try {
                Context context = adView.getContext();
                g gVar = new g(null, context, adView);
                int measuredWidth = (int) (((float) adView.getMeasuredWidth()) / g.c());
                if (((float) measuredWidth) <= 310.0f) {
                    if (Log.isLoggable(AdManager.LOG, R.styleable.com_admob_android_ads_AdView_keywords)) {
                        Log.d(AdManager.LOG, "Ignoring request because we need to have a minimum width of 320 device independent pixels to show an ad.");
                    }
                    AdView.c(adView);
                } else if (u.a(AdView.d(adView), context, AdView.e(adView), AdView.f(adView), adView.getPrimaryTextColor(), adView.getSecondaryTextColor(), adView.getBackgroundColor(), gVar, measuredWidth) == null) {
                    AdView.c(adView);
                }
                AdView.a(adView, false);
                AdView.b(adView, true);
            } catch (Exception e) {
                Log.e(AdManager.LOG, "Unhandled exception requesting a fresh ad.", e);
                AdView.c(adView);
                AdView.a(adView, false);
                AdView.b(adView, true);
            }
        }
    }
}