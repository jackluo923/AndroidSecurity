package com.mopub.mobileads;

import android.content.Context;
import android.net.Uri;
import com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener;
import com.mopub.mobileads.factories.HtmlBannerWebViewFactory;
import java.util.Map;

public class HtmlBanner extends CustomEventBanner {
    private HtmlBannerWebView a;

    private boolean a(Map map) {
        return map.containsKey("Html-Response-Body");
    }

    protected void a() {
        if (this.a != null) {
            this.a.destroy();
        }
    }

    protected void a(Context context, CustomEventBannerListener customEventBannerListener, Map map, Map map2) {
        if (a(map2)) {
            String decode = Uri.decode((String) map2.get("Html-Response-Body"));
            this.a = HtmlBannerWebViewFactory.a(customEventBannerListener, Boolean.valueOf((String) map2.get("Scrollable")).booleanValue(), (String) map2.get("Redirect-Url"), (String) map2.get("Clickthrough-Url"));
            AdViewController.a(this.a);
            this.a.a(decode);
        } else {
            customEventBannerListener.a(MoPubErrorCode.i);
        }
    }
}