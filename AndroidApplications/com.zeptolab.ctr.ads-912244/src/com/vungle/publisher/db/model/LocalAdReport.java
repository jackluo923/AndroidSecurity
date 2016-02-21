package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.vungle.log.Logger;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.ak.a;
import com.vungle.publisher.cd;
import com.vungle.publisher.db.model.Ad.b;
import com.vungle.publisher.db.model.AdReport.BaseFactory;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class LocalAdReport extends AdReport {
    Long s;
    @Inject
    Factory t;
    @Inject
    Factory u;

    @Singleton
    public static class Factory extends BaseFactory {
        @Inject
        com.vungle.publisher.db.model.LocalAd.Factory c;
        @Inject
        Factory d;
        @Inject
        Provider e;

        protected Factory() {
        }

        private LocalAdReport a(AdReport adReport, Cursor cursor, boolean z) {
            super.a(adReport, cursor, z);
            adReport.s = ai.e(cursor, "download_end_millis");
            return adReport;
        }

        protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.Ad.Factory a() {
            return this.c;
        }

        protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.AdPlay.Factory b() {
            return this.d;
        }

        protected final /* bridge */ /* synthetic */ Object[] b(int i) {
            return new Integer[i];
        }

        protected final /* synthetic */ ak b_() {
            return (LocalAdReport) this.e.get();
        }

        protected final b c() {
            return b.a;
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }
    }

    protected LocalAdReport() {
    }

    protected final ContentValues a(boolean z) {
        ContentValues a = super.a(z);
        a.put("download_end_millis", this.s);
        return a;
    }

    protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.AdPlay.Factory a() {
        return this.u;
    }

    protected final /* bridge */ /* synthetic */ a a_() {
        return this.t;
    }

    public final void d(Long l) {
        this.s = l;
        Logger.d(Logger.REPORT_TAG, new StringBuilder("setting ad download end millis ").append(l).append(" (duration ").append(z()).append(" ms) for ").append(x()).toString());
        w();
    }

    public final StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, "download_end_millis", this.s);
        return n;
    }

    public final int z() {
        if (this.s == null) {
            Logger.w(Logger.REPORT_TAG, new StringBuilder("download end millis null for ").append(x()).toString());
            return -1;
        } else if (this.s.longValue() < 0) {
            return 0;
        } else {
            if (this.d != null) {
                return (int) (this.s.longValue() - this.d.longValue());
            }
            Logger.w(Logger.REPORT_TAG, new StringBuilder("insert timestamp millis null for ").append(x()).toString());
            return -1;
        }
    }
}