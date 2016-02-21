package com.heyzap.house.view;

import android.app.Activity;
import android.content.Context;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.heyzap.house.impl.AbstractActivity.AdActionListener;
import com.heyzap.house.model.InterstitialModel;
import com.heyzap.house.model.VideoModel;
import com.heyzap.internal.Utils;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.zbuild.ZBuildConfig;

public class InterstitialWebView extends FrameLayout {
    private static final int MAX_SIZE_DP_HEIGHT = 360;
    private static final int MAX_SIZE_DP_WIDTH = 360;
    private static final float MAX_SIZE_PERCENT = 0.98f;
    public Boolean contentLoaded;
    private Boolean doNextShowWithAnimation;
    private Boolean doNextShowWithCallback;
    private Boolean globalTouchEnabled;
    private AdActionListener listener;
    private b wrapperView;

    private class a extends WebView {
        public a(Context context) {
            super(context.getApplicationContext());
            setBackgroundColor(0);
        }

        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            return InterstitialWebView.this.onKeyDown(i, keyEvent);
        }
    }

    private class b extends RelativeLayout {
        private static final int d = 10;
        public FrameLayout a;
        public a b;

        public b(Context context) {
            super(context);
            setLayoutParams(new LayoutParams(-2, -2));
            setGravity(ZBuildConfig.$targetsdk);
            this.a = new FrameLayout(context);
            Utils.getScaledSize(context, (int)d);
            ViewGroup.LayoutParams layoutParams = new LayoutParams(-1, -1);
            layoutParams.addRule(ZBuildConfig.$minsdk);
            layoutParams.addRule(d);
            addView(this.a, layoutParams);
            this.b = new a(context);
            this.b.setVisibility(0);
            this.b.setVerticalScrollBarEnabled(false);
            this.b.setHorizontalScrollBarEnabled(false);
            this.b.setScrollBarStyle(33554432);
            this.b.setBackgroundColor(0);
            this.a.addView(this.b, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public InterstitialWebView(Context context, AdActionListener adActionListener) {
        super(context);
        this.globalTouchEnabled = Boolean.valueOf(false);
        this.contentLoaded = Boolean.valueOf(false);
        this.doNextShowWithAnimation = Boolean.valueOf(false);
        this.doNextShowWithCallback = Boolean.valueOf(false);
        this.listener = adActionListener;
        this.wrapperView = new b(context);
        addView(this.wrapperView);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setupWebview();
        setTouchListener();
    }

    private void setTouchListener() {
        this.wrapperView.b.setOnTouchListener(new h(this));
    }

    private void setWidths(Context context, int i, int i2) {
        Activity activity = (Activity) context;
        if (i == 0 && i2 == 0) {
            int round = Math.round(((float) activity.getWindowManager().getDefaultDisplay().getWidth()) * 0.98f);
            int round2 = Math.round(((float) activity.getWindowManager().getDefaultDisplay().getHeight()) * 0.98f);
            round = Math.min(Utils.getScaledSize(context, (int)MAX_SIZE_DP_WIDTH), round);
            round2 = Math.min(Utils.getScaledSize(context, (int)MAX_SIZE_DP_WIDTH), round2);
            i = Math.min(round, round2);
            i2 = Math.min(i, round2);
        }
        Utils.dpToPx(context, R.styleable.MapAttrs_uiZoomControls);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.wrapperView.getLayoutParams();
        layoutParams.gravity = 17;
        layoutParams.width = i;
        layoutParams.height = i2;
        setLayoutParams(layoutParams);
    }

    private void setupWebview() {
        this.wrapperView.b.getSettings().setJavaScriptEnabled(true);
        this.wrapperView.b.getSettings().setLoadsImagesAutomatically(true);
        this.wrapperView.b.getSettings().setCacheMode(1);
        WebViewClient fVar = new f(this);
        WebChromeClient gVar = new g(this);
        this.wrapperView.b.setWebViewClient(fVar);
        this.wrapperView.b.setWebChromeClient(gVar);
    }

    private void showWithAnimation(Boolean bool) {
        Animation animationSet = new AnimationSet(true);
        Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(400);
        animationSet.addAnimation(alphaAnimation);
        alphaAnimation.setAnimationListener(new e(this, bool));
        setTouchListener();
        this.wrapperView.startAnimation(animationSet);
    }

    private void viewDidHide() {
        this.wrapperView.b.loadUrl("javascript: try{adViewHidden();} catch(e) {}");
    }

    private void viewDidShow() {
        this.wrapperView.b.loadUrl("javascript: try{adViewShown();}catch(e){}");
    }

    public void clear() {
        this.wrapperView.b.loadDataWithBaseURL(null, "<html></html>", WebRequest.CONTENT_TYPE_HTML, null, null);
    }

    public void hide(Boolean bool) {
        hide(bool, Boolean.valueOf(true));
    }

    public void hide(Boolean bool, Boolean bool2) {
        ((Activity) this.wrapperView.getContext()).runOnUiThread(new c(this, bool, bool2));
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        showWithAnimation(Boolean.valueOf(true));
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.listener != null) {
            this.listener.hide();
        }
        return true;
    }

    public void render(InterstitialModel interstitialModel) {
        render(interstitialModel.getHtmlData(), interstitialModel.getWidth(), interstitialModel.getHeight(), interstitialModel.getBackgroundOverlayColor());
    }

    public void render(VideoModel videoModel) {
        render(videoModel.getHtmlData(), videoModel.getInterstitialWidth(), videoModel.getInterstitialHeight(), Integer.valueOf(videoModel.getInterstitialBackgroundOverlayColor()));
    }

    public void render(String str, int i, int i2, Integer num) {
        Activity activity = (Activity) getContext();
        activity.runOnUiThread(new b(this, activity, i, i2, num, str));
    }
}