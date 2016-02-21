package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener;
import com.mopub.mobileads.factories.CustomEventInterstitialFactory;
import java.util.HashMap;
import java.util.Map;

public class CustomEventInterstitialAdapter implements CustomEventInterstitialListener {
    private boolean a;
    private CustomEventInterstitialAdapterListener b;
    private CustomEventInterstitial c;
    private Context d;
    private Map e;
    private Map f;
    private final Handler g;
    private final Runnable h;

    interface CustomEventInterstitialAdapterListener {
        void a();

        void a(MoPubErrorCode moPubErrorCode);

        void a(boolean z);

        void b();

        void c();
    }

    public CustomEventInterstitialAdapter(MoPubInterstitial moPubInterstitial, String str, String str2) {
        this.g = new Handler();
        this.f = new HashMap();
        this.e = new HashMap();
        this.d = moPubInterstitial.e();
        this.h = new Runnable() {
            public void run() {
                Log.d("MoPub", "Third-party network timed out.");
                CustomEventInterstitialAdapter.this.a(MoPubErrorCode.g);
                CustomEventInterstitialAdapter.this.f();
            }
        };
        Log.d("MoPub", new StringBuilder("Attempting to invoke custom event: ").append(str).toString());
        try {
            this.c = CustomEventInterstitialFactory.a(str);
        } catch (Exception e) {
            Log.d("MoPub", new StringBuilder("Couldn't locate or instantiate custom event: ").append(str).append(".").toString());
            if (this.b != null) {
                this.b.a(MoPubErrorCode.e);
            }
        }
        try {
            this.f = Utils.b(str2);
        } catch (Exception e2) {
            Log.d("MoPub", new StringBuilder("Failed to create Map from JSON: ").append(str2).toString());
        }
        this.e = moPubInterstitial.g();
        if (moPubInterstitial.f() != null) {
            this.e.put("location", moPubInterstitial.f());
        }
    }

    private void h() {
        this.g.removeCallbacks(this.h);
    }

    private boolean i() {
        return !(this.c instanceof HtmlInterstitial);
    }

    public void a() {
        if (!g() && this.b != null) {
            h();
            this.b.a();
        }
    }

    void a(CustomEventInterstitialAdapterListener customEventInterstitialAdapterListener) {
        this.b = customEventInterstitialAdapterListener;
    }

    public void a(MoPubErrorCode moPubErrorCode) {
        if (!g() && this.b != null) {
            if (moPubErrorCode == null) {
                moPubErrorCode = MoPubErrorCode.k;
            }
            h();
            this.b.a(moPubErrorCode);
        }
    }

    public void b() {
        if (!g() && this.b != null) {
            this.b.a(i());
        }
    }

    public void c() {
        if (!g() && this.b != null) {
            this.b.b();
        }
    }

    public void d() {
        if (!g() && this.b != null) {
            this.b.c();
        }
    }

    void e() {
        if (!g() && this.c != null) {
            this.g.postDelayed(this.h, 30000);
            this.c.a(this.d, this, this.e, this.f);
        }
    }

    void f() {
        if (this.c != null) {
            this.c.a();
        }
        this.c = null;
        this.d = null;
        this.f = null;
        this.e = null;
        this.b = null;
        this.a = true;
    }

    boolean g() {
        return this.a;
    }
}