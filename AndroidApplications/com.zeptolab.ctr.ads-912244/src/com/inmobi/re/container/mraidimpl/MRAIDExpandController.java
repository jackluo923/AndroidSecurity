package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.CustomView.SwitchIconType;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.ViewState;
import com.inmobi.re.controller.JSController.ExpandProperties;
import com.inmobi.re.controller.util.Constants;
import com.zeptolab.ctr.ads.R;

public class MRAIDExpandController {
    public static int EXP_CLOSE_BUTTON = 0;
    protected static final int PLACEHOLDER_ID = 437;
    protected static final int RELATIVELAYOUT_ID = 438;
    private IMWebView a;
    private Activity b;
    private Activity c;
    private IMWebView d;
    private IMWebView e;
    public ExpandProperties expandProperties;
    public int initialExpandOrientation;
    public boolean lockOrientationValueForExpand;
    public boolean mIsExpandUrlValid;
    public Display mSensorDisplay;
    public String orientationValueForExpand;
    public boolean tempExpPropsLock;
    public boolean useLockOrient;

    class a implements Runnable {
        a() {
        }

        public void run() {
            if (MRAIDExpandController.this.mListener != null) {
                MRAIDExpandController.this.mListener.onExpand();
            }
        }
    }

    class b implements OnTouchListener {
        b() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    static {
        EXP_CLOSE_BUTTON = 225;
    }

    public MRAIDExpandController(IMWebView iMWebView, Activity activity) {
        this.tempExpPropsLock = true;
        this.d = null;
        this.mIsExpandUrlValid = false;
        this.lockOrientationValueForExpand = true;
        this.e = null;
        this.a = iMWebView;
        this.b = activity;
    }

    private FrameLayout a(ExpandProperties expandProperties) {
        FrameLayout frameLayout = (FrameLayout) ((ViewGroup) this.a.getOriginalParent()).getRootView().findViewById(16908290);
        a();
        View frameLayout2 = new FrameLayout(this.a.getContext());
        LayoutParams layoutParams = new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        frameLayout2.setId(435);
        frameLayout2.setOnTouchListener(new b());
        frameLayout2.setPadding(expandProperties.x, expandProperties.y, 0, 0);
        LayoutParams layoutParams2 = new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        View relativeLayout = new RelativeLayout(this.a.getContext());
        relativeLayout.setId(RELATIVELAYOUT_ID);
        LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        if (this.mIsExpandUrlValid) {
            relativeLayout.addView(this.d, layoutParams3);
        } else {
            relativeLayout.addView(this.a, layoutParams3);
        }
        a(relativeLayout, expandProperties.useCustomClose);
        frameLayout2.addView(relativeLayout, layoutParams2);
        frameLayout.addView(frameLayout2, layoutParams);
        this.a.setFocusable(true);
        this.a.setFocusableInTouchMode(true);
        this.a.requestFocus();
        return frameLayout2;
    }

    private void a() {
        try {
            if (this.a.getOriginalParent() != this.a.getParent()) {
                ((ViewGroup) this.a.getParent()).removeView(this.a);
            } else {
                View frameLayout = new FrameLayout(this.a.getContext());
                frameLayout.setId(PLACEHOLDER_ID);
                ((ViewGroup) this.a.getOriginalParent()).addView(frameLayout, this.a.getOriginalIndex(), new LayoutParams(this.a.getWidth(), this.a.getHeight()));
                ((ViewGroup) this.a.getParent()).removeView(this.a);
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in replaceByPlaceHolder ", e);
        }
    }

    private void a(ViewGroup viewGroup, boolean z) {
        View customView;
        LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.a.getDensity() * 50.0f), (int) (this.a.getDensity() * 50.0f));
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
        customView = z ? new CustomView(this.a.getContext(), this.a.getDensity(), SwitchIconType.CLOSE_TRANSPARENT) : new CustomView(this.a.getContext(), this.a.getDensity(), SwitchIconType.CLOSE_BUTTON);
        customView.setId(EXP_CLOSE_BUTTON);
        viewGroup.addView(customView, layoutParams);
    }

