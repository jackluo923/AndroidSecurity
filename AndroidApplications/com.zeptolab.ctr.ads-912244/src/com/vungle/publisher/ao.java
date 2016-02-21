package com.vungle.publisher;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.vungle.log.Logger;
import com.vungle.publisher.env.AndroidDevice;
import com.vungle.publisher.inject.Injector;

public final class ao extends WebViewClient {
    a a;

    public static interface a {
        void a_();
    }

    public ao(a aVar) {
        this.a = aVar;
    }

    public final void onPageFinished(WebView webView, String str) {
        if (!str.toLowerCase().startsWith("javascript:")) {
            StringBuilder stringBuilder = new StringBuilder("javascript:function actionClicked(m,p){ var q = prompt('vungle:'+JSON.stringify({method:m,params:(p?p:null)}));if(q&&typeof q === 'string'){return JSON.parse(q).result;}};function noTapHighlight(){var l=document.getElementsByTagName('*');for(var i=0; i<l.length; i++){l[i].style.webkitTapHighlightColor='rgba(0,0,0,0)';}};noTapHighlight();");
            as asVar = (as) Injector.getInstance().a.a(AndroidDevice.class);
            String a = asVar.a();
            String b = asVar.b();
            if (a != null) {
                b = a;
            }
            if (a != null) {
                stringBuilder.append("var _device_id = \"").append(b.replace("\"", "\\\"")).append("\";");
            }
            webView.loadUrl(stringBuilder.toString());
        }
    }

    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        Logger.e(Logger.AD_TAG, new StringBuilder("failed to load web view: code ").append(i).append(", ").append(str).toString());
        this.a.a();
    }
}