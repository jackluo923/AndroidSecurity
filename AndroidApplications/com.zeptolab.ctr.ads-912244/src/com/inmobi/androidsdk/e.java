package com.inmobi.androidsdk;

import com.google.android.gms.location.LocationRequest;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView.IMWebViewListener;
import com.inmobi.re.container.mraidimpl.ResizeDimensions;
import java.util.Map;

class e implements IMWebViewListener {
    final /* synthetic */ InterstitialView a;

    e(InterstitialView interstitialView) {
        this.a = interstitialView;
    }

    public void onDismissAdScreen() {
        InterstitialView.a(this.a, 103, null);
    }

    public void onError() {
        Log.debug(ConfigConstants.LOGGING_TAG, "Error loading the interstitial ad ");
        InterstitialView.b(this.a).sendEmptyMessage(310);
    }

    public void onExpand() {
    }

    public void onExpandClose() {
    }

    public void onIncentCompleted(Map map) {
        if (InterstitialView.a(this.a) != null) {
            InterstitialView.a(this.a).onIncentCompleted(this.a, map);
        }
    }

    public void onLeaveApplication() {
        InterstitialView.a(this.a, LocationRequest.PRIORITY_LOW_POWER, null);
    }

    public void onResize(ResizeDimensions resizeDimensions) {
    }

    public void onResizeClose() {
    }

    public void onShowAdScreen() {
        InterstitialView.a(this.a, IMBrowserActivity.EXPAND_ACTIVITY, null);
    }

    public void onUserInteraction(Map map) {
        if (InterstitialView.a(this.a) != null) {
            InterstitialView.a(this.a).onInterstitialInteraction(this.a, map);
        }
    }
}