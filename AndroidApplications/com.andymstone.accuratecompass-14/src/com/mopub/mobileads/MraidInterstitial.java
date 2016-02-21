package com.mopub.mobileads;

import android.net.Uri;
import java.util.Map;

class MraidInterstitial extends ResponseBodyInterstitial {
    private String b;

    MraidInterstitial() {
    }

    protected void a(Map map) {
        this.b = Uri.decode((String) map.get("Html-Response-Body"));
    }
}