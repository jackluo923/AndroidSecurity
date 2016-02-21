package com.mopub.mobileads;

import android.content.Context;
import android.net.Uri;
import com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener;
import com.mopub.mobileads.MraidView.OnCloseListener;
import com.mopub.mobileads.MraidView.OnExpandListener;
import com.mopub.mobileads.MraidView.OnFailureListener;
import com.mopub.mobileads.MraidView.OnReadyListener;
import com.mopub.mobileads.MraidView.ViewState;
import com.mopub.mobileads.factories.MraidViewFactory;
import java.util.Map;

class MraidBanner extends CustomEventBanner {
    private MraidView a;
    private CustomEventBannerListener b;

    MraidBanner() {
    }

    private boolean a(Map map) {
        return map.containsKey("Html-Response-Body");
    }

    private void f() {
        this.a.setOnReadyListener(new OnReadyListener() {
            public void a(MraidView mraidView) {
                MraidBanner.this.b();
            }
        });
        this.a.setOnFailureListener(new OnFailureListener() {
            public void a(MraidView mraidView) {
                MraidBanner.this.c();
            }
        });
        this.a.setOnExpandListener(new OnExpandListener() {
            public void a(MraidView mraidView) {
                MraidBanner.this.d();
            }
        });
        this.a.setOnCloseListener(new OnCloseListener() {
            public void a(MraidView mraidView, ViewState viewState) {
                MraidBanner.this.e();
            }
        });
    }

    private void g() {
        this.a.setOnReadyListener(null);
        this.a.setOnFailureListener(null);
        this.a.setOnExpandListener(null);
        this.a.setOnCloseListener(null);
    }

    protected void a() {
        if (this.a != null) {
            g();
            this.a.destroy();
        }
    }

    protected void a(Context context, CustomEventBannerListener customEventBannerListener, Map map, Map map2) {
        this.b = customEventBannerListener;
        if (a(map2)) {
            String decode = Uri.decode((String) map2.get("Html-Response-Body"));
            this.a = MraidViewFactory.a(context);
            this.a.a(decode);
            f();
        } else {
            this.b.a(MoPubErrorCode.j);
        }
    }

    void b() {
        this.b.a(this.a);
    }

    void c() {
        this.b.a(MoPubErrorCode.j);
    }

    void d() {
        this.b.a();
        this.b.c();
    }

    void e() {
        this.b.b();
    }
}