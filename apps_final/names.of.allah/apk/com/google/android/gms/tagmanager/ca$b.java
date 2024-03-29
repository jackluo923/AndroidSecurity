package com.google.android.gms.tagmanager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import com.google.android.gms.internal.ik;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

class ca$b
  extends SQLiteOpenHelper
{
  private boolean wU;
  private long wV = 0L;
  
  ca$b(ca paramca, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 1);
  }
  
  private void a(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT * FROM gtm_hits WHERE 0", null);
    HashSet localHashSet = new HashSet();
    try
    {
      String[] arrayOfString = paramSQLiteDatabase.getColumnNames();
      int i = 0;
      while (i < arrayOfString.length)
      {
        localHashSet.add(arrayOfString[i]);
        i += 1;
      }
      paramSQLiteDatabase.close();
      if ((!localHashSet.remove("hit_id")) || (!localHashSet.remove("hit_url")) || (!localHashSet.remove("hit_time")) || (!localHashSet.remove("hit_first_send_time"))) {
        throw new SQLiteException("Database column missing");
      }
    }
    finally
    {
      paramSQLiteDatabase.close();
    }
    if (!((Set)localObject).isEmpty()) {
      throw new SQLiteException("Database has extra columns");
    }
  }
  
  /* Error */
  private boolean a(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_2
    //   3: ldc 77
    //   5: iconst_1
    //   6: anewarray 79	java/lang/String
    //   9: dup
    //   10: iconst_0
    //   11: ldc 81
    //   13: aastore
    //   14: ldc 83
    //   16: iconst_1
    //   17: anewarray 79	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: aload_1
    //   23: aastore
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: invokevirtual 87	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   30: astore_2
    //   31: aload_2
    //   32: invokeinterface 90 1 0
    //   37: istore 4
    //   39: aload_2
    //   40: ifnull +9 -> 49
    //   43: aload_2
    //   44: invokeinterface 50 1 0
    //   49: iload 4
    //   51: ireturn
    //   52: astore_2
    //   53: aconst_null
    //   54: astore_2
    //   55: new 92	java/lang/StringBuilder
    //   58: dup
    //   59: ldc 94
    //   61: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   64: aload_1
    //   65: invokevirtual 99	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: invokestatic 108	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   74: aload_2
    //   75: ifnull +9 -> 84
    //   78: aload_2
    //   79: invokeinterface 50 1 0
    //   84: iconst_0
    //   85: ireturn
    //   86: astore_1
    //   87: aload_3
    //   88: astore_2
    //   89: aload_2
    //   90: ifnull +9 -> 99
    //   93: aload_2
    //   94: invokeinterface 50 1 0
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
    //   0	113	0	this	b
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
  
  public SQLiteDatabase getWritableDatabase()
  {
    if ((wU) && (wV + 3600000L > ca.a(agq).currentTimeMillis())) {
      throw new SQLiteException("Database creation failed");
    }
    Object localObject1 = null;
    wU = true;
    wV = ca.a(agq).currentTimeMillis();
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
        ca.c(agq).getDatabasePath(ca.b(agq)).delete();
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = super.getWritableDatabase();
    }
    wU = false;
    return (SQLiteDatabase)localObject2;
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    ak.N(paramSQLiteDatabase.getPath());
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
      if (!a("gtm_hits", paramSQLiteDatabase))
      {
        paramSQLiteDatabase.execSQL(ca.lX());
        return;
      }
    }
    finally
    {
      localCursor.close();
    }
    a(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ca.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */