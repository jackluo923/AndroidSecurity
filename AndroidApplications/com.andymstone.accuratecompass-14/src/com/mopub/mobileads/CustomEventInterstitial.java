package com.mopub.mobileads;

import android.content.Context;
import java.util.Map;

public abstract class CustomEventInterstitial {

    public interface CustomEventInterstitialListener {
        void a();

        void a(MoPubErrorCode moPubErrorCode);

        void b();

        void c();

        void d();
    }

    protected abstract void a();

    protected abstract void a(Context context, CustomEventInterstitialListener customEventInterstitialListener, Map map, Map map2);
}