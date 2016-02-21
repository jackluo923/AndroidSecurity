package com.google.ads;

import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.util.a;
import com.google.ads.util.b;

class k implements MediationInterstitialListener {
    private final h a;

    k(h hVar) {
        this.a = hVar;
    }

    public void onDismissScreen(MediationInterstitialAdapter<?, ?> adapter) {
        synchronized (this.a) {
            this.a.i().b(this.a);
        }
    }

    public void onFailedToReceiveAd(Object adapter, ErrorCode error) {
        synchronized (this.a) {
            a.a(adapter, this.a.h());
            b.a("Mediation adapter " + adapter.getClass().getName() + " failed to receive ad with error code: " + error);
            if (this.a.c()) {
                b.b("Got an onFailedToReceiveAd() callback after loadAdTask is done from an interstitial adapter.  Ignoring callback.");
            } else {
                this.a.a(false);
            }
        }
    }

    public void onLeaveApplication(MediationInterstitialAdapter<?, ?> adapter) {
        synchronized (this.a) {
            this.a.i().c(this.a);
        }
    }

    public void onPresentScreen(MediationInterstitialAdapter<?, ?> adapter) {
        synchronized (this.a) {
            this.a.i().a(this.a);
        }
    }

    public void onReceivedAd(Object adapter) {
        synchronized (this.a) {
            a.a(adapter, this.a.h());
            if (this.a.c()) {
                b.b("Got an onReceivedAd() callback after loadAdTask is done from an interstitial adapter. Ignoring callback.");
            } else {
                this.a.a(true);
            }
        }
    }
}