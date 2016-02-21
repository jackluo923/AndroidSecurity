package com.admob.android.ads.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Parcelable;
import android.util.Log;
import android.view.KeyEvent;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.admob.android.ads.AdManager;
import com.admob.android.ads.r;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Hashtable;
import java.util.StringTokenizer;

public class AdMobWebView extends WebView {
    String a;
    public String b;
    boolean c;
    private RelativeLayout d;

    private class a extends WebViewClient {
        private AdMobWebView a;

        public a(AdMobWebView adMobWebView) {
            this.a = adMobWebView;
        }

        private static Hashtable<String, String> a_(String str) {
            Hashtable<String, String> hashtable = null;
            if (str != null) {
                hashtable = new Hashtable();
                StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
                while (stringTokenizer.hasMoreTokens()) {
                    StringTokenizer stringTokenizer2 = new StringTokenizer(stringTokenizer.nextToken(), "=");
                    if (stringTokenizer2.hasMoreTokens()) {
                        String nextToken = stringTokenizer2.nextToken();
                        if (stringTokenizer2.hasMoreTokens()) {
                            String nextToken2 = stringTokenizer2.nextToken();
                            if (!(nextToken == null || nextToken2 == null)) {
                                hashtable.put(nextToken, nextToken2);
                            }
                        }
                    }
                }
            }
            return hashtable;
        }

        public final void onPageFinished(WebView webView, String str) {
            if ("http://mm.admob.com/static/android/canvas.html".equals(str) && this.a.c) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("javascript:cb('");
                stringBuilder.append(AdMobWebView.this);
                stringBuilder.append("','");
                stringBuilder.append(AdMobWebView.this.a);
                stringBuilder.append("')");
                this.a.c = false;
                this.a.loadUrl(stringBuilder.toString());
            }
        }

        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            try {
                URI uri = new URI(str);
                if ("admob".equals(uri.getScheme())) {
                    String host = uri.getHost();
                    if ("launch".equals(host)) {
                        String query = uri.getQuery();
                        if (query != null) {
                            Hashtable a = a(query);
                            if (a != null) {
                                query = (String) a.get("url");
                                if (query != null) {
                                    AdMobWebView.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(query)));
                                    this.a.removeSelf();
                                    return true;
                                }
                            }
                        }
                    } else if ("closecanvas".equals(host) && webView == this.a) {
                        this.a.removeSelf();
                        return true;
                    }
                }
            } catch (URISyntaxException e) {
                Log.w(AdManager.LOG, "Bad link URL in AdMob web view.", e);
            }
            return false;
        }
    }

    public AdMobWebView(Context context, RelativeLayout relativeLayout, String str) {
        super(context);
        this.d = relativeLayout;
        WebSettings settings = getSettings();
        settings.setLoadsImagesAutomatically(true);
        settings.setPluginsEnabled(true);
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setSaveFormData(false);
        settings.setSavePassword(false);
        settings.setUserAgentString(r.c());
        setWebViewClient(new a(this));
        this.c = true;
        this.a = str;
    }

    private void removeSelf() {
        ((WindowManager) getContext().getSystemService("window")).removeView(this.d);
    }

    protected void onFocusChanged(boolean z, int i, Rect rect) {
        Log.d(AdManager.LOG, "onFocusChanged(" + z + ")");
        super.onFocusChanged(z, i, rect);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        removeSelf();
        return true;
    }

    protected Parcelable onSaveInstanceState() {
        Log.d(AdManager.LOG, "onSaveInstanceState()");
        return super.onSaveInstanceState();
    }

    protected void onWindowVisibilityChanged(int i) {
        Log.d(AdManager.LOG, "onWindowVisibilityChanged(" + i + ")");
        super.onWindowVisibilityChanged(i);
    }
}