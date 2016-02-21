package com.inmobi.commons.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

public abstract class DatabaseHandler extends SQLiteOpenHelper {
    public static final String DATABASE_NAME = "im.db";
    private static String c;
    private static String d;
    private static String e;
    private static String f;
    private static String g;
    private static String h;
    private static String i;
    private static String j;
    private static String k;
    private static String l;
    private ArrayList a;
    private SQLiteDatabase b;

    static {
        c = "CREATE TABLE IF NOT EXISTS ";
        d = "DROP TABLE IF EXISTS ";
        e = " PRIMARY KEY ";
        f = " AUTOINCREMENT ";
        g = " NOT NULL ";
        h = "SELECT * FROM ";
        i = " WHERE ";
        j = " ORDER BY ";
        k = "; ";
        l = " Limit ?";
    }

    protected DatabaseHandler(Context context, ArrayList arrayList) {
        super(context, DATABASE_NAME, null, 1);
        this.a = arrayList;
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        try {
            if (this.a != null && !this.a.isEmpty()) {
                Iterator it = this.a.iterator();
                while (it.hasNext()) {
                    String str;
                    TableData tableData = (TableData) it.next();
                    String str2 = tableData.getmTableName();
                    LinkedHashMap linkedHashMap = tableData.getmColumns();
                    StringBuilder stringBuilder = new StringBuilder(c + str2 + " (");
                    Iterator it2 = linkedHashMap.keySet().iterator();
                    while (it2.hasNext()) {
                        str = (String) it2.next();
                        ColumnData columnData = (ColumnData) linkedHashMap.get(str);
                        stringBuilder.append(" " + str + " " + columnData.getDataType().toString());
                        if (columnData.isPrimaryKey()) {
                            stringBuilder.append(e);
                        }
                        if (columnData.isAutoIncrement()) {
                            stringBuilder.append(f);
                        }
                        if (columnData.isMandatory()) {
                            stringBuilder.append(g);
                        }
                        stringBuilder.append(",");
                    }
                    str = (',' == stringBuilder.charAt(stringBuilder.length() + -1) ? stringBuilder.substring(0, stringBuilder.length() - 2) : stringBuilder.toString()).concat(" );");
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Table: " + str);
                    sQLiteDatabase.execSQL(str);
                }
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception creating table", e);
        }
    }

    public void close() {
        try {
            this.b.close();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to close  db", e);
        }
    }

    public synchronized int delete(String str, String str2, String[] strArr) {
        int delete;
        try {
            delete = this.b.delete(str, str2, strArr);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert to db", e);
            delete = -1;
        }
        return delete;
    }

    public synchronized Cursor executeQuery(String str, String[] strArr) {
        Cursor rawQuery;
        try {
            rawQuery = this.b.rawQuery(str, strArr);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to execute db query", e);
            rawQuery = null;
        }
        return rawQuery;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized android.database.Cursor getAll(java.lang.String r5, java.lang.String r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.db.DatabaseHandler.getAll(java.lang.String, java.lang.String):android.database.Cursor");
        /*
        r4 = this;
        r0 = 0;
        monitor-enter(r4);
        if (r6 == 0) goto L_0x0010;
    L_0x0004:
        r1 = "";
        r2 = r6.trim();	 Catch:{ Exception -> 0x0061 }
        r1 = r1.equals(r2);	 Catch:{ Exception -> 0x0061 }
        if (r1 == 0) goto L_0x0036;
    L_0x0010:
        r1 = r4.b;	 Catch:{ Exception -> 0x0061 }
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0061 }
        r2.<init>();	 Catch:{ Exception -> 0x0061 }
        r3 = h;	 Catch:{ Exception -> 0x0061 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0061 }
        r2 = r2.append(r5);	 Catch:{ Exception -> 0x0061 }
        r3 = k;	 Catch:{ Exception -> 0x0061 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0061 }
        r2 = r2.toString();	 Catch:{ Exception -> 0x0061 }
        r3 = 0;
        r1 = r1.rawQuery(r2, r3);	 Catch:{ Exception -> 0x0061 }
    L_0x0030:
        r1.moveToFirst();	 Catch:{ Exception -> 0x0061 }
        r0 = r1;
    L_0x0034:
        monitor-exit(r4);
        return r0;
    L_0x0036:
        r1 = r4.b;	 Catch:{ Exception -> 0x0061 }
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0061 }
        r2.<init>();	 Catch:{ Exception -> 0x0061 }
        r3 = h;	 Catch:{ Exception -> 0x0061 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0061 }
        r2 = r2.append(r5);	 Catch:{ Exception -> 0x0061 }
        r3 = j;	 Catch:{ Exception -> 0x0061 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0061 }
        r2 = r2.append(r6);	 Catch:{ Exception -> 0x0061 }
        r3 = k;	 Catch:{ Exception -> 0x0061 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0061 }
        r2 = r2.toString();	 Catch:{ Exception -> 0x0061 }
        r3 = 0;
        r1 = r1.rawQuery(r2, r3);	 Catch:{ Exception -> 0x0061 }
        goto L_0x0030;
    L_0x0061:
        r1 = move-exception;
        r2 = "[InMobi]-4.4.1";
        r3 = "Failed to all rows";
        com.inmobi.commons.internal.Log.internal(r2, r3, r1);	 Catch:{ all -> 0x006a }
        goto L_0x0034;
    L_0x006a:
        r0 = move-exception;
        monitor-exit(r4);
        throw r0;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized android.database.Cursor getNRows(java.lang.String r7, java.lang.String r8, int r9) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.db.DatabaseHandler.getNRows(java.lang.String, java.lang.String, int):android.database.Cursor");
        /*
        r6 = this;
        r0 = 0;
        monitor-enter(r6);
        if (r8 == 0) goto L_0x0010;
    L_0x0004:
        r1 = "";
        r2 = r8.trim();	 Catch:{ Exception -> 0x0070 }
        r1 = r1.equals(r2);	 Catch:{ Exception -> 0x0070 }
        if (r1 == 0) goto L_0x0036;
    L_0x0010:
        r1 = r6.b;	 Catch:{ Exception -> 0x0070 }
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0070 }
        r2.<init>();	 Catch:{ Exception -> 0x0070 }
        r3 = h;	 Catch:{ Exception -> 0x0070 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0070 }
        r2 = r2.append(r7);	 Catch:{ Exception -> 0x0070 }
        r3 = k;	 Catch:{ Exception -> 0x0070 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0070 }
        r2 = r2.toString();	 Catch:{ Exception -> 0x0070 }
        r3 = 0;
        r1 = r1.rawQuery(r2, r3);	 Catch:{ Exception -> 0x0070 }
    L_0x0030:
        r1.moveToFirst();	 Catch:{ Exception -> 0x0070 }
        r0 = r1;
    L_0x0034:
        monitor-exit(r6);
        return r0;
    L_0x0036:
        r1 = r6.b;	 Catch:{ Exception -> 0x0070 }
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0070 }
        r2.<init>();	 Catch:{ Exception -> 0x0070 }
        r3 = h;	 Catch:{ Exception -> 0x0070 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0070 }
        r2 = r2.append(r7);	 Catch:{ Exception -> 0x0070 }
        r3 = j;	 Catch:{ Exception -> 0x0070 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0070 }
        r2 = r2.append(r8);	 Catch:{ Exception -> 0x0070 }
        r3 = l;	 Catch:{ Exception -> 0x0070 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0070 }
        r3 = k;	 Catch:{ Exception -> 0x0070 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0070 }
        r2 = r2.toString();	 Catch:{ Exception -> 0x0070 }
        r3 = 1;
        r3 = new java.lang.String[r3];	 Catch:{ Exception -> 0x0070 }
        r4 = 0;
        r5 = java.lang.String.valueOf(r9);	 Catch:{ Exception -> 0x0070 }
        r3[r4] = r5;	 Catch:{ Exception -> 0x0070 }
        r1 = r1.rawQuery(r2, r3);	 Catch:{ Exception -> 0x0070 }
        goto L_0x0030;
    L_0x0070:
        r1 = move-exception;
        r2 = "[InMobi]-4.4.1";
        r3 = "Failed to all rows";
        com.inmobi.commons.internal.Log.internal(r2, r3, r1);	 Catch:{ all -> 0x0079 }
        goto L_0x0034;
    L_0x0079:
        r0 = move-exception;
        monitor-exit(r6);
        throw r0;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized int getNoOfRows(java.lang.String r4, java.lang.String r5, java.lang.String[] r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.db.DatabaseHandler.getNoOfRows(java.lang.String, java.lang.String, java.lang.String[]):int");
        /*
        r3 = this;
        monitor-enter(r3);
        if (r5 == 0) goto L_0x003c;
    L_0x0003:
        r0 = "";
        r1 = r5.trim();	 Catch:{ Exception -> 0x005e }
        r0 = r0.equals(r1);	 Catch:{ Exception -> 0x005e }
        if (r0 != 0) goto L_0x003c;
    L_0x000f:
        r0 = r3.b;	 Catch:{ Exception -> 0x005e }
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x005e }
        r1.<init>();	 Catch:{ Exception -> 0x005e }
        r2 = h;	 Catch:{ Exception -> 0x005e }
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x005e }
        r1 = r1.append(r4);	 Catch:{ Exception -> 0x005e }
        r2 = i;	 Catch:{ Exception -> 0x005e }
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x005e }
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x005e }
        r1 = r1.toString();	 Catch:{ Exception -> 0x005e }
        r0 = r0.rawQuery(r1, r6);	 Catch:{ Exception -> 0x005e }
        r1 = r0;
    L_0x0033:
        r0 = r1.getCount();	 Catch:{ Exception -> 0x005e }
        r1.close();	 Catch:{ Exception -> 0x005e }
    L_0x003a:
        monitor-exit(r3);
        return r0;
    L_0x003c:
        r0 = r3.b;	 Catch:{ Exception -> 0x005e }
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x005e }
        r1.<init>();	 Catch:{ Exception -> 0x005e }
        r2 = h;	 Catch:{ Exception -> 0x005e }
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x005e }
        r1 = r1.append(r4);	 Catch:{ Exception -> 0x005e }
        r2 = k;	 Catch:{ Exception -> 0x005e }
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x005e }
        r1 = r1.toString();	 Catch:{ Exception -> 0x005e }
        r2 = 0;
        r0 = r0.rawQuery(r1, r2);	 Catch:{ Exception -> 0x005e }
        r1 = r0;
        goto L_0x0033;
    L_0x005e:
        r0 = move-exception;
        r1 = "[InMobi]-4.4.1";
        r2 = "Failed to get number of rows";
        com.inmobi.commons.internal.Log.internal(r1, r2, r0);	 Catch:{ all -> 0x0068 }
        r0 = 0;
        goto L_0x003a;
    L_0x0068:
        r0 = move-exception;
        monitor-exit(r3);
        throw r0;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized android.database.Cursor getRow(java.lang.String r5, java.lang.String r6, java.lang.String[] r7) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.db.DatabaseHandler.getRow(java.lang.String, java.lang.String, java.lang.String[]):android.database.Cursor");
        /*
        r4 = this;
        r0 = 0;
        monitor-enter(r4);
        if (r6 == 0) goto L_0x0010;
    L_0x0004:
        r1 = "";
        r2 = r6.trim();	 Catch:{ Exception -> 0x0060 }
        r1 = r1.equals(r2);	 Catch:{ Exception -> 0x0060 }
        if (r1 == 0) goto L_0x0036;
    L_0x0010:
        r1 = r4.b;	 Catch:{ Exception -> 0x0060 }
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0060 }
        r2.<init>();	 Catch:{ Exception -> 0x0060 }
        r3 = h;	 Catch:{ Exception -> 0x0060 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0060 }
        r2 = r2.append(r5);	 Catch:{ Exception -> 0x0060 }
        r3 = k;	 Catch:{ Exception -> 0x0060 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0060 }
        r2 = r2.toString();	 Catch:{ Exception -> 0x0060 }
        r3 = 0;
        r1 = r1.rawQuery(r2, r3);	 Catch:{ Exception -> 0x0060 }
    L_0x0030:
        r1.moveToFirst();	 Catch:{ Exception -> 0x0060 }
        r0 = r1;
    L_0x0034:
        monitor-exit(r4);
        return r0;
    L_0x0036:
        r1 = r4.b;	 Catch:{ Exception -> 0x0060 }
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0060 }
        r2.<init>();	 Catch:{ Exception -> 0x0060 }
        r3 = h;	 Catch:{ Exception -> 0x0060 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0060 }
        r2 = r2.append(r5);	 Catch:{ Exception -> 0x0060 }
        r3 = i;	 Catch:{ Exception -> 0x0060 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0060 }
        r2 = r2.append(r6);	 Catch:{ Exception -> 0x0060 }
        r3 = k;	 Catch:{ Exception -> 0x0060 }
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x0060 }
        r2 = r2.toString();	 Catch:{ Exception -> 0x0060 }
        r1 = r1.rawQuery(r2, r7);	 Catch:{ Exception -> 0x0060 }
        goto L_0x0030;
    L_0x0060:
        r1 = move-exception;
        r2 = "[InMobi]-4.4.1";
        r3 = "Failed to all rows";
        com.inmobi.commons.internal.Log.internal(r2, r3, r1);	 Catch:{ all -> 0x0069 }
        goto L_0x0034;
    L_0x0069:
        r0 = move-exception;
        monitor-exit(r4);
        throw r0;
        */
    }

    protected synchronized int getTableSize(String str) {
        int count;
        try {
            Cursor rawQuery = this.b.rawQuery(h + str + k, null);
            count = rawQuery.getCount();
            rawQuery.close();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to table size ", e);
            count = 0;
        }
        return count;
    }

    public synchronized long insert(String str, ContentValues contentValues) {
        long insert;
        try {
            insert = this.b.insert(str, null, contentValues);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert to db", e);
            insert = -1;
        }
        return insert;
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            a(sQLiteDatabase);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception Creating table", e);
        }
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL(d + ((TableData) it.next()).getmTableName());
            }
            onCreate(sQLiteDatabase);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception Deleting table", e);
        }
    }

    public void open() {
        try {
            this.b = getWritableDatabase();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to open  db", e);
        }
    }

    public synchronized long update(String str, ContentValues contentValues, String str2, String[] strArr) {
        long update;
        try {
            update = (long) this.b.update(str, contentValues, str2, strArr);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to insert to db", e);
            update = -1;
        }
        return update;
    }
}