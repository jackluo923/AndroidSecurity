package com.wopnersoft.unitconverter.plus.util;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

// compiled from: ProGuard
public class au {
    private av a;
    private SQLiteDatabase b;
    private final Context c;

    public au(Context context) {
        this.c = context;
    }

    public au a() {
        this.a = new av(this.c);
        this.b = this.a.getWritableDatabase();
        return this;
    }

    public void b() {
        this.a.close();
    }

    public Cursor c() {
        return this.b.query("favorites", new String[]{"_id", "fav_cat", "from_name", "from_value", "from_offset", "to_name", "to_value", "to_offset", "input_val"}, null, null, null, null, "fav_cat,input_val");
    }
}