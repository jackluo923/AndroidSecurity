package com.google.ads.interactivemedia.v3.b;

import android.content.Context;
import android.os.Message;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;
import android.webkit.WebViewClient;
import com.google.ads.interactivemedia.v3.b.a.c;
import com.google.ads.interactivemedia.v3.b.a.c.a;

public final class l extends WebView {

    final class AnonymousClass_1 extends WebChromeClient {
        final /* synthetic */ Context a;
        final /* synthetic */ s b;

        AnonymousClass_1(Context context, s sVar) {
            this.a = context;
            this.b = sVar;
        }

        public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            WebViewTransport webViewTransport = (WebViewTransport) message.obj;
            webViewTransport.setWebView(new WebView(this.a));
            webViewTransport.getWebView().setWebViewClient(new WebViewClient() {
                public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    AnonymousClass_1.this.b.b(str);
                    return true;
                }
            });
            message.sendToTarget();
            return true;
        }
    }

    public l(Context context, s sVar, c cVar) {
        super(context);
        getSettings().setSupportMultipleWindows(true);
        setWebChromeClient(new AnonymousClass_1(context, sVar));
        if (cVar.type == a.Html) {
            loadData(cVar.src, WebRequest.CONTENT_TYPE_HTML, null);
        } else if (cVar.type == a.IFrame) {
            loadUrl(cVar.src);
        } else {
            throw new IllegalArgumentException(new StringBuilder("Companion type ").append(cVar.type).append(" is not valid for a CompanionWebView").toString());
        }
    }
}