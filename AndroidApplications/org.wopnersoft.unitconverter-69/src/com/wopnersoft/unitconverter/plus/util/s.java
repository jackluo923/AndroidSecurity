package com.wopnersoft.unitconverter.plus.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

// compiled from: ProGuard
class s extends SQLiteOpenHelper {
    s(Context context) {
        super(context, "custom_units_db", null, 6);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table custom_units (_id integer primary key autoincrement, unit_cat integer not null, unit_name text not null, unit_value real not null,ref_name text not null, ref_value real not null);");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.w("CustomUnitsDbAdapter", new StringBuilder("Upgrading database from version ").append(i).append(" to ").append(i2).append(", which will destroy all old data").toString());
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS custom_units");
        onCreate(sQLiteDatabase);
    }
}