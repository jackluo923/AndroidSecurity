package me.kiip.internal.l;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.brightcove.player.media.ErrorFields;
import com.facebook.ads.internal.AdWebViewUtils;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import me.kiip.internal.i.e;
import me.kiip.sdk.Kiip;
import me.kiip.sdk.Kiip.OnContentListener;
import me.kiip.sdk.Kiip.OnSwarmListener;
import me.kiip.sdk.Modal;
import me.kiip.sdk.Modal.OnShowListener;
import org.json.JSONObject;

public class a extends Modal implements OnCancelListener, OnClickListener, OnDismissListener {
    String a;
    String b;
    String c;
    int d;
    HashMap e;
    boolean f;
    boolean g;
    boolean h;
    e i;
    private Context j;
    private c k;
    private Dialog l;
    private Runnable m;
    private Runnable n;
    private Runnable o;
    private OnShowListener p;
    private Modal.OnDismissListener q;
    private OnSwarmListener r;
    private OnContentListener s;
    private boolean t;
    private b u;
    private a v;
    private c w;

    private static class a extends WebView {
        private Runnable a;
        private e b;
        private boolean c;
        private boolean d;
        private a e;
        private c f;
        private b g;
        private OnSwarmListener h;
        private OnContentListener i;
        private ArrayList j;
        private WebViewClient k;

        public static interface b {
            void a(boolean z);
        }

        public static interface a {
            void a_();

            void b();

            void c();
        }

        public static interface c {
            void a(e eVar);
        }

        public a(Context context) {
            super(context);
            this.a = new Runnable() {
                public void run() {
                    a.this.e.b();
                }
            };
            this.k = new me.kiip.internal.o.a() {
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    if (a.this.b == null && !a.this.d) {
                        a.this.d = true;
                        if (!a.this.c) {
                            a.this.postDelayed(a.this, 2000);
                        }
                        a.this.c = false;
                    }
                }

                public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                    super.onPageStarted(webView, str, bitmap);
                }

