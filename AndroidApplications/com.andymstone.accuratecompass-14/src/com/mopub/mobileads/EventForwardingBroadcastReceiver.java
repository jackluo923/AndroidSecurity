package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.a.c;
import com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener;

class EventForwardingBroadcastReceiver extends BroadcastReceiver {
    private final CustomEventInterstitialListener a;
    private Context b;

    public EventForwardingBroadcastReceiver(CustomEventInterstitialListener customEventInterstitialListener) {
        this.a = customEventInterstitialListener;
    }

    public void a() {
        if (this.b != null) {
            c.a(this.b).a(this);
            this.b = null;
        }
    }

    public void a(Context context) {
        this.b = context;
        c.a(this.b).a(this, BaseInterstitialActivity.a);
    }

    public void onReceive(Context context, Intent intent) {
        if (this.a != null) {
            String action = intent.getAction();
            if (action.equals("com.mopub.action.interstitial.fail")) {
                this.a.a(MoPubErrorCode.i);
            } else if (action.equals("com.mopub.action.interstitial.show")) {
                this.a.b();
            } else if (action.equals("com.mopub.action.interstitial.dismiss")) {
                this.a.d();
            } else if (action.equals("com.mopub.action.interstitial.click")) {
                this.a.c();
            }
        }
    }
}