package com.admarvel.android.admarveladcolonyadapter;

import android.app.Activity;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.util.Logging;
import com.jirbo.adcolony.AdColony;

class b implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ AdMarvelAd b;
    final /* synthetic */ AdMarvelAdColonyAdapter c;

    b(AdMarvelAdColonyAdapter adMarvelAdColonyAdapter, Activity activity, AdMarvelAd adMarvelAd) {
        this.c = adMarvelAdColonyAdapter;
        this.a = activity;
        this.b = adMarvelAd;
    }

    public void run() {
        AdColony.configure(this.a, this.b.getAdColonyAppVersion(), this.b.getAppId(), new String[]{this.b.getZoneId()});
        Logging.log("Initializing AdColony: appVersion: " + this.b.getAdColonyAppVersion() + "; appId: " + this.b.getAppId() + "; zoneId: " + this.b.getZoneId());
        AdMarvelAdColonyAdapter.access$002(this.c, true);
    }
}