    private void b() {
        if (this.d == null) {
            ((ViewGroup) this.a.getParent().getParent().getParent()).removeView((View) this.a.getParent().getParent());
            ((ViewGroup) this.a.getParent()).removeView(this.a);
        } else {
            ((ViewGroup) this.d.getParent().getParent().getParent()).removeView((View) this.d.getParent().getParent());
            ((ViewGroup) this.d.getParent()).removeView(this.d);
        }
        View findViewById = ((View) this.a.getOriginalParent()).findViewById(PLACEHOLDER_ID);
        ((ViewGroup) findViewById.getParent()).removeView(findViewById);
        findViewById = this.a.mOriginalWebviewForExpandUrl != null ? this.a.mOriginalWebviewForExpandUrl : this.a;
        ((ViewGroup) this.a.getOriginalParent()).addView(findViewById, this.a.getOriginalIndex());
        findViewById.resetLayout();
    }

    public void closeExpanded() {
        if (this.a.getViewState().compareTo(ViewState.DEFAULT) != 0) {
            if (this.e != null) {
                this.e.destroy();
            }
            if (this.a.mOriginalWebviewForExpandUrl != null) {
                this.a.mOriginalWebviewForExpandUrl.setState(ViewState.DEFAULT);
                this.a.mAudioVideoController.releaseAllPlayers();
                this.a.mOriginalWebviewForExpandUrl.mAudioVideoController.releaseAllPlayers();
                this.a.mOriginalWebviewForExpandUrl.mExpandController.e = null;
                this.a.destroy();
            } else {
                this.e = null;
            }
            synchronized (this.a.mutex) {
                this.a.isMutexAquired.set(false);
                this.a.mutex.notifyAll();
            }
            if (!this.tempExpPropsLock && this.a.publisherOrientation == -1) {
                this.tempExpPropsLock = true;
            }
            this.a.doNotFireVisibilityChanged.set(true);
            b();
            this.a.mAudioVideoController.releaseAllPlayers();
            this.a.getMRAIDUrls().clear();
            this.a.closeExpanded();
            this.a.setVisibility(0);
            this.mIsExpandUrlValid = false;
            if (this.useLockOrient) {
                this.b.setRequestedOrientation(this.initialExpandOrientation);
            }
            this.a.setState(ViewState.DEFAULT);
            this.a.doNotFireVisibilityChanged.set(false);
        }
    }

    public void disableEnableHardwareAccelerationForExpandWithURLView() {
        if (this.e != null) {
            this.e.disableHardwareAcceleration();
        }
    }

