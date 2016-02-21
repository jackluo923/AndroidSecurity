package com.google.android.gms.internal;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.ConsoleMessage.MessageLevel;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class df extends WebChromeClient {
    private final dd ng;

    final class AnonymousClass_1 implements OnCancelListener {
        final /* synthetic */ JsResult qo;

        AnonymousClass_1(JsResult jsResult) {
            this.qo = jsResult;
        }

        public void onCancel(DialogInterface dialogInterface) {
            this.qo.cancel();
        }
    }

    final class AnonymousClass_2 implements OnClickListener {
        final /* synthetic */ JsResult qo;

        AnonymousClass_2(JsResult jsResult) {
            this.qo = jsResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.qo.cancel();
        }
    }

    final class AnonymousClass_3 implements OnClickListener {
        final /* synthetic */ JsResult qo;

        AnonymousClass_3(JsResult jsResult) {
            this.qo = jsResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.qo.confirm();
        }
    }

    final class AnonymousClass_4 implements OnCancelListener {
        final /* synthetic */ JsPromptResult qp;

        AnonymousClass_4(JsPromptResult jsPromptResult) {
            this.qp = jsPromptResult;
        }

        public void onCancel(DialogInterface dialogInterface) {
            this.qp.cancel();
        }
    }

    final class AnonymousClass_5 implements OnClickListener {
        final /* synthetic */ JsPromptResult qp;

        AnonymousClass_5(JsPromptResult jsPromptResult) {
            this.qp = jsPromptResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.qp.cancel();
        }
    }

    final class AnonymousClass_6 implements OnClickListener {
        final /* synthetic */ JsPromptResult qp;
        final /* synthetic */ EditText qq;

        AnonymousClass_6(JsPromptResult jsPromptResult, EditText editText) {
            this.qp = jsPromptResult;
            this.qq = editText;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.qp.confirm(this.qq.getText().toString());
        }
    }

    static /* synthetic */ class AnonymousClass_7 {
        static final /* synthetic */ int[] qr;

        static {
            qr = new int[MessageLevel.values().length];
            try {
                qr[MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                qr[MessageLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                qr[MessageLevel.LOG.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                qr[MessageLevel.TIP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            qr[MessageLevel.DEBUG.ordinal()] = 5;
        }
    }

    public df(dd ddVar) {
        this.ng = ddVar;
    }

    private static void a(Builder builder, String str, JsResult jsResult) {
        builder.setMessage(str).setPositiveButton(17039370, new AnonymousClass_3(jsResult)).setNegativeButton(17039360, new AnonymousClass_2(jsResult)).setOnCancelListener(new AnonymousClass_1(jsResult)).create().show();
    }

    private static void a(Context context, Builder builder, String str, String str2, JsPromptResult jsPromptResult) {
        View linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        View textView = new TextView(context);
        textView.setText(str);
        View editText = new EditText(context);
        editText.setText(str2);
        linearLayout.addView(textView);
        linearLayout.addView(editText);
        builder.setView(linearLayout).setPositiveButton(17039370, new AnonymousClass_6(jsPromptResult, editText)).setNegativeButton(17039360, new AnonymousClass_5(jsPromptResult)).setOnCancelListener(new AnonymousClass_4(jsPromptResult)).create().show();
    }

    private static boolean a(Context context, String str, String str2, String str3, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        Builder builder = new Builder(context);
        builder.setTitle(str);
        if (z) {
            a(context, builder, str2, str3, jsPromptResult);
        } else {
            a(builder, str2, jsResult);
        }
        return true;
    }

    protected final void a(View view, int i, CustomViewCallback customViewCallback) {
        bo ba = this.ng.ba();
        if (ba == null) {
            da.w("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
        } else {
            ba.a(view, customViewCallback);
            ba.setRequestedOrientation(i);
        }
    }

    public final void onCloseWindow(WebView webView) {
        if (webView instanceof dd) {
            bo ba = ((dd) webView).ba();
            if (ba == null) {
                da.w("Tried to close an AdWebView not associated with an overlay.");
            } else {
                ba.close();
            }
        } else {
            da.w("Tried to close a WebView that wasn't an AdWebView.");
        }
    }

    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String str = "JS: " + consoleMessage.message() + " (" + consoleMessage.sourceId() + ":" + consoleMessage.lineNumber() + ")";
        switch (AnonymousClass_7.qr[consoleMessage.messageLevel().ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                da.t(str);
                break;
            case GoogleScorer.CLIENT_PLUS:
                da.w(str);
                break;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
            case GoogleScorer.CLIENT_APPSTATE:
                da.u(str);
                break;
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                da.s(str);
                break;
            default:
                da.u(str);
                break;
        }
        return super.onConsoleMessage(consoleMessage);
    }

    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebViewTransport webViewTransport = (WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        webView2.setWebViewClient(this.ng.bb());
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
        } else {
            if (j == 0) {
                if (j2 > j4 || j2 > 1048576) {
                    j2 = 0;
                }
            } else if (j2 == 0) {
                j2 = Math.min(Math.min(131072, j4) + j, 1048576);
            } else {
                if (j2 <= Math.min(1048576 - j, j4)) {
                    j += j2;
                }
                j2 = j;
            }
            quotaUpdater.updateQuota(j2);
        }
    }

    public final void onHideCustomView() {
        bo ba = this.ng.ba();
        if (ba == null) {
            da.w("Could not get ad overlay when hiding custom view.");
        } else {
            ba.aq();
        }
    }

    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return a(webView.getContext(), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return a(webView.getContext(), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return a(webView.getContext(), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return a(webView.getContext(), str, str2, str3, null, jsPromptResult, true);
    }

    public final void onReachedMaxAppCacheSize(long j, long j2, QuotaUpdater quotaUpdater) {
        long j3 = 131072 + j;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    public final void onShowCustomView(View view, CustomViewCallback customViewCallback) {
        a(view, -1, customViewCallback);
    }
}