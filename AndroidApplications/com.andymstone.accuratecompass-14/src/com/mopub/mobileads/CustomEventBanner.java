package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import java.util.Map;

public abstract class CustomEventBanner {

    public interface CustomEventBannerListener {
        void a();

        void a(View view);

        void a(MoPubErrorCode moPubErrorCode);

        void b();

        void c();
    }

    protected abstract void a();

    protected abstract void a(Context context, CustomEventBannerListener customEventBannerListener, Map map, Map map2);
}