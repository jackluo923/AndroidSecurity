package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.log.Logger;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.ak.a;
import com.vungle.publisher.cd;
import java.util.Iterator;
import java.util.List;

public abstract class AdPlay extends ak {
    public AdReport a;
    public Integer b;
    public Long c;
    List d;

    public static abstract class Factory extends a {
        protected Factory() {
        }

        protected final /* synthetic */ ak a(ak akVar, Cursor cursor, boolean z) {
            AdPlay adPlay = (AdPlay) akVar;
            adPlay.q = ai.d(cursor, AnalyticsEvent.EVENT_ID);
            adPlay.b = ai.d(cursor, "watched_millis");
            adPlay.c = ai.e(cursor, "start_millis");
            if (z) {
                adPlay.d = a().a(adPlay);
            }
            return adPlay;
        }

        protected final AdPlay a(AdReport adReport) {
            AdPlay adPlay = (AdPlay) b_();
            adPlay.a = adReport;
            return adPlay;
        }

        protected abstract com.vungle.publisher.db.model.AdReportEvent.Factory a();

        protected final List a(AdReport adReport, boolean z) {
            if (adReport == null) {
                throw new IllegalArgumentException("null ad_report");
            }
            if (((Integer) adReport.p()) == null) {
                throw new IllegalArgumentException("null report_id");
            }
            List a = a("ad_play", "report_id = ?", new String[]{num.toString()}, "start_millis ASC", z);
            Iterator it = a.iterator();
            while (it.hasNext()) {
                ((AdPlay) it.next()).a = adReport;
            }
            return a;
        }
    }

    protected AdPlay() {
    }

    private List e() {
        List list = this.d;
        if (list != null) {
            return list;
        }
        list = a().a(this);
        this.d = list;
        return list;
    }

    private Integer f() {
        return this.a == null ? null : (Integer) this.a.p();
    }

    protected final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("report_id", f());
            contentValues.put("start_millis", this.c);
        } else {
            contentValues.put("watched_millis", this.b);
        }
        return contentValues;
    }

    protected abstract com.vungle.publisher.db.model.AdReportEvent.Factory a();

    public final AdReportEvent a(AdReportEvent.a aVar, Object obj) {
        List e = e();
        Logger.d(Logger.REPORT_TAG, new StringBuilder("adding report event ").append(aVar).append(obj == null ? AdTrackerConstants.BLANK : new StringBuilder(", value ").append(obj).append(" for ").append(x()).toString()).toString());
        AdReportEvent a = a().a(this, aVar, obj);
        a.o();
        e.add(a);
        return a;
    }

    protected final String b() {
        return "ad_play";
    }

    public final AdReportEvent[] d() {
        List e = e();
        return (AdReportEvent[]) e.toArray(a().c(e.size()));
    }

    protected final StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, "report_id", f());
        cd.a(n, "start_millis", this.c);
        cd.a(n, "watched_millis", this.b);
        return n;
    }
}