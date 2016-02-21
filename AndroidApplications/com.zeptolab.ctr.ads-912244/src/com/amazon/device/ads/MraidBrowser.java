package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.support.v4.view.MotionEventCompat;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

class MraidBrowser implements IAdActivityAdapter {
    protected static final String a;
    protected static final String b = "extra_url";
    protected static final String c = "extra_open_btn";
    private static final int d = 50;
    private static final int e = 3;
    private WebView f;
    private ImageButton g;
    private ImageButton h;
    private ImageButton i;
    private ImageButton j;
    private ImageButton k;
    private Activity l;
    private boolean m;

    class AnonymousClass_7 implements OnClickListener {
        final String a;
        final /* synthetic */ Intent b;

        AnonymousClass_7(Intent intent) {
            this.b = intent;
            this.a = this.b.getStringExtra(b);
        }

        public void onClick(View view) {
            String url = MraidBrowser.this.f.getUrl();
            if (url == null) {
                url = "The current URL is null. Reverting to the original URL for external browser.";
                Log.w(a, "The current URL is null. Reverting to the original URL for external browser.");
                url = this.a;
            }
            AdUtils.launchActivityForIntentLink(url, MraidBrowser.this.f.getContext());
        }
    }

    class LoadButtonsTask extends AsyncTask {
        private final ViewGroup b;
        private final int c;
        private final int d;
        private final Intent e;

        public LoadButtonsTask(Intent intent, ViewGroup viewGroup, int i, int i2) {
            this.e = intent;
            this.b = viewGroup;
            this.c = i;
            this.d = i2;
        }

        protected Void a(Void... voidArr) {
            MraidBrowser.this.g = MraidBrowser.this.a(Assets.getInstance().getFilePath(Assets.LEFT_ARROW), ZBuildConfig.$minsdk, -1, this.c, this.d);
            MraidBrowser.this.g.setId(10537);
            MraidBrowser.this.h = MraidBrowser.this.a(Assets.getInstance().getFilePath(Assets.RIGHT_ARROW), 1, MraidBrowser.this.g.getId(), this.c, this.d);
            MraidBrowser.this.h.setId(10794);
            MraidBrowser.this.j = MraidBrowser.this.a(Assets.getInstance().getFilePath(Assets.CLOSE), R.styleable.MapAttrs_uiZoomGestures, -1, this.c, this.d);
            if (MraidBrowser.this.m) {
                MraidBrowser.this.k = MraidBrowser.this.a(Assets.getInstance().getFilePath(Assets.OPEN_EXTERNAL_BROWSER), 1, MraidBrowser.this.h.getId(), this.c, this.d);
                MraidBrowser.this.k.setId(10795);
                MraidBrowser.this.i = MraidBrowser.this.a(Assets.getInstance().getFilePath(Assets.REFRESH), 1, MraidBrowser.this.k.getId(), this.c, this.d);
            } else {
                MraidBrowser.this.i = MraidBrowser.this.a(Assets.getInstance().getFilePath(Assets.REFRESH), 1, MraidBrowser.this.h.getId(), this.c, this.d);
            }
            return null;
        }

        protected void a(Void voidR) {
            this.b.addView(MraidBrowser.this.g);
            this.b.addView(MraidBrowser.this.h);
            this.b.addView(MraidBrowser.this.i);
            this.b.addView(MraidBrowser.this.j);
            if (MraidBrowser.this.m) {
                this.b.addView(MraidBrowser.this.k);
            }
            MraidBrowser.this.c(this.e);
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((Void) obj);
        }
    }

    static class MraidBrowserBuilder {
        private static final String a;
        private Context b;
        private String c;
        private boolean d;

        static {
            a = MraidBrowserBuilder.class.getSimpleName();
        }

        MraidBrowserBuilder() {
        }

        MraidBrowserBuilder a() {
            this.d = true;
            return this;
        }

        MraidBrowserBuilder a(Context context) {
            this.b = context;
            return this;
        }

        MraidBrowserBuilder a(String str) {
            this.c = str;
            return this;
        }

        void b() {
            if (this.b == null) {
                throw new IllegalArgumentException("Context must not be null");
            } else if (Utils.isNullOrWhiteSpace(this.c)) {
                throw new IllegalArgumentException("Url must not be null or white space");
            } else if (Assets.getInstance().ensureAssetsCreated()) {
                Intent intent = new Intent(this.b, AdActivity.class);
                intent.putExtra("adapter", MraidBrowser.class.getName());
                intent.putExtra(b, this.c);
                intent.putExtra(c, this.d);
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                this.b.startActivity(intent);
            } else {
                Log.e(a, "Could not load application assets, failed to open URI: %s", new Object[]{this.c});
            }
        }
    }

    static {
        a = MraidBrowser.class.getSimpleName();
    }

    MraidBrowser() {
    }

    private ImageButton a(String str, int i, int i2, int i3, int i4) {
        ImageButton imageButton = new ImageButton(this.l);
        imageButton.setImageBitmap(BitmapFactory.decodeFile(str));
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(i3, i4);
        layoutParams.addRule(i, i2);
        layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
        imageButton.setLayoutParams(layoutParams);
        imageButton.setBackgroundColor(0);
        imageButton.setScaleType(ScaleType.FIT_CENTER);
        return imageButton;
    }

