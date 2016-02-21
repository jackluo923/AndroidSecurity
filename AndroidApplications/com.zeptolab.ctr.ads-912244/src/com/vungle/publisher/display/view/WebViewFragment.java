package com.vungle.publisher.display.view;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.google.android.gms.plus.PlusShare;
import com.vungle.publisher.ao;
import com.vungle.publisher.ao.a;
import com.vungle.publisher.as;
import javax.inject.Inject;

abstract class WebViewFragment extends AdFragment {
    protected a a;
    protected WebView b;
    @Inject
    as c;
    private String d;

    protected WebViewFragment(String str) {
        this.d = str;
    }

    public void a(a aVar) {
        this.a = aVar;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.d = bundle.getString(PlusShare.KEY_CALL_TO_ACTION_URL);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context activity = getActivity();
        WebView webView = new WebView(activity);
        this.b = webView;
        this.c.a(webView);
        webView.setWebViewClient(new ao(this.a));
        WebSettings settings = webView.getSettings();
        settings.setBuiltInZoomControls(false);
        settings.setJavaScriptEnabled(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSavePassword(true);
        settings.setSaveFormData(true);
        settings.setUseWideViewPort(false);
        webView.setBackgroundColor(0);
        webView.setBackgroundResource(0);
        webView.loadUrl(this.d);
        View frameLayout = new FrameLayout(activity);
        frameLayout.addView(webView);
        LayoutParams layoutParams = webView.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        return frameLayout;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(PlusShare.KEY_CALL_TO_ACTION_URL, this.d);
    }
}