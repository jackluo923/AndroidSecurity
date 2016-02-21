package com.mopub.mobileads;

import android.app.Activity;
import android.location.Location;
import android.util.Log;
import com.mopub.mobileads.factories.CustomEventInterstitialAdapterFactory;
import java.util.Map;

public class MoPubInterstitial implements CustomEventInterstitialAdapterListener {
    private MoPubInterstitialView a;
    private CustomEventInterstitialAdapter b;
    private InterstitialAdListener c;
    private Activity d;
    private InterstitialState e;
    private boolean f;
    private MoPubInterstitialListener g;

    public interface InterstitialAdListener {
        void a(MoPubInterstitial moPubInterstitial);

        void a(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode);

        void b(MoPubInterstitial moPubInterstitial);

        void c(MoPubInterstitial moPubInterstitial);

        void d(MoPubInterstitial moPubInterstitial);
    }

    enum InterstitialState {
        CUSTOM_EVENT_AD_READY,
        NOT_READY;

        static {
            a = new InterstitialState("CUSTOM_EVENT_AD_READY", 0);
            b = new InterstitialState("NOT_READY", 1);
            c = new InterstitialState[]{a, b};
        }
    }

    @Deprecated
    public interface MoPubInterstitialListener {
        void a();
    }

    public class MoPubInterstitialView extends MoPubView {
        final /* synthetic */ MoPubInterstitial a;

        protected void a() {
            Log.d("MoPub", "Tracking impression for interstitial.");
            if (this.b != null) {
                this.b.p();
            }
        }

        protected void a(MoPubErrorCode moPubErrorCode) {
            if (this.a.c != null) {
                this.a.c.a(this.a, moPubErrorCode);
            }
        }

        protected void a(Map map) {
            if (map == null) {
                Log.d("MoPub", "Couldn't invoke custom event because the server did not specify one.");
                b(MoPubErrorCode.e);
            } else {
                if (this.a.b != null) {
                    this.a.b.f();
                }
                Log.d("MoPub", "Loading custom event interstitial adapter.");
                this.a.b = CustomEventInterstitialAdapterFactory.a(this.a, (String) map.get("X-Custom-Event-Class-Name"), (String) map.get("X-Custom-Event-Class-Data"));
                this.a.b.a(this.a);
                this.a.b.e();
            }
        }
    }

    public void a() {
        if (!this.f) {
            this.e = InterstitialState.a;
            if (this.c != null) {
                this.c.a(this);
            } else if (this.g != null) {
                this.g.a();
            }
        }
    }

    public void a(MoPubErrorCode moPubErrorCode) {
        if (!d()) {
            this.e = InterstitialState.b;
            this.a.b(moPubErrorCode);
        }
    }

    public void a(boolean z) {
        if (!d()) {
            if (z) {
                this.a.a();
            }
            if (this.c != null) {
                this.c.b(this);
            }
        }
    }

    public void b() {
        if (!d()) {
            this.a.d();
            if (this.c != null) {
                this.c.c(this);
            }
        }
    }

    public void c() {
        if (!d()) {
            this.e = InterstitialState.b;
            if (this.c != null) {
                this.c.d(this);
            }
        }
    }

    boolean d() {
        return this.f;
    }

    public Activity e() {
        return this.d;
    }

    public Location f() {
        return this.a.getLocation();
    }

    public Map g() {
        return this.a.getLocalExtras();
    }
}