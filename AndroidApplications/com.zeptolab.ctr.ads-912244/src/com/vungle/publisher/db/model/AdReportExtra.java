package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.model.Video.Fields;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.log.Logger;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.ak.a;
import com.vungle.publisher.cd;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class AdReportExtra extends ak {
    Integer a;
    public String b;
    public String c;
    @Inject
    Factory d;

    @Singleton
    public static class Factory extends a {
        @Inject
        Provider a;

        protected static AdReportExtra[] a(int i) {
            return new AdReportExtra[i];
        }

        final int a(Integer num) {
            int delete = this.b.getWritableDatabase().delete("ad_report_extra", "ad_report_id = ?", new String[]{String.valueOf(num)});
            Logger.v(Logger.DATABASE_TAG, new StringBuilder("deleted ").append(delete).append(" ad_report_extra records for adReportId: ").append(num).toString());
            return delete;
        }

        protected final /* synthetic */ ak a(ak akVar, Cursor cursor, boolean z) {
            AdReportExtra adReportExtra = (AdReportExtra) akVar;
            adReportExtra.q = ai.d(cursor, AnalyticsEvent.EVENT_ID);
            adReportExtra.a = ai.d(cursor, "ad_report_id");
            adReportExtra.b = ai.f(cursor, Fields.NAME);
            adReportExtra.c = ai.f(cursor, Constants.NATIVE_AD_VALUE_ELEMENT);
            return adReportExtra;
        }

        final AdReportExtra a() {
            return (AdReportExtra) this.a.get();
        }

        final Map b(Integer num) {
            Throwable th;
            Cursor cursor = null;
            if (num == null) {
                Logger.w(Logger.DATABASE_TAG, new StringBuilder("failed to fetch ad_report_extra records by ad_report_id ").append(num).toString());
                return null;
            } else {
                try {
                    Logger.d(Logger.DATABASE_TAG, new StringBuilder("fetching ad_report_extra records by ad_report_id ").append(num).toString());
                    Cursor query = this.b.getReadableDatabase().query("ad_report_extra", null, "ad_report_id = ?", new String[]{String.valueOf(num)}, null, null, null);
                    try {
                        Map hashMap;
                        int count = query.getCount();
                        Logger.v(Logger.DATABASE_TAG, count + " ad_report_extra for ad_report_id " + num);
                        if (count > 0) {
                            hashMap = new HashMap();
                            while (query.moveToNext()) {
                                ak a = a();
                                b(a, query, false);
                                hashMap.put(a.b, a);
                            }
                        } else {
                            hashMap = null;
                        }
                        if (query == null) {
                            return hashMap;
                        }
                        query.close();
                        return hashMap;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        }

        protected final /* synthetic */ ak b_() {
            return a();
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }
    }

    protected final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("ad_report_id", this.a);
        }
        contentValues.put(Fields.NAME, this.b);
        contentValues.put(Constants.NATIVE_AD_VALUE_ELEMENT, this.c);
        return contentValues;
    }

    protected final /* bridge */ /* synthetic */ a a_() {
        return this.d;
    }

    protected final String b() {
        return "ad_report_extra";
    }

    protected final StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, "ad_report_id", this.a);
        cd.a(n, Fields.NAME, this.b);
        cd.a(n, Constants.NATIVE_AD_VALUE_ELEMENT, this.c);
        return n;
    }
}