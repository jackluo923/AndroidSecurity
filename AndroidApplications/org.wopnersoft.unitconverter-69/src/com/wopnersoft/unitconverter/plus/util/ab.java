package com.wopnersoft.unitconverter.plus.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

// compiled from: ProGuard
class ab extends SQLiteOpenHelper {
    ab(Context context) {
        super(context, "favs_db", null, 2);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table favorites (_id integer primary key autoincrement, fav_cat integer not null, from_name text not null, from_value real not null,to_name text not null, to_value real not null, input_val real not null, input_val2 real null);");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.w("FavoritesDbAdapter", new StringBuilder("Upgrading database from version ").append(i).append(" to ").append(i2).append(", which will destroy all old data").toString());
        if (i == 1) {
            sQLiteDatabase.execSQL("ALTER TABLE favorites ADD input_val2 real null");
        }
    }
}