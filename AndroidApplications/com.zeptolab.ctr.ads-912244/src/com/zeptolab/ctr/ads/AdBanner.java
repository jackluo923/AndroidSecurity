package com.zeptolab.ctr.ads;

import android.app.Activity;
import android.opengl.GLSurfaceView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.scorer.GoogleScorer;

public abstract class AdBanner {
    protected static int NATIVE;
    protected static int NORMAL;
    protected Activity activity;
    private boolean available;
    protected RelativeLayout layout;
    protected LayoutParams params;
    protected GLSurfaceView view;

    static {
        NORMAL = 0;
        NATIVE = 1;
    }

    AdBanner(Activity activity) {
        this.available = true;
        this.activity = activity;
        this.params = new LayoutParams(-2, -2);
        this.params.addRule(GoogleScorer.CLIENT_PLUS);
        this.params.addRule(R.styleable.MapAttrs_useViewLifecycle);
        this.params.addRule(MMException.REQUEST_NOT_FILLED);
        this.params.alignWithParent = true;
    }

    protected static native void bannerFailed(int i);

    protected static native void bannerLoaded(int i);

    public abstract void hideBanner();

    public boolean isAvailable() {
        return this.available;
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void refreshBanner() {
    }

    public void setAvailable(boolean z) {
        this.available = z;
    }

    public abstract void setLayout(RelativeLayout relativeLayout);

    public void setView(GLSurfaceView gLSurfaceView) {
        this.view = gLSurfaceView;
    }

    public abstract boolean showBanner();
}