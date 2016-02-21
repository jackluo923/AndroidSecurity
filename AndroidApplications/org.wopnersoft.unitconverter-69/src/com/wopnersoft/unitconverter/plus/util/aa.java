package com.wopnersoft.unitconverter.plus.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

// compiled from: ProGuard
public class aa {
    private ab a;
    private SQLiteDatabase b;
    private final Context c;

    public aa(Context context) {
        this.c = context;
    }

    public long a(long j, String str, double d, String str2, double d2, double d3) {
        return a(j, str, d, str2, d2, d3, 0.0d);
    }

    public long a(long j, String str, double d, String str2, double d2, double d3, double d4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("fav_cat", Long.valueOf(j));
        contentValues.put("from_name", str);
        contentValues.put("from_value", Double.valueOf(d));
        contentValues.put("to_name", str2);
        contentValues.put("to_value", Double.valueOf(d2));
        contentValues.put("input_val", Double.valueOf(d3));
        contentValues.put("input_val2", Double.valueOf(d4));
        return this.b.insert("favorites", null, contentValues);
    }

    public aa a() {
        this.a = new ab(this.c);
        this.b = this.a.getWritableDatabase();
        return this;
    }

    public Boolean a(long j, String str, String str2, double d, double d2) {
        String str3 = "fav_cat=? and from_name=? and to_name=? and input_val=? and input_val2=?";
        Cursor query = this.b.query("favorites", new String[]{"_id"}, "fav_cat=? and from_name=? and to_name=? and input_val=? and input_val2=?", new String[]{String.valueOf(j), str, str2, String.valueOf(d), String.valueOf(d2)}, null, null, null);
        if (query == null) {
            return Boolean.valueOf(false);
        }
        query.moveToFirst();
        Boolean valueOf = Boolean.valueOf(query.getCount() > 0);
        query.close();
        return valueOf;
    }

    public boolean a(long j) {
        return this.b.delete("favorites", new StringBuilder("_id=").append(j).toString(), null) > 0;
    }

    public Cursor b(long j) {
        Cursor query = this.b.query(true, "favorites", new String[]{"_id", "fav_cat", "from_name", "from_value", "to_name", "to_value", "input_val", "input_val2"}, new StringBuilder("_id=").append(j).toString(), null, null, null, null, null);
        if (query != null) {
            query.moveToFirst();
        }
        return query;
    }

    public void b() {
        this.a.close();
    }

    public ac c(long j) {
        Cursor b = b(j);
        ac acVar = null;
        if (b != null && b.moveToFirst()) {
            int columnIndex = b.getColumnIndex("fav_cat");
            int columnIndex2 = b.getColumnIndex("from_name");
            int columnIndex3 = b.getColumnIndex("to_name");
            long j2 = j;
            acVar = new ac(j2, b.getLong(columnIndex), b.getString(columnIndex2), b.getDouble(b.getColumnIndex("from_value")), b.getString(columnIndex3), b.getDouble(b.getColumnIndex("to_value")), b.getDouble(b.getColumnIndex("input_val")), b.getDouble(b.getColumnIndex("input_val2")));
        }
        if (!(b == null || b.isClosed())) {
            b.close();
        }
        return acVar;
    }

    public boolean c() {
        return this.b.delete("favorites", null, null) > 0;
    }

    public Cursor d() {
        return this.b.query("favorites", new String[]{"_id", "fav_cat", "from_name", "from_value", "to_name", "to_value", "input_val", "input_val2"}, null, null, null, null, "fav_cat,input_val");
    }
}