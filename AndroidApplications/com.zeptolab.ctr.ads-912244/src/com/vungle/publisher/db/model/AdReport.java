package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.log.Logger;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.cd;
import com.vungle.publisher.db.DatabaseHelper;
import com.vungle.publisher.db.model.Ad.b;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.inject.Inject;
import javax.inject.Singleton;

public abstract class AdReport extends ak {
    protected Ad a;
    protected String b;
    protected String c;
    protected Long d;
    protected boolean e;
    protected String f;
    protected a g;
    protected Long h;
    protected Integer i;
    protected Long j;
    protected Long k;
    protected Map l;
    protected List m;
    protected boolean n;
    @Inject
    com.vungle.publisher.db.model.AdReportExtra.Factory o;

    public static abstract class BaseFactory extends com.vungle.publisher.ak.a {
        @Inject
        com.vungle.publisher.db.model.AdReportExtra.Factory a;

        protected BaseFactory() {
        }

        private AdReport a(AdReport adReport, Ad ad, boolean z) {
            if (ad == null) {
                adReport.a = (Ad) a().a(adReport.d(), false);
            } else {
                adReport.a = ad;
            }
            if (z) {
                adReport.m = b().a(adReport, z);
                adReport.l = this.a.b((Integer) adReport.q);
            }
            return adReport;
        }

        private AdReport c(Ad ad) {
            String[] strArr = new String[]{com.vungle.publisher.db.model.AdReport.a.a.toString()};
            String str = "status = ?";
            if (ad == null) {
                throw new IllegalArgumentException("null ad");
            }
            String d = ad.d();
            if (d == null) {
                throw new IllegalArgumentException("null ad_id");
            }
            Object[] objArr = new Object[2];
            objArr[0] = d;
            int i = 0;
            while (i <= 0) {
                objArr[1] = strArr[0];
                i++;
            }
            List a = a("ad_report", new StringBuilder("ad_id = ? AND ").append(str).toString(), objArr, "insert_timestamp_millis DESC");
            str = new StringBuilder("ad_id = ? AND ").append(str).append(", with params: ").append(cd.a(objArr)).toString();
            int size = a.size();
            switch (size) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    return null;
                case GoogleScorer.CLIENT_GAMES:
                    AdReport a2 = a((AdReport) a.get(0), ad, false);
                    Logger.d(Logger.DATABASE_TAG, new StringBuilder("fetched ").append(a2.x()).toString());
                    return a2;
                default:
                    Logger.w(Logger.DATABASE_TAG, size + " ad_report records for " + str);
                    return null;
            }
        }

        protected abstract com.vungle.publisher.db.model.Ad.Factory a();

        public final AdReport a(Ad ad) {
            AdReport c = c(ad);
            if (c != null) {
                return c;
            }
            c = (AdReport) b_();
            c.a = ad;
            c.g = com.vungle.publisher.db.model.AdReport.a.a;
            Logger.d(Logger.DATABASE_TAG, new StringBuilder("creating new ").append(c.x()).toString());
            c.t();
            return c;
        }

        protected AdReport a(AdReport adReport, Cursor cursor, boolean z) {
            adReport.q = ai.d(cursor, AnalyticsEvent.EVENT_ID);
            adReport.a(ai.f(cursor, "ad_id"));
            adReport.c = ai.f(cursor, "incentivized_publisher_app_user_id");
            adReport.e = ai.a(cursor, "is_incentivized").booleanValue();
            adReport.d = ai.e(cursor, "insert_timestamp_millis");
            adReport.f = ai.f(cursor, "placement");
            adReport.g = (com.vungle.publisher.db.model.AdReport.a) ai.a(cursor, "status", com.vungle.publisher.db.model.AdReport.a.class);
            adReport.h = ai.e(cursor, "update_timestamp_millis");
            adReport.i = ai.d(cursor, "video_duration_millis");
            adReport.j = ai.e(cursor, "view_end_millis");
            adReport.k = ai.e(cursor, "view_start_millis");
            return adReport;
        }

