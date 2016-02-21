package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.internal.fl;
import com.google.android.gms.internal.fn;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.http.impl.client.DefaultHttpClient;

class cb implements at {
    private static final String ua;
    private fl Ty;
    private final b VL;
    private volatile ab VM;
    private final au VN;
    private final Context mContext;
    private final String ud;
    private long uf;
    private final int ug;

    class a implements com.google.android.gms.tagmanager.db.a {
        a() {
        }

        public void a_(ap apVar) {
            cb.this.u(apVar.ci());
        }

        public void b(ap apVar) {
            cb.this.u(apVar.ci());
            bh.v("Permanent failure dispatching hitId: " + apVar.ci());
        }

        public void c(ap apVar) {
            long je = apVar.je();
            if (je == 0) {
                cb.this.c(apVar.ci(), cb.this.Ty.currentTimeMillis());
            } else if (je + 14400000 < cb.this.Ty.currentTimeMillis()) {
                cb.this.u(apVar.ci());
                bh.v("Giving up on failed hitId: " + apVar.ci());
            }
        }
    }

    class b extends SQLiteOpenHelper {
        private boolean ui;
        private long uj;

        b(Context context, String str) {
            super(context, str, null, 1);
            this.uj = 0;
        }

        private void a(SQLiteDatabase sQLiteDatabase) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM gtm_hits WHERE 0", null);
            Set hashSet = new HashSet();
            String[] columnNames = rawQuery.getColumnNames();
            int i = 0;
            while (i < columnNames.length) {
                hashSet.add(columnNames[i]);
                i++;
            }
            rawQuery.close();
            if (!hashSet.remove("hit_id") || !hashSet.remove("hit_url") || !hashSet.remove("hit_time") || !hashSet.remove("hit_first_send_time")) {
                throw new SQLiteException("Database column missing");
            } else if (!hashSet.isEmpty()) {
                throw new SQLiteException("Database has extra columns");
            }
        }

