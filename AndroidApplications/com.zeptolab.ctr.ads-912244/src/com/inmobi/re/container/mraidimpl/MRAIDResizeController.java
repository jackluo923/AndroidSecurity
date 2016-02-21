package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.CustomView.SwitchIconType;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.ViewState;
import com.inmobi.re.controller.JSController.ResizeProperties;
import com.inmobi.re.controller.util.Constants;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class MRAIDResizeController {
    protected static final int PLACEHOLDER_ID = 437;
    protected static final int RELATIVELAYOUT_ID = 438;
    private IMWebView a;
    private ResizeDimensions b;
    public ResizeProperties resizeProperties;

    class a implements OnClickListener {
        a() {
        }

        public void onClick(View view) {
            IMWebView.userInitiatedClose = true;
            MRAIDResizeController.this.close();
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            if (MRAIDResizeController.this.mListener != null) {
                MRAIDResizeController.this.mListener.onResize(MRAIDResizeController.this.b);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        public void run() {
            if (MRAIDResizeController.this.mListener != null) {
                MRAIDResizeController.this.mListener.onResize(MRAIDResizeController.this.b);
            }
        }
    }

    public MRAIDResizeController(IMWebView iMWebView, Activity activity) {
        this.b = null;
        this.a = iMWebView;
    }

    private FrameLayout a(ResizeProperties resizeProperties) {
        FrameLayout frameLayout = (FrameLayout) ((ViewGroup) this.a.getOriginalParent()).getRootView().findViewById(16908290);
        a();
        View frameLayout2 = new FrameLayout(this.a.getContext());
        LayoutParams layoutParams = new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        frameLayout2.setId(435);
        LayoutParams layoutParams2 = new FrameLayout.LayoutParams(resizeProperties.width, resizeProperties.height);
        View relativeLayout = new RelativeLayout(this.a.getContext());
        relativeLayout.setId(RELATIVELAYOUT_ID);
        relativeLayout.addView(this.a, new RelativeLayout.LayoutParams(resizeProperties.width, resizeProperties.height));
        a(relativeLayout, resizeProperties.customClosePosition);
        frameLayout2.addView(relativeLayout, layoutParams2);
        a(frameLayout, frameLayout2, this.a, resizeProperties);
        frameLayout.addView(frameLayout2, layoutParams);
        this.a.setFocusable(true);
        this.a.setFocusableInTouchMode(true);
        this.a.requestFocus();
        return frameLayout2;
    }

    private RelativeLayout.LayoutParams a(String str) {
        String b = b(str);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.a.getDensity() * 50.0f), (int) (this.a.getDensity() * 50.0f));
        if (b.equals("top-right") || b.equals("bottom-right")) {
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
        }
        if (b.equals("bottom-right") || b.equals("bottom-left") || b.equals("bottom-center")) {
            layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
            layoutParams.addRule(GoogleScorer.CLIENT_APPSTATE);
        }
        if (b.equals("bottom-center") || b.equals("top-center") || b.equals("center")) {
            layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        }
        if (b.equals("top-center")) {
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
        }
        return layoutParams;
    }

    private void a() {
        try {
            View frameLayout = new FrameLayout(this.a.getContext());
            frameLayout.setId(PLACEHOLDER_ID);
            ((ViewGroup) this.a.getOriginalParent()).addView(frameLayout, this.a.getOriginalIndex(), new LayoutParams(this.a.getWidth(), this.a.getHeight()));
            ((ViewGroup) this.a.getParent()).removeView(this.a);
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in replaceByPlaceHolder ", e);
        }
    }

    private void a(ViewGroup viewGroup, String str) {
        LayoutParams a = a(str);
        View customView = new CustomView(this.a.getContext(), this.a.getDensity(), SwitchIconType.CLOSE_TRANSPARENT);
        viewGroup.addView(customView, a);
        customView.setOnClickListener(new a());
    }

    private void a(FrameLayout frameLayout, FrameLayout frameLayout2, IMWebView iMWebView, ResizeProperties resizeProperties) {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        ((View) iMWebView.getOriginalParent()).getLocationOnScreen(iArr);
        frameLayout.getLocationOnScreen(iArr2);
        iArr[1] = iArr[1] - iArr2[1];
        iArr[0] = iArr[0] - iArr2[0];
        iArr[0] = iArr[0] + resizeProperties.offsetX;
        iArr[1] = iArr[1] + resizeProperties.offsetY;
        if (!resizeProperties.allowOffscreen) {
            if (resizeProperties.width > frameLayout.getWidth() - iArr[0]) {
                iArr[0] = frameLayout.getWidth() - resizeProperties.width;
            }
            if (resizeProperties.height > frameLayout.getHeight() - iArr[1]) {
                iArr[1] = frameLayout.getHeight() - resizeProperties.height;
            }
            if (iArr[0] < 0) {
                iArr[0] = 0;
            }
            if (iArr[1] < 0) {
                iArr[1] = 0;
            }
        }
        this.b = new ResizeDimensions(iArr[0], iArr[1], resizeProperties.width, resizeProperties.height);
        LayoutParams layoutParams = new FrameLayout.LayoutParams(resizeProperties.width, resizeProperties.height);
        layoutParams.leftMargin = iArr[0];
        layoutParams.topMargin = iArr[1];
        layoutParams.gravity = 3;
        ((View) iMWebView.getParent()).setLayoutParams(layoutParams);
    }

    private String b(String str) {
        return (str.equals("top-left") || str.equals("top-right") || str.equals("bottom-left") || str.equals("bottom-right") || str.equals("top-center") || str.equals("bottom-center") || str.equals("center")) ? str : "top-right";
    }

    private void b() {
        ((ViewGroup) this.a.getParent().getParent().getParent()).removeView((View) this.a.getParent().getParent());
        ((ViewGroup) this.a.getParent()).removeView(this.a);
        View findViewById = ((View) this.a.getOriginalParent()).findViewById(PLACEHOLDER_ID);
        ((ViewGroup) findViewById.getParent()).removeView(findViewById);
        ((ViewGroup) this.a.getOriginalParent()).addView(this.a, this.a.getOriginalIndex());
        this.a.resetLayout();
    }

    public void closeResized() {
        if (this.a.getViewState().compareTo(ViewState.DEFAULT) != 0) {
            synchronized (this.a.mutex) {
                this.a.isMutexAquired.set(false);
                this.a.mutex.notifyAll();
            }
            this.a.doNotFireVisibilityChanged.set(true);
            b();
            this.a.closeResized();
            this.a.setVisibility(0);
            this.a.setState(ViewState.DEFAULT);
            this.a.doNotFireVisibilityChanged.set(false);
        }
    }

    public void doResize(Bundle bundle) {
        this.a.doNotFireVisibilityChanged.set(true);
        try {
            if (this.a.getOriginalParent() == null) {
                this.a.saveOriginalViewParent();
            }
            if (((FrameLayout) this.a.getParent().getParent()).getId() == 435) {
                a((FrameLayout) this.a.getParent().getParent().getParent(), (FrameLayout) this.a.getParent().getParent(), this.a, this.resizeProperties);
                LayoutParams a = a(this.resizeProperties.customClosePosition);
                this.a.setLayoutParams(new RelativeLayout.LayoutParams(this.resizeProperties.width, this.resizeProperties.height));
                ((ViewGroup) this.a.getParent()).getChildAt(1).setLayoutParams(a);
                if (bundle != null) {
                    this.a.setState(ViewState.RESIZED);
                }
                this.a.requestLayout();
                this.a.invalidate();
                this.a.postInHandler(new b());
                this.a.doNotFireVisibilityChanged.set(false);
                return;
            }
        } catch (Exception e) {
        }
        try {
            a(this.resizeProperties).setBackgroundColor(0);
            this.a.mAudioVideoController.videoValidateWidth = this.resizeProperties.width;
            if (bundle != null) {
                this.a.setState(ViewState.RESIZED);
            }
            synchronized (this.a.mutex) {
                this.a.isMutexAquired.set(false);
                this.a.mutex.notifyAll();
            }
            this.a.requestLayout();
            this.a.invalidate();
            this.a.postInHandler(new c());
        } catch (Exception e2) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in doresize ", e2);
            this.a.setState(ViewState.DEFAULT);
            synchronized (this.a.mutex) {
            }
            this.a.isMutexAquired.set(false);
            this.a.mutex.notifyAll();
        }
        this.a.doNotFireVisibilityChanged.set(false);
    }

    public void onOrientationChange() {
        if (this.a.getStateVariable() == ViewState.RESIZED && !this.resizeProperties.allowOffscreen) {
            doResize(null);
        }
    }

    public void reset() {
        this.resizeProperties = new ResizeProperties();
    }
}