                public void onReceivedError(WebView webView, int i, String str, String str2) {
                    super.onReceivedError(webView, i, str, str2);
                    a.this.b = new e(i, str, str2);
                    a.this.f.a(a.this.b);
                }

                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    String str2 = null;
                    try {
                        Uri parse = Uri.parse(str);
                        if ("kiip".equals(parse.getScheme())) {
                            String decode;
                            String queryParameter;
                            int parseInt;
                            String queryParameter2;
                            String queryParameter3;
                            if ("ready".equals(parse.getHost())) {
                                a.this.c = true;
                                a.this.removeCallbacks(a.this);
                                a.this.e.a();
                            }
                            if (Kiip.CAPABILITY_SHARE.equals(parse.getHost())) {
                                try {
                                    decode = URLDecoder.decode(parse.getQueryParameter("subject"), HTMLEncoder.ENCODE_NAME_DEFAULT);
                                    try {
                                        str2 = URLDecoder.decode(parse.getQueryParameter("text"), HTMLEncoder.ENCODE_NAME_DEFAULT);
                                    } catch (UnsupportedEncodingException e) {
                                    }
                                } catch (UnsupportedEncodingException e2) {
                                    decode = null;
                                }
                                if (!(decode == null && str2 == null)) {
                                    Intent intent = new Intent("android.intent.action.SEND");
                                    intent.setFlags(AccessibilityEventCompat.TYPE_GESTURE_DETECTION_END);
                                    intent.setType(WebRequest.CONTENT_TYPE_PLAIN_TEXT);
                                    intent.putExtra("android.intent.extra.SUBJECT", decode);
                                    intent.putExtra("android.intent.extra.TEXT", str2);
                                    a.this.getContext().startActivity(Intent.createChooser(intent, "Share via"));
                                }
                            }
                            if (AdDatabaseHelper.COLUMN_AD_CONTENT.equals(parse.getHost())) {
                                queryParameter = parse.getQueryParameter(AdDatabaseHelper.COLUMN_AD_CONTENT);
                                try {
                                    parseInt = Integer.parseInt(parse.getQueryParameter("quantity"));
                                } catch (NumberFormatException e3) {
                                    parseInt = -1;
                                }
                                queryParameter2 = parse.getQueryParameter("transaction_id");
                                queryParameter3 = parse.getQueryParameter("signature");
                                if (!(queryParameter == null || parseInt <= 0 || queryParameter2 == null || queryParameter3 == null || a.this.j.contains(queryParameter3))) {
                                    a.this.i.onContent(null, queryParameter, parseInt, queryParameter2, queryParameter3);
                                    a.this.j.add(queryParameter3);
                                }
                            }
                            if ("did_dismiss".equals(parse.getHost())) {
                                a.this.e.c();
                                decode = parse.getQueryParameter(Kiip.CAPABILITY_SWARM);
                                if (decode != null) {
                                    a.this.h.onSwarm(null, decode);
                                }
                                queryParameter = parse.getQueryParameter(AdDatabaseHelper.COLUMN_AD_CONTENT);
                                try {
                                    parseInt = Integer.parseInt(parse.getQueryParameter("quantity"));
                                } catch (NumberFormatException e4) {
                                    parseInt = -1;
                                }
                                queryParameter2 = parse.getQueryParameter("transaction_id");
                                queryParameter3 = parse.getQueryParameter("signature");
                                if (!(queryParameter == null || parseInt <= 0 || queryParameter2 == null || queryParameter3 == null)) {
                                    a.this.i.onContent(null, queryParameter, parseInt, queryParameter2, queryParameter3);
                                }
                                decode = parse.getQueryParameter(PlusShare.KEY_CALL_TO_ACTION_URL);
                                if (decode == null) {
                                    decode = parse.getQueryParameter("native_url");
                                }
                                if (decode != null) {
                                    try {
                                        a.this.g.a(true);
                                        a.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(decode)));
                                    } catch (Exception e5) {
                                        return false;
                                    }
                                }
                            }
                            return true;
                        }
                    } catch (NullPointerException e6) {
                    }
                    return false;
                }
            };
            a();
        }

        @SuppressLint({"SetJavaScriptEnabled"})
        private void a_() {
            WebSettings settings = getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setCacheMode(1);
            me.kiip.internal.p.b.c(settings, true);
            me.kiip.internal.p.b.a(settings, true);
            me.kiip.internal.p.b.d(settings, true);
            me.kiip.internal.p.b.b(settings, true);
            if (VERSION.SDK_INT <= 15) {
                me.kiip.internal.p.c.a(this, 1, null);
            }
            setBackgroundColor(0);
            setScrollBarStyle(0);
            WebChromeClient bVar = new me.kiip.internal.o.b();
            bVar.a(AdTrackerConstants.BLANK);
            setWebChromeClient(bVar);
            setWebViewClient(this.k);
            this.j = new ArrayList();
        }

        public void a_(a aVar) {
            this.e = aVar;
        }

        public void a_(b bVar) {
            this.g = bVar;
        }

        public void a_(c cVar) {
            this.f = cVar;
        }

        public void a_(OnContentListener onContentListener) {
            this.i = onContentListener;
        }

        public void a_(OnSwarmListener onSwarmListener) {
            this.h = onSwarmListener;
        }

        public void loadUrl(String str) {
            super.loadUrl(str, null);
        }

        public void loadUrl(String str, Map map) {
            this.b = null;
            this.c = false;
            this.d = false;
            super.loadUrl(str, map);
        }

        public void stopLoading() {
            removeCallbacks(this.a);
            super.stopLoading();
        }
    }

    private static class b extends RelativeLayout {
        private RotateAnimation a;
        private AlphaAnimation b;
        private AlphaAnimation c;
        private ImageView d;
        private TextView e;
        private TextView f;
        private TextView g;

        public b(Context context) {
            super(context);
            a();
        }

        private void a() {
            Context context = getContext();
            this.a = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
            this.a.setDuration(AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
            this.a.setInterpolator(new LinearInterpolator());
            this.a.setRepeatCount(-1);
            this.a.setRepeatMode(-1);
            this.b = new AlphaAnimation(0.0f, 1.0f);
            this.b.setDuration(300);
            this.b.setFillAfter(true);
            this.c = new AlphaAnimation(1.0f, 0.0f);
            this.c.setDuration(300);
            this.c.setFillAfter(true);
            this.d = new ImageView(context);
            this.e = new TextView(context);
            this.f = new TextView(context);
            this.g = new TextView(context);
            addView(this.d);
            addView(this.e);
            addView(this.f);
            addView(this.g);
            b();
        }

        private void a(boolean z) {
            if (z) {
                this.g.setVisibility(0);
                this.e.startAnimation(this.c);
                this.f.startAnimation(this.c);
                this.g.startAnimation(this.b);
            } else {
                this.e.startAnimation(this.b);
                this.f.startAnimation(this.b);
                this.g.startAnimation(this.c);
            }
        }

        private void b_() {
            Context context = getContext();
            Resources resources = context.getResources();
            float f = resources.getDisplayMetrics().density;
            setPadding((int) (17.0f * f), (int) (17.0f * f), (int) (17.0f * f), (int) (17.0f * f));
            setBackgroundColor(Color.parseColor("#E6000000"));
            int identifier = resources.getIdentifier("kp_activity_indicator", "drawable", context.getPackageName());
            Drawable drawable = null;
            if (identifier > 0) {
                drawable = context.getResources().getDrawable(identifier);
            } else {
                Log.w("KiipSDK", "Unable to find kp_activity_indicator.png in drawable-*");
            }
            this.d.setId(1);
            this.d.setImageDrawable(drawable);
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.leftMargin = (int) (17.0f * f);
            layoutParams.addRule(1, 1);
            this.e.setLayoutParams(layoutParams);
            this.e.setEllipsize(TruncateAt.END);
            this.e.setSingleLine();
            this.e.setTextColor(-1);
            this.e.setTextSize(12.0f);
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.leftMargin = (int) (17.0f * f);
            layoutParams.addRule(1, 1);
            layoutParams.addRule(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, 1);
            this.f.setLayoutParams(layoutParams);
            this.f.setEllipsize(TruncateAt.END);
            this.f.setSingleLine();
            this.f.setTextColor(-1);
            this.f.setTextSize(12.0f);
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.leftMargin = (int) (17.0f * f);
            layoutParams.addRule(1, 1);
            layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
            this.g.setLayoutParams(layoutParams);
            this.g.setEllipsize(TruncateAt.END);
            this.g.setSingleLine();
            this.g.setText("Tap again to cancel");
            this.g.setTextColor(-1);
            this.g.setTextSize(12.0f);
            this.g.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        }

        private void c() {
            this.d.startAnimation(this.a);
        }

        private void d() {
            this.d.clearAnimation();
        }

        public void a(String str) {
            this.e.setText(str);
        }

        public void b_(String str) {
            this.f.setText(str);
        }

        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            c();
        }

        protected void onDetachedFromWindow() {
            d();
            super.onDetachedFromWindow();
        }

        protected void onVisibilityChanged(View view, int i) {
            super.onVisibilityChanged(view, i);
            if (i == 8 || i == 4) {
                d();
            } else {
                c();
            }
        }

        public void setVisibility(int i) {
            if (getVisibility() != i) {
                super.setVisibility(i);
                if (i == 8 || i == 4) {
                    d();
                } else {
                    c();
                }
            }
        }
    }

    private static class c extends me.kiip.internal.i.b {
        public HashMap a;
        private Handler b;
        private Runnable c;
        private Runnable d;
        private RelativeLayout e;
        private b f;
        private a g;
        private boolean h;
        private View.OnClickListener i;
        private me.kiip.internal.l.a.a.a j;
        private me.kiip.internal.l.a.a.c k;
        private me.kiip.internal.l.a.a.b l;
        private String m;

        class AnonymousClass_4 extends RelativeLayout.LayoutParams {
            AnonymousClass_4(int i, int i2) {
                super(i, i2);
                addRule(R.styleable.MapAttrs_zOrderOnTop);
            }
        }

        public c(Context context) {
            super(context);
            this.c = new Runnable() {
                public void run() {
                    c.this.c();
                }
            };
            this.d = new Runnable() {
                public void run() {
                    c.this.a(false);
                }
            };
            this.i = new View.OnClickListener() {
                public void onClick(View view) {
                    if (c.this.h) {
                        c.this.cancel();
                    } else {
                        c.this.a(true);
                        c.this.b.postDelayed(c.this.d, 3000);
                    }
                }
            };
            b();
        }

        private void a(boolean z) {
            if (z) {
                this.h = true;
            } else {
                this.h = false;
            }
            this.f.a(z);
        }

        private void b() {
            Context context = getContext();
            this.b = new Handler();
            this.e = new RelativeLayout(context);
            this.f = new b(context);
            this.g = new a(context);
            this.e.addView(this.f, new AnonymousClass_4(-2, -2));
            this.e.addView(this.g, new RelativeLayout.LayoutParams(-1, -1));
        }

        private void b(boolean z) {
            Window window = getWindow();
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.copyFrom(window.getAttributes());
            if (z) {
                layoutParams.width = -1;
                layoutParams.height = -1;
            } else {
                layoutParams.width = -2;
                layoutParams.height = -2;
            }
            window.setAttributes(layoutParams);
        }

        private void c_() {
            this.f.setVisibility(0);
        }

        public void a() {
            Context context = getContext();
            int identifier = context.getResources().getIdentifier("modal", AnalyticsEvent.EVENT_ID, context.getPackageName());
            if (identifier != 0) {
                this.e.setId(identifier);
            }
            this.f.setVisibility(GoogleScorer.CLIENT_APPSTATE);
            this.f.setOnClickListener(this.i);
            this.g.setVisibility(GoogleScorer.CLIENT_APPSTATE);
            this.g.a(new me.kiip.internal.l.a.a.b() {
                public void a(boolean z) {
                    c.this.l.a(z);
                }
            });
            this.g.a(new me.kiip.internal.l.a.a.a() {
                public void a() {
                    c.this.b.removeCallbacks(c.this.c);
                    c.this.f.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                    c.this.g.setVisibility(0);
                    c.this.b(true);
                    c.this.getWindow().setBackgroundDrawableResource(17170445);
                    c.this.setCancelable(true);
                    String str = AdTrackerConstants.BLANK;
                    if (c.this.size() > 0) {
                        Iterable linkedList = new LinkedList();
                        Iterator it = c.this.keySet().iterator();
                        while (it.hasNext()) {
                            str = (String) it.next();
                            try {
                                linkedList.add(URLEncoder.encode(str, HTMLEncoder.ENCODE_NAME_DEFAULT) + "=" + URLEncoder.encode((String) c.this.get(str), HTMLEncoder.ENCODE_NAME_DEFAULT));
                            } catch (UnsupportedEncodingException e) {
                            }
                        }
                        str = "&" + TextUtils.join("&", linkedList);
                    }
                    if (VERSION.SDK_INT < 19) {
                        c.this.g.loadUrl("javascript:window.location.hash=\"#show" + str + "\";");
                    } else {
                        try {
                            c.this.g.evaluateJavascript("javascript:window.location.hash=\"#show" + str + "\";", null);
                        } catch (IllegalStateException e2) {
                        }
                    }
                    c.this.j.a();
                }

                public void b() {
                    c.this.b.removeCallbacks(c.this.c);
                    c.this.j.b();
                }

                public void c() {
                    c.this.dismiss();
                    c.this.j.c();
                }
            });
            this.g.a(new me.kiip.internal.l.a.a.c() {
                public void a(e eVar) {
                    c.this.k.a(eVar);
                }
            });
        }

        public void a(String str) {
            this.f.a(str);
        }

        public void a(me.kiip.internal.l.a.a.a aVar) {
            this.j = aVar;
        }

        public void a(me.kiip.internal.l.a.a.b bVar) {
            this.l = bVar;
        }

        public void a(me.kiip.internal.l.a.a.c cVar) {
            this.k = cVar;
        }

        public void a(OnContentListener onContentListener) {
            this.g.a(onContentListener);
        }

        public void a(OnSwarmListener onSwarmListener) {
            this.g.a(onSwarmListener);
        }

        public void b(String str) {
            this.f.b(str);
        }

        public void c_(String str) {
            this.m = str;
        }

        public void cancel() {
            this.b.removeCallbacks(this.c);
            this.b.removeCallbacks(this.d);
            try {
                this.g.stopLoading();
            } catch (NullPointerException e) {
            }
            ViewGroup viewGroup = (ViewGroup) this.g.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.g);
            }
            this.g.destroy();
            super.cancel();
        }

        public void dismiss() {
            this.b.removeCallbacks(this.c);
            this.b.removeCallbacks(this.d);
            try {
                this.g.stopLoading();
            } catch (NullPointerException e) {
            }
            ViewGroup viewGroup = (ViewGroup) this.g.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.g);
            }
            this.g.destroy();
            super.dismiss();
        }

        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            a();
            setContentView(this.e);
        }

        public void show() {
            this.h = false;
            this.g.loadUrl(this.m);
            this.b.postDelayed(this.c, 500);
            super.show();
        }
    }

    private a(String str, String str2, String str3, int i) {
        this.u = new b() {
            public void a(boolean z) {
                a.this.h = true;
            }
        };
        this.v = new a() {
            public void a() {
                if ((a.this.l == null || !a.this.l.isShowing()) && a.this.m != null) {
                    a.this.m.run();
                }
            }

            public void b() {
                a.this.g = true;
                a.this.n.run();
                a.this.a("Unable to load");
            }

            public void c() {
            }
        };
        this.w = new c() {
            public void a(e eVar) {
                a.this.i = eVar;
                a.this.n.run();
                a.this.a(eVar.getMessage());
            }
        };
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
    }

    private c a_(Context context) {
        c cVar = new c(context);
        cVar.setCanceledOnTouchOutside(false);
        cVar.setCancelable(false);
        cVar.setOnCancelListener(this);
        cVar.setOnDismissListener(this);
        cVar.a(this.a);
        cVar.b(this.b);
        cVar.a(this.v);
        cVar.a(this.w);
        cVar.a(this.u);
        cVar.a(this.r);
        cVar.a(this.s);
        return cVar;
    }

    static a a_(JSONObject jSONObject) {
        return new a(jSONObject.optString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, null), jSONObject.optString(ErrorFields.MESSAGE, null), jSONObject.getString("body_url"), jSONObject.optInt("timeout", R.styleable.MapAttrs_uiZoomControls) * 1000);
    }

    private void a_(String str) {
        if (this.k != null) {
            this.k.setOnDismissListener(null);
            this.k.dismiss();
        }
        if (this.l == null) {
            this.l = new Builder(this.j).setTitle("Kiip Error").setMessage(str).setOnCancelListener(this).setNeutralButton(17039370, this).create();
        }
        if (!((Activity) this.j).isFinishing()) {
            this.l.show();
        }
    }

    void a_(Context context, boolean z, Runnable runnable, Runnable runnable2, Runnable runnable3) {
        if (!this.t) {
            this.t = true;
            this.j = context;
            this.k = a(context);
            this.m = runnable;
            this.n = runnable2;
            this.o = runnable3;
            if (this.p != null) {
                this.p.onShow(this);
            }
            this.k.a = this.e;
            this.k.c(this.c);
            this.k.show();
        }
    }

    void a_(OnContentListener onContentListener) {
        this.s = onContentListener;
    }

    void a_(OnSwarmListener onSwarmListener) {
        this.r = onSwarmListener;
    }

    void a_(boolean z) {
        if (this.t) {
            if (this.k.isShowing()) {
                this.k.setOnDismissListener(null);
                this.k.dismiss();
            }
            if (this.l != null && this.l.isShowing()) {
                this.l.dismiss();
            }
            this.t = false;
            if (!z) {
                if (this.q != null) {
                    this.q.onDismiss(this);
                }
                this.o.run();
            }
        }
    }

    public boolean isShowing() {
        return this.t;
    }

    public void onCancel(DialogInterface dialogInterface) {
        if (dialogInterface.equals(this.k)) {
            this.f = true;
        }
        a(false);
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        a(false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        a(false);
    }

    public void setOnDismissListener(Modal.OnDismissListener onDismissListener) {
        this.q = onDismissListener;
    }

    public void setOnShowListener(OnShowListener onShowListener) {
        this.p = onShowListener;
    }
}