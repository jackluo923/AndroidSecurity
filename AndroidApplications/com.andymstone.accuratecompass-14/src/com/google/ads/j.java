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

    public void a(Object obj) {
        synchronized (this.a) {
            a.a(obj, this.a.i());
            try {
                this.a.a(obj.d());
                if (this.a.c()) {
                    this.b = true;
                    this.a.j().a(this.a, this.a.f());
                } else {
                    this.b = false;
                    this.a.a(true, g.a.a);
                }
            } catch (Throwable th) {
                b.b("Error while getting banner View from adapter (" + this.a.h() + "): ", th);
                if (!this.a.c()) {
                    this.a.a(false, g.a.f);
                }
            }
        }
    }

    public void a(Object obj, ErrorCode errorCode) {
        synchronized (this.a) {
            a.a(obj, this.a.i());
            b.a("Mediation adapter " + obj.getClass().getName() + " failed to receive ad with error code: " + errorCode);
            if (!this.a.c()) {
                this.a.a(false, errorCode == ErrorCode.b ? g.a.b : g.a.c);
            }
        }
    }

    public void b(MediationBannerAdapter mediationBannerAdapter) {
        synchronized (this.a) {
            this.a.j().a(this.a);
        }
    }

    public void c(MediationBannerAdapter mediationBannerAdapter) {
        synchronized (this.a) {
            this.a.j().b(this.a);
        }
    }

    public void d(MediationBannerAdapter mediationBannerAdapter) {
        synchronized (this.a) {
            this.a.j().c(this.a);
        }
    }

    public void e(MediationBannerAdapter mediationBannerAdapter) {
        synchronized (this.a) {
            a.a(this.a.c());
            this.a.j().a(this.a, this.b);
        }
    }
}