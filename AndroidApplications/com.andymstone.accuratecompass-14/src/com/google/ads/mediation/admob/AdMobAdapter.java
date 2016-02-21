package com.google.ads.mediation.admob;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.ads.InterstitialAd;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.NetworkExtras;
import com.google.ads.util.AdUtil;

public class AdMobAdapter implements MediationBannerAdapter, MediationInterstitialAdapter {
    private MediationBannerListener a;
    private MediationInterstitialListener b;
    private AdView c;
    private InterstitialAd d;

    class a implements AdListener {
        private a() {
        }

        public void a_(Ad ad) {
            AdMobAdapter.this.a(AdMobAdapter.this);
        }

        public void a_(Ad ad, ErrorCode errorCode) {
            AdMobAdapter.this.a(AdMobAdapter.this, errorCode);
        }

        public void b(Ad ad) {
            AdMobAdapter.this.e(AdMobAdapter.this);
            AdMobAdapter.this.b(AdMobAdapter.this);
        }

        public void c(Ad ad) {
            AdMobAdapter.this.c(AdMobAdapter.this);
        }

        public void d(Ad ad) {
            AdMobAdapter.this.d(AdMobAdapter.this);
        }
    }

    class b implements AdListener {
        private b() {
        }

        public void a(Ad ad) {
            AdMobAdapter.this.b.a(AdMobAdapter.this);
        }

        public void a(Ad ad, ErrorCode errorCode) {
            AdMobAdapter.this.b.a(AdMobAdapter.this, errorCode);
        }

        public void b_(Ad ad) {
            AdMobAdapter.this.b.b(AdMobAdapter.this);
        }

        public void c(Ad ad) {
            AdMobAdapter.this.b.c(AdMobAdapter.this);
        }

        public void d(Ad ad) {
            AdMobAdapter.this.b.d(AdMobAdapter.this);
        }
    }

    private AdRequest a(Context context, AdMobAdapterServerParameters adMobAdapterServerParameters, MediationAdRequest mediationAdRequest, AdMobAdapterExtras adMobAdapterExtras) {
        NetworkExtras adMobAdapterExtras2 = new AdMobAdapterExtras(adMobAdapterExtras);
        adMobAdapterExtras2.b("_norefresh", "t");
        adMobAdapterExtras2.b("gw", Integer.valueOf(1));
        if (adMobAdapterServerParameters.b != null) {
            adMobAdapterExtras2.b("mad_hac", adMobAdapterServerParameters.b);
        }
        AdRequest a = new AdRequest().a(mediationAdRequest.b()).a(mediationAdRequest.a()).a(mediationAdRequest.c()).a(mediationAdRequest.d()).a(adMobAdapterExtras2);
        if (mediationAdRequest.e()) {
            a.a(AdUtil.a(context));
        }
        return a;
    }

    private void f() {
        if (g()) {
            throw new IllegalStateException("Adapter has already been destroyed");
        }
    }

    private boolean g() {
        return this.c == null && this.d == null;
    }

    protected AdView a(Activity activity, AdSize adSize, String str) {
        return new AdView(activity, adSize, str);
    }

    protected InterstitialAd a(Activity activity, String str) {
        return new InterstitialAd(activity, str);
    }

    public void a() {
        f();
        if (this.c != null) {
            this.c.c();
            this.c.a();
            this.c = null;
        }
        if (this.d != null) {
            this.d.b();
            this.d = null;
        }
    }

    public void a(MediationBannerListener mediationBannerListener, Activity activity, AdMobAdapterServerParameters adMobAdapterServerParameters, AdSize adSize, MediationAdRequest mediationAdRequest, AdMobAdapterExtras adMobAdapterExtras) {
        this.a = mediationBannerListener;
        if (!(adSize.d() || adSize.c())) {
            if (adMobAdapterExtras == null || !adMobAdapterExtras.e()) {
                adSize = adSize.a(new AdSize[]{AdSize.b, AdSize.d, AdSize.e, AdSize.c, AdSize.f});
                if (adSize == null) {
                    mediationBannerListener.a(this, ErrorCode.b);
                    return;
                }
            }
        }
        this.c = a(activity, adSize, adMobAdapterServerParameters.a);
        this.c.setAdListener(new a(null));
        this.c.a(a(activity, adMobAdapterServerParameters, mediationAdRequest, adMobAdapterExtras));
    }

    public void a(MediationInterstitialListener mediationInterstitialListener, Activity activity, AdMobAdapterServerParameters adMobAdapterServerParameters, MediationAdRequest mediationAdRequest, AdMobAdapterExtras adMobAdapterExtras) {
        this.b = mediationInterstitialListener;
        this.d = a(activity, adMobAdapterServerParameters.a);
        this.d.a(new b(null));
        this.d.a(a(activity, adMobAdapterServerParameters, mediationAdRequest, adMobAdapterExtras));
    }

    public Class b() {
        return AdMobAdapterExtras.class;
    }

    public Class c() {
        return AdMobAdapterServerParameters.class;
    }

    public View d() {
        return this.c;
    }

    public void e() {
        this.d.a();
    }
}