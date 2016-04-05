package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.SystemClock;

public class cy
{
  private static final Object lq = new Object();
  private static final String pp = String.format("CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", new Object[] { "InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time" });
  private static cy pr;
  private final cy.a pq;
  
  private cy(Context paramContext)
  {
    pq = new cy.a(this, paramContext, "google_inapp_purchase.db");
  }
  
  public static cy h(Context paramContext)
  {
    synchronized (lq)
    {
      if (pr == null) {
        pr = new cy(paramContext);
      }
      paramContext = pr;
      return paramContext;
    }
  }
  
  public cw a(Cursor paramCursor)
  {
    if (paramCursor == null) {
      return null;
    }
    return new cw(paramCursor.getLong(0), paramCursor.getString(1), paramCursor.getString(2));
  }
  
  public void a(cw paramcw)
  {
    if (paramcw == null) {
      return;
    }
    SQLiteDatabase localSQLiteDatabase;
    synchronized (lq)
    {
      localSQLiteDatabase = getWritableDatabase();
      if (localSQLiteDatabase == null) {
        return;
      }
    }
    localSQLiteDatabase.delete("InAppPurchase", String.format("%s = %d", new Object[] { "purchase_id", Long.valueOf(pj) }), null);
  }
  
  public void b(cw paramcw)
  {
    if (paramcw == null) {
      return;
    }
    SQLiteDatabase localSQLiteDatabase;
    synchronized (lq)
    {
      localSQLiteDatabase = getWritableDatabase();
      if (localSQLiteDatabase == null) {
        return;
      }
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("product_id", pl);
    localContentValues.put("developer_payload", pk);
    localContentValues.put("record_time", Long.valueOf(SystemClock.elapsedRealtime()));
    pj = localSQLiteDatabase.insert("InAppPurchase", null, localContentValues);
    if (getRecordCount() > 20000L) {
      bf();
    }
  }
  
  /* Error */
  public void bf()
  {
    // Byte code:
    //   0: getstatic 39	com/google/android/gms/internal/cy:lq	Ljava/lang/Object;
    //   3: astore 4
    //   5: aload 4
    //   7: monitorenter
    //   8: aload_0
    //   9: invokevirtual 80	com/google/android/gms/internal/cy:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   12: astore_1
    //   13: aload_1
    //   14: ifnonnull +7 -> 21
    //   17: aload 4
    //   19: monitorexit
    //   20: return
    //   21: aload_1
    //   22: ldc 18
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: aconst_null
    //   28: aconst_null
    //   29: ldc -118
    //   31: ldc -116
    //   33: invokevirtual 144	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   36: astore_2
    //   37: aload_2
    //   38: ifnull +25 -> 63
    //   41: aload_2
    //   42: astore_1
    //   43: aload_2
    //   44: invokeinterface 148 1 0
    //   49: ifeq +14 -> 63
    //   52: aload_2
    //   53: astore_1
    //   54: aload_0
    //   55: aload_0
    //   56: aload_2
    //   57: invokevirtual 150	com/google/android/gms/internal/cy:a	(Landroid/database/Cursor;)Lcom/google/android/gms/internal/cw;
    //   60: invokevirtual 152	com/google/android/gms/internal/cy:a	(Lcom/google/android/gms/internal/cw;)V
    //   63: aload_2
    //   64: ifnull +9 -> 73
    //   67: aload_2
    //   68: invokeinterface 155 1 0
    //   73: aload 4
    //   75: monitorexit
    //   76: return
    //   77: astore_1
    //   78: aload 4
    //   80: monitorexit
    //   81: aload_1
    //   82: athrow
    //   83: astore_3
    //   84: aconst_null
    //   85: astore_2
    //   86: aload_2
    //   87: astore_1
    //   88: new 157	java/lang/StringBuilder
    //   91: dup
    //   92: ldc -97
    //   94: invokespecial 162	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   97: aload_3
    //   98: invokevirtual 165	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   101: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokestatic 177	com/google/android/gms/internal/ev:D	(Ljava/lang/String;)V
    //   110: aload_2
    //   111: ifnull -38 -> 73
    //   114: aload_2
    //   115: invokeinterface 155 1 0
    //   120: goto -47 -> 73
    //   123: aload_1
    //   124: ifnull +9 -> 133
    //   127: aload_1
    //   128: invokeinterface 155 1 0
    //   133: aload_2
    //   134: athrow
    //   135: astore_2
    //   136: goto -13 -> 123
    //   139: astore_3
    //   140: goto -54 -> 86
    //   143: astore_2
    //   144: aconst_null
    //   145: astore_1
    //   146: goto -23 -> 123
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	149	0	this	cy
    //   12	42	1	localObject1	Object
    //   77	5	1	localObject2	Object
    //   87	59	1	localObject3	Object
    //   36	98	2	localCursor	Cursor
    //   135	1	2	localObject4	Object
    //   143	1	2	localObject5	Object
    //   83	15	3	localSQLiteException1	SQLiteException
    //   139	1	3	localSQLiteException2	SQLiteException
    //   3	76	4	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   8	13	77	finally
    //   17	20	77	finally
    //   67	73	77	finally
    //   73	76	77	finally
    //   114	120	77	finally
    //   127	133	77	finally
    //   133	135	77	finally
    //   21	37	83	android/database/sqlite/SQLiteException
    //   43	52	135	finally
    //   54	63	135	finally
    //   88	110	135	finally
    //   43	52	139	android/database/sqlite/SQLiteException
    //   54	63	139	android/database/sqlite/SQLiteException
    //   21	37	143	finally
  }
  
  /* Error */
  public java.util.List<cw> d(long paramLong)
  {
    // Byte code:
    //   0: getstatic 39	com/google/android/gms/internal/cy:lq	Ljava/lang/Object;
    //   3: astore 6
    //   5: aload 6
    //   7: monitorenter
    //   8: new 181	java/util/LinkedList
    //   11: dup
    //   12: invokespecial 182	java/util/LinkedList:<init>	()V
    //   15: astore 7
    //   17: lload_1
    //   18: lconst_0
    //   19: lcmp
    //   20: ifgt +9 -> 29
    //   23: aload 6
    //   25: monitorexit
    //   26: aload 7
    //   28: areturn
    //   29: aload_0
    //   30: invokevirtual 80	com/google/android/gms/internal/cy:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   33: astore_3
    //   34: aload_3
    //   35: ifnonnull +9 -> 44
    //   38: aload 6
    //   40: monitorexit
    //   41: aload 7
    //   43: areturn
    //   44: aload_3
    //   45: ldc 18
    //   47: aconst_null
    //   48: aconst_null
    //   49: aconst_null
    //   50: aconst_null
    //   51: aconst_null
    //   52: ldc -118
    //   54: lload_1
    //   55: invokestatic 185	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   58: invokevirtual 144	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore 4
    //   63: aload 4
    //   65: astore_3
    //   66: aload 4
    //   68: invokeinterface 148 1 0
    //   73: ifeq +37 -> 110
    //   76: aload 4
    //   78: astore_3
    //   79: aload 7
    //   81: aload_0
    //   82: aload 4
    //   84: invokevirtual 150	com/google/android/gms/internal/cy:a	(Landroid/database/Cursor;)Lcom/google/android/gms/internal/cw;
    //   87: invokeinterface 191 2 0
    //   92: pop
    //   93: aload 4
    //   95: astore_3
    //   96: aload 4
    //   98: invokeinterface 194 1 0
    //   103: istore 8
    //   105: iload 8
    //   107: ifne -31 -> 76
    //   110: aload 4
    //   112: ifnull +10 -> 122
    //   115: aload 4
    //   117: invokeinterface 155 1 0
    //   122: aload 6
    //   124: monitorexit
    //   125: aload 7
    //   127: areturn
    //   128: astore 5
    //   130: aconst_null
    //   131: astore 4
    //   133: aload 4
    //   135: astore_3
    //   136: new 157	java/lang/StringBuilder
    //   139: dup
    //   140: ldc -60
    //   142: invokespecial 162	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   145: aload 5
    //   147: invokevirtual 165	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   150: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   156: invokestatic 177	com/google/android/gms/internal/ev:D	(Ljava/lang/String;)V
    //   159: aload 4
    //   161: ifnull -39 -> 122
    //   164: aload 4
    //   166: invokeinterface 155 1 0
    //   171: goto -49 -> 122
    //   174: astore_3
    //   175: aload 6
    //   177: monitorexit
    //   178: aload_3
    //   179: athrow
    //   180: astore 4
    //   182: aconst_null
    //   183: astore_3
    //   184: aload_3
    //   185: ifnull +9 -> 194
    //   188: aload_3
    //   189: invokeinterface 155 1 0
    //   194: aload 4
    //   196: athrow
    //   197: astore 4
    //   199: goto -15 -> 184
    //   202: astore 5
    //   204: goto -71 -> 133
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	207	0	this	cy
    //   0	207	1	paramLong	long
    //   33	103	3	localObject1	Object
    //   174	5	3	localObject2	Object
    //   183	6	3	localObject3	Object
    //   61	104	4	localCursor	Cursor
    //   180	15	4	localObject4	Object
    //   197	1	4	localObject5	Object
    //   128	18	5	localSQLiteException1	SQLiteException
    //   202	1	5	localSQLiteException2	SQLiteException
    //   3	173	6	localObject6	Object
    //   15	111	7	localLinkedList	java.util.LinkedList
    //   103	3	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   44	63	128	android/database/sqlite/SQLiteException
    //   8	17	174	finally
    //   23	26	174	finally
    //   29	34	174	finally
    //   38	41	174	finally
    //   115	122	174	finally
    //   122	125	174	finally
    //   164	171	174	finally
    //   188	194	174	finally
    //   194	197	174	finally
    //   44	63	180	finally
    //   66	76	197	finally
    //   79	93	197	finally
    //   96	105	197	finally
    //   136	159	197	finally
    //   66	76	202	android/database/sqlite/SQLiteException
    //   79	93	202	android/database/sqlite/SQLiteException
    //   96	105	202	android/database/sqlite/SQLiteException
  }
  
  public int getRecordCount()
  {
    localObject4 = null;
    Object localObject1 = null;
    Object localObject5;
    synchronized (lq)
    {
      localObject5 = getWritableDatabase();
      if (localObject5 == null) {
        return 0;
      }
    }
    try
    {
      localObject5 = ((SQLiteDatabase)localObject5).rawQuery("select count(*) from InAppPurchase", null);
      localObject1 = localObject5;
      localObject4 = localObject5;
      if (((Cursor)localObject5).moveToFirst())
      {
        localObject1 = localObject5;
        localObject4 = localObject5;
        int i = ((Cursor)localObject5).getInt(0);
        if (localObject5 != null) {
          ((Cursor)localObject5).close();
        }
        return i;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        localObject4 = localObject2;
        ev.D("Error getting record count" + localSQLiteException.getMessage());
        if (localObject2 != null) {
          ((Cursor)localObject2).close();
        }
      }
    }
    finally
    {
      if (localObject4 == null) {
        break label146;
      }
      ((Cursor)localObject4).close();
    }
    return 0;
  }
  
  public SQLiteDatabase getWritableDatabase()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = pq.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      ev.D("Error opening writable conversion tracking database");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */