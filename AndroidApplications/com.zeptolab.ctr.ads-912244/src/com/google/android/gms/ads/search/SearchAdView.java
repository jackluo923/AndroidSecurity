package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.ak;

public final class SearchAdView extends ViewGroup {
    private final ak kD;

    public SearchAdView(Context context) {
        super(context);
        this.kD = new ak(this);
    }

    public SearchAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.kD = new ak(this, attributeSet, false);
    }

    public SearchAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.kD = new ak(this, attributeSet, false);
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

    public String getAdUnitId() {
        return this.kD.getAdUnitId();
    }

    public void loadAd(SearchAdRequest searchAdRequest) {
        this.kD.a(searchAdRequest.N());
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

    public void resume() {
        this.kD.resume();
    }

    public void setAdListener(AdListener adListener) {
        this.kD.setAdListener(adListener);
    }

    public void setAdSize(AdSize adSize) {
        this.kD.setAdSizes(new AdSize[]{adSize});
    }

    public void setAdUnitId(String str) {
        this.kD.setAdUnitId(str);
    }
}