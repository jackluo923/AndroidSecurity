package com.wopnersoft.unitconverter.plus.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.wopnersoft.unitconverter.plus.d.b;
import java.util.HashMap;
import java.util.Map;

// compiled from: ProGuard
public class m {
    private n a;
    private SQLiteDatabase b;
    private final Context c;

    public m(Context context) {
        this.c = context;
    }

    private void b(String str, double d) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("currency_value", Double.valueOf(d));
        this.b.update("currency", contentValues, new StringBuilder("currency_country='").append(str).append("'").toString(), null);
    }

    public long a(String str, double d) {
        b(str, d);
        return 0;
    }

    public m a() {
        this.a = new n(this.c);
        this.b = this.a.getWritableDatabase();
        return this;
    }

    public Double a(String str) {
        Cursor cursor = null;
        String str2 = "currency_country=?";
        String[] strArr = new String[]{str};
        try {
            Cursor query = this.b.query("currency", new String[]{"currency_value"}, "currency_country=?", strArr, null, null, null);
            if (query != null) {
                try {
                    if (query.getCount() >= 1) {
                        query.moveToFirst();
                        Double valueOf = Double.valueOf(query.getDouble(0));
                        if (query == null) {
                            return valueOf;
                        }
                        query.close();
                        return valueOf;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return cursor;
        } catch (Throwable th2) {
            Throwable th3 = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th3;
        }
    }

    public void b() {
        this.a.close();
    }

    public long c() {
        try {
            SQLiteStatement compileStatement = this.b.compileStatement("SELECT COUNT(*) FROM currency");
            long simpleQueryForLong = compileStatement.simpleQueryForLong();
            compileStatement.close();
            return simpleQueryForLong;
        } catch (Exception e) {
            return 0;
        }
    }

    public SQLiteDatabase d() {
        return this.b;
    }

    public boolean e() {
        return this.b.delete("currency", null, null) > 0;
    }

    public Cursor f() {
        return this.b.query("currency", new String[]{"_id", "currency_country", "currency_country_desc", "currency_value"}, null, null, null, null, "currency_country");
    }

    public Cursor g() {
        return this.b.query("currency", new String[]{"_id", "currency_country", "currency_country_desc", "currency_value"}, new StringBuilder("currency_country IN (").append(b.b("J0FFRCcsJ0FSUycsJ0FVRCcsJ0FXRycsJ0JBTScsJ0JCRCcsJ0JEVCcsJ0JHTicsJ0JIRCcsJ0JNRCcsJ0JPQicsJ0JSTCcsJ0JTRCcsJ0NBRCcsJ0NIRicsJ0NMUCcsJ0NOWScsJ0NPUCcsJ0NaSycsJ0RLSycsJ0VHUCcsJ0VVUicsJ0ZKRCcsJ0dCUCcsJ0dIUycsJ0dNRCcsJ0dUUScsJ0hLRCcsJ0hSSycsJ0hVRicsJ0lEUicsJ0lMUycsJ0lOUicsJ0lTSycsJ0pNRCcsJ0pPRCcsJ0pQWScsJ0tFUycsJ0tIUicsJ0tSVycsJ0tXRCcsJ0xBSycsJ0xCUCcsJ0xLUicsJ0xUTCcsJ0xWTCcsJ01BRCcsJ01ETCcsJ01HQScsJ01LRCcsJ01VUicsJ01WUicsJ01YTicsJ01ZUicsJ05BRCcsJ05HTicsJ05PSycsJ05QUicsJ05aRCcsJ09NUicsJ1BBQicsJ1BFTicsJ1BIUCcsJ1BLUicsJ1BMTicsJ1BZRycsJ1FBUicsJ1JPTicsJ1JTRCcsJ1JVQicsJ1NBUicsJ1NDUicsJ1NFSycsJ1NHRCcsJ1NZUCcsJ1RIQicsJ1RORCcsJ1RSWScsJ1RXRCcsJ1VBSCcsJ1VHWCcsJ1VTRCcsJ1VZVScsJ1ZFRicsJ1ZORCcsJ1hBRicsJ1hDRCcsJ1hPRicsJ1hQRicsJ1pBUic=")).append(")").toString(), null, null, null, "currency_country");
    }

    public Map h() {
        Cursor query;
        Cursor cursor = null;
        Map hashMap = new HashMap(150);
        try {
            query = this.b.query("currency", new String[]{"currency_country", "currency_value"}, null, null, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        do {
                            hashMap.put(query.getString(0), Double.valueOf(query.getDouble(1)));
                        } while (query.moveToNext());
                    }
                } catch (Throwable th) {
                    th = th;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return hashMap;
        } catch (Throwable th2) {
            Throwable th3 = th2;
            query = cursor;
            if (query != null) {
                query.close();
            }
            throw th3;
        }
    }

    public void i() {
        this.a.a(this.b);
    }
}