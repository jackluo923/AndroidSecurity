package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.millennialmedia.android.MMRequest;
import com.vungle.log.Logger;
import com.vungle.publisher.ak;
import com.vungle.publisher.al;
import com.vungle.publisher.am.b;
import com.vungle.publisher.ba;
import com.vungle.publisher.bb;
import com.vungle.publisher.bb.a;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class LocalArchive extends BaseViewable implements al {
    ArchiveEntry[] e;
    boolean f;
    boolean g;
    boolean h;
    @Inject
    Factory i;
    @Inject
    com.vungle.publisher.db.model.ArchiveEntry.Factory j;
    @Inject
    com.vungle.publisher.db.model.LocalAd.Factory k;
    @Inject
    LocalViewableDelegate l;

    final class AnonymousClass_1 implements a {
        final /* synthetic */ List a;

        AnonymousClass_1(List list) {
            this.a = list;
        }

        public final void a(File file, long j) {
            Logger.v(Logger.PREPARE_TAG, new StringBuilder("extracted ").append(file).append(": ").append(j).append(" bytes").toString());
            List list = this.a;
            com.vungle.publisher.db.model.ArchiveEntry.Factory factory = LocalArchive.this.j;
            LocalArchive localArchive = LocalArchive.this;
            int i = (int) j;
            ArchiveEntry a = factory.a();
            a.a = localArchive;
            LocalArchive.this = file.getName();
            a.c = Integer.valueOf(i);
            list.add(a);
        }
    }

    static /* synthetic */ class AnonymousClass_2 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[b.values().length];
            try {
                a[b.b.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            a[b.c.ordinal()] = 2;
        }
    }

    @Singleton
    static class Factory extends com.vungle.publisher.db.model.BaseViewable.Factory {
        @Inject
        Provider a;
        @Inject
        Factory c;

        protected Factory() {
        }

        private LocalArchive a(BaseViewable baseViewable, Cursor cursor, boolean z) {
            super.a(baseViewable, cursor, z);
            baseViewable.l.a(cursor);
            if (z) {
                baseViewable.q();
            }
            return baseViewable;
        }

        private LocalArchive c() {
            LocalArchive localArchive = (LocalArchive) this.a.get();
            localArchive.l = this.c.a(localArchive);
            return localArchive;
        }

        protected final /* synthetic */ BaseViewable a() {
            return c();
        }

        final LocalArchive a(Ad ad, RequestAdResponse requestAdResponse, b bVar) {
            if (requestAdResponse == null) {
                return null;
            }
            String str;
            LocalArchive localArchive;
            switch (AnonymousClass_2.a[bVar.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    str = requestAdResponse.t;
                    if (str == null) {
                        return null;
                    }
                    localArchive = (LocalArchive) super.a(ad, requestAdResponse);
                    localArchive.c = bVar;
                    localArchive.a(str);
                    return localArchive;
                case GoogleScorer.CLIENT_PLUS:
                    str = requestAdResponse.u;
                    if (str == null) {
                        return null;
                    }
                    localArchive = (LocalArchive) super.a(ad, requestAdResponse);
                    localArchive.c = bVar;
                    localArchive.a(str);
                    return localArchive;
                default:
                    throw new IllegalArgumentException(new StringBuilder("cannot create archive of type: ").append(bVar).toString());
            }
        }

        protected final /* bridge */ /* synthetic */ Object[] b(int i) {
            return new Integer[i];
        }

        protected final /* synthetic */ ak b_() {
            return c();
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }
    }

    protected LocalArchive() {
    }

    private boolean D() {
        boolean z = false;
        try {
            List arrayList = new ArrayList();
            bb.a(this.l.b(), new File(r()), new a[]{new AnonymousClass_1(arrayList)});
            a((ArchiveEntry[]) arrayList.toArray(new ArchiveEntry[arrayList.size()]), true);
            return true;
        } catch (IOException e) {
            Logger.w(Logger.PREPARE_TAG, new StringBuilder("error extracting ").append(this.l.b()).toString(), e);
            return z;
        }
    }

    private void a(ArchiveEntry[] archiveEntryArr, boolean z) {
        this.e = archiveEntryArr;
        this.g = z;
        this.f = true;
    }

    public final boolean A() {
        return (this.l.g() && D()) ? C() : false;
    }

    public final boolean B() {
        return this.l.f();
    }

    public final boolean C() {
        ArchiveEntry[] q = q();
        int length = q.length;
        int i = 0;
        while (i < length) {
            boolean z;
            ArchiveEntry archiveEntry = q[i];
            String a = ba.a(new Object[]{archiveEntry.a.r(), archiveEntry.b});
            File file = a == null ? null : new File(a);
            if (archiveEntry.c == null) {
                Logger.w(Logger.PREPARE_TAG, file + " size is null");
                z = false;
            } else {
                boolean z2;
                int length2 = (int) file.length();
                int intValue = archiveEntry.c.intValue();
                z2 = length2 == intValue;
                if (z2) {
                    Logger.v(Logger.PREPARE_TAG, file + " size verified " + length2);
                    z = z2;
                } else {
                    Logger.d(Logger.PREPARE_TAG, file + " size " + length2 + " doesn't match expected " + intValue);
                    z = file.exists();
                }
            }
            if (!z) {
                return false;
            }
            i++;
        }
        return true;
    }

    protected final ContentValues a(boolean z) {
        ContentValues a = super.a(z);
        this.l.a(a);
        return a;
    }

    public final void a(Integer num) {
        this.l.d = num;
    }

    public final void a(String str) {
        this.l.c = str;
    }

    protected final /* bridge */ /* synthetic */ ak.a a_() {
        return this.i;
    }

    protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.Ad.Factory d() {
        return this.k;
    }

    public final String j() {
        return this.l.c;
    }

    public final String k() {
        return MMRequest.KEY_ZIP_CODE;
    }

    public final int l() {
        int l = super.l();
        if (l == 1) {
            if (this.h) {
                this.j.a((Integer) this.q);
                String r = r();
                Logger.d(Logger.DATABASE_TAG, new StringBuilder("deleting ").append(this.c).append(" directory ").append(r).toString());
                if (ba.a(r())) {
                    Logger.v(Logger.DATABASE_TAG, new StringBuilder("deleting ").append(this.c).append(" directory ").append(r).toString());
                    this.e = null;
                    this.h = true;
                } else {
                    Logger.w(Logger.DATABASE_TAG, new StringBuilder("failed to delete ").append(this.c).append(" directory ").append(r).toString());
                }
                Logger.v(Logger.DATABASE_TAG, "resetting areArchiveEntriesDeleted = false");
                this.h = false;
            } else if (this.g) {
                com.vungle.publisher.db.model.ArchiveEntry.Factory factory = this.j;
                com.vungle.publisher.db.model.ArchiveEntry.Factory.a(this.e);
                Logger.v(Logger.DATABASE_TAG, "resetting areArchiveEntriesNew = false");
                this.g = false;
            }
        }
        return l;
    }

    protected final StringBuilder n() {
        StringBuilder n = super.n();
        this.l.a(n);
        return n;
    }

    public final ArchiveEntry[] q() {
        if (!this.f) {
            a(this.j.a(this), false);
        }
        return this.e;
    }

    public final String r() {
        return ba.a(new Object[]{this.l.a(), this.c});
    }

    public final String s() {
        return this.l.c();
    }

    public final void t() {
        this.l.d();
    }

    public final boolean z() {
        return this.l.e();
    }
}