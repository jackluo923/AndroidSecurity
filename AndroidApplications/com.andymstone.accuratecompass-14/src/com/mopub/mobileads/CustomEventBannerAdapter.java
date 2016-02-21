package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener;
import com.mopub.mobileads.factories.CustomEventBannerFactory;
import java.util.HashMap;
import java.util.Map;

public class CustomEventBannerAdapter implements CustomEventBannerListener {
    private boolean a;
    private MoPubView b;
    private Context c;
    private CustomEventBanner d;
    private Map e;
    private Map f;
    private final Handler g;
    private final Runnable h;
    private boolean i;

    public CustomEventBannerAdapter(MoPubView moPubView, String str, String str2) {
        this.g = new Handler();
        this.b = moPubView;
        this.c = moPubView.getContext();
        this.e = new HashMap();
        this.f = new HashMap();
        this.h = new Runnable() {
            public void run() {
                Log.d("MoPub", "Third-party network timed out.");
                CustomEventBannerAdapter.this.a(MoPubErrorCode.g);
                CustomEventBannerAdapter.this.e();
            }
        };
        Log.d("MoPub", new StringBuilder("Attempting to invoke custom event: ").append(str).toString());
        try {
            this.d = CustomEventBannerFactory.a(str);
            try {
                this.f = Utils.b(str2);
            } catch (Exception e) {
                Log.d("MoPub", new StringBuilder("Failed to create Map from JSON: ").append(str2).append(e.toString()).toString());
            }
            this.e = this.b.getLocalExtras();
            if (this.b.getLocation() != null) {
                this.e.put("location", this.b.getLocation());
            }
        } catch (Exception e2) {
            Log.d("MoPub", new StringBuilder("Couldn't locate or instantiate custom event: ").append(str).append(".").toString());
            this.b.b(MoPubErrorCode.e);
        }
    }

    private void g() {
        this.g.removeCallbacks(this.h);
    }

    public void a() {
        if (!f()) {
            this.i = this.b.getAutorefreshEnabled();
            this.b.setAutorefreshEnabled(false);
            this.b.g();
        }
    }

    public void a(View view) {
        if (!f() && this.b != null) {
            g();
            this.b.j();
            this.b.setAdContentView(view);
            if (!(view instanceof HtmlBannerWebView)) {
                this.b.e();
            }
        }
    }

    public void a(MoPubErrorCode moPubErrorCode) {
        if (!f() && this.b != null) {
            if (moPubErrorCode == null) {
                moPubErrorCode = MoPubErrorCode.k;
            }
            g();
            this.b.b(moPubErrorCode);
        }
    }

    public void b() {
        if (!f()) {
            this.b.setAutorefreshEnabled(this.i);
            this.b.h();
        }
    }

    public void c() {
        if (!f() && this.b != null) {
            this.b.d();
        }
    }

    void d() {
        if (!f() && this.d != null) {
            this.g.postDelayed(this.h, 10000);
            this.d.a(this.c, this, this.e, this.f);
        }
    }

    void e() {
        if (this.d != null) {
            this.d.a();
        }
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.a = true;
    }

    boolean f() {
        return this.a;
    }
}