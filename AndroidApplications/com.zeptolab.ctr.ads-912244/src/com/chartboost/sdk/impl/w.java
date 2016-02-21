package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.KeyEvent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout.LayoutParams;
import com.admarvel.android.ads.Constants;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError.CBImpressionError;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.utils.HTMLEncoder;
import java.net.URI;
import java.net.URLDecoder;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class w extends com.chartboost.sdk.c {
    private String h;

    public class a extends com.chartboost.sdk.c.b {
        public WebView c;

        public a(Context context, String str) {
            super(context);
            setFocusable(false);
            this.c = new b(context);
            this.c.setWebViewClient(new c(w.this));
            addView(this.c);
            this.c.loadDataWithBaseURL("file:///android_asset/", str, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
        }

        protected void a_(int i, int i2) {
        }
    }

    private class b extends WebView {
        public b(Context context) {
            super(context);
            setLayoutParams(new LayoutParams(-1, -1));
            setBackgroundColor(0);
            getSettings().setJavaScriptEnabled(true);
        }

        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            if ((i == 4 || i == 3) && w.this != null) {
                w.this.a();
            }
            return super.onKeyDown(i, keyEvent);
        }
    }

    private class c extends WebViewClient {
        private w b;

        public c(w wVar) {
            this.b = wVar;
        }

        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (this.b != null && this.b.c != null) {
                this.b.c.a();
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            w.this.g.a(CBImpressionError.INTERNAL);
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Throwable th;
            JSONObject jSONObject = null;
            boolean z = false;
            CBLogging.d("CBWebViewProtocol", "loading url: " + str);
            String str2 = AdTrackerConstants.BLANK;
            try {
                if (new URI(str).getScheme().equals("chartboost")) {
                    String[] split = str.split("/");
                    Integer valueOf = Integer.valueOf(split.length);
                    if (valueOf.intValue() >= 3) {
                        str2 = split[2];
                        if (str2.equals("close")) {
                            if (w.this != null) {
                                w.this.a();
                            }
                        } else if (!str2.equals("link") || valueOf.intValue() >= 4) {
                            String str3;
                            try {
                                str2 = URLDecoder.decode(split[3], HTMLEncoder.ENCODE_NAME_DEFAULT);
                                try {
                                    jSONObject = valueOf.intValue() > 4 ? new JSONObject(new JSONTokener(URLDecoder.decode(split[4], HTMLEncoder.ENCODE_NAME_DEFAULT))) : null;
                                    str3 = str2;
                                } catch (Exception e) {
                                    str3 = str2;
                                    th = e;
                                    CBLogging.a("CBWebViewProtocol", "Error decoding URL or JSON", th);
                                    if (this.b.b != null) {
                                        this.b.b.a(w.this.g, str3, jSONObject);
                                    }
                                    return true;
                                }
                            } catch (Exception e2) {
                                th = e2;
                                str3 = null;
                                CBLogging.a("CBWebViewProtocol", "Error decoding URL or JSON", th);
                                if (this.b.b != null) {
                                    this.b.b.a(w.this.g, str3, jSONObject);
                                }
                                return true;
                            }
                            if (this.b.b != null) {
                                this.b.b.a(w.this.g, str3, jSONObject);
                            }
                        } else if (w.this == null) {
                            return z;
                        } else {
                            w.this.a();
                            return z;
                        }
                    } else if (w.this == null) {
                        return z;
                    } else {
                        w.this.a();
                        return z;
                    }
                }
                return true;
            } catch (Exception e3) {
                if (w.this == null) {
                    return z;
                }
                w.this.a();
                return z;
            }
        }
    }

    public w(com.chartboost.sdk.Model.a aVar) {
        super(aVar);
        this.h = null;
    }

    protected com.chartboost.sdk.c.b a(Context context) {
        return new a(context, this.h);
    }

    public void a(JSONObject jSONObject) {
        String optString = jSONObject.optString(Constants.HTML);
        if (optString == null) {
            this.g.a(CBImpressionError.INTERNAL);
        } else {
            this.h = optString;
            b();
        }
    }
}