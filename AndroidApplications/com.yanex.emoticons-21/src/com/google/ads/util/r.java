package com.google.ads.util;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.google.ads.b.e;
import com.google.ads.bo;
import com.google.ads.bp;
import com.google.ads.bq;

public class r extends WebChromeClient {
    private final bq a;

    public r(bq bqVar) {
        this.a = bqVar;
    }

    private static boolean a(WebView webView, String str, String str2, String str3, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        if (webView instanceof e) {
            Context i = ((e) webView).i();
            if (i != null) {
                Builder builder = new Builder(i);
                builder.setTitle(str);
                if (z) {
                    View linearLayout = new LinearLayout(i);
                    linearLayout.setOrientation(1);
                    View textView = new TextView(i);
                    textView.setText(str2);
                    View editText = new EditText(i);
                    editText.setText(str3);
                    linearLayout.addView(textView);
                    linearLayout.addView(editText);
                    builder.setView(linearLayout).setPositiveButton(17039370, new x(jsPromptResult, editText)).setNegativeButton(17039360, new w(jsPromptResult)).setOnCancelListener(new v(jsPromptResult)).create().show();
                    return true;
                } else {
                    builder.setMessage(str2).setPositiveButton(17039370, new u(jsResult)).setNegativeButton(17039360, new t(jsResult)).setOnCancelListener(new s(jsResult)).create().show();
                    return true;
                }
            }
        }
        return false;
    }

    public void onCloseWindow(WebView webView) {
        if (webView instanceof e) {
            ((e) webView).f();
        }
    }

    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String toString = new StringBuilder("JS: ").append(consoleMessage.message()).append(" (").append(consoleMessage.sourceId()).append(":").append(consoleMessage.lineNumber()).append(")").toString();
        switch (q.a[consoleMessage.messageLevel().ordinal()]) {
            case IcsToast.LENGTH_LONG:
                g.b(toString);
                break;
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                g.e(toString);
                break;
            case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
            case ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT:
                g.c(toString);
                break;
            case FragmentManagerImpl.ANIM_STYLE_FADE_ENTER:
                g.a(toString);
                break;
        }
        return super.onConsoleMessage(consoleMessage);
    }

    public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater) {
        bp bpVar = (bp) ((bo) this.a.d.a()).b.a();
        long longValue = ((Long) bpVar.l.a()).longValue() - j3;
        if (longValue <= 0) {
            quotaUpdater.updateQuota(j);
        } else {
            if (j != 0) {
                if (j2 == 0) {
                    j = Math.min(Math.min(((Long) bpVar.n.a()).longValue(), longValue) + j, ((Long) bpVar.m.a()).longValue());
                } else if (j2 <= Math.min(((Long) bpVar.m.a()).longValue() - j, longValue)) {
                    j += j2;
                }
                j2 = j;
            } else if (j2 > longValue || j2 > ((Long) bpVar.m.a()).longValue()) {
                j2 = 0;
            }
            quotaUpdater.updateQuota(j2);
        }
    }

    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return a(webView, str, str2, null, jsResult, null, false);
    }

    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return a(webView, str, str2, null, jsResult, null, false);
    }

    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return a(webView, str, str2, null, jsResult, null, false);
    }

    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return a(webView, str, str2, str3, null, jsPromptResult, true);
    }

    public void onReachedMaxAppCacheSize(long j, long j2, QuotaUpdater quotaUpdater) {
        bp bpVar = (bp) ((bo) this.a.d.a()).b.a();
        long longValue = ((Long) bpVar.j.a()).longValue() + j;
        if (((Long) bpVar.k.a()).longValue() - j2 < longValue) {
            quotaUpdater.updateQuota(0);
        } else {
            quotaUpdater.updateQuota(longValue);
        }
    }

    public void onShowCustomView(View view, CustomViewCallback customViewCallback) {
        customViewCallback.onCustomViewHidden();
    }
}