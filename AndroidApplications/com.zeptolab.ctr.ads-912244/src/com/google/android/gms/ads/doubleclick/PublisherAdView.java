package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.ak;

public final class PublisherAdView extends ViewGroup {
    private final ak kD;

    public PublisherAdView(Context context) {
        super(context);
        this.kD = new ak(this);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.kD = new ak(this, attributeSet, true);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.kD = new ak(this, attributeSet, true);
    }

    public void destroy() {
        this.kD.destroy();
    }

    public AdListener getAdListener() {
        return this.kD.getAdListener();
    }

    public AdSize getAdSize() {
        return this.kD.getAdSize();
    }

    public AdSize[] getAdSizes() {
        return this.kD.getAdSizes();
    }

    public String getAdUnitId() {
        return this.kD.getAdUnitId();
    }

    public AppEventListener getAppEventListener() {
        return this.kD.getAppEventListener();
    }

    public void loadAd(PublisherAdRequest publisherAdRequest) {
        this.kD.a(publisherAdRequest.N());
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((i3 - i) - measuredWidth) / 2;
            int i6 = ((i4 - i2) - measuredHeight) / 2;
            childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
        }
    }

    protected void onMeasure(int i, int i2) {
        int measuredWidth;
        int i3 = 0;
        View childAt = getChildAt(0);
        AdSize adSize = getAdSize();
        if (childAt != null && childAt.getVisibility() != 8) {
            measureChild(childAt, i, i2);
            measuredWidth = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        } else if (adSize != null) {
            Context context = getContext();
            measuredWidth = adSize.getWidthInPixels(context);
            i3 = adSize.getHeightInPixels(context);
        } else {
            measuredWidth = 0;
        }
        setMeasuredDimension(View.resolveSize(Math.max(measuredWidth, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public void pause() {
        this.kD.pause();
    }

    public void recordManualImpression() {
        this.kD.recordManualImpression();
    }

    public void resume() {
        this.kD.resume();
    }

    public void setAdListener(AdListener adListener) {
        this.kD.setAdListener(adListener);
    }

    public void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length < 1) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.kD.a(adSizeArr);
    }

    public void setAdUnitId(String str) {
        this.kD.setAdUnitId(str);
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        this.kD.setAppEventListener(appEventListener);
    }
}