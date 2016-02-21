package com.google.ads.interactivemedia.v3.b;

import android.content.Context;
import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.AdError.AdErrorCode;
import com.google.ads.interactivemedia.v3.api.AdError.AdErrorType;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent.AdErrorListener;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.AdEvent.AdEventListener;
import com.google.ads.interactivemedia.v3.api.AdEvent.AdEventType;
import com.google.ads.interactivemedia.v3.api.AdsManager;
import com.google.ads.interactivemedia.v3.api.AdsRenderingSettings;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer.VideoAdPlayerCallback;
import com.google.ads.interactivemedia.v3.b.r.c;
import com.google.ads.interactivemedia.v3.b.s.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;

public final class f implements AdsManager {
    v a;
    private final s b;
    private final String c;
    private final VideoAdPlayer d;
    private com.google.ads.interactivemedia.v3.b.a.a e;
    private n f;
    private d g;
    private List h;
    private h i;
    private VideoAdPlayerCallback j;
    private final List k;
    private final o l;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[AdEventType.values().length];
            try {
                a[AdEventType.CONTENT_PAUSE_REQUESTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[AdEventType.CONTENT_RESUME_REQUESTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[AdEventType.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[AdEventType.COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            a[AdEventType.ALL_ADS_COMPLETED.ordinal()] = 5;
        }
    }

    private class a implements b {
        private a() {
        }

        public final void a_(AdErrorType adErrorType, int i, String str) {
            f.this.l.a(new b(new AdError(adErrorType, i, str)));
            f.this.i.a(f.this.e);
        }

        public final void a_(AdErrorType adErrorType, AdErrorCode adErrorCode, String str) {
            f.this.l.a(new b(new AdError(adErrorType, adErrorCode, str)));
            f.this.i.a(f.this.e);
        }

        public final void a_(AdEventType adEventType, com.google.ads.interactivemedia.v3.b.a.a aVar) {
            if (aVar != null) {
                f.this.e = aVar;
            }
            switch (AnonymousClass_1.a[adEventType.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    f.this.g = new d(f.this.b, f.this.c, f.this);
                    f.this.d.addCallback(f.this.g);
                    f.this.a(f.this.g);
                    if (f.this.j != null) {
                        f.this.d.removeCallback(f.this.j);
                    }
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    f.this.d.removeCallback(f.this.g);
                    f.this.b(f.this.g);
                    if (f.this.j != null) {
                        f.this.d.addCallback(f.this.j);
                    }
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    f.this.i.a(f.this.e);
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    f.this.i.a(f.this.e);
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    f.this.destroy();
                    break;
            }
            f.this.a(adEventType);
            if (adEventType == AdEventType.COMPLETED) {
                f.this.e = null;
            }
        }
    }

    f(String str, s sVar, u uVar, AdDisplayContainer adDisplayContainer, List list, SortedSet sortedSet, v vVar, Context context) {
        this.k = new ArrayList(1);
        this.l = new o();
        this.i = new h(str, uVar, sVar, adDisplayContainer, context);
        this.c = str;
        this.b = sVar;
        this.d = adDisplayContainer.getPlayer();
        this.h = list;
        this.a = vVar;
        vVar.a(this.i);
        if (sortedSet != null && !sortedSet.isEmpty()) {
            this.f = new n(sVar, sortedSet, str);
            vVar.c(this.f);
            this.j = new m(vVar);
        }
    }

    private void a(c cVar) {
        this.b.b(new r(r.b.adsManager, cVar, this.c));
    }

    final void a(AdEventType adEventType) {
        AdEvent cVar = new c(adEventType, this.e);
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((AdEventListener) it.next()).onAdEvent(cVar);
        }
    }

    public final void addAdErrorListener(AdErrorListener adErrorListener) {
        this.l.a(adErrorListener);
    }

    public final void addAdEventListener(AdEventListener adEventListener) {
        this.k.add(adEventListener);
    }

    public final void destroy() {
        this.a.c();
        this.a.b(this.i);
        this.i.a(this.e);
        this.d.removeCallback(this.g);
        if (this.j != null) {
            this.d.removeCallback(this.j);
        }
        a(c.destroy);
    }

    public final List getAdCuePoints() {
        return this.h;
    }

    public final Ad getCurrentAd() {
        return this.e;
    }

    public final void init() {
        init(null);
    }

    public final void init(AdsRenderingSettings adsRenderingSettings) {
        this.b.a(new a((byte) 0), this.c);
        Map hashMap = new HashMap();
        hashMap.put("adsRenderingSettings", adsRenderingSettings);
        this.b.b(new r(r.b.adsManager, c.init, this.c, hashMap));
    }

    public final void removeAdErrorListener(AdErrorListener adErrorListener) {
        this.l.b(adErrorListener);
    }

    public final void removeAdEventListener(AdEventListener adEventListener) {
        this.k.remove(adEventListener);
    }

    public final void skip() {
        this.b.b(new r(r.b.adsManager, c.skip, this.c));
    }

    public final void start() {
        if (this.d == null) {
            this.l.a(new b(new AdError(AdErrorType.PLAY, AdErrorCode.INVALID_ARGUMENTS, "Ad Display Container must contain a non-null video player.")));
        } else {
            this.b.a(this.d, this.c);
            a(c.start);
        }
    }
}