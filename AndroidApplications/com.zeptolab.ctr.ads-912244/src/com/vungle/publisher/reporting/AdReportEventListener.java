package com.vungle.publisher.reporting;

import android.content.ContentValues;
import com.vungle.log.Logger;
import com.vungle.publisher.ae;
import com.vungle.publisher.aw;
import com.vungle.publisher.bl;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.AdPlay;
import com.vungle.publisher.db.model.AdReport;
import com.vungle.publisher.db.model.AdReport.Factory;
import com.vungle.publisher.db.model.AdReportEvent;
import com.vungle.publisher.db.model.EventTracking.a;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.StreamingAd;
import com.vungle.publisher.h;
import com.vungle.publisher.i;
import com.vungle.publisher.r;
import com.vungle.publisher.t;
import com.vungle.publisher.u;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class AdReportEventListener extends aw {
    private static final a[] h;
    public AdPlay a;
    public AdReport b;
    @Inject
    AdServiceReportingHandler c;
    @Inject
    Factory d;
    @Inject
    AdReportManager e;
    @Inject
    public bl g;
    private Ad i;
    private int j;
    private final HashSet k;

    static {
        h = new a[]{a.c, a.d, a.e, a.f, a.g, a.h};
    }

    public AdReportEventListener() {
        this.k = new HashSet();
    }

    private void a() {
        this.j = 0;
        this.k.clear();
    }

    private void a(Ad ad) {
        if (this.i == null || !this.i.a(ad)) {
            AdReport a;
            Logger.i(Logger.REPORT_TAG, new StringBuilder("new ad ").append(ad.x()).toString());
            this.i = ad;
            AdReportManager adReportManager = this.e;
            if (ad instanceof LocalAd) {
                a = adReportManager.c.a((LocalAd) ad);
            } else if (ad instanceof StreamingAd) {
                a = adReportManager.f.a((StreamingAd) ad);
            } else {
                throw new IllegalArgumentException(new StringBuilder("unknown ad type ").append(ad).toString());
            }
            this.b = a;
            this.a = this.b.r();
            a();
        } else {
            Logger.v(Logger.REPORT_TAG, new StringBuilder("same ad ").append(ad.x()).toString());
        }
    }

    public final void a(AdReportEvent.a aVar, Object obj) {
        try {
            this.a.a(aVar, obj);
        } catch (Exception e) {
            Logger.w(Logger.REPORT_TAG, "error reporting event", e);
        }
    }

    public final void a(a aVar) {
        if (this.i == null) {
            Logger.w(Logger.REPORT_TAG, "ad was not set in AdReportingHandler. Cannot track event");
        } else if (!this.k.contains(aVar)) {
            Logger.v(Logger.REPORT_TAG, new StringBuilder("tpat event: ").append(aVar.name()).toString());
            bl blVar = this.g;
            String[] a = this.i.a(aVar);
            Map hashMap = new HashMap();
            hashMap.put("%timestamp%", String.valueOf(System.currentTimeMillis()));
            blVar.a(hashMap, a);
            this.k.add(aVar);
        }
    }

    public void onEvent(ae aeVar) {
        try {
            Logger.d(Logger.REPORT_TAG, "received play ad end");
            a(aeVar.a());
            AdReport adReport = this.b;
            adReport.a(AdReport.a.d);
            adReport.a(Long.valueOf(aeVar.b()));
            adReport.w();
            this.e.a();
            this.i = null;
            this.b = null;
            this.a = null;
            a();
        } catch (Exception e) {
            Logger.w(Logger.REPORT_TAG, "error reporting ad end", e);
        }
    }

    public void onEvent(h hVar) {
        try {
            this.b.a(Integer.valueOf(hVar.a));
        } catch (Exception e) {
            Logger.w(Logger.REPORT_TAG, "error updating video duration millis", e);
        }
    }

    public void onEvent(r rVar) {
        boolean z = 0;
        try {
            int i = rVar.a;
            int i2 = this.j < h.length;
            boolean z2 = rVar instanceof i;
            if (i2 != 0 || z2) {
                Integer j = this.b.j();
                if (j == null) {
                    Logger.d(Logger.REPORT_TAG, new StringBuilder("null video duration millis for ").append(this.b.x()).toString());
                } else if (j.intValue() == 0) {
                    Logger.w(Logger.REPORT_TAG, new StringBuilder("video duration millis 0 for ").append(this.b.x()).toString());
                } else {
                    if (i2 != 0) {
                        float intValue = ((float) i) / ((float) j.intValue());
                        a aVar = h[this.j];
                        if (intValue >= aVar.p) {
                            z = true;
                        }
                        if (i != 0) {
                            this.j++;
                            a(aVar);
                        }
                    }
                    if (i != 0 || z2) {
                        try {
                            AdPlay adPlay = this.a;
                            Integer valueOf = Integer.valueOf(rVar.a);
                            if (adPlay.b == null || (valueOf != null && valueOf.intValue() > adPlay.b.intValue())) {
                                Logger.d(Logger.AD_TAG, new StringBuilder("setting watched millis ").append(valueOf).toString());
                                adPlay.b = valueOf;
                            } else {
                                Logger.w(Logger.AD_TAG, new StringBuilder("ignoring decreased watched millis ").append(valueOf).toString());
                            }
                            this.a.l();
                            this.b.b(Long.valueOf(rVar.c));
                        } catch (Exception e) {
                            Logger.w(Logger.REPORT_TAG, "error updating video view progress", e);
                        }
                    }
                }
            }
        } catch (Exception e2) {
            Logger.w(Logger.REPORT_TAG, "error handling video view progress", e2);
        }
    }

    public void onEvent(t tVar) {
        try {
            Logger.d(Logger.REPORT_TAG, "received play ad start");
            a(tVar.a());
            Factory factory = this.d;
            ContentValues contentValues = new ContentValues();
            contentValues.put("status", AdReport.a.d.toString());
            factory.a.getWritableDatabase().update("ad_report", contentValues, "status = ?", new String[]{AdReport.a.c.toString()});
            com.vungle.publisher.a aVar = tVar.b;
            AdReport adReport = this.b;
            adReport.a(AdReport.a.c);
            adReport.a(aVar.getExtras());
            boolean isIncentivized = aVar.isIncentivized();
            adReport.b(isIncentivized);
            if (isIncentivized) {
                adReport.b(aVar.getIncentivizedUserId());
            }
            adReport.c(aVar.getPlacement());
            adReport.c(Long.valueOf(tVar.c));
            adReport.w();
        } catch (Exception e) {
            Logger.w(Logger.REPORT_TAG, "error processing ad start event", e);
        }
    }

    public void onEvent(u uVar) {
        try {
            this.a.c = Long.valueOf(uVar.c);
            this.a.l();
        } catch (Exception e) {
            Logger.w(Logger.REPORT_TAG, "error updating play start millis", e);
        }
    }
}