package com.mopub.mobileads;

import android.net.Uri;

public class FacebookKeywordProvider {
    private static final Uri a;

    static {
        a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    }
}