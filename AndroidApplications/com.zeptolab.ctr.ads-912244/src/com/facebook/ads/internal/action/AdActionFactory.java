package com.facebook.ads.internal.action;

import android.content.Context;
import android.net.Uri;

public class AdActionFactory {
    private static final String AD_ACTION_APP_AD = "store";
    private static final String AD_ACTION_LINK_AD = "open_link";

    public static AdAction getAdAction(Context context, Uri uri) {
        String authority = uri.getAuthority();
        if (AD_ACTION_APP_AD.equals(authority)) {
            return new AppAdAction(context, uri);
        }
        return AD_ACTION_LINK_AD.equals(authority) ? new LinkAdAction(context, uri) : null;
    }
}