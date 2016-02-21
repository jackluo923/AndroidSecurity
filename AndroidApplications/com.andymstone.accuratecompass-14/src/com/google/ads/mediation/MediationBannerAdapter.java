package com.google.ads.mediation;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdSize;

public interface MediationBannerAdapter extends MediationAdapter {
    void a(MediationBannerListener mediationBannerListener, Activity activity, MediationServerParameters mediationServerParameters, AdSize adSize, MediationAdRequest mediationAdRequest, NetworkExtras networkExtras);

    View d();
}