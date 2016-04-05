package com.google.analytics.tracking.android;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

@VisibleForTesting
class PersistentAnalyticsStore$AnalyticsDatabaseHelper
  extends SQLiteOpenHelper
{
  private boolean mBadDatabase;
  private long mLastDatabaseCheckTime = 0L;
  
  PersistentAnalyticsStore$AnalyticsDatabaseHelper(PersistentAnalyticsStore paramPersistentAnalyticsStore, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 1);
  }
  
  /* Error */
  private boolean tablePresent(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_2
    //   3: ldc 27
    //   5: iconst_1
    //   6: anewarray 29	java/lang/String
    //   9: dup
    //   10: iconst_0
    //   11: ldc 31
    //   13: aastore
    //   14: ldc 33
    //   16: iconst_1
    //   17: anewarray 29	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: aload_1
    //   23: aastore
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: invokevirtual 39	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   30: astore_2
    //   31: aload_2
    //   32: invokeinterface 45 1 0
    //   37: istore 4
    //   39: aload_2
    //   40: ifnull +9 -> 49
    //   43: aload_2
    //   44: invokeinterface 49 1 0
    //   49: iload 4
    //   51: ireturn
    //   52: astore_2
    //   53: aconst_null
    //   54: astore_2
    //   55: new 51	java/lang/StringBuilder
    //   58: dup
    //   59: ldc 53
    //   61: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   64: aload_1
    //   65: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: invokestatic 69	com/google/analytics/tracking/android/Log:w	(Ljava/lang/String;)V
    //   74: aload_2
    //   75: ifnull +9 -> 84
    //   78: aload_2
    //   79: invokeinterface 49 1 0
    //   84: iconst_0
    //   85: ireturn
    //   86: astore_1
    //   87: aload_3
    //   88: astore_2
    //   89: aload_2
    //   90: ifnull +9 -> 99
    //   93: aload_2
    //   94: invokeinterface 49 1 0
    //   99: aload_1
    //   100: athrow
    //   101: astore_1
    //   102: goto -13 -> 89
    //   105: astore_1
    //   106: goto -17 -> 89
    //   109: astore_3
    //   110: goto -55 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	113	0	this	AnalyticsDatabaseHelper
    //   0	113	1	paramString	String
    //   0	113	2	paramSQLiteDatabase	SQLiteDatabase
    //   1	87	3	localObject	Object
    //   109	1	3	localSQLiteException	SQLiteException
    //   37	13	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	31	52	android/database/sqlite/SQLiteException
    //   2	31	86	finally
    //   31	39	101	finally
    //   55	74	105	finally
    //   31	39	109	android/database/sqlite/SQLiteException
  }
  
  private void validateColumnsPresent(SQLiteDatabase paramSQLiteDatabase)
  {
    int j = 0;
    Cursor localCursor = paramSQLiteDatabase.rawQuery("SELECT * FROM hits2 WHERE 0", null);
    HashSet localHashSet = new HashSet();
    try
    {
      String[] arrayOfString = localCursor.getColumnNames();
      i = 0;
      while (i < arrayOfString.length)
      {
        localHashSet.add(arrayOfString[i]);
        i += 1;
      }
      localCursor.close();
      if ((!localHashSet.remove("hit_id")) || (!localHashSet.remove("hit_url")) || (!localHashSet.remove("hit_string")) || (!localHashSet.remove("hit_time"))) {
        throw new SQLiteException("Database column missing");
      }
    }
    finally
    {
      localCursor.close();
    }
    int i = j;
    if (!localHashSet.remove("hit_app_id")) {
      i = 1;
    }
    if (!localHashSet.isEmpty()) {
      throw new SQLiteException("Database has extra columns");
    }
    if (i != 0) {
      paramSQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id");
    }
  }
  
  public SQLiteDatabase getWritableDatabase()
  {
    if ((mBadDatabase) && (mLastDatabaseCheckTime + 3600000L > PersistentAnalyticsStore.access$000(this$0).currentTimeMillis())) {
      throw new SQLiteException("Database creation failed");
    }
    Object localObject1 = null;
    mBadDatabase = true;
    mLastDatabaseCheckTime = PersistentAnalyticsStore.access$000(this$0).currentTimeMillis();
    try
    {
      localObject2 = super.getWritableDatabase();
      localObject1 = localObject2;
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        Object localObject2;
        PersistentAnalyticsStore.access$200(this$0).getDatabasePath(PersistentAnalyticsStore.access$100(this$0)).delete();
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = super.getWritableDatabase();
    }
    mBadDatabase = false;
    return (SQLiteDatabase)localObject2;
  }
  
  boolean isBadDatabase()
  {
    return mBadDatabase;
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    FutureApis.setOwnerOnlyReadWrite(paramSQLiteDatabase.getPath());
  }
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor;
    if (Build.VERSION.SDK_INT < 15) {
      localCursor = paramSQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
    }
    try
    {
      localCursor.moveToFirst();
      localCursor.close();
      if (!tablePresent("hits2", paramSQLiteDatabase))
      {
        paramSQLiteDatabase.execSQL(PersistentAnalyticsStore.access$300());
        return;
      }
    }
    finally
    {
      localCursor.close();
    }
    validateColumnsPresent(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  
  void setBadDatabase(boolean paramBoolean)
  {
    mBadDatabase = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.PersistentAnalyticsStore.AnalyticsDatabaseHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */