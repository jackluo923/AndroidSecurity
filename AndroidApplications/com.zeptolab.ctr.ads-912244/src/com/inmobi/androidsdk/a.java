package com.inmobi.androidsdk;

import android.graphics.Bitmap;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.re.container.CustomView.SwitchIconType;

class a extends WebViewClient {
    final /* synthetic */ IMBrowserActivity a;

    a(IMBrowserActivity iMBrowserActivity) {
        this.a = iMBrowserActivity;
    }

    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (IMBrowserActivity.b(this.a) != null) {
            if (webView.canGoForward()) {
                IMBrowserActivity.b(this.a).setSwitchInt(SwitchIconType.FORWARD_ACTIVE);
                IMBrowserActivity.b(this.a).invalidate();
            } else {
                IMBrowserActivity.b(this.a).setSwitchInt(SwitchIconType.FORWARD_INACTIVE);
                IMBrowserActivity.b(this.a).invalidate();
            }
        }
        CookieSyncManager.getInstance().sync();
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        if (IMBrowserActivity.b(this.a) != null) {
            IMBrowserActivity.b(this.a).setSwitchInt(SwitchIconType.FORWARD_INACTIVE);
            IMBrowserActivity.b(this.a).invalidate();
        }
    }
}