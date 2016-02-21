package com.google.ads;

import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.util.a;
import com.google.ads.util.b;

class j implements MediationBannerListener {
    private final h a;
    private boolean b;

    public j(h hVar) {
        this.a = hVar;
    }

    public void onClick(MediationBannerAdapter<?, ?> adapter) {
        synchronized (this.a) {
            a.a(this.a.c());
            this.a.i().a(this.a, this.b);
        }
    }

    public void onDismissScreen(MediationBannerAdapter<?, ?> adapter) {
        synchronized (this.a) {
            this.a.i().b(this.a);
        }
    }

    public void onFailedToReceiveAd(Object adapter, ErrorCode error) {
        synchronized (this.a) {
            a.a(adapter, this.a.h());
            b.a("Mediation adapter " + adapter.getClass().getName() + " failed to receive ad with error code: " + error);
            if (!this.a.c()) {
                this.a.a(false);
            }
        }
    }

    public void onLeaveApplication(MediationBannerAdapter<?, ?> adapter) {
        synchronized (this.a) {
            this.a.i().c(this.a);
        }
    }

    public void onPresentScreen(MediationBannerAdapter<?, ?> adapter) {
        synchronized (this.a) {
            this.a.i().a(this.a);
        }
    }

    public void onReceivedAd(Object adapter) {
        synchronized (this.a) {
            a.a(adapter, this.a.h());
            try {
                this.a.a(adapter.getBannerView());
                if (this.a.c()) {
                    this.b = true;
                    this.a.i().a(this.a, this.a.e());
                } else {
                    this.b = false;
                    this.a.a(true);
                }
            } catch (Throwable th) {
                b.b("Error while getting banner View from adapter (" + this.a.g() + "): ", th);
                if (!this.a.c()) {
                    this.a.a(false);
                }
            }
        }
    }
}