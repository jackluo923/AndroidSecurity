package me.kiip.internal.o;

import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import me.kiip.internal.p.a;

public class b extends WebChromeClient {
    final a a;

    public b() {
        this.a = new a();
    }

    public void a(String str) {
        this.a.a(str);
    }

    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        this.a.a(webView, str, str2, jsResult);
        return true;
    }

    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        this.a.b(webView, str, str2, jsResult);
        return true;
    }

    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        this.a.c(webView, str, str2, jsResult);
        return true;
    }

    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        this.a.a(webView, str, str2, str3, jsPromptResult);
        return true;
    }
}