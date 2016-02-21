package com.mopub.mobileads;

import android.net.Uri;
import java.util.Map;

public class HtmlInterstitial extends ResponseBodyInterstitial {
    private String b;
    private String c;
    private String d;
    private boolean e;

    protected void a(Map map) {
        this.b = Uri.decode((String) map.get("Html-Response-Body"));
        this.d = (String) map.get("Redirect-Url");
        this.c = (String) map.get("Clickthrough-Url");
        this.e = Boolean.valueOf((String) map.get("Scrollable")).booleanValue();
    }
}