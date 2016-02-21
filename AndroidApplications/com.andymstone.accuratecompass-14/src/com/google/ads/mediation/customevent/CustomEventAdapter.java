package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.g;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;

public class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter {
    private String a;
    private CustomEventBanner b;
    private a c;
    private CustomEventInterstitial d;

    class a implements CustomEventBannerListener {
        private View b;
        private final MediationBannerListener c;

        public a(MediationBannerListener mediationBannerListener) {
            this.c = mediationBannerListener;
        }

        public synchronized View a_() {
            return this.b;
        }
    }

    class b implements CustomEventInterstitialListener {
        private final MediationInterstitialListener b;

        public b(MediationInterstitialListener mediationInterstitialListener) {
            this.b = mediationInterstitialListener;
        }
    }

    public CustomEventAdapter() {
        this.b = null;
        this.c = null;
        this.d = null;
    }

    private Object a(String str, Class cls, String str2) {
        try {
            return g.a(str, cls);
        } catch (ClassNotFoundException e) {
            a("Make sure you created a visible class named: " + str + ". ", e);
            return null;
        } catch (ClassCastException e2) {
            a("Make sure your custom event implements the " + cls.getName() + " interface.", e2);
            return null;
        } catch (IllegalAccessException e3) {
            a("Make sure the default constructor for class " + str + " is visible. ", e3);
            return null;
        } catch (InstantiationException e4) {
            a("Make sure the name " + str + " does not denote an abstract class or an interface.", e4);
            return null;
        } catch (Throwable th) {
            a("", th);
            return null;
        }
    }

    private void a(String str, Throwable th) {
        com.google.ads.util.b.b("Error during processing of custom event with label: '" + this.a + "'. Skipping custom event. " + str, th);
    }

    public void a() {
        if (this.b != null) {
            this.b.a();
        }
        if (this.d != null) {
            this.d.a();
        }
    }

    public void a(MediationBannerListener mediationBannerListener, Activity activity, CustomEventServerParameters customEventServerParameters, AdSize adSize, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        com.google.ads.util.a.a(this.a);
        this.a = customEventServerParameters.a;
        String str = customEventServerParameters.b;
        String str2 = customEventServerParameters.c;
        this.b = (CustomEventBanner) a(str, CustomEventBanner.class, this.a);
        if (this.b == null) {
            mediationBannerListener.a(this, ErrorCode.d);
        } else {
            com.google.ads.util.a.a(this.c);
            this.c = new a(mediationBannerListener);
            try {
                this.b.a(this.c, activity, this.a, str2, adSize, mediationAdRequest, customEventExtras == null ? null : customEventExtras.a(this.a));
            } catch (Throwable th) {
                a("", th);
                mediationBannerListener.a(this, ErrorCode.d);
            }
        }
    }

    public void a(MediationInterstitialListener mediationInterstitialListener, Activity activity, CustomEventServerParameters customEventServerParameters, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        com.google.ads.util.a.a(this.a);
        this.a = customEventServerParameters.a;
        String str = customEventServerParameters.b;
        String str2 = customEventServerParameters.c;
        this.d = (CustomEventInterstitial) a(str, CustomEventInterstitial.class, this.a);
        if (this.d == null) {
            mediationInterstitialListener.a(this, ErrorCode.d);
        } else {
            try {
                this.d.a(new b(mediationInterstitialListener), activity, this.a, str2, mediationAdRequest, customEventExtras == null ? null : customEventExtras.a(this.a));
            } catch (Throwable th) {
                a("", th);
                mediationInterstitialListener.a(this, ErrorCode.d);
            }
        }
    }

    public Class b() {
        return CustomEventExtras.class;
    }

    public Class c() {
        return CustomEventServerParameters.class;
    }

    public View d() {
        com.google.ads.util.a.b(this.c);
        return this.c.a();
    }

    public void e() {
        com.google.ads.util.a.b(this.d);
        try {
            this.d.b();
        } catch (Throwable th) {
            com.google.ads.util.b.b("Exception when showing custom event labeled '" + this.a + "'.", th);
        }
    }
}