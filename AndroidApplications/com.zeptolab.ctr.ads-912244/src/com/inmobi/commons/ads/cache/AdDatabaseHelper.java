package com.inmobi.commons.ads.cache;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;

public class AdDatabaseHelper extends SQLiteOpenHelper {
    public static final String COLUMN_ADTYPE = "adtype";
    public static final String COLUMN_AD_CONTENT = "content";
    public static final String COLUMN_AD_ID = "adid";
    public static final String COLUMN_APPID = "appid";
    public static final String COLUMN_TIMESTAMP = "timestamp";
    public static final String DATABASE_NAME = "adcache.db";
    public static final String TABLE_AD = "ad";

    public AdDatabaseHelper(Context context) {
        super(context, DATABASE_NAME, null, 1);
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        Log.internal(InternalSDKUtil.LOGGING_TAG, "CREATE TABLE IF NOT EXISTS ad (adid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, timestamp INTEGER NOT NULL, appid VARCHAR NOT NULL, content VARCHAR NOT NULL, adtype VARCHAR NOT NULL);");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS ad (adid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, timestamp INTEGER NOT NULL, appid VARCHAR NOT NULL, content VARCHAR NOT NULL, adtype VARCHAR NOT NULL);");
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.internal(InternalSDKUtil.LOGGING_TAG, "Upgrading database from version " + i + " to " + i2 + ", which will destroy all old data");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ad;");
        onCreate(sQLiteDatabase);
    }
}