package com.zeptolab.ctr.ads;

import android.content.Intent;
import android.widget.RelativeLayout;

public interface InterstitialBanner {
    boolean handleActivityResult(int i, int i2, Intent intent);

    boolean isAvailable();

    void onDestroy();

    void onPause();

    void onResume();

    void setLayout(RelativeLayout relativeLayout);

    boolean showInterstitial(boolean z, boolean z2);

    boolean showVideoBanner();
}