    public void doExpand(Bundle bundle) {
        this.a.doNotFireVisibilityChanged.set(true);
        try {
            if (this.a.getOriginalParent() == null) {
                this.a.saveOriginalViewParent();
            }
            if (((FrameLayout) this.a.getParent().getParent()).getId() == 435) {
                ((ViewGroup) this.a.getParent().getParent().getParent()).removeView((View) this.a.getParent().getParent());
            }
        } catch (Exception e) {
        }
        try {
            String string = bundle.getString(IMWebView.EXPAND_URL);
            if (URLUtil.isValidUrl(string)) {
                this.mIsExpandUrlValid = true;
                this.d = new IMWebView(this.a.getContext(), this.a.mListener, false, false);
                this.e = this.d;
                this.d.publisherOrientation = this.a.publisherOrientation;
                this.d.mExpandController.tempExpPropsLock = this.a.mExpandController.tempExpPropsLock;
                this.d.mExpandController.expandProperties = new ExpandProperties();
                this.d.mExpandController.expandProperties.x = this.a.mExpandController.expandProperties.x;
                this.d.mExpandController.expandProperties.y = this.expandProperties.y;
                this.d.mExpandController.expandProperties.currentX = this.expandProperties.currentX;
                this.d.mExpandController.expandProperties.currentY = this.expandProperties.currentY;
                this.d.mExpandController.initialExpandOrientation = this.a.mExpandController.initialExpandOrientation;
                this.d.mExpandController.useLockOrient = this.a.mExpandController.useLockOrient;
                this.d.mExpandController.mIsExpandUrlValid = this.a.mExpandController.mIsExpandUrlValid;
                this.d.mExpandController.e = this.a.mExpandController.e;
                this.d.mOriginalWebviewForExpandUrl = this.a;
                this.d.setOriginalParent(this.a.getOriginalParent());
                this.a.doNotFireVisibilityChanged.set(false);
            } else {
                this.mIsExpandUrlValid = false;
            }
            FrameLayout a = a(this.expandProperties);
            a.setBackgroundColor(0);
            try {
                Intent intent = new Intent(this.b, IMBrowserActivity.class);
                intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, IMBrowserActivity.EXPAND_ACTIVITY);
                IMBrowserActivity.setExpandedLayout(a);
                if (this.mIsExpandUrlValid) {
                    IMBrowserActivity.setExpandedWebview(this.d);
                } else {
                    IMBrowserActivity.setExpandedWebview(this.a);
                }
                IMBrowserActivity.setOriginalActivity(this.b);
                this.b.startActivity(intent);
            } catch (Exception e2) {
                Log.internal(Constants.RENDERING_LOG_TAG, "Exception in expand in separate activity ", e2);
            }
            this.a.mAudioVideoController.videoValidateWidth = this.expandProperties.width;
            if (this.d != null) {
                this.d.mAudioVideoController.videoValidateWidth = this.expandProperties.width;
            }
            synchronized (this.a.mutex) {
                this.a.isMutexAquired.set(false);
                this.a.mutex.notifyAll();
            }
            if (this.mIsExpandUrlValid) {
                this.d.loadUrl(string);
            }
            this.a.requestLayout();
            this.a.invalidate();
            this.a.postInHandler(new a());
        } catch (Exception e3) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in doexpand ", e3);
            this.a.setState(ViewState.DEFAULT);
            synchronized (this.a.mutex) {
            }
            this.a.isMutexAquired.set(false);
            this.a.mutex.notifyAll();
        }
        this.a.doNotFireVisibilityChanged.set(false);
    }

    public void handleOrientationFor2Piece() {
        try {
            int integerCurrentRotation = this.a.getIntegerCurrentRotation();
            if (this.a.mInterstitialController.lockOrientationValueForInterstitial) {
                if (this.b.getResources().getConfiguration().orientation == 2) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_LANDSCAPE");
                } else {
                    Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_PORTRAIT");
                }
            } else if (this.a.mInterstitialController.orientationValueForInterstitial.equals(DeviceInfo.ORIENTATION_PORTRAIT)) {
                this.b.setRequestedOrientation(WrapperFunctions.getParamPortraitOrientation(integerCurrentRotation));
            } else if (this.a.mInterstitialController.orientationValueForInterstitial.equals(DeviceInfo.ORIENTATION_LANDSCAPE)) {
                this.b.setRequestedOrientation(WrapperFunctions.getParamLandscapeOrientation(integerCurrentRotation));
            } else if (this.b.getResources().getConfiguration().orientation == 2) {
                Log.internal(Constants.RENDERING_LOG_TAG, "In allowFalse, none mode dev orientation:ORIENTATION_LANDSCAPE");
                this.b.setRequestedOrientation(0);
            } else {
                Log.internal(Constants.RENDERING_LOG_TAG, "In allowFalse, none mode dev orientation:ORIENTATION_PORTRAIT");
                this.b.setRequestedOrientation(1);
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMWebview Handle orientation for 2 piece ", e);
        }
    }

    public void handleOrientationForExpand() {
        if (this.mIsExpandUrlValid) {
            this.e.lockExpandOrientation(this.c, this.lockOrientationValueForExpand, this.orientationValueForExpand);
        } else {
            this.a.lockExpandOrientation(this.c, this.lockOrientationValueForExpand, this.orientationValueForExpand);
        }
    }

    public void reset() {
        this.expandProperties = new ExpandProperties();
    }

    public void setActivity(Activity activity) {
        if (activity != null) {
            this.c = activity;
        }
    }
}