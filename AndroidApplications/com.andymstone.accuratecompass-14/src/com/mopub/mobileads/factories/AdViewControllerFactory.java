package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.MoPubView;

public class AdViewControllerFactory {
    protected static AdViewControllerFactory a;

    static {
        a = new AdViewControllerFactory();
    }

    public static AdViewController a(Context context, MoPubView moPubView) {
        return a.b(context, moPubView);
    }

    protected AdViewController b(Context context, MoPubView moPubView) {
        return new AdViewController(context, moPubView);
    }
}