        private boolean a(String str, SQLiteDatabase sQLiteDatabase) {
            Cursor cursor;
            boolean z = false;
            Cursor cursor2 = null;
            try {
                Cursor query = sQLiteDatabase.query("SQLITE_MASTER", new String[]{Fields.NAME}, "name=?", new String[]{str}, null, null, null);
                try {
                    boolean moveToFirst = query.moveToFirst();
                    if (query == null) {
                        return moveToFirst;
                    }
                    query.close();
                    return moveToFirst;
                } catch (SQLiteException e) {
                    cursor = query;
                    bh.w("Error querying for table " + str);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return z;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = query;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (SQLiteException e2) {
                cursor = cursor2;
                try {
                    bh.w("Error querying for table " + str);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return z;
                } catch (Throwable th2) {
                    cursor2 = cursor;
                    th = th2;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                Throwable th4 = th3;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th4;
            }
        }

        public SQLiteDatabase getWritableDatabase() {
            if (!this.ui || this.uj + 3600000 <= cb.this.Ty.currentTimeMillis()) {
                SQLiteDatabase sQLiteDatabase = null;
                this.ui = true;
                this.uj = cb.this.Ty.currentTimeMillis();
                try {
                    sQLiteDatabase = super.getWritableDatabase();
                } catch (SQLiteException e) {
                    cb.this.mContext.getDatabasePath(cb.this.ud).delete();
                }
                if (sQLiteDatabase == null) {
                    sQLiteDatabase = super.getWritableDatabase();
                }
                this.ui = false;
                return sQLiteDatabase;
            } else {
                throw new SQLiteException("Database creation failed");
            }
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            ak.B(sQLiteDatabase.getPath());
        }

        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (VERSION.SDK_INT < 15) {
                Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
                rawQuery.moveToFirst();
                rawQuery.close();
            }
            if (a("gtm_hits", sQLiteDatabase)) {
                a(sQLiteDatabase);
            } else {
                sQLiteDatabase.execSQL(ua);
            }
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    static {
        ua = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", new Object[]{"gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time"});
    }

    cb(au auVar, Context context) {
        this(auVar, context, "gtm_urls.db", 2000);
    }

    cb(au auVar, Context context, String str, int i) {
        this.mContext = context.getApplicationContext();
        this.ud = str;
        this.VN = auVar;
        this.Ty = fn.eI();
        this.VL = new b(this.mContext, this.ud);
        this.VM = new db(new DefaultHttpClient(), this.mContext, new a());
        this.uf = 0;
        this.ug = i;
    }

    private SQLiteDatabase G(String str) {
        try {
            return this.VL.getWritableDatabase();
        } catch (SQLiteException e) {
            bh.w(str);
            return null;
        }
    }

    private void c(long j, long j2) {
        SQLiteDatabase G = G("Error opening database for getNumStoredHits.");
        if (G != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_first_send_time", Long.valueOf(j2));
            try {
                G.update("gtm_hits", contentValues, "hit_id=?", new String[]{String.valueOf(j)});
            } catch (SQLiteException e) {
                bh.w("Error setting HIT_FIRST_DISPATCH_TIME for hitId: " + j);
                u(j);
            }
        }
    }

    private void co() {
        int cq = cq() - this.ug + 1;
        if (cq > 0) {
            List s = s(cq);
            bh.v("Store full, deleting " + s.size() + " hits to make room.");
            a((String[]) s.toArray(new String[0]));
        }
    }

    private void f(long j, String str) {
        SQLiteDatabase G = G("Error opening database for putHit");
        if (G != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_time", Long.valueOf(j));
            contentValues.put("hit_url", str);
            contentValues.put("hit_first_send_time", Integer.valueOf(0));
            try {
                G.insert("gtm_hits", null, contentValues);
                this.VN.p(false);
            } catch (SQLiteException e) {
                bh.w("Error storing hit");
            }
        }
    }

    private void u(long j) {
        a(new String[]{String.valueOf(j)});
    }

    void a(String[] strArr) {
        boolean z = true;
        if (strArr != null && strArr.length != 0) {
            SQLiteDatabase G = G("Error opening database for deleteHits.");
            if (G != null) {
                try {
                    G.delete("gtm_hits", String.format("HIT_ID in (%s)", new Object[]{TextUtils.join(",", Collections.nCopies(strArr.length, "?"))}), strArr);
                    au auVar = this.VN;
                    if (cq() != 0) {
                        z = false;
                    }
                    auVar.p(z);
                } catch (SQLiteException e) {
                    bh.w("Error deleting hits");
                }
            }
        }
    }

    public void bp() {
        bh.v("GTM Dispatch running...");
        if (this.VM.bA()) {
            List t = t(ApiEventType.API_MRAID_PLAY_VIDEO);
            if (t.isEmpty()) {
                bh.v("...nothing to dispatch");
                this.VN.p(true);
            } else {
                this.VM.e(t);
                if (js() > 0) {
                    cy.kh().bp();
                }
            }
        }
    }

    int cp() {
        boolean z = true;
        long currentTimeMillis = this.Ty.currentTimeMillis();
        if (currentTimeMillis <= this.uf + 86400000) {
            return 0;
        }
        this.uf = currentTimeMillis;
        SQLiteDatabase G = G("Error opening database for deleteStaleHits.");
        if (G == null) {
            return 0;
        }
        int delete = G.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(this.Ty.currentTimeMillis() - 2592000000L)});
        au auVar = this.VN;
        if (cq() != 0) {
            z = false;
        }
        auVar.p(z);
        return delete;
    }

    int cq() {
        int i = 0;
        SQLiteDatabase G = G("Error opening database for getNumStoredHits.");
        if (G != null) {
            try {
                Cursor rawQuery = G.rawQuery("SELECT COUNT(*) from gtm_hits", null);
                if (rawQuery.moveToFirst()) {
                    i = (int) rawQuery.getLong(0);
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
            } catch (SQLiteException e) {
                try {
                    bh.w("Error getting numStoredHits");
                    if (0 != 0) {
                        null.close();
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        null.close();
                    }
                }
            }
        }
        return i;
    }

    public void e(long j, String str) {
        cp();
        co();
        f(j, str);
    }

    int js() {
        int count;
        Cursor cursor;
        Cursor cursor2 = null;
        SQLiteDatabase G = G("Error opening database for getNumStoredHits.");
        if (G == null) {
            return 0;
        }
        try {
            Cursor query = G.query("gtm_hits", new String[]{"hit_id", "hit_first_send_time"}, "hit_first_send_time=0", null, null, null, null);
            try {
                count = query.getCount();
                if (query != null) {
                    query.close();
                }
            } catch (SQLiteException e) {
                cursor = query;
                bh.w("Error getting num untried hits");
                if (cursor == null) {
                    cursor.close();
                    count = 0;
                } else {
                    count = 0;
                }
                return count;
            } catch (Throwable th) {
                th = th;
                cursor2 = query;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            cursor = null;
            try {
                bh.w("Error getting num untried hits");
                if (cursor == null) {
                    count = 0;
                } else {
                    cursor.close();
                    count = 0;
                }
            } catch (Throwable th2) {
                cursor2 = cursor;
                th = th2;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
            return count;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th4;
        }
        return count;
    }

    List s(int i) {
        SQLiteException sQLiteException;
        Throwable th;
        List arrayList = new ArrayList();
        if (i <= 0) {
            bh.w("Invalid maxHits specified. Skipping");
            return arrayList;
        } else {
            SQLiteDatabase G = G("Error opening database for peekHitIds.");
            if (G == null) {
                return arrayList;
            }
            Cursor query;
            try {
                query = G.query("gtm_hits", new String[]{"hit_id"}, null, null, null, null, String.format("%s ASC", new Object[]{"hit_id"}), Integer.toString(i));
                try {
                    if (query.moveToFirst()) {
                        do {
                            arrayList.add(String.valueOf(query.getLong(0)));
                        } while (query.moveToNext());
                    }
                    if (query != null) {
                        query.close();
                    }
                } catch (SQLiteException e) {
                    sQLiteException = e;
                    bh.w("Error in peekHits fetching hitIds: " + sQLiteException.getMessage());
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                }
            } catch (SQLiteException e2) {
                sQLiteException = e2;
                query = null;
                try {
                    bh.w("Error in peekHits fetching hitIds: " + sQLiteException.getMessage());
                    if (query != null) {
                        query.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
                return arrayList;
            } catch (Throwable th3) {
                th = th3;
                query = null;
                if (query != null) {
                    query.close();
                }
                throw th;
            }
            return arrayList;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List t(int r16) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.cb.t(int):java.util.List");
        /*
        r15 = this;
        r10 = new java.util.ArrayList;
        r10.<init>();
        r1 = "Error opening database for peekHits";
        r1 = r15.G(r1);
        if (r1 != 0) goto L_0x000f;
    L_0x000d:
        r1 = r10;
    L_0x000e:
        return r1;
    L_0x000f:
        r11 = 0;
        r2 = "gtm_hits";
        r3 = 3;
        r3 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x00c8, all -> 0x00ed }
        r4 = 0;
        r5 = "hit_id";
        r3[r4] = r5;	 Catch:{ SQLiteException -> 0x00c8, all -> 0x00ed }
        r4 = 1;
        r5 = "hit_time";
        r3[r4] = r5;	 Catch:{ SQLiteException -> 0x00c8, all -> 0x00ed }
        r4 = 2;
        r5 = "hit_first_send_time";
        r3[r4] = r5;	 Catch:{ SQLiteException -> 0x00c8, all -> 0x00ed }
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r8 = "%s ASC";
        r9 = 1;
        r9 = new java.lang.Object[r9];	 Catch:{ SQLiteException -> 0x00c8, all -> 0x00ed }
        r12 = 0;
        r13 = "hit_id";
        r9[r12] = r13;	 Catch:{ SQLiteException -> 0x00c8, all -> 0x00ed }
        r8 = java.lang.String.format(r8, r9);	 Catch:{ SQLiteException -> 0x00c8, all -> 0x00ed }
        r9 = java.lang.Integer.toString(r16);	 Catch:{ SQLiteException -> 0x00c8, all -> 0x00ed }
        r12 = r1.query(r2, r3, r4, r5, r6, r7, r8, r9);	 Catch:{ SQLiteException -> 0x00c8, all -> 0x00ed }
        r11 = new java.util.ArrayList;	 Catch:{ SQLiteException -> 0x016f, all -> 0x0169 }
        r11.<init>();	 Catch:{ SQLiteException -> 0x016f, all -> 0x0169 }
        r2 = r12.moveToFirst();	 Catch:{ SQLiteException -> 0x0175, all -> 0x0169 }
        if (r2 == 0) goto L_0x0066;
    L_0x0049:
        r2 = new com.google.android.gms.tagmanager.ap;	 Catch:{ SQLiteException -> 0x0175, all -> 0x0169 }
        r3 = 0;
        r3 = r12.getLong(r3);	 Catch:{ SQLiteException -> 0x0175, all -> 0x0169 }
        r5 = 1;
        r5 = r12.getLong(r5);	 Catch:{ SQLiteException -> 0x0175, all -> 0x0169 }
        r7 = 2;
        r7 = r12.getLong(r7);	 Catch:{ SQLiteException -> 0x0175, all -> 0x0169 }
        r2.<init>(r3, r5, r7);	 Catch:{ SQLiteException -> 0x0175, all -> 0x0169 }
        r11.add(r2);	 Catch:{ SQLiteException -> 0x0175, all -> 0x0169 }
        r2 = r12.moveToNext();	 Catch:{ SQLiteException -> 0x0175, all -> 0x0169 }
        if (r2 != 0) goto L_0x0049;
    L_0x0066:
        if (r12 == 0) goto L_0x006b;
    L_0x0068:
        r12.close();
    L_0x006b:
        r10 = 0;
        r2 = "gtm_hits";
        r3 = 2;
        r3 = new java.lang.String[r3];	 Catch:{ SQLiteException -> 0x0167 }
        r4 = 0;
        r5 = "hit_id";
        r3[r4] = r5;	 Catch:{ SQLiteException -> 0x0167 }
        r4 = 1;
        r5 = "hit_url";
        r3[r4] = r5;	 Catch:{ SQLiteException -> 0x0167 }
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r8 = "%s ASC";
        r9 = 1;
        r9 = new java.lang.Object[r9];	 Catch:{ SQLiteException -> 0x0167 }
        r13 = 0;
        r14 = "hit_id";
        r9[r13] = r14;	 Catch:{ SQLiteException -> 0x0167 }
        r8 = java.lang.String.format(r8, r9);	 Catch:{ SQLiteException -> 0x0167 }
        r9 = java.lang.Integer.toString(r16);	 Catch:{ SQLiteException -> 0x0167 }
        r2 = r1.query(r2, r3, r4, r5, r6, r7, r8, r9);	 Catch:{ SQLiteException -> 0x0167 }
        r1 = r2.moveToFirst();	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        if (r1 == 0) goto L_0x00c0;
    L_0x009b:
        r3 = r10;
    L_0x009c:
        r0 = r2;
        r0 = (android.database.sqlite.SQLiteCursor) r0;	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        r1 = r0;
        r1 = r1.getWindow();	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        r1 = r1.getNumRows();	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        if (r1 <= 0) goto L_0x00f4;
    L_0x00aa:
        r1 = r11.get(r3);	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        r1 = (com.google.android.gms.tagmanager.ap) r1;	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        r4 = 1;
        r4 = r2.getString(r4);	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        r1.F(r4);	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
    L_0x00b8:
        r1 = r3 + 1;
        r3 = r2.moveToNext();	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        if (r3 != 0) goto L_0x017b;
    L_0x00c0:
        if (r2 == 0) goto L_0x00c5;
    L_0x00c2:
        r2.close();
    L_0x00c5:
        r1 = r11;
        goto L_0x000e;
    L_0x00c8:
        r1 = move-exception;
        r2 = r1;
        r3 = r11;
        r1 = r10;
    L_0x00cc:
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x016c }
        r4.<init>();	 Catch:{ all -> 0x016c }
        r5 = "Error in peekHits fetching hitIds: ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x016c }
        r2 = r2.getMessage();	 Catch:{ all -> 0x016c }
        r2 = r4.append(r2);	 Catch:{ all -> 0x016c }
        r2 = r2.toString();	 Catch:{ all -> 0x016c }
        com.google.android.gms.tagmanager.bh.w(r2);	 Catch:{ all -> 0x016c }
        if (r3 == 0) goto L_0x000e;
    L_0x00e8:
        r3.close();
        goto L_0x000e;
    L_0x00ed:
        r1 = move-exception;
    L_0x00ee:
        if (r11 == 0) goto L_0x00f3;
    L_0x00f0:
        r11.close();
    L_0x00f3:
        throw r1;
    L_0x00f4:
        r4 = "HitString for hitId %d too large.  Hit will be deleted.";
        r1 = 1;
        r5 = new java.lang.Object[r1];	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        r6 = 0;
        r1 = r11.get(r3);	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        r1 = (com.google.android.gms.tagmanager.ap) r1;	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        r7 = r1.ci();	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        r1 = java.lang.Long.valueOf(r7);	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        r5[r6] = r1;	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        r1 = java.lang.String.format(r4, r5);	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        com.google.android.gms.tagmanager.bh.w(r1);	 Catch:{ SQLiteException -> 0x0112, all -> 0x0164 }
        goto L_0x00b8;
    L_0x0112:
        r1 = move-exception;
        r12 = r2;
    L_0x0114:
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x015d }
        r2.<init>();	 Catch:{ all -> 0x015d }
        r3 = "Error in peekHits fetching hit url: ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x015d }
        r1 = r1.getMessage();	 Catch:{ all -> 0x015d }
        r1 = r2.append(r1);	 Catch:{ all -> 0x015d }
        r1 = r1.toString();	 Catch:{ all -> 0x015d }
        com.google.android.gms.tagmanager.bh.w(r1);	 Catch:{ all -> 0x015d }
        r2 = new java.util.ArrayList;	 Catch:{ all -> 0x015d }
        r2.<init>();	 Catch:{ all -> 0x015d }
        r3 = 0;
        r4 = r11.iterator();	 Catch:{ all -> 0x015d }
    L_0x0138:
        r1 = r4.hasNext();	 Catch:{ all -> 0x015d }
        if (r1 == 0) goto L_0x0150;
    L_0x013e:
        r1 = r4.next();	 Catch:{ all -> 0x015d }
        r1 = (com.google.android.gms.tagmanager.ap) r1;	 Catch:{ all -> 0x015d }
        r5 = r1.jf();	 Catch:{ all -> 0x015d }
        r5 = android.text.TextUtils.isEmpty(r5);	 Catch:{ all -> 0x015d }
        if (r5 == 0) goto L_0x0159;
    L_0x014e:
        if (r3 == 0) goto L_0x0158;
    L_0x0150:
        if (r12 == 0) goto L_0x0155;
    L_0x0152:
        r12.close();
    L_0x0155:
        r1 = r2;
        goto L_0x000e;
    L_0x0158:
        r3 = 1;
    L_0x0159:
        r2.add(r1);	 Catch:{ all -> 0x015d }
        goto L_0x0138;
    L_0x015d:
        r1 = move-exception;
    L_0x015e:
        if (r12 == 0) goto L_0x0163;
    L_0x0160:
        r12.close();
    L_0x0163:
        throw r1;
    L_0x0164:
        r1 = move-exception;
        r12 = r2;
        goto L_0x015e;
    L_0x0167:
        r1 = move-exception;
        goto L_0x0114;
    L_0x0169:
        r1 = move-exception;
        r11 = r12;
        goto L_0x00ee;
    L_0x016c:
        r1 = move-exception;
        r11 = r3;
        goto L_0x00ee;
    L_0x016f:
        r1 = move-exception;
        r2 = r1;
        r3 = r12;
        r1 = r10;
        goto L_0x00cc;
    L_0x0175:
        r1 = move-exception;
        r2 = r1;
        r3 = r12;
        r1 = r11;
        goto L_0x00cc;
    L_0x017b:
        r3 = r1;
        goto L_0x009c;
        */
    }
}