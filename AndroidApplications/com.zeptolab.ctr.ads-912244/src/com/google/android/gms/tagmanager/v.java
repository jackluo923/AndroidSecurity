package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.internal.fl;
import com.google.android.gms.internal.fn;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

class v implements c {
    private static final String UD;
    private fl Ty;
    private final Executor UE;
    private a UF;
    private int UG;
    private final Context mContext;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ List UH;
        final /* synthetic */ long UI;

        AnonymousClass_1(List list, long j) {
            this.UH = list;
            this.UI = j;
        }

        public void run() {
            v.this.b(this.UH, this.UI);
        }
    }

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ com.google.android.gms.tagmanager.DataLayer.c.a UK;

        AnonymousClass_2(com.google.android.gms.tagmanager.DataLayer.c.a aVar) {
            this.UK = aVar;
        }

        public void run() {
            this.UK.b(v.this.iT());
        }
    }

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ String UL;

        AnonymousClass_3(String str) {
            this.UL = str;
        }

        public void run() {
            v.this.bj(this.UL);
        }
    }

    class a extends SQLiteOpenHelper {
        a(Context context, String str) {
            super(context, str, null, 1);
        }

        private void a_(SQLiteDatabase sQLiteDatabase) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM datalayer WHERE 0", null);
            Set hashSet = new HashSet();
            String[] columnNames = rawQuery.getColumnNames();
            int i = 0;
            while (i < columnNames.length) {
                hashSet.add(columnNames[i]);
                i++;
            }
            rawQuery.close();
            if (!hashSet.remove(Constants.NATIVE_AD_KEY_ELEMENT) || !hashSet.remove(Constants.NATIVE_AD_VALUE_ELEMENT) || !hashSet.remove("ID") || !hashSet.remove("expires")) {
                throw new SQLiteException("Database column missing");
            } else if (!hashSet.isEmpty()) {
                throw new SQLiteException("Database has extra columns");
            }
        }

        private boolean a_(String str, SQLiteDatabase sQLiteDatabase) {
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
            SQLiteDatabase sQLiteDatabase = null;
            try {
                sQLiteDatabase = super.getWritableDatabase();
            } catch (SQLiteException e) {
                v.this.mContext.getDatabasePath("google_tagmanager.db").delete();
            }
            return sQLiteDatabase == null ? super.getWritableDatabase() : sQLiteDatabase;
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
            if (a("datalayer", sQLiteDatabase)) {
                a(sQLiteDatabase);
            } else {
                sQLiteDatabase.execSQL(UD);
            }
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    private static class b {
        final String UA;
        final byte[] UM;

        b(String str, byte[] bArr) {
            this.UA = str;
            this.UM = bArr;
        }

        public String toString() {
            return "KeyAndSerialized: key = " + this.UA + " serialized hash = " + Arrays.hashCode(this.UM);
        }
    }

    static {
        UD = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", new Object[]{"datalayer", "ID", Constants.NATIVE_AD_KEY_ELEMENT, Constants.NATIVE_AD_VALUE_ELEMENT, "expires"});
    }

    public v(Context context) {
        this(context, fn.eI(), "google_tagmanager.db", 2000, Executors.newSingleThreadExecutor());
    }

    v(Context context, fl flVar, String str, int i, Executor executor) {
        this.mContext = context;
        this.Ty = flVar;
        this.UG = i;
        this.UE = executor;
        this.UF = new a(this.mContext, str);
    }

    private SQLiteDatabase G(String str) {
        try {
            return this.UF.getWritableDatabase();
        } catch (SQLiteException e) {
            bh.w(str);
            return null;
        }
    }

    private synchronized void b(List list, long j) {
        try {
            long currentTimeMillis = this.Ty.currentTimeMillis();
            t(currentTimeMillis);
            bQ(list.size());
            c(list, currentTimeMillis + j);
            iW();
        } catch (Throwable th) {
        }
    }

    private void bQ(int i) {
        int iV = iV() - this.UG + i;
        if (iV > 0) {
            List bR = bR(iV);
            bh.u("DataLayer store full, deleting " + bR.size() + " entries to make room.");
            g((String[]) bR.toArray(new String[0]));
        }
    }

    private List bR(int i) {
        SQLiteException sQLiteException;
        Throwable th;
        List arrayList = new ArrayList();
        if (i <= 0) {
            bh.w("Invalid maxEntries specified. Skipping.");
            return arrayList;
        } else {
            SQLiteDatabase G = G("Error opening database for peekEntryIds.");
            if (G == null) {
                return arrayList;
            }
            Cursor query;
            try {
                query = G.query("datalayer", new String[]{"ID"}, null, null, null, null, String.format("%s ASC", new Object[]{"ID"}), Integer.toString(i));
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
                    bh.w("Error in peekEntries fetching entryIds: " + sQLiteException.getMessage());
                    if (query != null) {
                        query.close();
                    }
                    return arrayList;
                }
            } catch (SQLiteException e2) {
                sQLiteException = e2;
                query = null;
                try {
                    bh.w("Error in peekEntries fetching entryIds: " + sQLiteException.getMessage());
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

    private void bj(String str) {
        SQLiteDatabase G = G("Error opening database for clearKeysWithPrefix.");
        if (G != null) {
            try {
                bh.v("Cleared " + G.delete("datalayer", "key = ? OR key LIKE ?", new String[]{str, str + ".%"}) + " items");
                iW();
            } catch (SQLiteException e) {
                bh.w("Error deleting entries with key prefix: " + str + " (" + e + ").");
                iW();
            }
        }
    }

    private List c(List list) {
        List arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            arrayList.add(new a(bVar.UA, j(bVar.UM)));
        }
        return arrayList;
    }

    private void c(List list, long j) {
        SQLiteDatabase G = G("Error opening database for writeEntryToDatabase.");
        if (G != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                ContentValues contentValues = new ContentValues();
                contentValues.put("expires", Long.valueOf(j));
                contentValues.put(Constants.NATIVE_AD_KEY_ELEMENT, bVar.UA);
                contentValues.put(Constants.NATIVE_AD_VALUE_ELEMENT, bVar.UM);
                G.insert("datalayer", null, contentValues);
            }
        }
    }

    private List d(List list) {
        List arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            arrayList.add(new b(aVar.UA, j(aVar.UB)));
        }
        return arrayList;
    }

    private void g(String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            SQLiteDatabase G = G("Error opening database for deleteEntries.");
            if (G != null) {
                try {
                    G.delete("datalayer", String.format("%s in (%s)", new Object[]{"ID", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))}), strArr);
                } catch (SQLiteException e) {
                    bh.w("Error deleting entries " + Arrays.toString(strArr));
                }
            }
        }
    }

    private List iT() {
        t(this.Ty.currentTimeMillis());
        List c = c(iU());
        iW();
        return c;
    }

    private List iU() {
        SQLiteDatabase G = G("Error opening database for loadSerialized.");
        List arrayList = new ArrayList();
        if (G == null) {
            return arrayList;
        }
        Cursor query = G.query("datalayer", new String[]{Constants.NATIVE_AD_KEY_ELEMENT, Constants.NATIVE_AD_VALUE_ELEMENT}, null, null, null, null, "ID", null);
        while (query.moveToNext()) {
            arrayList.add(new b(query.getString(0), query.getBlob(1)));
        }
        query.close();
        return arrayList;
    }

    private int iV() {
        int i = 0;
        SQLiteDatabase G = G("Error opening database for getNumStoredEntries.");
        if (G != null) {
            try {
                Cursor rawQuery = G.rawQuery("SELECT COUNT(*) from datalayer", null);
                if (rawQuery.moveToFirst()) {
                    i = (int) rawQuery.getLong(0);
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
            } catch (SQLiteException e) {
                try {
                    bh.w("Error getting numStoredEntries");
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

    private void iW() {
        try {
            this.UF.close();
        } catch (SQLiteException e) {
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.Object j(byte[] r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.v.j(byte[]):java.lang.Object");
        /*
        r5 = this;
        r0 = 0;
        r2 = new java.io.ByteArrayInputStream;
        r2.<init>(r6);
        r1 = new java.io.ObjectInputStream;	 Catch:{ IOException -> 0x0018, ClassNotFoundException -> 0x0025, all -> 0x0032 }
        r1.<init>(r2);	 Catch:{ IOException -> 0x0018, ClassNotFoundException -> 0x0025, all -> 0x0032 }
        r0 = r1.readObject();	 Catch:{ IOException -> 0x0045, ClassNotFoundException -> 0x0043, all -> 0x0041 }
        if (r1 == 0) goto L_0x0014;
    L_0x0011:
        r1.close();	 Catch:{ IOException -> 0x0047 }
    L_0x0014:
        r2.close();	 Catch:{ IOException -> 0x0047 }
    L_0x0017:
        return r0;
    L_0x0018:
        r1 = move-exception;
        r1 = r0;
    L_0x001a:
        if (r1 == 0) goto L_0x001f;
    L_0x001c:
        r1.close();	 Catch:{ IOException -> 0x0023 }
    L_0x001f:
        r2.close();	 Catch:{ IOException -> 0x0023 }
        goto L_0x0017;
    L_0x0023:
        r1 = move-exception;
        goto L_0x0017;
    L_0x0025:
        r1 = move-exception;
        r1 = r0;
    L_0x0027:
        if (r1 == 0) goto L_0x002c;
    L_0x0029:
        r1.close();	 Catch:{ IOException -> 0x0030 }
    L_0x002c:
        r2.close();	 Catch:{ IOException -> 0x0030 }
        goto L_0x0017;
    L_0x0030:
        r1 = move-exception;
        goto L_0x0017;
    L_0x0032:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
    L_0x0036:
        if (r1 == 0) goto L_0x003b;
    L_0x0038:
        r1.close();	 Catch:{ IOException -> 0x003f }
    L_0x003b:
        r2.close();	 Catch:{ IOException -> 0x003f }
    L_0x003e:
        throw r0;
    L_0x003f:
        r1 = move-exception;
        goto L_0x003e;
    L_0x0041:
        r0 = move-exception;
        goto L_0x0036;
    L_0x0043:
        r3 = move-exception;
        goto L_0x0027;
    L_0x0045:
        r3 = move-exception;
        goto L_0x001a;
    L_0x0047:
        r1 = move-exception;
        goto L_0x0017;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private byte[] j(java.lang.Object r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.v.j(java.lang.Object):byte[]");
        /*
        r5 = this;
        r0 = 0;
        r2 = new java.io.ByteArrayOutputStream;
        r2.<init>();
        r1 = new java.io.ObjectOutputStream;	 Catch:{ IOException -> 0x001b, all -> 0x0028 }
        r1.<init>(r2);	 Catch:{ IOException -> 0x001b, all -> 0x0028 }
        r1.writeObject(r6);	 Catch:{ IOException -> 0x0039, all -> 0x0037 }
        r0 = r2.toByteArray();	 Catch:{ IOException -> 0x0039, all -> 0x0037 }
        if (r1 == 0) goto L_0x0017;
    L_0x0014:
        r1.close();	 Catch:{ IOException -> 0x003b }
    L_0x0017:
        r2.close();	 Catch:{ IOException -> 0x003b }
    L_0x001a:
        return r0;
    L_0x001b:
        r1 = move-exception;
        r1 = r0;
    L_0x001d:
        if (r1 == 0) goto L_0x0022;
    L_0x001f:
        r1.close();	 Catch:{ IOException -> 0x0026 }
    L_0x0022:
        r2.close();	 Catch:{ IOException -> 0x0026 }
        goto L_0x001a;
    L_0x0026:
        r1 = move-exception;
        goto L_0x001a;
    L_0x0028:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
    L_0x002c:
        if (r1 == 0) goto L_0x0031;
    L_0x002e:
        r1.close();	 Catch:{ IOException -> 0x0035 }
    L_0x0031:
        r2.close();	 Catch:{ IOException -> 0x0035 }
    L_0x0034:
        throw r0;
    L_0x0035:
        r1 = move-exception;
        goto L_0x0034;
    L_0x0037:
        r0 = move-exception;
        goto L_0x002c;
    L_0x0039:
        r3 = move-exception;
        goto L_0x001d;
    L_0x003b:
        r1 = move-exception;
        goto L_0x001a;
        */
    }

    private void t(long j) {
        SQLiteDatabase G = G("Error opening database for deleteOlderThan.");
        if (G != null) {
            try {
                bh.v("Deleted " + G.delete("datalayer", "expires <= ?", new String[]{Long.toString(j)}) + " expired items");
            } catch (SQLiteException e) {
                bh.w("Error deleting old entries.");
            }
        }
    }

    public void a(com.google.android.gms.tagmanager.DataLayer.c.a aVar) {
        this.UE.execute(new AnonymousClass_2(aVar));
    }

    public void a(List list, long j) {
        this.UE.execute(new AnonymousClass_1(d(list), j));
    }

    public void bi(String str) {
        this.UE.execute(new AnonymousClass_3(str));
    }
}