    @SuppressLint({"InlinedApi"})
    private void a(Intent intent) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.l.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        float f = displayMetrics.density;
        int i = (int) (50.0f * f + 0.5f);
        int i2 = (int) (f * 3.0f + 0.5f);
        int i3 = displayMetrics.widthPixels / (this.m ? IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR : GoogleScorer.CLIENT_APPSTATE);
        if (i3 > i * 2) {
            i3 = i * 2;
        }
        View relativeLayout = new RelativeLayout(this.l);
        relativeLayout.setId(10280);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, i + i2);
        layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setBackgroundColor(-986896);
        ThreadUtils.executeAsyncTask(new LoadButtonsTask(intent, relativeLayout, i3, i), new Void[0]);
        View view = new View(this.l);
        view.setBackgroundColor(-3355444);
        LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, i2);
        layoutParams2.addRule(R.styleable.MapAttrs_uiZoomControls);
        view.setLayoutParams(layoutParams2);
        relativeLayout.addView(view);
        this.f = WebViewFactory.getInstance().createWebView(this.l);
        layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(GoogleScorer.CLIENT_PLUS, relativeLayout.getId());
        this.f.setLayoutParams(layoutParams);
        view = new RelativeLayout(this.l);
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        view.addView(this.f);
        view.addView(relativeLayout);
        View linearLayout = new LinearLayout(this.l);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.addView(view);
        this.l.setContentView(linearLayout);
    }

    private void b(Intent intent) {
        WebViewFactory.setJavaScriptEnabledForWebView(true, this.f, a);
        this.f.loadUrl(intent.getStringExtra(b));
        this.f.setWebViewClient(new WebViewClient() {
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                Log.w(a, "MRAID error: %s", new Object[]{str});
            }

            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str == null) {
                    return false;
                }
                if (!str.startsWith("market:") && !str.startsWith("tel:") && !str.startsWith("voicemail:") && !str.startsWith("sms:") && !str.startsWith("mailto:") && !str.startsWith("geo:") && !str.startsWith("google.streetview:")) {
                    return false;
                }
                try {
                    MraidBrowser.this.l.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                } catch (ActivityNotFoundException e) {
                    Log.w(a, "Could not handle intent with URI: %s", new Object[]{str});
                }
                return true;
            }
        });
        this.f.setWebChromeClient(new WebChromeClient() {
            public void onProgressChanged(WebView webView, int i) {
                Activity activity = (Activity) webView.getContext();
                activity.setTitle("Loading...");
                activity.setProgress(i * 100);
                if (i == 100) {
                    activity.setTitle(webView.getUrl());
                }
                MraidBrowser.this.c(webView);
            }
        });
    }

    private void c(Intent intent) {
        this.g.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (MraidBrowser.this.f.canGoBack()) {
                    MraidBrowser.this.f.goBack();
                }
            }
        });
        this.h.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (MraidBrowser.this.f.canGoForward()) {
                    MraidBrowser.this.f.goForward();
                }
            }
        });
        this.i.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MraidBrowser.this.f.reload();
            }
        });
        this.j.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MraidBrowser.this.l.finish();
            }
        });
        if (this.m) {
            this.k.setOnClickListener(new AnonymousClass_7(intent));
        }
    }

    private void c(WebView webView) {
        if (this.g != null && this.h != null) {
            if (webView.canGoBack()) {
                AndroidTargetUtils.setImageButtonAlpha(this.g, MotionEventCompat.ACTION_MASK);
            } else {
                AndroidTargetUtils.setImageButtonAlpha(this.g, IMBrowserActivity.EXPAND_ACTIVITY);
            }
            if (webView.canGoForward()) {
                AndroidTargetUtils.setImageButtonAlpha(this.h, MotionEventCompat.ACTION_MASK);
            } else {
                AndroidTargetUtils.setImageButtonAlpha(this.h, IMBrowserActivity.EXPAND_ACTIVITY);
            }
        }
    }

    private void e() {
        CookieSyncManager.createInstance(this.l);
        CookieSyncManager.getInstance().startSync();
    }

    protected WebView a() {
        return this.f;
    }

    protected void a(WebView webView) {
        AndroidTargetUtils.webViewOnPause(webView);
    }

    protected boolean a(int i) {
        return VERSION.SDK_INT >= i;
    }

    protected void b(WebView webView) {
        AndroidTargetUtils.webViewOnResume(webView);
    }

    protected boolean b() {
        return Settings.getInstance().getBoolean(Settings.SETTING_ENABLE_WEBVIEW_PAUSE_LOGIC, false);
    }

    protected boolean c() {
        return a() != null && b();
    }

    protected boolean d() {
        return a() != null && b();
    }

    public void onCreate() {
        this.l.getWindow().requestFeature(GoogleScorer.CLIENT_PLUS);
        this.l.getWindow().setFeatureInt(GoogleScorer.CLIENT_PLUS, -1);
        Intent intent = this.l.getIntent();
        this.m = intent.getBooleanExtra(c, false);
        a(intent);
        b(intent);
        e();
    }

    public void onPause() {
        Log.d(a, "onPause");
        WebView a = a();
        if (a((int)R.styleable.MapAttrs_uiZoomGestures)) {
            a(a);
        } else {
            Log.w(a, "Unable to call WebView.onPause");
        }
        if (c()) {
            a.pauseTimers();
        }
        CookieSyncManager.getInstance().stopSync();
    }

    public void onResume() {
        Log.d(a, "onResume");
        WebView a = a();
        if (a((int)R.styleable.MapAttrs_uiZoomGestures)) {
            b(a);
        } else {
            Log.w(a, "Unable to call WebView.onResume");
        }
        if (d()) {
            a.resumeTimers();
        }
        CookieSyncManager.getInstance().startSync();
    }

    public void onStop() {
    }

    public void preOnCreate() {
    }

    public void setActivity(Activity activity) {
        this.l = activity;
    }
}