        protected abstract com.vungle.publisher.db.model.AdPlay.Factory b();

        public final AdReport b(Ad ad) {
            return c(ad);
        }

        protected abstract b c();

        protected final List d() {
            List a = a("ad_report", "status = ? AND ad_id IN (SELECT id FROM ad WHERE type = ?)", new String[]{com.vungle.publisher.db.model.AdReport.a.d.toString(), c().toString()}, "insert_timestamp_millis ASC");
            Iterator it = a.iterator();
            while (it.hasNext()) {
                a((AdReport) it.next(), null, true);
            }
            return a;
        }
    }

    @Singleton
    public static class Factory {
        @Inject
        public DatabaseHelper a;
        @Inject
        com.vungle.publisher.db.model.LocalAdReport.Factory b;
        @Inject
        com.vungle.publisher.db.model.StreamingAdReport.Factory c;

        Factory() {
        }

        public final List a() {
            List arrayList = new ArrayList();
            Iterator it = this.b.d().iterator();
            while (it.hasNext()) {
                arrayList.add((LocalAdReport) it.next());
            }
            it = this.c.d().iterator();
            while (it.hasNext()) {
                arrayList.add((StreamingAdReport) it.next());
            }
            return arrayList;
        }
    }

    public enum a {
        open,
        failed,
        playing,
        reportable;

        static {
            a = new com.vungle.publisher.db.model.AdReport.a("open", 0);
            b = new com.vungle.publisher.db.model.AdReport.a("failed", 1);
            c = new com.vungle.publisher.db.model.AdReport.a("playing", 2);
            d = new com.vungle.publisher.db.model.AdReport.a("reportable", 3);
            e = new com.vungle.publisher.db.model.AdReport.a[]{a, b, c, d};
        }
    }

    protected AdReport() {
    }

    private void A() {
        if (this.n) {
            Map map = this.l;
            if (this.q == null) {
                Logger.d(Logger.DATABASE_TAG, new StringBuilder("delaying inserting extras for uninserted ").append(x()).toString());
            } else {
                Logger.d(Logger.DATABASE_TAG, new StringBuilder("replacing extras for ").append(x()).toString());
                this.o.a((Integer) this.q);
                if (!(map == null || map.isEmpty())) {
                    com.vungle.publisher.db.model.AdReportExtra.Factory factory = this.o;
                    Collection values = map.values();
                    com.vungle.publisher.db.model.AdReportExtra.Factory factory2 = this.o;
                    com.vungle.publisher.db.model.AdReportExtra.Factory.a((ak[]) values.toArray(com.vungle.publisher.db.model.AdReportExtra.Factory.a(map.size())));
                }
                this.n = false;
            }
        } else {
            Logger.v(Logger.DATABASE_TAG, new StringBuilder("no new extras to insert for ").append(x()).toString());
        }
    }

    private List z() {
        List list = this.m;
        if (list != null) {
            return list;
        }
        list = a().a(this, false);
        this.m = list;
        return list;
    }

    protected ContentValues a(boolean z) {
        String str;
        long currentTimeMillis = System.currentTimeMillis();
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("ad_id", d());
            str = "insert_timestamp_millis";
            Long valueOf = Long.valueOf(currentTimeMillis);
            this.d = valueOf;
            contentValues.put(str, valueOf);
        }
        contentValues.put("incentivized_publisher_app_user_id", this.c);
        contentValues.put("is_incentivized", Boolean.valueOf(this.e));
        contentValues.put("placement", this.f);
        contentValues.put("status", cd.a(this.g));
        str = "update_timestamp_millis";
        Long valueOf2 = Long.valueOf(currentTimeMillis);
        this.h = valueOf2;
        contentValues.put(str, valueOf2);
        contentValues.put("video_duration_millis", this.i);
        contentValues.put("view_end_millis", this.j);
        contentValues.put("view_start_millis", this.k);
        return contentValues;
    }

    protected abstract com.vungle.publisher.db.model.AdPlay.Factory a();

    public final void a(a aVar) {
        Logger.d(Logger.REPORT_TAG, new StringBuilder("setting ad_report status ").append(aVar).append(" for ").append(x()).toString());
        this.g = aVar;
    }

    public final void a(Integer num) {
        Logger.d(Logger.REPORT_TAG, new StringBuilder("setting video duration millis ").append(num).append(" for ").append(x()).toString());
        this.i = num;
        l();
    }

    public final void a(Long l) {
        Logger.d(Logger.REPORT_TAG, new StringBuilder("setting ad end millis ").append(l).append(" for ").append(x()).toString());
        this.j = l;
    }

    protected final void a(String str) {
        this.b = str;
    }

    public final void a(Map map) {
        Map map2;
        com.vungle.publisher.db.model.AdReportExtra.Factory factory = this.o;
        Integer num = (Integer) this.q;
        if (map != null) {
            Map hashMap = new HashMap();
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                AdReportExtra a = factory.a();
                a.a = num;
                a.b = str;
                a.c = str2;
                hashMap.put(str, a);
            }
            map2 = hashMap;
        } else {
            map2 = null;
        }
        this.l = map2;
        int size = map2 == null ? 0 : map2.size();
        if (size <= 0) {
            Logger.d(Logger.DATABASE_TAG, new StringBuilder("no new extras for ").append(x()).toString());
        } else {
            Logger.d(Logger.DATABASE_TAG, size + " new extras for " + x());
            this.n = true;
            A();
        }
    }

    protected final String b() {
        return "ad_report";
    }

    public final void b(Long l) {
        a(l);
        l();
    }

    public final void b(String str) {
        this.c = str;
    }

    public final void b(boolean z) {
        this.e = z;
    }

    public final void c(Long l) {
        Logger.d(Logger.REPORT_TAG, new StringBuilder("setting ad start millis ").append(l).append(" for ").append(x()).toString());
        this.k = l;
    }

    public final void c(String str) {
        this.f = str;
    }

    protected final String d() {
        return this.a == null ? this.b : this.a.d();
    }

    public final Ad e() {
        return this.a;
    }

    public final Map f() {
        Map map = this.l;
        if (map != null) {
            return map;
        }
        map = this.o.b((Integer) this.q);
        this.l = map;
        return map;
    }

    public final boolean g() {
        return this.e;
    }

    public final String h() {
        return this.c;
    }

    public final String i() {
        return this.f;
    }

    public final Integer j() {
        return this.i;
    }

    public final int k() {
        if (this.k == null) {
            Logger.w(Logger.DATABASE_TAG, "unable to calculate ad duration because view start millis was null");
            return -1;
        } else if (this.j != null) {
            return (int) (this.j.longValue() - this.k.longValue());
        } else {
            Logger.w(Logger.DATABASE_TAG, "unable to calculate ad duration because view end millis was null");
            return -1;
        }
    }

    public StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, "ad_id", d());
        cd.a(n, "insert_timestamp_millis", this.d);
        cd.a(n, "incentivized_publisher_app_user_id", this.c);
        cd.a(n, "is_incentivized", Boolean.valueOf(this.e));
        cd.a(n, "placement", this.f);
        cd.a(n, "status", this.g);
        cd.a(n, "update_timestamp_millis", this.h);
        cd.a(n, "video_duration_millis", this.i);
        cd.a(n, "view_end_millis", this.j);
        cd.a(n, "view_start_millis", this.k);
        cd.a(n, "plays", this.m == null ? "not fetched" : Integer.valueOf(this.m.size()));
        return n;
    }

    public final /* synthetic */ Object o() {
        return t();
    }

    public final Long q() {
        return this.k;
    }

    public final AdPlay r() {
        List z = z();
        AdPlay a = a().a(this);
        a.o();
        z.add(a);
        return a;
    }

    public final AdPlay[] s() {
        List z = z();
        return (AdPlay[]) z.toArray(a().c(z.size()));
    }

    public final Integer t() {
        Integer num = (Integer) super.o();
        A();
        return num;
    }
}