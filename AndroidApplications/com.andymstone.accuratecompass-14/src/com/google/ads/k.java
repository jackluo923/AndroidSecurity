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

    public void a(Object obj) {
        synchronized (this.a) {
            a.a(obj, this.a.i());
            if (this.a.c()) {
                b.b("Got an onReceivedAd() callback after loadAdTask is done from an interstitial adapter. Ignoring callback.");
            } else {
                this.a.a(true, g.a.a);
            }
        }
    }

    public void a(Object obj, ErrorCode errorCode) {
        synchronized (this.a) {
            a.a(obj, this.a.i());
            b.a("Mediation adapter " + obj.getClass().getName() + " failed to receive ad with error code: " + errorCode);
            if (this.a.c()) {
                b.b("Got an onFailedToReceiveAd() callback after loadAdTask is done from an interstitial adapter.  Ignoring callback.");
            } else {
                this.a.a(false, errorCode == ErrorCode.b ? g.a.b : g.a.c);
            }
        }
    }

    public void b(MediationInterstitialAdapter mediationInterstitialAdapter) {
        synchronized (this.a) {
            this.a.j().a(this.a);
        }
    }

    public void c(MediationInterstitialAdapter mediationInterstitialAdapter) {
        synchronized (this.a) {
            this.a.j().b(this.a);
        }
    }

    public void d(MediationInterstitialAdapter mediationInterstitialAdapter) {
        synchronized (this.a) {
            this.a.j().c(this.a);
        }
    }
}