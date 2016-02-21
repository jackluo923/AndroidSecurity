package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.andymstone.core.o;
import com.mopub.mobileads.resource.Drawables;

public class MraidBrowser extends Activity {
    private WebView a;
    private ImageButton b;
    private ImageButton c;
    private ImageButton d;
    private ImageButton e;

    private ImageButton a(Drawable drawable) {
        ImageButton imageButton = new ImageButton(this);
        LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0f);
        layoutParams.gravity = 16;
        imageButton.setLayoutParams(layoutParams);
        imageButton.setImageDrawable(drawable);
        return imageButton;
    }

    private void a() {
        this.b.setBackgroundColor(0);
        this.b.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (MraidBrowser.this.canGoBack()) {
                    MraidBrowser.this.goBack();
                }
            }
        });
        this.c.setBackgroundColor(0);
        this.c.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (MraidBrowser.this.canGoForward()) {
                    MraidBrowser.this.goForward();
                }
            }
        });
        this.d.setBackgroundColor(0);
        this.d.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MraidBrowser.this.reload();
            }
        });
        this.e.setBackgroundColor(0);
        this.e.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MraidBrowser.this.finish();
            }
        });
    }

    private void a(Intent intent) {
        WebSettings settings = this.a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        this.a.loadUrl(intent.getStringExtra("extra_url"));
        this.a.setWebViewClient(new WebViewClient() {
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                MraidBrowser.this.b.setImageDrawable(webView.canGoBack() ? Drawables.c.a(MraidBrowser.this) : Drawables.d.a(MraidBrowser.this));
                MraidBrowser.this.c.setImageDrawable(webView.canGoForward() ? Drawables.e.a(MraidBrowser.this) : Drawables.f.a(MraidBrowser.this));
            }

            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                MraidBrowser.this.c.setImageDrawable(Drawables.f.a(MraidBrowser.this));
            }

            public void onReceivedError(WebView webView, int i, String str, String str2) {
                Toast.makeText((Activity) webView.getContext(), new StringBuilder("MRAID error: ").append(str).toString(), 0).show();
            }

            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str == null) {
                    return false;
                }
                String host = Uri.parse(str).getHost();
                if ((str.startsWith("http:") || str.startsWith("https:")) && !"play.google.com".equals(host) && !"market.android.com".equals(host)) {
                    return false;
                }
                try {
                    MraidBrowser.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                } catch (ActivityNotFoundException e) {
                    Log.w("MoPub", new StringBuilder("Unable to start activity for ").append(str).append(". ").append("Ensure that your phone can handle this intent.").toString());
                }
                MraidBrowser.this.finish();
                return true;
            }
        });
        this.a.setWebChromeClient(new WebChromeClient() {
            public void onProgressChanged(WebView webView, int i) {
                Activity activity = (Activity) webView.getContext();
                activity.setTitle("Loading...");
                activity.setProgress(i * 100);
                if (i == 100) {
                    activity.setTitle(webView.getUrl());
                }
            }
        });
    }

    private void b() {
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
    }

    private View c() {
        View linearLayout = new LinearLayout(this);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        View relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(relativeLayout);
        View linearLayout2 = new LinearLayout(this);
        linearLayout2.setId(1);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        linearLayout2.setLayoutParams(layoutParams);
        linearLayout2.setBackgroundDrawable(Drawables.a.a(this));
        relativeLayout.addView(linearLayout2);
        this.b = a(Drawables.c.a(this));
        this.c = a(Drawables.e.a(this));
        this.d = a(Drawables.g.a(this));
        this.e = a(Drawables.h.a(this));
        linearLayout2.addView(this.b);
        linearLayout2.addView(this.c);
        linearLayout2.addView(this.d);
        linearLayout2.addView(this.e);
        this.a = new WebView(this);
        LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(o.MyAlertDialog_myAlertDialogButtonDrawable, 1);
        this.a.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.a);
        return linearLayout;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().requestFeature(o.MyAlertDialog_myAlertDialogButtonDrawable);
        getWindow().setFeatureInt(o.MyAlertDialog_myAlertDialogButtonDrawable, -1);
        setContentView(c());
        a(getIntent());
        a();
        b();
    }

    protected void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
    }

    protected void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
    }
}