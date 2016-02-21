package com.mologiq.analytics;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.brightcove.player.model.Video.Fields;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.List;

public class m extends SQLiteOpenHelper {
    private static final int a;

    static {
        a = Integer.parseInt(b.a.replaceAll("\\.", AdTrackerConstants.BLANK));
    }

    public m(Context context) {
        super(context, "mologiq", null, a);
    }

    private int b(h hVar) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(AnalyticsEvent.EVENT_ID, Integer.valueOf(hVar.c()));
            contentValues.put(Fields.NAME, hVar.b());
            contentValues.put("classification_id", Integer.valueOf(hVar.a()));
            int update = writableDatabase.update("applist", contentValues, "id = ?", new String[]{String.valueOf(hVar.c())});
            if (writableDatabase != null) {
                writableDatabase.close();
            }
            return update;
        } catch (Throwable th) {
            if (writableDatabase != null) {
                writableDatabase.close();
            }
        }
    }

    h a(int i) {
        h hVar = null;
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor query = readableDatabase.query("applist", new String[]{AnalyticsEvent.EVENT_ID, Fields.NAME, "classification_id"}, "id=?", new String[]{String.valueOf(i)}, null, null, null, null);
        if (query != null) {
            try {
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                if (readableDatabase != null) {
                    readableDatabase.close();
                }
            }
            if (query.moveToFirst() && query.getCount() > 0) {
                hVar = new h();
                hVar.b(Integer.parseInt(query.getString(0)));
                hVar.a(query.getString(1));
                hVar.a(Integer.parseInt(query.getString(GoogleScorer.CLIENT_PLUS)));
                if (query != null) {
                    query.close();
                }
                if (readableDatabase != null) {
                    readableDatabase.close();
                }
                return hVar;
            }
        }
        if (query != null) {
            query.close();
        }
        if (readableDatabase != null) {
            readableDatabase.close();
        }
        return hVar;
    }

    public List a() {
        List arrayList = new ArrayList();
        String str = "SELECT  * FROM applist";
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor rawQuery = writableDatabase.rawQuery(str, null);
        try {
            if (rawQuery.moveToFirst()) {
                do {
                    h hVar = new h();
                    hVar.b(Integer.parseInt(rawQuery.getString(0)));
                    hVar.a(rawQuery.getString(1));
                    hVar.a(Integer.parseInt(rawQuery.getString(GoogleScorer.CLIENT_PLUS)));
                    arrayList.add(hVar);
                } while (rawQuery.moveToNext());
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            if (writableDatabase != null) {
                writableDatabase.close();
            }
            return arrayList;
        } catch (Throwable th) {
            if (rawQuery != null) {
                rawQuery.close();
            }
            if (writableDatabase != null) {
                writableDatabase.close();
            }
        }
    }

    void a(h hVar) {
        if (a(hVar.c()) == null) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put(AnalyticsEvent.EVENT_ID, Integer.valueOf(hVar.c()));
            contentValues.put(Fields.NAME, hVar.b());
            contentValues.put("classification_id", Integer.valueOf(hVar.a()));
            writableDatabase.insert("applist", null, contentValues);
            writableDatabase.close();
        } else {
            b(hVar);
        }
    }

    public int b() {
        int i;
        String str = "SELECT  * FROM applist";
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor rawQuery = readableDatabase.rawQuery(str, null);
        if (rawQuery == null) {
            i = 0;
        } else {
            try {
                i = rawQuery.getCount();
            } catch (Throwable th) {
                if (rawQuery != null) {
                    rawQuery.close();
                }
                if (readableDatabase != null) {
                    readableDatabase.close();
                }
            }
        }
        if (rawQuery != null) {
            rawQuery.close();
        }
        if (readableDatabase != null) {
            readableDatabase.close();
        }
        return i;
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE applist(id INTEGER PRIMARY KEY,name TEXT,classification_id INTEGER)");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS applist");
        onCreate(sQLiteDatabase);
    }
}