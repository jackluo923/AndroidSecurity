package com.amazon.device.ads;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import com.heyzap.house.impl.AbstractActivity;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

class InterstitialAdActivityAdapter implements AdView, IAdActivityAdapter {
    private Activity a;
    private String b;
    private final int c;
    private final int d;

    class AnonymousClass_1 extends AsyncTask {
        final /* synthetic */ FrameLayout a;
        final /* synthetic */ BitmapDrawable b;
        final /* synthetic */ BitmapDrawable c;
        final /* synthetic */ int d;
        final /* synthetic */ int e;

        class AnonymousClass_2 implements OnTouchListener {
            final /* synthetic */ ImageView a;

            AnonymousClass_2(ImageView imageView) {
                this.a = imageView;
            }

            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        this.a.setImageDrawable(AnonymousClass_1.this.c);
                        break;
                    case GoogleScorer.CLIENT_GAMES:
                        this.a.setImageDrawable(AnonymousClass_1.this);
                        break;
                }
                return false;
            }
        }

        AnonymousClass_1(FrameLayout frameLayout, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2, int i, int i2) {
            this.a = frameLayout;
            this.b = bitmapDrawable;
            this.c = bitmapDrawable2;
            this.d = i;
            this.e = i2;
        }

        protected RelativeLayout a(Void... voidArr) {
            RelativeLayout relativeLayout = new RelativeLayout(this.a.getContext());
            View imageButton = new ImageButton(this.a.getContext());
            imageButton.setImageDrawable(this.b);
            imageButton.setScaleType(ScaleType.FIT_CENTER);
            imageButton.setBackgroundDrawable(null);
            OnClickListener anonymousClass_1 = new OnClickListener() {
                public void onClick(View view) {
                    AnonymousClass_1.this.finish();
                }
            };
            imageButton.setOnClickListener(anonymousClass_1);
            relativeLayout.setOnClickListener(anonymousClass_1);
            OnTouchListener anonymousClass_2 = new AnonymousClass_2(imageButton);
            relativeLayout.setOnTouchListener(anonymousClass_2);
            imageButton.setOnTouchListener(anonymousClass_2);
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.d, this.d);
            layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
            relativeLayout.addView(imageButton, layoutParams);
            return relativeLayout;
        }

        protected void a(RelativeLayout relativeLayout) {
            LayoutParams layoutParams = new FrameLayout.LayoutParams(this.e, this.e, 5);
            layoutParams.topMargin = 0;
            layoutParams.rightMargin = 0;
            this.a.addView(relativeLayout, layoutParams);
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((RelativeLayout) obj);
        }
    }

    InterstitialAdActivityAdapter() {
        this.a = null;
        this.b = null;
        this.c = 60;
        this.d = 80;
    }

    private void a(FrameLayout frameLayout) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.a.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i = (int) (60.0f * displayMetrics.density + 0.5f);
        int i2 = (int) (80.0f * displayMetrics.density + 0.5f);
        ThreadUtils.executeAsyncTask(new AnonymousClass_1(frameLayout, AndroidTargetUtils.getNewBitmapDrawable(this.a.getResources(), Assets.getInstance().getFilePath(Assets.INTERSITIAL_CLOSE_NORMAL)), AndroidTargetUtils.getNewBitmapDrawable(this.a.getResources(), Assets.getInstance().getFilePath(Assets.INTERSITIAL_CLOSE_PRESSED)), i, i2), new Void[0]);
    }

    private void a(String str) {
        Intent intent = new Intent("amazon.mobile.ads.interstitial");
        intent.putExtra(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY, str);
        intent.putExtra("uniqueIdentifier", this.b);
        this.a.sendBroadcast(intent);
    }

    Activity a() {
        return this.a;
    }

    public int getHeight() {
        return 0;
    }

    public UrlExecutor getSpecialUrlExecutor() {
        return new AmazonMobileExecutor(this, this.a);
    }

    public boolean isAdViewRenderable() {
        return true;
    }

    public boolean launchExternalBrowserForLink(String str) {
        return isAdViewRenderable() ? AdUtils.launchActivityForIntentLink(str, this.a) : false;
    }

    public void onCreate() {
        WebView createWebView = WebViewFactory.getInstance().createWebView(this.a);
        if (DeviceInfo.getUserAgentString() == null) {
            DeviceInfo.setUserAgentString(createWebView.getSettings().getUserAgentString());
        }
        this.b = this.a.getIntent().getStringExtra("uniqueIdentifier");
        String replace = this.a.getIntent().getStringExtra("creative").replace("<head>", "<head>\n  <script type='text/javascript'>\n  function fireImpression(a) {\n    var container = document.createElement('div');\n    var pix = document.createElement('img');\n    pix.setAttribute('src', a);\n    pix.style.position = 'absolute';\n    pix.style.top = '0px';\n    pix.style.right = '0px';\n    pix.style.display = 'none';\n    container.appendChild(pix);\n    document.body.appendChild(container);\n  }\n  </script>\n");
        View removeCachedMraidView = MraidView.removeCachedMraidView(this.b);
        if (removeCachedMraidView == null) {
            createWebView.setBackgroundColor(0);
            removeCachedMraidView = new MraidView(this, this.a, createWebView);
        } else {
            removeCachedMraidView.registerReceivers();
            removeCachedMraidView.setAdView(this);
        }
        frameLayout.loadHtmlData("http://amazon-adsystem.amazon.com/", replace);
        a(frameLayout);
        this.a.setContentView(frameLayout);
    }

    public void onPageFinished() {
        a("finished");
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStop() {
        if (this.a.isFinishing()) {
            a("dismissed");
        }
    }

    public void preOnCreate() {
        this.a.requestWindowFeature(1);
        this.a.getWindow().setFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        if (VERSION.SDK_INT > 11) {
            AndroidTargetUtils.hideActionAndStatusBars(this.a);
        }
    }

    public void setActivity(Activity activity) {
        this.a = activity;
    }

    public boolean shouldDisableWebViewHardwareAcceleration() {
        return false;
    }
}