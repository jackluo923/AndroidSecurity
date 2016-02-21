package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.vungle.log.Logger;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.al;
import com.vungle.publisher.am;
import com.vungle.publisher.am.b;
import com.vungle.publisher.ba;
import com.vungle.publisher.cd;
import com.vungle.publisher.cj;
import com.vungle.publisher.db.model.Ad.a;
import com.vungle.publisher.inject.annotations.AdTempDirectory;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class LocalAd extends Ad {
    int m;
    Long n;
    String o;
    LocalArchive s;
    public int t;
    LocalArchive u;
    long v;
    boolean w;
    boolean x;
    @Inject
    Factory y;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[b.values().length];
            try {
                a[b.c.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[b.a.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            a[b.b.ordinal()] = 3;
        }
    }

    @Singleton
    public static class Factory extends com.vungle.publisher.db.model.Ad.Factory {
        @Inject
        @AdTempDirectory
        Provider c;
        @Inject
        Factory d;
        @Inject
        cj e;
        @Inject
        Provider f;
        @Inject
        com.vungle.publisher.db.model.LocalVideo.Factory g;

        private int a(List list, boolean z) {
            List arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                LocalAd localAd = (LocalAd) it.next();
                int i = localAd.m;
                localAd.m = i + 1;
                if (localAd.A() || i >= 3) {
                    arrayList.add(localAd);
                } else {
                    Logger.w(Logger.DATABASE_TAG, new StringBuilder("unable to delete files for ").append(localAd.x()).append(" attempt ").append(i).toString());
                    localAd.l();
                }
            }
            return z ? arrayList.size() : super.a(arrayList);
        }

        private LocalAd a(LocalAd localAd, Cursor cursor, boolean z) {
            super.a((Ad)localAd, cursor, z);
            localAd.m = ai.c(cursor, "delete_local_content_attempts");
            localAd.n = ai.e(cursor, "expiration_timestamp_seconds");
            localAd.a(ai.f(cursor, "parent_path"));
            localAd.t = ai.c(cursor, "prepare_retry_count");
            localAd.v = System.currentTimeMillis();
            if (z) {
                a(localAd, z);
                b(localAd, z);
            }
            return localAd;
        }

        private LocalAd f() {
            return (LocalAd) this.f.get();
        }

        public final int a(Ad ad, RequestAdResponse requestAdResponse) {
            ad.n = requestAdResponse.s;
            return super.a(ad, requestAdResponse);
        }

        public final int a(List list) {
            return a(list, false);
        }

        public final LocalAd a(RequestLocalAdResponse requestLocalAdResponse) {
            LocalAd localAd = (LocalAd) super.a((RequestAdResponse)requestLocalAdResponse);
            localAd.n = requestLocalAdResponse.s;
            localAd.a((String) this.c.get());
            localAd.u = this.d.a(localAd, requestLocalAdResponse, b.c);
            localAd.s = this.d.a(localAd, requestLocalAdResponse, b.b);
            localAd.a(a.a);
            localAd.g = Ad.b.a;
            return localAd;
        }

        public final LocalAd a(String str) {
            return (LocalAd) super.a(Ad.b.a, str);
        }

        final LocalArchive a(LocalAd localAd, boolean z) {
            if (localAd.w) {
                return localAd.s;
            }
            LocalArchive localArchive = (LocalArchive) this.d.a((String) localAd.q, b.b, z);
            localAd.s = localArchive;
            localAd.w = true;
            return localArchive;
        }

        protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.Video.Factory a() {
            return this.g;
        }

        final LocalArchive b(LocalAd localAd, boolean z) {
            if (localAd.x) {
                return localAd.u;
            }
            LocalArchive localArchive = (LocalArchive) this.d.a((String) localAd.q, b.c, z);
            localAd.u = localArchive;
            localAd.x = true;
            return localArchive;
        }

        protected final /* bridge */ /* synthetic */ Object[] b(int i) {
            return new String[i];
        }

        protected final /* synthetic */ ak b_() {
            return f();
        }

        public final LocalAd c() {
            LocalAd localAd;
            Cursor cursor;
            Throwable th;
            Throwable th2;
            Cursor cursor2 = null;
            try {
                Cursor cursor3;
                String toString = new StringBuilder("type = ").append(Ad.b.a).append(" AND status = ").append(a.e).append(" ORDER BY received_timestamp_millis LIMIT 1").toString();
                Logger.d(Logger.DATABASE_TAG, new StringBuilder("fetching ad by ").append(toString).toString());
                Cursor query = this.b.getReadableDatabase().query(AdDatabaseHelper.TABLE_AD, null, "type = ? AND status = ?", new String[]{Ad.b.a.toString(), a.e.toString()}, null, null, "received_timestamp_millis", "1");
                try {
                    int count = query.getCount();
                    switch (count) {
                        case IabHelper.BILLING_RESPONSE_RESULT_OK:
                            Logger.d(Logger.DATABASE_TAG, new StringBuilder("no ad found by ").append(toString).toString());
                            cursor3 = cursor2;
                            break;
                        case GoogleScorer.CLIENT_GAMES:
                            if (query.moveToFirst()) {
                                LocalAd a = a(f(), query, true);
                                try {
                                    if (a.z()) {
                                        localAd = a;
                                    } else {
                                        cursor3 = cursor2;
                                    }
                                } catch (Exception e) {
                                    localAd = a;
                                    cursor = query;
                                    th = e;
                                    Logger.e(Logger.DATABASE_TAG, new StringBuilder("error getting next ").append(Ad.b.a).append(" ad").toString(), th);
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    return localAd;
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    cursor2 = query;
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    throw th2;
                                }
                            } else {
                                cursor3 = cursor2;
                            }
                            break;
                        default:
                            throw new SQLException(count + " ad(s) found by " + toString);
                    }
                    if (query != null) {
                        query.close();
                    }
                } catch (Exception e2) {
                    cursor = query;
                    th = e2;
                    cursor3 = cursor2;
                    try {
                        Logger.e(Logger.DATABASE_TAG, new StringBuilder("error getting next ").append(Ad.b.a).append(" ad").toString(), th);
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th4) {
                        th2 = th4;
                        cursor2 = cursor;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        throw th2;
                    }
                    return localAd;
                } catch (Throwable th32) {
                    th2 = th32;
                    cursor2 = query;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th2;
                }
            } catch (Exception e3) {
                th = e3;
                cursor = cursor2;
                cursor3 = cursor2;
                Logger.e(Logger.DATABASE_TAG, new StringBuilder("error getting next ").append(Ad.b.a).append(" ad").toString(), th);
                if (cursor != null) {
                    cursor.close();
                }
                return localAd;
            } catch (Throwable th5) {
                th2 = th5;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th2;
            }
            return localAd;
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }

        public final int d() {
            Logger.d(Logger.DATABASE_TAG, new StringBuilder("deleting expired ").append(Ad.b.a).append(" ad records without pending reports").toString());
            String[] strArr = new String[]{Ad.b.a.toString(), String.valueOf(System.currentTimeMillis() / 1000)};
            List a = a(AdDatabaseHelper.TABLE_AD, "type = ? AND expiration_timestamp_seconds <= ? AND id NOT IN (SELECT DISTINCT ad_id FROM ad_report)", strArr, null);
            List a2 = a(AdDatabaseHelper.TABLE_AD, "type = ? AND expiration_timestamp_seconds <= ? AND id IN (SELECT DISTINCT ad_id FROM ad_report)", strArr, null);
            return a(a2, true) + a(a, false);
        }

        public final int e() {
            List a = a(AdDatabaseHelper.TABLE_AD, "type = ? AND id NOT IN (SELECT DISTINCT ad_id FROM ad_report) ORDER BY insert_timestamp_millis DESC LIMIT ? OFFSET ?", new String[]{Ad.b.a.toString(), Integer.toString(Integer.MAX_VALUE), Integer.toString(GoogleScorer.CLIENT_APPSTATE)}, null);
            Logger.d(Logger.DATABASE_TAG, new StringBuilder("deleting ").append(a.size()).append(" extra ").append(Ad.b.a).append(" ad records to reach target size 4").toString());
            return a(a);
        }
    }

    protected LocalAd() {
    }

    private LocalArchive B() {
        return this.y.b(this, false);
    }

    public final boolean A() {
        return ba.a(q());
    }

    protected final ContentValues a(boolean z) {
        ContentValues a = super.a(z);
        a.put("delete_local_content_attempts", Integer.valueOf(this.m));
        a.put("expiration_timestamp_seconds", this.n);
        a.put("parent_path", this.o);
        a.put("prepare_retry_count", Integer.valueOf(this.t));
        a.put("received_timestamp_millis", Long.valueOf(this.v));
        return a;
    }

    public final /* synthetic */ am a(b bVar) {
        return b(bVar);
    }

    protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.Ad.Factory a() {
        return this.y;
    }

    public final void a(a aVar) {
        a aVar2 = this.f;
        super.a(aVar);
        if (aVar != aVar2 && aVar != a.b) {
            Logger.v(Logger.PREPARE_TAG, new StringBuilder("resetting prepare_retry_count from ").append(this.t).append(" to 0 for ").append(x()).toString());
            this.t = 0;
        }
    }

    public final void a(String str) {
        this.o = str;
        this.j = null;
    }

    protected final /* bridge */ /* synthetic */ ak.a a_() {
        return this.y;
    }

    public final al b(b bVar) {
        switch (AnonymousClass_1.a[bVar.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return B();
            case GoogleScorer.CLIENT_PLUS:
                return (al) j();
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return r();
            default:
                return (al) super.a(bVar);
        }
    }

    public final String k() {
        String k = super.k();
        if (this.s != null) {
            this.s.o();
        }
        if (this.u != null) {
            this.u.o();
        }
        return k;
    }

    public final int l() {
        int l = super.l();
        if (l == 1) {
            if (this.u != null) {
                this.u.l();
            }
            if (this.s != null) {
                this.s.l();
            }
        }
        return l;
    }

    protected final StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, "delete_local_content_attempts", Integer.valueOf(this.m));
        cd.a(n, "expiration_timestamp_seconds", this.n);
        cd.a(n, "parent_path", this.o);
        cd.a(n, "prepare_retry_count", Integer.valueOf(this.t));
        cd.a(n, "received_timestamp_millis", Long.valueOf(this.v));
        return n;
    }

    public final /* synthetic */ Object o() {
        return k();
    }

    public final String q() {
        if (this.j == null) {
            this.j = ba.a(new Object[]{this.o, ((String) this.q).replace("|", "_")});
        }
        return this.j;
    }

    public final LocalArchive r() {
        return this.y.a(this, false);
    }

    public final al[] s() {
        List arrayList = new ArrayList();
        LocalArchive B = B();
        if (B != null) {
            arrayList.add(B);
        }
        LocalVideo localVideo = (LocalVideo) j();
        if (localVideo != null) {
            arrayList.add(localVideo);
        }
        B = r();
        if (B != null) {
            arrayList.add(B);
        }
        return (al[]) arrayList.toArray(new al[arrayList.size()]);
    }

    public final boolean t() {
        boolean z = false;
        LocalArchive B = B();
        LocalVideo localVideo = (LocalVideo) j();
        LocalArchive r = r();
        int i = B != null;
        int i2 = localVideo != null;
        int i3 = r != null;
        if (!(i == 0 && i2 == 0 && i3 == 0)) {
            z = true;
        }
        String x = x();
        if (z) {
            if (i != 0) {
                Logger.v(Logger.PREPARE_TAG, x + " has " + b.c + ": " + B.l.c);
            }
            if (i2 != 0) {
                Logger.v(Logger.PREPARE_TAG, x + " has " + b.a + ": " + localVideo.f.c);
            }
            if (i3 != 0) {
                Logger.v(Logger.PREPARE_TAG, x + " has " + b.b + ": " + r.l.c);
            }
        } else {
            a(a.c);
        }
        return z;
    }

    final boolean z() {
        int i = 0;
        boolean z = true;
        al[] s = s();
        int length = s.length;
        int i2 = 0;
        while (i2 < length) {
            if (!s[i2].B()) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            a(a.a);
            al[] s2 = s();
            int length2 = s2.length;
            while (i < length2) {
                s2[i].a(am.a.a);
                i++;
            }
            l();
        }
        return z;
    }
}