package com.google.ads.interactivemedia.v3.b.b;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.b.r;
import com.google.ads.interactivemedia.v3.b.s;
import com.google.ads.interactivemedia.v3.b.s.c;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class e extends RelativeLayout implements OnClickListener, c, com.google.ads.interactivemedia.v3.b.v.a {
    private FrameLayout a;
    private List b;
    private final float c;
    private final String d;
    private s e;
    private boolean f;
    private float g;
    private String h;
    private b i;
    private b j;
    private d k;
    private a l;

    static /* synthetic */ class AnonymousClass_2 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[r.c.values().length];
            try {
                a[r.c.adRemainingTime.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[r.c.learnMore.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[r.c.preSkipButton.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            a[r.c.skipButton.ordinal()] = 4;
        }
    }

    public static interface a extends com.google.ads.interactivemedia.v3.b.b.a.a {
        void a_();
    }

    private enum b {
        NOT_SKIPPABLE,
        WAITING_TO_SKIP,
        SKIPPABLE;

        static {
            a = new b("NOT_SKIPPABLE", 0);
            b = new b("WAITING_TO_SKIP", 1);
            c = new b("SKIPPABLE", 2);
            d = new b[]{a, b, c};
        }
    }

    public e(Context context, d dVar, s sVar, String str) {
        super(context);
        this.b = new ArrayList();
        this.f = false;
        this.e = sVar;
        this.d = str;
        this.k = dVar;
        this.c = getResources().getDisplayMetrics().density;
        this.l = new a(context, this.k);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
        addView(this.l, layoutParams);
        this.l.a(new com.google.ads.interactivemedia.v3.b.b.a.a() {
            public final void b() {
                Iterator it = e.this.b.iterator();
                while (it.hasNext()) {
                    ((com.google.ads.interactivemedia.v3.b.b.e.a) it.next()).b();
                }
            }
        });
        if (dVar.a) {
            this.a = new FrameLayout(context);
            this.j = new b(context);
            this.a.addView(this.j, new RelativeLayout.LayoutParams(-2, -2));
            int a = c.a(MMException.REQUEST_BAD_RESPONSE, this.c);
            this.a.setPadding(a, a, 0, a);
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
            this.a.setLayoutParams(layoutParams);
            this.a.setOnClickListener(this);
            addView(this.a);
        }
        this.f = this.f;
        if (this.k.a) {
            ((RelativeLayout.LayoutParams) this.a.getLayoutParams()).setMargins(0, 0, 0, c.a(MMException.AD_BROKEN_REFERENCE, this.c));
        }
    }

    private void a(String str) {
        if (!this.f || TextUtils.isEmpty(this.h)) {
            this.l.a(str);
        } else {
            this.l.a(str + ": " + this.h + "\u00bb");
        }
    }

    private void b(String str) {
        this.l.b(str);
    }

    public final View a() {
        return this;
    }

    public final void a(Ad ad) {
        a(AdTrackerConstants.BLANK);
        b(this.k.m);
        this.e.b(new r(com.google.ads.interactivemedia.v3.b.r.b.i18n, r.c.learnMore, this.d));
        if (ad.isSkippable()) {
            this.i = b.b;
            this.a.setVisibility(0);
            Map hashMap = new HashMap(1);
            hashMap.put("seconds", Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
            this.e.b(new r(com.google.ads.interactivemedia.v3.b.r.b.i18n, r.c.preSkipButton, this.d, hashMap));
        } else {
            this.i = b.a;
            if (this.a != null) {
                this.a.setVisibility(GoogleScorer.CLIENT_APPSTATE);
            }
        }
        setVisibility(0);
    }

    public final void a(VideoProgressUpdate videoProgressUpdate) {
        if (videoProgressUpdate != null && videoProgressUpdate.getDuration() >= 0.0f) {
            int i;
            float duration = videoProgressUpdate.getDuration() - videoProgressUpdate.getCurrentTime();
            i = Math.floor((double) duration) != Math.floor((double) this.g) ? true : 0;
            if (i != 0) {
                Map hashMap = new HashMap(2);
                hashMap.put("minutes", Float.valueOf(duration / 60.0f));
                hashMap.put("seconds", Float.valueOf(duration % 60.0f));
                this.e.b(new r(com.google.ads.interactivemedia.v3.b.r.b.i18n, r.c.adRemainingTime, this.d, hashMap));
            }
            if (this.i == b.b) {
                float currentTime = 5.0f - videoProgressUpdate.getCurrentTime();
                if (currentTime <= 0.0f) {
                    this.i = b.c;
                    this.e.b(new r(com.google.ads.interactivemedia.v3.b.r.b.i18n, r.c.skipButton, this.d));
                    Iterator it = this.b.iterator();
                    while (it.hasNext()) {
                        it.next();
                    }
                } else if (i != 0) {
                    Map hashMap2 = new HashMap(1);
                    hashMap2.put("seconds", Float.valueOf(currentTime));
                    this.e.b(new r(com.google.ads.interactivemedia.v3.b.r.b.i18n, r.c.preSkipButton, this.d, hashMap2));
                }
                this.g = duration;
            }
        }
    }

    public final void a(a aVar) {
        this.b.add(aVar);
    }

    public final void a(r.c cVar, String str) {
        switch (AnonymousClass_2.a[cVar.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                a(str);
            case GoogleScorer.CLIENT_PLUS:
                b(str);
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
            case GoogleScorer.CLIENT_APPSTATE:
                this.j.a(str);
            default:
                break;
        }
    }

    public final void b() {
        setVisibility(GoogleScorer.CLIENT_APPSTATE);
    }

    public final void onClick(View view) {
        if (view == this.a && this.i == b.c) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((a) it.next()).a();
            }
        }
    }
}