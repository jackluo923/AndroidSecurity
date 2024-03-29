package com.inmobi.commons.ads.cache;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.inmobi.commons.internal.Log;

public class AdDatabaseHelper
  extends SQLiteOpenHelper
{
  public static final String COLUMN_ADTYPE = "adtype";
  public static final String COLUMN_AD_CONTENT = "content";
  public static final String COLUMN_AD_ID = "adid";
  public static final String COLUMN_APPID = "appid";
  public static final String COLUMN_TIMESTAMP = "timestamp";
  public static final String DATABASE_NAME = "adcache.db";
  public static final String TABLE_AD = "ad";
  
  public AdDatabaseHelper(Context paramContext)
  {
    super(paramContext, "adcache.db", null, 1);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    Log.internal("[InMobi]-4.4.1", "CREATE TABLE IF NOT EXISTS ad (adid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, timestamp INTEGER NOT NULL, appid VARCHAR NOT NULL, content VARCHAR NOT NULL, adtype VARCHAR NOT NULL);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS ad (adid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, timestamp INTEGER NOT NULL, appid VARCHAR NOT NULL, content VARCHAR NOT NULL, adtype VARCHAR NOT NULL);");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Log.internal("[InMobi]-4.4.1", "Upgrading database from version " + paramInt1 + " to " + paramInt2 + ", which will destroy all old data");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS ad;");
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.ads.cache.AdDatabaseHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */