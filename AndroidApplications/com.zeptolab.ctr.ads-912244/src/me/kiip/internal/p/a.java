package me.kiip.internal.p;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebView;
import android.widget.EditText;
import java.net.MalformedURLException;
import java.net.URL;

public class a {
    String a;

    class AnonymousClass_1 implements OnClickListener {
        final /* synthetic */ JsResult a;

        AnonymousClass_1(JsResult jsResult) {
            this.a = jsResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.a.confirm();
        }
    }

    class AnonymousClass_2 implements OnCancelListener {
        final /* synthetic */ JsResult a;

        AnonymousClass_2(JsResult jsResult) {
            this.a = jsResult;
        }

        public void onCancel(DialogInterface dialogInterface) {
            this.a.cancel();
        }
    }

    class AnonymousClass_3 implements OnClickListener {
        final /* synthetic */ JsResult a;

        AnonymousClass_3(JsResult jsResult) {
            this.a = jsResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            if (-1 == i) {
                this.a.confirm();
            } else if (-2 == i) {
                this.a.cancel();
            }
        }
    }

    class AnonymousClass_4 implements OnCancelListener {
        final /* synthetic */ JsResult a;

        AnonymousClass_4(JsResult jsResult) {
            this.a = jsResult;
        }

        public void onCancel(DialogInterface dialogInterface) {
            this.a.cancel();
        }
    }

    class AnonymousClass_5 implements OnClickListener {
        final /* synthetic */ JsPromptResult a;
        final /* synthetic */ EditText b;

        AnonymousClass_5(JsPromptResult jsPromptResult, EditText editText) {
            this.a = jsPromptResult;
            this.b = editText;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            if (-1 == i) {
                this.a.confirm(this.b.getText().toString());
            } else if (-2 == i) {
                this.a.cancel();
            }
        }
    }

    class AnonymousClass_6 implements OnCancelListener {
        final /* synthetic */ JsPromptResult a;

        AnonymousClass_6(JsPromptResult jsPromptResult) {
            this.a = jsPromptResult;
        }

        public void onCancel(DialogInterface dialogInterface) {
            this.a.cancel();
        }
    }

    public a() {
        this(null);
    }

    public a(String str) {
        this.a = str;
    }

    private String b(String str) {
        String str2 = this.a;
        return str2 == null ? c(str) : str2;
    }

    private static String c(String str) {
        try {
            return new URL(str).getHost();
        } catch (MalformedURLException e) {
            return null;
        }
    }

    public void a_(WebView webView, String str, String str2, JsResult jsResult) {
        OnClickListener anonymousClass_1 = new AnonymousClass_1(jsResult);
        new Builder(webView.getContext()).setTitle(b(str)).setMessage(str2).setPositiveButton(17039370, anonymousClass_1).setOnCancelListener(new AnonymousClass_2(jsResult)).create().show();
    }

    public void a_(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        View editText = new EditText(webView.getContext());
        OnClickListener anonymousClass_5 = new AnonymousClass_5(jsPromptResult, editText);
        new Builder(webView.getContext()).setTitle(b(str)).setMessage(str2).setView(editText).setPositiveButton(17039370, anonymousClass_5).setNegativeButton(17039360, anonymousClass_5).setOnCancelListener(new AnonymousClass_6(jsPromptResult)).create().show();
    }

    public void a_(String str) {
        this.a = str;
    }

    public void b(WebView webView, String str, String str2, JsResult jsResult) {
        c(webView, str, str2, jsResult);
    }

    public void c(WebView webView, String str, String str2, JsResult jsResult) {
        OnClickListener anonymousClass_3 = new AnonymousClass_3(jsResult);
        new Builder(webView.getContext()).setTitle(b(str)).setMessage(str2).setPositiveButton(17039370, anonymousClass_3).setNegativeButton(17039360, anonymousClass_3).setOnCancelListener(new AnonymousClass_4(jsResult)).create().show();
    }
}