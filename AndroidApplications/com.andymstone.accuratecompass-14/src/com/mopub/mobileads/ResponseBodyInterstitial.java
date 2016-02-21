package com.mopub.mobileads;

import android.content.Context;
import com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener;
import java.util.Map;

abstract class ResponseBodyInterstitial extends CustomEventInterstitial {
    protected Context a;
    private EventForwardingBroadcastReceiver b;

    ResponseBodyInterstitial() {
    }

    private boolean b(Map map) {
        return map.containsKey("Html-Response-Body");
    }

    protected void a() {
        this.b.a();
    }

    protected void a(Context context, CustomEventInterstitialListener customEventInterstitialListener, Map map, Map map2) {
        this.a = context;
        if (b(map2)) {
            a(map2);
            this.b = new EventForwardingBroadcastReceiver(customEventInterstitialListener);
            this.b.a(context);
            customEventInterstitialListener.a();
        } else {
            customEventInterstitialListener.a(MoPubErrorCode.i);
        }
    }

    protected abstract void a(Map map);
}