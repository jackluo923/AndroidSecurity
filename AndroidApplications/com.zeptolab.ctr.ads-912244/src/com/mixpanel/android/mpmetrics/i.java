package com.mixpanel.android.mpmetrics;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class i {
    public static final String a = "data";
    public static final String b = "created_at";
    private static final String c = "MixpanelAPI";
    private static final String d = "mixpanel";
    private static final int e = 4;
    private static final String f;
    private static final String g;
    private static final String h;
    private static final String i;
    private final a j;

    private static class a extends SQLiteOpenHelper {
        private final File a;

        a(Context context, String str) {
            super(context, str, null, 4);
            this.a = context.getDatabasePath(str);
        }

        public void a_() {
            close();
            this.a.delete();
        }

        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(f);
            sQLiteDatabase.execSQL(g);
            sQLiteDatabase.execSQL(h);
            sQLiteDatabase.execSQL(i);
        }

        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + com.mixpanel.android.mpmetrics.i.b.a.a());
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + com.mixpanel.android.mpmetrics.i.b.b.a());
            sQLiteDatabase.execSQL(f);
            sQLiteDatabase.execSQL(g);
            sQLiteDatabase.execSQL(h);
            sQLiteDatabase.execSQL(i);
        }
    }

    public enum b {
        EVENTS("events"),
        PEOPLE("people");
        private final String c;

        static {
            String str = "events";
            a = new com.mixpanel.android.mpmetrics.i.b("EVENTS", 0, "events");
            str = "people";
            b = new com.mixpanel.android.mpmetrics.i.b("PEOPLE", 1, "people");
            d = new com.mixpanel.android.mpmetrics.i.b[]{a, b};
        }

        private b(String str) {
            this.c = str;
        }

        public String a() {
            return this.c;
        }
    }

    static {
        f = "CREATE TABLE " + b.a.a() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, " + a + " STRING NOT NULL, " + b + " INTEGER NOT NULL);";
        g = "CREATE TABLE " + b.b.a() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, " + a + " STRING NOT NULL, " + b + " INTEGER NOT NULL);";
        h = "CREATE INDEX IF NOT EXISTS time_idx ON " + b.a.a() + " (" + b + ");";
        i = "CREATE INDEX IF NOT EXISTS time_idx ON " + b.b.a() + " (" + b + ");";
    }

    public i(Context context) {
        this(context, d);
    }

    public i(Context context, String str) {
        this.j = new a(context, str);
    }

    public int a(JSONObject jSONObject, b bVar) {
        Cursor rawQuery;
        Throwable th;
        Cursor cursor = null;
        String a = bVar.a();
        int i = -1;
        try {
            SQLiteDatabase writableDatabase = this.j.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put(a, jSONObject.toString());
            contentValues.put(b, Long.valueOf(System.currentTimeMillis()));
            writableDatabase.insert(a, null, contentValues);
            rawQuery = writableDatabase.rawQuery("SELECT COUNT(*) FROM " + a, null);
            try {
                rawQuery.moveToFirst();
                i = rawQuery.getInt(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                this.j.close();
            } catch (SQLiteException e) {
                th = e;
                Log.e(c, "addJSON " + a + " FAILED. Deleting DB.", th);
                if (rawQuery == null) {
                    rawQuery.close();
                } else {
                    cursor = rawQuery;
                }
                try {
                    this.j.a();
                    if (cursor != null) {
                        cursor.close();
                    }
                    this.j.close();
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    this.j.close();
                    throw th;
                }
                return i;
            }
        } catch (SQLiteException e2) {
            th = e2;
            rawQuery = cursor;
            try {
                Throwable th3;
                Log.e(c, "addJSON " + a + " FAILED. Deleting DB.", th3);
                if (rawQuery == null) {
                    cursor = rawQuery;
                } else {
                    rawQuery.close();
                }
                this.j.a();
                if (cursor != null) {
                    cursor.close();
                }
                this.j.close();
            } catch (Throwable th4) {
                th = th4;
                cursor = rawQuery;
                if (cursor != null) {
                    cursor.close();
                }
                this.j.close();
                throw th;
            }
            return i;
        }
        return i;
    }

    public void a() {
        this.j.a();
    }

    public void a(long j, b bVar) {
        String a = bVar.a();
        try {
            this.j.getWritableDatabase().delete(a, "created_at <= " + j, null);
            this.j.close();
        } catch (SQLiteException e) {
            Log.e(c, "cleanupEvents " + a + " by time FAILED. Deleting DB.", e);
            this.j.a();
            this.j.close();
        }
    }

    public void a(String str, b bVar) {
        String a = bVar.a();
        try {
            this.j.getWritableDatabase().delete(a, "_id <= " + str, null);
            this.j.close();
        } catch (SQLiteException e) {
            Log.e(c, "cleanupEvents " + a + " by id FAILED. Deleting DB.", e);
            this.j.a();
            this.j.close();
        }
    }

    public String[] a(b bVar) {
        Cursor rawQuery;
        String str;
        Throwable th;
        String[] strArr;
        String[] strArr2;
        String[] strArr3 = null;
        String a = bVar.a();
        try {
            rawQuery = this.j.getReadableDatabase().rawQuery("SELECT * FROM " + a + " ORDER BY " + b + " ASC LIMIT 50", null);
            try {
                JSONArray jSONArray = new JSONArray();
                String str2 = strArr3;
                while (rawQuery.moveToNext()) {
                    if (rawQuery.isLast()) {
                        str2 = rawQuery.getString(rawQuery.getColumnIndex(AnalyticsSQLiteHelper.GENERAL_ID));
                    }
                    try {
                        jSONArray.put(new JSONObject(rawQuery.getString(rawQuery.getColumnIndex(a))));
                    } catch (JSONException e) {
                    }
                }
                String toString = jSONArray.length() > 0 ? jSONArray.toString() : strArr3;
                this.j.close();
                if (rawQuery != null) {
                    rawQuery.close();
                    str = toString;
                    toString = str2;
                } else {
                    str = toString;
                    toString = str2;
                }
            } catch (SQLiteException e2) {
                th = e2;
                try {
                    Log.e(c, "generateDataString " + a, th);
                    this.j.close();
                    if (rawQuery == null) {
                        strArr = strArr3;
                        strArr2 = strArr3;
                    } else {
                        rawQuery.close();
                        strArr = strArr3;
                        strArr2 = strArr3;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    this.j.close();
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    throw th;
                }
                return strArr3;
            }
        } catch (SQLiteException e3) {
            th = e3;
            rawQuery = strArr3;
            Log.e(c, "generateDataString " + a, th);
            this.j.close();
            if (rawQuery == null) {
                rawQuery.close();
                strArr = strArr3;
                strArr2 = strArr3;
            } else {
                strArr = strArr3;
                strArr2 = strArr3;
            }
            return strArr3;
        } catch (Throwable th3) {
            th = th3;
            rawQuery = strArr3;
            this.j.close();
            if (rawQuery != null) {
                rawQuery.close();
            }
            throw th;
        }
        if (toString == null || str == null) {
            return strArr3;
        }
        return new String[]{toString, str};
    }
}