package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.admarvel.android.ads.Constants;
import com.admarvel.android.nativeads.AdMarvelNativeAd;
import com.google.android.gms.tagmanager.DataLayer;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.cd;
import java.util.Iterator;
import java.util.List;

public abstract class AdReportEvent extends ak {
    AdPlay a;
    public a b;
    public long c;
    public String d;
    private String e;

    public static abstract class Factory extends com.vungle.publisher.ak.a {
        protected Factory() {
        }

        protected final /* synthetic */ ak a(ak akVar, Cursor cursor, boolean z) {
            AdReportEvent adReportEvent = (AdReportEvent) akVar;
            adReportEvent.b = (com.vungle.publisher.db.model.AdReportEvent.a) ai.a(cursor, DataLayer.EVENT_KEY, com.vungle.publisher.db.model.AdReportEvent.a.class);
            adReportEvent.q = ai.d(cursor, AnalyticsEvent.EVENT_ID);
            adReportEvent.c = ai.e(cursor, "insert_timestamp_millis").longValue();
            adReportEvent.d = ai.f(cursor, Constants.NATIVE_AD_VALUE_ELEMENT);
            return adReportEvent;
        }

        protected final AdReportEvent a(AdPlay adPlay, com.vungle.publisher.db.model.AdReportEvent.a aVar, Object obj) {
            if (adPlay == null) {
                throw new IllegalArgumentException("null ad_play");
            } else if (aVar == null) {
                throw new IllegalArgumentException("null event");
            } else {
                AdReportEvent adReportEvent = (AdReportEvent) b_();
                adReportEvent.a = adPlay;
                adReportEvent.b = aVar;
                adReportEvent.d = obj == null ? null : obj.toString();
                return adReportEvent;
            }
        }

        protected final List a(AdPlay adPlay) {
            if (adPlay == null) {
                throw new IllegalArgumentException("null ad_play");
            }
            if (((Integer) adPlay.p()) == null) {
                throw new IllegalArgumentException("null play_id");
            }
            List a = a("ad_report_event", "play_id = ?", new String[]{num.toString()}, "insert_timestamp_millis ASC");
            Iterator it = a.iterator();
            while (it.hasNext()) {
                ((AdReportEvent) it.next()).a = adPlay;
            }
            return a;
        }
    }

    public enum a {
        back,
        close,
        custom,
        download,
        cta,
        muted,
        preRollWatch("watch"),
        replay,
        unmuted("un-muted"),
        videoerror,
        videoreset,
        volume,
        volumedown,
        volumeup;
        private final String o;

        static {
            a = new com.vungle.publisher.db.model.AdReportEvent.a("back", 0);
            b = new com.vungle.publisher.db.model.AdReportEvent.a("close", 1);
            c = new com.vungle.publisher.db.model.AdReportEvent.a("custom", 2);
            d = new com.vungle.publisher.db.model.AdReportEvent.a(AdTrackerConstants.GOAL_DOWNLOAD, 3);
            e = new com.vungle.publisher.db.model.AdReportEvent.a(AdMarvelNativeAd.FIELD_CTA, 4);
            f = new com.vungle.publisher.db.model.AdReportEvent.a("muted", 5);
            String str = "watch";
            g = new com.vungle.publisher.db.model.AdReportEvent.a("preRollWatch", 6, "watch");
            h = new com.vungle.publisher.db.model.AdReportEvent.a("replay", 7);
            str = "un-muted";
            i = new com.vungle.publisher.db.model.AdReportEvent.a("unmuted", 8, "un-muted");
            j = new com.vungle.publisher.db.model.AdReportEvent.a("videoerror", 9);
            k = new com.vungle.publisher.db.model.AdReportEvent.a("videoreset", 10);
            l = new com.vungle.publisher.db.model.AdReportEvent.a("volume", 11);
            m = new com.vungle.publisher.db.model.AdReportEvent.a("volumedown", 12);
            n = new com.vungle.publisher.db.model.AdReportEvent.a("volumeup", 13);
            p = new com.vungle.publisher.db.model.AdReportEvent.a[]{a, b, c, d, e, f, g, h, i, j, k, l, m, n};
        }

        private a(String str) {
            this.o = str;
        }

        public final String toString() {
            return this.o == null ? name() : this.o;
        }
    }

    protected AdReportEvent() {
    }

    private Integer d() {
        return this.a == null ? null : (Integer) this.a.p();
    }

    protected final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            String str = "insert_timestamp_millis";
            long currentTimeMillis = System.currentTimeMillis();
            this.c = currentTimeMillis;
            contentValues.put(str, Long.valueOf(currentTimeMillis));
            contentValues.put("play_id", d());
            contentValues.put(DataLayer.EVENT_KEY, cd.a(this.b));
            contentValues.put(Constants.NATIVE_AD_VALUE_ELEMENT, this.d);
        }
        return contentValues;
    }

    protected final String b() {
        return "ad_report_event";
    }

    protected final StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, "play_id", d());
        cd.a(n, DataLayer.EVENT_KEY, this.b);
        cd.a(n, "insert_timestamp_millis", Long.valueOf(this.c));
        cd.a(n, Constants.NATIVE_AD_VALUE_ELEMENT, this.d);
        return n;
    }

    public String toString() {
        String str = this.e;
        if (str != null) {
            return str;
        }
        str = super.toString();
        this.e = str;
        return str;
    }
}