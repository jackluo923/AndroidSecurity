package com.google.ads.util;

import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.Window;
import android.webkit.ConsoleMessage;
import android.webkit.ConsoleMessage.MessageLevel;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.andymstone.core.o;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.c;
import com.google.ads.internal.d;
import com.google.ads.internal.i;
import com.google.ads.l;
import com.google.ads.m;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

@TargetApi(11)
public class g {

    /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[MessageLevel.values().length];
            try {
                a[MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[MessageLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[MessageLevel.LOG.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[MessageLevel.TIP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            a[MessageLevel.DEBUG.ordinal()] = 5;
        }
    }

    public class a extends WebChromeClient {
        private final m a;

        final class AnonymousClass_1 implements OnCancelListener {
            final /* synthetic */ JsResult a;

            AnonymousClass_1(JsResult jsResult) {
                this.a = jsResult;
            }

            public void onCancel(DialogInterface dialogInterface) {
                this.a.cancel();
            }
        }

        final class AnonymousClass_2 implements OnClickListener {
            final /* synthetic */ JsResult a;

            AnonymousClass_2(JsResult jsResult) {
                this.a = jsResult;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                this.a.cancel();
            }
        }

        final class AnonymousClass_3 implements OnClickListener {
            final /* synthetic */ JsResult a;

            AnonymousClass_3(JsResult jsResult) {
                this.a = jsResult;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                this.a.confirm();
            }
        }

        final class AnonymousClass_4 implements OnCancelListener {
            final /* synthetic */ JsPromptResult a;

            AnonymousClass_4(JsPromptResult jsPromptResult) {
                this.a = jsPromptResult;
            }

            public void onCancel(DialogInterface dialogInterface) {
                this.a.cancel();
            }
        }

        final class AnonymousClass_5 implements OnClickListener {
            final /* synthetic */ JsPromptResult a;

            AnonymousClass_5(JsPromptResult jsPromptResult) {
                this.a = jsPromptResult;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                this.a.cancel();
            }
        }

        final class AnonymousClass_6 implements OnClickListener {
            final /* synthetic */ JsPromptResult a;
            final /* synthetic */ EditText b;

            AnonymousClass_6(JsPromptResult jsPromptResult, EditText editText) {
                this.a = jsPromptResult;
                this.b = editText;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                this.a.confirm(this.b.getText().toString());
            }
        }

        public a(m mVar) {
            this.a = mVar;
        }

        private static void a_(Builder builder, Context context, String str, String str2, JsPromptResult jsPromptResult) {
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

        private static void a_(Builder builder, String str, JsResult jsResult) {
            builder.setMessage(str).setPositiveButton(17039370, new AnonymousClass_3(jsResult)).setNegativeButton(17039360, new AnonymousClass_2(jsResult)).setOnCancelListener(new AnonymousClass_1(jsResult)).create().show();
        }

        private static boolean a_(WebView webView, String str, String str2, String str3, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
            if (webView instanceof AdWebView) {
                Context d = ((AdWebView) webView).d();
                if (d != null) {
                    Builder builder = new Builder(d);
                    builder.setTitle(str);
                    if (z) {
                        a(builder, d, str2, str3, jsPromptResult);
                    } else {
                        a(builder, str2, jsResult);
                    }
                    return true;
                }
            }
            return false;
        }

        public void onCloseWindow(WebView webView) {
            if (webView instanceof AdWebView) {
                ((AdWebView) webView).a();
            }
        }

        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String str = "JS: " + consoleMessage.message() + " (" + consoleMessage.sourceId() + ":" + consoleMessage.lineNumber() + ")";
            switch (AnonymousClass_1.a[consoleMessage.messageLevel().ordinal()]) {
                case o.MyAlertDialog_myAlertDialogAccentColor:
                    b.b(str);
                    break;
                case o.MyAlertDialog_myAlertDialogButtonDrawable:
                    b.e(str);
                    break;
                case o.MyAlertDialog_MAD_titleStyle:
                case o.MyAlertDialog_MAD_buttonBarStyle:
                    b.c(str);
                    break;
                case o.MyAlertDialog_MAD_textAppearanceMedium:
                    b.a(str);
                    break;
            }
            return super.onConsoleMessage(consoleMessage);
        }

        public void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater) {
            com.google.ads.l.a aVar = (com.google.ads.l.a) ((l) this.a.a.a()).a.a();
            long longValue = ((Long) aVar.i.a()).longValue() - j3;
            if (longValue <= 0) {
                quotaUpdater.updateQuota(j);
            } else {
                if (j == 0) {
                    if (j2 > longValue || j2 > ((Long) aVar.j.a()).longValue()) {
                        j2 = 0;
                    }
                } else if (j2 == 0) {
                    j2 = Math.min(Math.min(((Long) aVar.k.a()).longValue(), longValue) + j, ((Long) aVar.j.a()).longValue());
                } else {
                    if (j2 <= Math.min(((Long) aVar.j.a()).longValue() - j, longValue)) {
                        j += j2;
                    }
                    j2 = j;
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
            com.google.ads.l.a aVar = (com.google.ads.l.a) ((l) this.a.a.a()).a.a();
            long longValue = ((Long) aVar.g.a()).longValue() + j;
            if (((Long) aVar.h.a()).longValue() - j2 < longValue) {
                quotaUpdater.updateQuota(0);
            } else {
                quotaUpdater.updateQuota(longValue);
            }
        }

        public void onShowCustomView(View view, CustomViewCallback customViewCallback) {
            customViewCallback.onCustomViewHidden();
        }
    }

    public class b extends i {
        public b(d dVar, Map map, boolean z, boolean z2) {
            super(dVar, map, z, z2);
        }

        private static WebResourceResponse a(String str, Context context) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            AdUtil.a(httpURLConnection, context.getApplicationContext());
            httpURLConnection.connect();
            String str2 = "UTF-8";
            WebResourceResponse webResourceResponse = new WebResourceResponse("application/javascript", str2, new ByteArrayInputStream(AdUtil.a(new InputStreamReader(httpURLConnection.getInputStream())).getBytes(str2)));
            httpURLConnection.disconnect();
            return webResourceResponse;
        }

        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            try {
                if ("mraid.js".equalsIgnoreCase(new File(str).getName())) {
                    c j = this.a.j();
                    if (j != null) {
                        j.b(true);
                    } else {
                        this.a.a(true);
                    }
                    com.google.ads.l.a aVar = (com.google.ads.l.a) ((l) this.a.h().a.a()).a.a();
                    String str2;
                    if (this.a.h().b()) {
                        str2 = (String) aVar.e.a();
                        b.a("shouldInterceptRequest(" + str2 + ")");
                        return a(str2, webView.getContext());
                    } else if (this.b) {
                        str2 = (String) aVar.d.a();
                        b.a("shouldInterceptRequest(" + str2 + ")");
                        return a(str2, webView.getContext());
                    } else {
                        str2 = (String) aVar.c.a();
                        b.a("shouldInterceptRequest(" + str2 + ")");
                        return a(str2, webView.getContext());
                    }
                }
            } catch (IOException e) {
                b.d("IOException fetching MRAID JS.", e);
            } catch (Throwable th) {
                b.b("An unknown error occurred fetching MRAID JS.", th);
            }
            return super.shouldInterceptRequest(webView, str);
        }
    }

    public static void a(View view) {
        view.setLayerType(1, null);
    }

    public static void a(Window window) {
        window.setFlags(16777216, 16777216);
    }

    public static void a(WebSettings webSettings, m mVar) {
        Context context = (Context) mVar.f.a();
        com.google.ads.l.a aVar = (com.google.ads.l.a) ((l) mVar.a.a()).a.a();
        webSettings.setAppCacheEnabled(true);
        webSettings.setAppCacheMaxSize(((Long) aVar.f.a()).longValue());
        webSettings.setAppCachePath(new File(context.getCacheDir(), "admob").getAbsolutePath());
        webSettings.setDatabaseEnabled(true);
        webSettings.setDatabasePath(context.getDatabasePath("admob").getAbsolutePath());
        webSettings.setDomStorageEnabled(true);
        webSettings.setSupportZoom(true);
        webSettings.setBuiltInZoomControls(true);
        webSettings.setDisplayZoomControls(false);
    }

    public static void b(View view) {
        view.setLayerType(0, null);
    }
}