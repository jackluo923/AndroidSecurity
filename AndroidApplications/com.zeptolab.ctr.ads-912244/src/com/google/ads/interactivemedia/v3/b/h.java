package com.google.ads.interactivemedia.v3.b;

import android.content.Context;
import android.util.Log;
import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.b.b.d;
import com.google.ads.interactivemedia.v3.b.b.e;
import com.google.ads.interactivemedia.v3.b.r.b;
import com.google.ads.interactivemedia.v3.b.r.c;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class h implements com.google.ads.interactivemedia.v3.b.v.a {
    private final String a;
    private s b;
    private u c;
    private AdDisplayContainer d;
    private e e;
    private Context f;
    private com.google.ads.interactivemedia.v3.b.a.a g;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            b = new int[com.google.ads.interactivemedia.v3.b.r.a.values().length];
            try {
                b[com.google.ads.interactivemedia.v3.b.r.a.b.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[com.google.ads.interactivemedia.v3.b.r.a.a.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            a = new int[com.google.ads.interactivemedia.v3.b.a.c.a.values().length];
            try {
                a[com.google.ads.interactivemedia.v3.b.a.c.a.Html.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[com.google.ads.interactivemedia.v3.b.a.c.a.IFrame.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            a[com.google.ads.interactivemedia.v3.b.a.c.a.Static.ordinal()] = 3;
        }
    }

    private class a implements com.google.ads.interactivemedia.v3.b.b.e.a {
        private a() {
        }

        public final void a_() {
            h.this.b.b(new r(b.videoDisplay, c.skip, h.this));
        }

        public final void b() {
            h.this.b.b(new r(b.videoDisplay, c.click, h.this));
            h.this.b.b(h.this.g.getClickThruUrl());
        }
    }

    public h(String str, u uVar, s sVar, AdDisplayContainer adDisplayContainer, Context context) {
        this.b = sVar;
        this.c = uVar;
        this.f = context;
        this.a = str;
        this.d = adDisplayContainer;
    }

    public final void a(Ad ad) {
        if (this.g == null || this.g.equals(ad)) {
            switch (AnonymousClass_1.b[this.c.b().ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    if (this.e != null) {
                        this.e.b();
                        this.d.getAdContainer().removeView(this.e.a());
                        this.e = null;
                        this.b.a(this.a);
                    }
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    this.d.getAdContainer().removeView(this.b.a());
                    break;
            }
            this.g = null;
        } else {
            Log.e("IMASDK", "Cannot stop non current ad UI");
        }
    }

    public final void a(VideoProgressUpdate videoProgressUpdate) {
        if (this.e != null) {
            this.e.a(videoProgressUpdate);
        }
    }

    public final void a(Ad ad) {
        if (this.g != null) {
            a(this.g);
        }
        if (ad.isLinear()) {
            this.g = ad;
            switch (AnonymousClass_1.b[this.c.b().ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    d dVar = new d();
                    dVar.a = ad.isSkippable();
                    Context context = this.f;
                    this.d.getPlayer();
                    this.e = new e(context, dVar, this.b, this.a);
                    this.b.a(this.e, this.a);
                    this.e.a(new a((byte) 0));
                    this.d.getAdContainer().addView(this.e.a());
                    this.e.a(ad);
                case GoogleScorer.CLIENT_PLUS:
                    this.d.getAdContainer().addView(this.b.a());
                default:
                    break;
            }
        }
    }
}