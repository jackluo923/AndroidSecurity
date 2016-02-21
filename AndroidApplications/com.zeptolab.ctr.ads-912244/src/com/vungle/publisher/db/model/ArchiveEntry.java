package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.vungle.log.Logger;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.ak.a;
import com.vungle.publisher.cd;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class ArchiveEntry extends ak {
    LocalArchive a;
    String b;
    Integer c;
    @Inject
    Factory d;
    @Inject
    Factory e;

    @Singleton
    public static class Factory extends a {
        @Inject
        Provider a;

        final int a(Integer num) {
            if (num == null) {
                throw new IllegalArgumentException("null viewable_id");
            }
            int delete = this.b.getWritableDatabase().delete("archive_entry", "viewable_id = ?", new String[]{String.valueOf(num)});
            Logger.d(Logger.DATABASE_TAG, new StringBuilder("deleted ").append(delete).append(" archive_entry rows for viewable_id ").append(num).toString());
            return delete;
        }

        protected final /* synthetic */ ak a(ak akVar, Cursor cursor, boolean z) {
            ArchiveEntry archiveEntry = (ArchiveEntry) akVar;
            archiveEntry.q = ai.d(cursor, AnalyticsEvent.EVENT_ID);
            archiveEntry.b = ai.f(cursor, "relative_path");
            archiveEntry.c = ai.d(cursor, "size");
            return archiveEntry;
        }

        final ArchiveEntry a() {
            return (ArchiveEntry) this.a.get();
        }

        final ArchiveEntry[] a(LocalArchive localArchive) {
            if (localArchive == null) {
                throw new IllegalArgumentException("null archive");
            }
            Integer e = localArchive.e();
            if (e == null) {
                throw new IllegalArgumentException("null viewable_id");
            }
            Cursor query;
            try {
                Logger.d(Logger.DATABASE_TAG, new StringBuilder("fetching archive_entry records by viewable_id ").append(e).toString());
                query = this.b.getReadableDatabase().query("archive_entry", null, "viewable_id = ?", new String[]{String.valueOf(e)}, null, null, null);
                try {
                    ArchiveEntry[] archiveEntryArr = new ArchiveEntry[query.getCount()];
                    int i = 0;
                    while (query.moveToNext()) {
                        ak a = a();
                        b(a, query, false);
                        a.a = localArchive;
                        archiveEntryArr[i] = a;
                        Logger.v(Logger.DATABASE_TAG, new StringBuilder("fetched ").append(a).toString());
                        i++;
                    }
                    if (query != null) {
                        query.close();
                    }
                    return archiveEntryArr;
                } catch (Throwable th) {
                    th = th;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                Throwable th3 = th2;
                query = null;
                if (query != null) {
                    query.close();
                }
                throw th3;
            }
        }

        protected final /* bridge */ /* synthetic */ Object[] b(int i) {
            return new Integer[i];
        }

        protected final /* synthetic */ ak b_() {
            return a();
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }
    }

    protected ArchiveEntry() {
    }

    private Integer d() {
        return this.a == null ? null : this.a.e();
    }

    protected final ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (this.q != null) {
            contentValues.put(AnalyticsEvent.EVENT_ID, (Integer) this.q);
        }
        contentValues.put("viewable_id", d());
        contentValues.put("relative_path", this.b);
        contentValues.put("size", this.c);
        return contentValues;
    }

    protected final /* bridge */ /* synthetic */ a a_() {
        return this.d;
    }

    protected final String b() {
        return "archive_entry";
    }

    public final int l() {
        if (this.q != null) {
            return super.l();
        }
        Integer d = d();
        Logger.d(Logger.DATABASE_TAG, new StringBuilder("updating archive_entry by viewable_id ").append(d).append(", relative_path ").append(this.b).toString());
        int updateWithOnConflict = this.r.getWritableDatabase().updateWithOnConflict("archive_entry", a(false), "viewable_id = ? AND relative_path = ?", new String[]{String.valueOf(d), str}, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        v();
        return updateWithOnConflict;
    }

    protected final StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, "viewable_id", d());
        cd.a(n, "relative_path", this.b);
        cd.a(n, "size", this.c);
        return n;
    }
}