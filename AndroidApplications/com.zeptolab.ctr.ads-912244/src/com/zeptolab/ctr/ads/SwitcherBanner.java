package com.zeptolab.ctr.ads;

import android.util.Log;
import android.widget.RelativeLayout;

public class SwitcherBanner extends AdBanner {
    private int offlineshows;
    private AdBanner stable;
    private AdBanner unstable;

    public SwitcherBanner(AdBanner adBanner, AdBanner adBanner2) {
        super(null);
        this.unstable = adBanner;
        this.stable = adBanner2;
        this.offlineshows = 0;
    }

    public void hideBanner() {
        this.unstable.hideBanner();
        this.stable.hideBanner();
    }

    public void onDestroy() {
        this.stable.onDestroy();
        this.unstable.onDestroy();
    }

    public void onPause() {
        this.stable.onPause();
        this.unstable.onPause();
    }

    public void onResume() {
        this.stable.onResume();
        this.unstable.onResume();
    }

    public void setLayout(RelativeLayout relativeLayout) {
        this.unstable.setLayout(relativeLayout);
        this.stable.setLayout(relativeLayout);
    }

    public boolean showBanner() {
        this.offlineshows++;
        if (this.unstable.isAvailable() || this.offlineshows % 5 == 0) {
            Log.i("Switcher", "Unstable");
            this.stable.hideBanner();
            return this.unstable.showBanner();
        } else {
            Log.i("Switcher", "Stable");
            this.unstable.hideBanner();
            return this.stable.showBanner();
        }
    }
}