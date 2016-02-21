package com.inmobi.androidsdk;

import com.google.android.gms.location.LocationRequest;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView.IMWebViewListener;
import com.inmobi.re.container.mraidimpl.ResizeDimensions;
import java.util.Map;

class b implements IMWebViewListener {
    final /* synthetic */ BannerView a;

    b(BannerView bannerView) {
        this.a = bannerView;
    }

    public void onDismissAdScreen() {
        BannerView.a(this.a, 103, null);
    }

    public void onError() {
        Log.debug(ConfigConstants.LOGGING_TAG, "Error loading ad ");
        BannerView.p(this.a).sendEmptyMessage(111);
    }

    public void onExpand() {
        BannerView.a(this.a, (int)IMBrowserActivity.EXPAND_ACTIVITY, null);
    }

    public void onExpandClose() {
        BannerView.a(this.a, 103, null);
    }

    public void onIncentCompleted(Map map) {
    }

    public void onLeaveApplication() {
        BannerView.a(this.a, (int)LocationRequest.PRIORITY_LOW_POWER, null);
    }

    public void onResize(ResizeDimensions resizeDimensions) {
        BannerView.a(this.a, (int)LocationRequest.PRIORITY_NO_POWER, null);
    }

    public void onResizeClose() {
        BannerView.a(this.a, 106, null);
    }

    public void onShowAdScreen() {
        BannerView.a(this.a, (int)IMBrowserActivity.EXPAND_ACTIVITY, null);
    }

    public void onUserInteraction(Map map) {
        BannerView.a(this.a).onBannerInteraction(this.a, map);
    }
}