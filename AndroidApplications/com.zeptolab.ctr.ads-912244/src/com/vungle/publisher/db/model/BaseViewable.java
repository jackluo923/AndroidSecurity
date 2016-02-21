package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.vungle.log.Logger;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.am;
import com.vungle.publisher.am.a;
import com.vungle.publisher.am.b;
import com.vungle.publisher.cd;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public abstract class BaseViewable extends ak implements am {
    protected String a;
    protected a b;
    protected b c;
    protected Ad d;

    public static abstract class Factory extends ak.a {
        protected Factory() {
        }

        private BaseViewable a(BaseViewable baseViewable, boolean z) {
            Cursor query;
            Throwable th;
            BaseViewable baseViewable2 = null;
            Integer num = (Integer) baseViewable.q;
            b bVar = baseViewable.c;
            try {
                String str;
                BaseViewable baseViewable3;
                String str2 = baseViewable.a;
                String toString;
                if (num != null) {
                    toString = new StringBuilder("id: ").append(num).toString();
                    Logger.d(Logger.DATABASE_TAG, new StringBuilder("fetching ").append(bVar).append(" by ").append(toString).toString());
                    query = this.b.getReadableDatabase().query("viewable", null, "id = ?", new String[]{String.valueOf(num)}, null, null, null);
                    str = toString;
                } else if (str2 == null) {
                    Logger.w(Logger.DATABASE_TAG, new StringBuilder("unable to fetch ").append(bVar).append(": no id or ad_id").toString());
                    BaseViewable baseViewable4 = baseViewable2;
                    baseViewable3 = baseViewable2;
                } else {
                    toString = new StringBuilder("ad_id ").append(str2).toString();
                    Logger.d(Logger.DATABASE_TAG, new StringBuilder("fetching ").append(bVar).append(" by ").append(toString).toString());
                    query = this.b.getReadableDatabase().query("viewable", null, "ad_id = ? AND type = ?", new String[]{str2, String.valueOf(bVar)}, null, null, null);
                    str = toString;
                }
                if (query != null) {
                    try {
                        int count = query.getCount();
                        switch (count) {
                            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                                Logger.v(Logger.DATABASE_TAG, new StringBuilder("no ").append(bVar).append(" found for ").append(str).toString());
                                break;
                            case GoogleScorer.CLIENT_GAMES:
                                Logger.d(Logger.DATABASE_TAG, new StringBuilder("have ").append(bVar).append(" for ").append(str).toString());
                                query.moveToFirst();
                                baseViewable2 = a(baseViewable, query, z);
                                break;
                            default:
                                throw new SQLException(count + " " + bVar + " records for " + str);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                }
                Logger.v(Logger.DATABASE_TAG, new StringBuilder("fetched ").append(baseViewable2).toString());
                return baseViewable2;
            } catch (Throwable th3) {
                th = th3;
                baseViewable3 = baseViewable2;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }

        protected abstract BaseViewable a();

        protected BaseViewable a(Ad ad, RequestAdResponse requestAdResponse) {
            if (requestAdResponse == null) {
                return null;
            }
            BaseViewable a = a();
            a.d = ad;
            a.a = requestAdResponse.f();
            a.b = a.a;
            return a;
        }

        protected BaseViewable a(BaseViewable baseViewable, Cursor cursor, boolean z) {
            baseViewable.q = ai.d(cursor, AnalyticsEvent.EVENT_ID);
            baseViewable.a = ai.f(cursor, "ad_id");
            baseViewable.b = (a) ai.a(cursor, "status", a.class);
            baseViewable.c = (b) ai.a(cursor, AnalyticsSQLiteHelper.EVENT_LIST_TYPE, b.class);
            return baseViewable;
        }

        protected final BaseViewable a(String str, b bVar, boolean z) {
            BaseViewable a = a();
            a.a = str;
            a.c = bVar;
            return a(a, z);
        }

        protected /* synthetic */ ak b_() {
            return a();
        }
    }

    protected BaseViewable() {
    }

    protected ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(AnalyticsEvent.EVENT_ID, (Integer) this.q);
            contentValues.put("ad_id", this.a);
            contentValues.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, this.c.toString());
        }
        contentValues.put("status", this.b.toString());
        return contentValues;
    }

    public final void a(a aVar) {
        Logger.v(Logger.PREPARE_TAG, new StringBuilder("setting ").append(this.c).append(" status from ").append(this.b).append(" to ").append(aVar).append(" for ad_id: ").append(this.a).toString());
        this.b = aVar;
    }

    protected final String b() {
        return "viewable";
    }

    protected abstract com.vungle.publisher.db.model.Ad.Factory d();

    public final Integer e() {
        return (Integer) this.q;
    }

    public final String f() {
        return this.a;
    }

    public final Ad g() {
        if (this.d == null) {
            this.d = (Ad) d().a(this.a, false);
        }
        return this.d;
    }

    public final a h() {
        return this.b;
    }

    public final b i() {
        return this.c;
    }

    protected StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, "ad_id", this.a);
        cd.a(n, "status", this.b);
        cd.a(n, AnalyticsSQLiteHelper.EVENT_LIST_TYPE, this.c);
        return n;
    }

    public final /* bridge */ /* synthetic */ Object p() {
        return (Integer) this.q;
    }

    protected final String y() {
        return String.valueOf(this.c);
    }
}