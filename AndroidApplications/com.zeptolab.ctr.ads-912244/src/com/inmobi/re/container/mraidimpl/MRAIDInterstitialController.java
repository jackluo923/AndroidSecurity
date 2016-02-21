package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.os.Message;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.CustomView.SwitchIconType;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.ViewState;
import com.inmobi.re.controller.util.Constants;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.concurrent.atomic.AtomicBoolean;

public class MRAIDInterstitialController {
    protected static final int INT_BACKGROUND_ID = 224;
    public static final int INT_CLOSE_BUTTON = 225;
    public static AtomicBoolean isInterstitialDisplayed;
    private IMWebView a;
    private Activity b;
    private long c;
    private int d;
    public boolean lockOrientationValueForInterstitial;
    public Message mMsgOnInterstitialClosed;
    public Message mMsgOnInterstitialShown;
    public Display mSensorDisplay;
    public String orientationValueForInterstitial;

    class a implements OnTouchListener {
        a() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            switch (motionEvent.getAction()) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    view.requestFocus();
                    break;
                case GoogleScorer.CLIENT_GAMES:
                    view.requestFocus();
                    break;
            }
            return false;
        }
    }

    class b implements OnKeyListener {
        b() {
        }

        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (4 != keyEvent.getKeyCode() || keyEvent.getAction() != 0) {
                return false;
            }
            Log.debug(Constants.RENDERING_LOG_TAG, "Back Button pressed while Interstitial ad is in active state ");
            MRAIDInterstitialController.this.handleInterstitialClose();
            return MRAIDInterstitialController.this.c > 0;
        }
    }

    class c implements AnimationListener {
        c() {
        }

        public void onAnimationEnd(Animation animation) {
            MRAIDInterstitialController.this.dismissWebview();
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    }

    class d implements Runnable {
        final /* synthetic */ RelativeLayout a;
        final /* synthetic */ FrameLayout b;

        d(RelativeLayout relativeLayout, FrameLayout frameLayout) {
            this.a = relativeLayout;
            this.b = frameLayout;
        }

        public void run() {
            this.a.removeView(MRAIDInterstitialController.this.a);
            this.b.removeView(this.a);
        }
    }

    static {
        isInterstitialDisplayed = new AtomicBoolean();
    }

    public MRAIDInterstitialController(IMWebView iMWebView, Activity activity) {
        this.lockOrientationValueForInterstitial = true;
        this.c = 0;
        this.a = iMWebView;
    }

    public void animateAndDismissWebview() {
        Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setStartOffset(0);
        alphaAnimation.setDuration(this.c);
        alphaAnimation.setAnimationListener(new c());
        this.a.startAnimation(alphaAnimation);
    }

    public void changeContentAreaForInterstitials(long j) {
        try {
            View customView;
            this.c = j;
            int webviewBgColor = Initializer.getConfigParams().getWebviewBgColor();
            this.d = this.b.getRequestedOrientation();
            handleOrientationForInterstitial();
            FrameLayout frameLayout = (FrameLayout) this.b.findViewById(16908290);
            View relativeLayout = new RelativeLayout(this.a.getContext());
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
            this.a.setFocusable(true);
            this.a.setFocusableInTouchMode(true);
            relativeLayout.addView(this.a, layoutParams);
            LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (this.a.getDensity() * 50.0f), (int) (this.a.getDensity() * 50.0f));
            customView = this.a.getCustomClose() ? new CustomView(this.a.getContext(), this.a.getDensity(), SwitchIconType.CLOSE_TRANSPARENT) : new CustomView(this.a.getContext(), this.a.getDensity(), SwitchIconType.CLOSE_BUTTON);
            layoutParams2.addRule(R.styleable.MapAttrs_uiZoomGestures);
            customView.setId(INT_CLOSE_BUTTON);
            relativeLayout.addView(customView, layoutParams2);
            layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
            relativeLayout.setId(INT_BACKGROUND_ID);
            relativeLayout.setBackgroundColor(webviewBgColor);
            frameLayout.addView(relativeLayout, layoutParams);
            this.a.setBackgroundColor(webviewBgColor);
            this.a.requestFocus();
            this.a.setOnKeyListener(new b());
            this.a.setOnTouchListener(new a());
            isInterstitialDisplayed.set(true);
            if (this.mMsgOnInterstitialShown != null) {
                this.mMsgOnInterstitialShown.sendToTarget();
                this.mMsgOnInterstitialShown = null;
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed showing interstitial ad", e);
        }
    }

    public void dismissWebview() {
        FrameLayout frameLayout = (FrameLayout) this.b.findViewById(16908290);
        this.b.runOnUiThread(new d((RelativeLayout) frameLayout.findViewById(INT_BACKGROUND_ID), frameLayout));
    }

    public void handleInterstitialClose() {
        IMWebView.userInitiatedClose = true;
        isInterstitialDisplayed.set(false);
        this.a.close();
    }

    public void handleOrientationForInterstitial() {
        this.a.lockExpandOrientation(this.b, this.lockOrientationValueForInterstitial, this.orientationValueForInterstitial);
    }

    public void resetContentsForInterstitials() {
        try {
            if (this.a.getParent() != null) {
                this.b.setRequestedOrientation(this.d);
                this.a.mAudioVideoController.releaseAllPlayers();
                if (((RelativeLayout) ((FrameLayout) this.b.findViewById(16908290)).findViewById(INT_BACKGROUND_ID)) != null) {
                    if (this.c > 0) {
                        animateAndDismissWebview();
                    } else {
                        dismissWebview();
                    }
                }
                if (this.mMsgOnInterstitialClosed != null) {
                    this.mMsgOnInterstitialClosed.sendToTarget();
                    this.mMsgOnInterstitialClosed = null;
                }
                this.a.injectJavaScript("window.mraidview.unRegisterOrientationListener()");
                this.a.setState(ViewState.HIDDEN);
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to close the interstitial ad", e);
        }
    }

    public void setActivity(Activity activity) {
        if (activity != null) {
            this.b = activity;
        }
    }
}