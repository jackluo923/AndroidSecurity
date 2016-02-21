package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.admarvel.android.ads.Constants;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.vungle.log.Logger;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.am;
import com.vungle.publisher.cd;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;

public abstract class Ad extends ak {
    protected String a;
    protected String b;
    protected String c;
    protected Map d;
    protected long e;
    protected a f;
    protected b g;
    protected long h;
    protected Video i;
    String j;
    protected boolean k;
    protected boolean l;

    public static abstract class Factory extends com.vungle.publisher.ak.a {
        @Inject
        Factory a;

        protected Factory() {
        }

        private static Ad b(Ad ad, RequestAdResponse requestAdResponse) {
            ad.a = requestAdResponse.b();
            Object c = requestAdResponse.c();
            String e = requestAdResponse.e();
            if (TextUtils.isEmpty(c)) {
                ad.b = e;
            } else {
                ad.b = c;
                ad.c = e;
            }
            return ad;
        }

        public int a(Ad ad, RequestAdResponse requestAdResponse) {
            b(ad, requestAdResponse);
            a();
            com.vungle.publisher.db.model.Video.Factory.a(ad.j(), requestAdResponse).l();
            Factory factory = this.a;
            String f = requestAdResponse.f();
            factory.a(f);
            Map a = factory.a(f, requestAdResponse.j());
            Factory.a(a);
            ad.d = a;
            return ad.l();
        }

        protected final Ad a(com.vungle.publisher.db.model.Ad.b bVar, Object obj) {
            return (Ad) super.a(obj, " AND type = ?", new String[]{bVar.toString()}, false);
        }

        protected Ad a(Ad ad, Cursor cursor, boolean z) {
            ad.a = ai.f(cursor, "advertising_app_vungle_id");
            ad.b = ai.f(cursor, "call_to_action_final_url");
            ad.c = ai.f(cursor, "call_to_action_url");
            ad.q = ai.f(cursor, AnalyticsEvent.EVENT_ID);
            ad.e = ai.e(cursor, "insert_timestamp_millis").longValue();
            ad.f = (com.vungle.publisher.db.model.Ad.a) ai.a(cursor, "status", com.vungle.publisher.db.model.Ad.a.class);
            ad.g = (com.vungle.publisher.db.model.Ad.b) ai.a(cursor, AnalyticsSQLiteHelper.EVENT_LIST_TYPE, com.vungle.publisher.db.model.Ad.b.class);
            ad.h = ai.e(cursor, "update_timestamp_millis").longValue();
            if (z) {
                a(ad);
                a(ad, z);
            }
            return ad;
        }

        protected Ad a(RequestAdResponse requestAdResponse) {
            Ad ad = (Ad) b_();
            String f = requestAdResponse.f();
            ad.q = f;
            ad.d = this.a.a(f, requestAdResponse.j());
            ad.i = a().b(ad, requestAdResponse);
            b(ad, requestAdResponse);
            return ad;
        }

        protected abstract com.vungle.publisher.db.model.Video.Factory a();

        protected final Video a(Ad ad, boolean z) {
            if (ad.l) {
                return ad.i;
            }
            Video a = a().a((String) ad.q, z);
            ad.i = a;
            ad.l = true;
            return a;
        }

        protected final Map a(Ad ad) {
            if (ad.k) {
                return ad.d;
            }
            Map b = this.a.b((String) ad.q);
            ad.d = b;
            ad.k = true;
            return b;
        }
    }

    public enum a {
        aware,
        failed,
        invalid,
        preparing,
        ready,
        viewed;

        static {
            a = new com.vungle.publisher.db.model.Ad.a("aware", 0);
            b = new com.vungle.publisher.db.model.Ad.a("failed", 1);
            c = new com.vungle.publisher.db.model.Ad.a("invalid", 2);
            d = new com.vungle.publisher.db.model.Ad.a("preparing", 3);
            e = new com.vungle.publisher.db.model.Ad.a("ready", 4);
            f = new com.vungle.publisher.db.model.Ad.a("viewed", 5);
            g = new com.vungle.publisher.db.model.Ad.a[]{a, b, c, d, e, f};
        }
    }

    public enum b {
        local,
        streaming;

        static {
            a = new com.vungle.publisher.db.model.Ad.b(Constants.LOCAL, 0);
            b = new com.vungle.publisher.db.model.Ad.b("streaming", 1);
            c = new com.vungle.publisher.db.model.Ad.b[]{a, b};
        }
    }

    protected Ad() {
        this.p = String.class;
    }

    private Map q() {
        return a().a(this);
    }

    protected ContentValues a(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        this.h = currentTimeMillis;
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(AnalyticsEvent.EVENT_ID, (String) this.q);
            String str = "insert_timestamp_millis";
            this.e = currentTimeMillis;
            contentValues.put(str, Long.valueOf(currentTimeMillis));
            contentValues.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, this.g.toString());
        }
        contentValues.put("advertising_app_vungle_id", this.a);
        contentValues.put("call_to_action_final_url", this.b);
        contentValues.put("call_to_action_url", this.c);
        contentValues.put("status", this.f.toString());
        contentValues.put("update_timestamp_millis", Long.valueOf(currentTimeMillis));
        return contentValues;
    }

    public am a(com.vungle.publisher.am.b bVar) {
        throw new IllegalArgumentException(new StringBuilder("unknown viewable type: ").append(bVar).toString());
    }

    protected abstract Factory a();

    public void a(a aVar) {
        Logger.v(Logger.PREPARE_TAG, new StringBuilder("setting status from ").append(this.f).append(" to ").append(aVar).append(" for ").append(x()).toString());
        this.f = aVar;
    }

    public final boolean a(Ad ad) {
        return ad != null && ad.q != null && ((String) ad.q).equals(this.q);
    }

    public final String[] a(com.vungle.publisher.db.model.EventTracking.a aVar) {
        if (q() != null) {
            List list = (List) q().get(aVar);
            if (list != null) {
                int size = list.size();
                if (size > 0) {
                    String[] strArr = new String[size];
                    int i = 0;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        size = i + 1;
                        strArr[i] = ((EventTracking) it.next()).c;
                        i = size;
                    }
                    return strArr;
                }
            }
        }
        return null;
    }

    protected final String b() {
        return AdDatabaseHelper.TABLE_AD;
    }

    protected final boolean c() {
        return false;
    }

    public final String d() {
        return (String) this.q;
    }

    public final String e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return obj instanceof Ad && a((Ad) obj);
    }

    public final String f() {
        return this.b;
    }

    public final String g() {
        return this.c;
    }

    public final a h() {
        return this.f;
    }

    public int hashCode() {
        return this.q == null ? super.hashCode() : ((String) this.q).hashCode();
    }

    public final long i() {
        return this.h;
    }

    public final Video j() {
        return a().a(this, false);
    }

    public String k() {
        String str = (String) super.o();
        if (this.d != null) {
            Iterator it = this.d.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((List) it.next()).iterator();
                while (it2.hasNext()) {
                    ((EventTracking) it2.next()).o();
                }
            }
        }
        if (this.i != null) {
            this.i.o();
        }
        return str;
    }

    public int l() {
        int l = super.l();
        if (l == 1 && this.i != null) {
            this.i.l();
        }
        return l;
    }

    protected final StringBuilder m() {
        StringBuilder m = super.m();
        cd.a(m, AnalyticsSQLiteHelper.EVENT_LIST_TYPE, this.g);
        return m;
    }

    protected StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, "advertising_app_vungle_id", this.a);
        cd.a(n, "call_to_action_final_url", this.b);
        cd.a(n, "call_to_action_url", this.c);
        cd.a(n, "insert_timestamp_millis", Long.valueOf(this.e));
        cd.a(n, "status", this.f);
        cd.a(n, "update_timestamp_millis", Long.valueOf(this.h));
        cd.a(n, "eventTrackings", this.d == null ? null : Integer.valueOf(this.d.size()));
        return n;
    }

    public /* synthetic */ Object o() {
        return k();
    }

    public final /* bridge */ /* synthetic */ Object p() {
        return (String) this.q;
    }
}