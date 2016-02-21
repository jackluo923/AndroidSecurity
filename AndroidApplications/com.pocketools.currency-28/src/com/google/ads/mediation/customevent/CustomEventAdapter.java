package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.g;
import com.google.ads.mediation.EmptyNetworkExtras;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.pocketools.currency.PocketCurrency;

public class CustomEventAdapter implements MediationBannerAdapter<EmptyNetworkExtras, CustomEventServerParameters>, MediationInterstitialAdapter<EmptyNetworkExtras, CustomEventServerParameters> {
    private String a;
    private a b;
    private CustomEventInterstitial c;

    private class a implements CustomEventBannerListener {
        private View b;
        private final MediationBannerListener c;

        public a(MediationBannerListener mediationBannerListener) {
            this.c = mediationBannerListener;
        }

        private String b() {
            return "Banner custom event labeled '" + CustomEventAdapter.this + "'";
        }

        public synchronized View a_() {
            return this.b;
        }

        public void onClick() {
            com.google.ads.util.b.a(b() + " called onClick().");
            this.c.onClick(CustomEventAdapter.this);
        }

        public void onDismissScreen() {
            com.google.ads.util.b.a(b() + " called onDismissScreen().");
            this.c.onDismissScreen(CustomEventAdapter.this);
        }

        public void onFailedToReceiveAd() {
            com.google.ads.util.b.a(b() + " called onFailedToReceiveAd().");
            this.c.onFailedToReceiveAd(CustomEventAdapter.this, ErrorCode.NO_FILL);
        }

        public synchronized void onLeaveApplication() {
            com.google.ads.util.b.a(b() + " called onLeaveApplication().");
            this.c.onLeaveApplication(CustomEventAdapter.this);
        }

        public void onPresentScreen() {
            com.google.ads.util.b.a(b() + " called onPresentScreen().");
            this.c.onPresentScreen(CustomEventAdapter.this);
        }

        public synchronized void onReceivedAd(View view) {
            com.google.ads.util.b.a(b() + " called onReceivedAd.");
            this.b = view;
            this.c.onReceivedAd(CustomEventAdapter.this);
        }
    }

    private class b implements CustomEventInterstitialListener {
        private final MediationInterstitialListener b;

        public b(MediationInterstitialListener mediationInterstitialListener) {
            this.b = mediationInterstitialListener;
        }

        private String a() {
            return "Interstitial custom event labeled '" + CustomEventAdapter.this + "'";
        }

        public void onDismissScreen() {
            com.google.ads.util.b.a(a() + " called onDismissScreen().");
            this.b.onDismissScreen(CustomEventAdapter.this);
        }

        public void onFailedToReceiveAd() {
            com.google.ads.util.b.a(a() + " called onFailedToReceiveAd().");
            this.b.onFailedToReceiveAd(CustomEventAdapter.this, ErrorCode.NO_FILL);
        }

        public synchronized void onLeaveApplication() {
            com.google.ads.util.b.a(a() + " called onLeaveApplication().");
            this.b.onLeaveApplication(CustomEventAdapter.this);
        }

        public void onPresentScreen() {
            com.google.ads.util.b.a(a() + " called onPresentScreen().");
            this.b.onPresentScreen(CustomEventAdapter.this);
        }

        public void onReceivedAd() {
            com.google.ads.util.b.a(a() + " called onReceivedAd.");
            this.b.onReceivedAd(CustomEventAdapter.this);
        }
    }

    public CustomEventAdapter() {
        this.b = null;
        this.c = null;
    }

    private <T> T a(String str, Class<T> cls, String str2) {
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
            a(PocketCurrency.AD_MOB_KEYWORD_HINT, th);
            return null;
        }
    }

    private void a(String str, Throwable th) {
        com.google.ads.util.b.b("Error during processing of custom event with label: '" + this.a + "'. Skipping custom event. " + str, th);
    }

    public void destroy() {
    }

    public Class<EmptyNetworkExtras> getAdditionalParametersType() {
        return EmptyNetworkExtras.class;
    }

    public View getBannerView() {
        com.google.ads.util.a.b(this.b);
        return this.b.a();
    }

    public Class<CustomEventServerParameters> getServerParametersType() {
        return CustomEventServerParameters.class;
    }

    public void requestBannerAd(MediationBannerListener mediationListener, Activity activity, CustomEventServerParameters serverParameters, AdSize adSize, MediationAdRequest mediationAdRequest, EmptyNetworkExtras mediationExtras) {
        com.google.ads.util.a.a(this.a);
        this.a = serverParameters.label;
        String str = serverParameters.className;
        String str2 = serverParameters.parameter;
        CustomEventBanner customEventBanner = (CustomEventBanner) a(str, CustomEventBanner.class, this.a);
        if (customEventBanner == null) {
            mediationListener.onFailedToReceiveAd(this, ErrorCode.INTERNAL_ERROR);
        } else {
            com.google.ads.util.a.a(this.b);
            this.b = new a(mediationListener);
            try {
                customEventBanner.requestBannerAd(this.b, activity, this.a, str2, adSize, mediationAdRequest);
            } catch (Throwable th) {
                a(PocketCurrency.AD_MOB_KEYWORD_HINT, th);
                mediationListener.onFailedToReceiveAd(this, ErrorCode.INTERNAL_ERROR);
            }
        }
    }

    public void requestInterstitialAd(MediationInterstitialListener mediationListener, Activity activity, CustomEventServerParameters serverParameters, MediationAdRequest mediationAdRequest, EmptyNetworkExtras mediationExtras) {
        com.google.ads.util.a.a(this.a);
        this.a = serverParameters.label;
        String str = serverParameters.className;
        String str2 = serverParameters.parameter;
        this.c = (CustomEventInterstitial) a(str, CustomEventInterstitial.class, this.a);
        if (this.c == null) {
            mediationListener.onFailedToReceiveAd(this, ErrorCode.INTERNAL_ERROR);
        } else {
            try {
                this.c.requestInterstitialAd(new b(mediationListener), activity, this.a, str2, mediationAdRequest);
            } catch (Throwable th) {
                a(PocketCurrency.AD_MOB_KEYWORD_HINT, th);
                mediationListener.onFailedToReceiveAd(this, ErrorCode.INTERNAL_ERROR);
            }
        }
    }

    public void showInterstitial() {
        com.google.ads.util.a.b(this.c);
        try {
            this.c.showInterstitial();
        } catch (Throwable th) {
            com.google.ads.util.b.b("Exception when showing custom event labeled '" + this.a + "'.", th);
        }
    }
}