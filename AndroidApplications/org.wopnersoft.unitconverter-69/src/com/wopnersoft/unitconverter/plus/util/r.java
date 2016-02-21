package com.wopnersoft.unitconverter.plus.util;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

// compiled from: ProGuard
public class r {
    private s a;
    private SQLiteDatabase b;
    private final Context c;

    public r(Context context) {
        this.c = context;
    }

    public r a() {
        this.a = new s(this.c);
        this.b = this.a.getWritableDatabase();
        return this;
    }

    public Cursor b() {
        return this.b.query("custom_units", new String[]{"_id", "unit_cat", "unit_name", "unit_value", "ref_name", "ref_value"}, null, null, null, null, "unit_cat");
    }
}