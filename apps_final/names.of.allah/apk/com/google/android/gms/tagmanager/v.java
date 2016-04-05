package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.im;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

class v
  implements DataLayer.c
{
  private static final String afg = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", new Object[] { "datalayer", "ID", "key", "value", "expires" });
  private ik aec;
  private final Executor afh;
  private v.a afi;
  private int afj;
  private final Context mContext;
  
  public v(Context paramContext)
  {
    this(paramContext, im.fW(), "google_tagmanager.db", 2000, Executors.newSingleThreadExecutor());
  }
  
  v(Context paramContext, ik paramik, String paramString, int paramInt, Executor paramExecutor)
  {
    mContext = paramContext;
    aec = paramik;
    afj = paramInt;
    afh = paramExecutor;
    afi = new v.a(this, mContext, paramString);
  }
  
  private SQLiteDatabase S(String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = afi.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      bh.D(paramString);
    }
    return null;
  }
  
  /* Error */
  private void b(List<v.b> paramList, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 66	com/google/android/gms/tagmanager/v:aec	Lcom/google/android/gms/internal/ik;
    //   6: invokeinterface 113 1 0
    //   11: lstore 4
    //   13: aload_0
    //   14: lload 4
    //   16: invokespecial 117	com/google/android/gms/tagmanager/v:x	(J)V
    //   19: aload_0
    //   20: aload_1
    //   21: invokeinterface 123 1 0
    //   26: invokespecial 127	com/google/android/gms/tagmanager/v:do	(I)V
    //   29: aload_0
    //   30: aload_1
    //   31: lload 4
    //   33: lload_2
    //   34: ladd
    //   35: invokespecial 130	com/google/android/gms/tagmanager/v:c	(Ljava/util/List;J)V
    //   38: aload_0
    //   39: invokespecial 133	com/google/android/gms/tagmanager/v:lA	()V
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: astore_1
    //   46: aload_0
    //   47: invokespecial 133	com/google/android/gms/tagmanager/v:lA	()V
    //   50: aload_1
    //   51: athrow
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	v
    //   0	57	1	paramList	List<v.b>
    //   0	57	2	paramLong	long
    //   11	21	4	l	long
    // Exception table:
    //   from	to	target	type
    //   2	38	45	finally
    //   38	42	52	finally
    //   46	52	52	finally
  }
  
  private void bQ(String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = S("Error opening database for clearKeysWithPrefix.");
    if (localSQLiteDatabase == null) {
      return;
    }
    try
    {
      int i = localSQLiteDatabase.delete("datalayer", "key = ? OR key LIKE ?", new String[] { paramString, paramString + ".%" });
      bh.C("Cleared " + i + " items");
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      bh.D("Error deleting entries with key prefix: " + paramString + " (" + localSQLiteException + ").");
      return;
    }
    finally
    {
      lA();
    }
  }
  
  private void c(List<v.b> paramList, long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = S("Error opening database for writeEntryToDatabase.");
    if (localSQLiteDatabase == null) {}
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        v.b localb = (v.b)paramList.next();
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("expires", Long.valueOf(paramLong));
        localContentValues.put("key", JI);
        localContentValues.put("value", afp);
        localSQLiteDatabase.insert("datalayer", null, localContentValues);
      }
    }
  }
  
  private void jdMethod_do(int paramInt)
  {
    paramInt = lz() - afj + paramInt;
    if (paramInt > 0)
    {
      List localList = dp(paramInt);
      bh.B("DataLayer store full, deleting " + localList.size() + " entries to make room.");
      g((String[])localList.toArray(new String[0]));
    }
  }
  
  /* Error */
  private List<String> dp(int paramInt)
  {
    // Byte code:
    //   0: new 255	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 256	java/util/ArrayList:<init>	()V
    //   7: astore 5
    //   9: iload_1
    //   10: ifgt +12 -> 22
    //   13: ldc_w 258
    //   16: invokestatic 91	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   19: aload 5
    //   21: areturn
    //   22: aload_0
    //   23: ldc_w 260
    //   26: invokespecial 139	com/google/android/gms/tagmanager/v:S	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   29: astore_2
    //   30: aload_2
    //   31: ifnonnull +6 -> 37
    //   34: aload 5
    //   36: areturn
    //   37: ldc_w 262
    //   40: iconst_1
    //   41: anewarray 4	java/lang/Object
    //   44: dup
    //   45: iconst_0
    //   46: ldc 26
    //   48: aastore
    //   49: invokestatic 38	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   52: astore_3
    //   53: iload_1
    //   54: invokestatic 267	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   57: astore 4
    //   59: aload_2
    //   60: ldc 24
    //   62: iconst_1
    //   63: anewarray 34	java/lang/String
    //   66: dup
    //   67: iconst_0
    //   68: ldc 26
    //   70: aastore
    //   71: aconst_null
    //   72: aconst_null
    //   73: aconst_null
    //   74: aconst_null
    //   75: aload_3
    //   76: aload 4
    //   78: invokevirtual 271	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   81: astore_3
    //   82: aload_3
    //   83: astore_2
    //   84: aload_3
    //   85: invokeinterface 276 1 0
    //   90: ifeq +38 -> 128
    //   93: aload_3
    //   94: astore_2
    //   95: aload 5
    //   97: aload_3
    //   98: iconst_0
    //   99: invokeinterface 280 2 0
    //   104: invokestatic 283	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   107: invokeinterface 287 2 0
    //   112: pop
    //   113: aload_3
    //   114: astore_2
    //   115: aload_3
    //   116: invokeinterface 290 1 0
    //   121: istore 6
    //   123: iload 6
    //   125: ifne -32 -> 93
    //   128: aload_3
    //   129: ifnull +9 -> 138
    //   132: aload_3
    //   133: invokeinterface 293 1 0
    //   138: aload 5
    //   140: areturn
    //   141: astore 4
    //   143: aconst_null
    //   144: astore_3
    //   145: aload_3
    //   146: astore_2
    //   147: new 143	java/lang/StringBuilder
    //   150: dup
    //   151: ldc_w 295
    //   154: invokespecial 164	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   157: aload 4
    //   159: invokevirtual 298	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   162: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: invokestatic 91	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   171: aload_3
    //   172: ifnull -34 -> 138
    //   175: aload_3
    //   176: invokeinterface 293 1 0
    //   181: goto -43 -> 138
    //   184: astore_3
    //   185: aconst_null
    //   186: astore_2
    //   187: aload_2
    //   188: ifnull +9 -> 197
    //   191: aload_2
    //   192: invokeinterface 293 1 0
    //   197: aload_3
    //   198: athrow
    //   199: astore_3
    //   200: goto -13 -> 187
    //   203: astore 4
    //   205: goto -60 -> 145
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	208	0	this	v
    //   0	208	1	paramInt	int
    //   29	163	2	localObject1	Object
    //   52	124	3	localObject2	Object
    //   184	14	3	localObject3	Object
    //   199	1	3	localObject4	Object
    //   57	20	4	str	String
    //   141	17	4	localSQLiteException1	SQLiteException
    //   203	1	4	localSQLiteException2	SQLiteException
    //   7	132	5	localArrayList	ArrayList
    //   121	3	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   37	82	141	android/database/sqlite/SQLiteException
    //   37	82	184	finally
    //   84	93	199	finally
    //   95	113	199	finally
    //   115	123	199	finally
    //   147	171	199	finally
    //   84	93	203	android/database/sqlite/SQLiteException
    //   95	113	203	android/database/sqlite/SQLiteException
    //   115	123	203	android/database/sqlite/SQLiteException
  }
  
  private List<DataLayer.a> e(List<v.b> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      v.b localb = (v.b)paramList.next();
      localArrayList.add(new DataLayer.a(JI, j(afp)));
    }
    return localArrayList;
  }
  
  private List<v.b> f(List<DataLayer.a> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      DataLayer.a locala = (DataLayer.a)paramList.next();
      localArrayList.add(new v.b(JI, j(afe)));
    }
    return localArrayList;
  }
  
  private void g(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {}
    SQLiteDatabase localSQLiteDatabase;
    do
    {
      return;
      localSQLiteDatabase = S("Error opening database for deleteEntries.");
    } while (localSQLiteDatabase == null);
    String str = String.format("%s in (%s)", new Object[] { "ID", TextUtils.join(",", Collections.nCopies(paramArrayOfString.length, "?")) });
    try
    {
      localSQLiteDatabase.delete("datalayer", str, paramArrayOfString);
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      bh.D("Error deleting entries " + Arrays.toString(paramArrayOfString));
    }
  }
  
  /* Error */
  private Object j(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 356	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 359	java/io/ByteArrayInputStream:<init>	([B)V
    //   8: astore_3
    //   9: new 361	java/io/ObjectInputStream
    //   12: dup
    //   13: aload_3
    //   14: invokespecial 364	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   17: astore_1
    //   18: aload_1
    //   19: invokevirtual 367	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   22: astore_2
    //   23: aload_1
    //   24: invokevirtual 368	java/io/ObjectInputStream:close	()V
    //   27: aload_3
    //   28: invokevirtual 369	java/io/ByteArrayInputStream:close	()V
    //   31: aload_2
    //   32: areturn
    //   33: astore_1
    //   34: aconst_null
    //   35: astore_1
    //   36: aload_1
    //   37: ifnull +7 -> 44
    //   40: aload_1
    //   41: invokevirtual 368	java/io/ObjectInputStream:close	()V
    //   44: aload_3
    //   45: invokevirtual 369	java/io/ByteArrayInputStream:close	()V
    //   48: aconst_null
    //   49: areturn
    //   50: astore_1
    //   51: aconst_null
    //   52: areturn
    //   53: astore_1
    //   54: aconst_null
    //   55: astore_1
    //   56: aload_1
    //   57: ifnull +7 -> 64
    //   60: aload_1
    //   61: invokevirtual 368	java/io/ObjectInputStream:close	()V
    //   64: aload_3
    //   65: invokevirtual 369	java/io/ByteArrayInputStream:close	()V
    //   68: aconst_null
    //   69: areturn
    //   70: astore_1
    //   71: aconst_null
    //   72: areturn
    //   73: astore_2
    //   74: aconst_null
    //   75: astore_1
    //   76: aload_1
    //   77: ifnull +7 -> 84
    //   80: aload_1
    //   81: invokevirtual 368	java/io/ObjectInputStream:close	()V
    //   84: aload_3
    //   85: invokevirtual 369	java/io/ByteArrayInputStream:close	()V
    //   88: aload_2
    //   89: athrow
    //   90: astore_1
    //   91: goto -3 -> 88
    //   94: astore_2
    //   95: goto -19 -> 76
    //   98: astore_2
    //   99: goto -43 -> 56
    //   102: astore_2
    //   103: goto -67 -> 36
    //   106: astore_1
    //   107: aload_2
    //   108: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	v
    //   0	109	1	paramArrayOfByte	byte[]
    //   22	10	2	localObject1	Object
    //   73	16	2	localObject2	Object
    //   94	1	2	localObject3	Object
    //   98	1	2	localClassNotFoundException	ClassNotFoundException
    //   102	6	2	localIOException	java.io.IOException
    //   8	77	3	localByteArrayInputStream	java.io.ByteArrayInputStream
    // Exception table:
    //   from	to	target	type
    //   9	18	33	java/io/IOException
    //   40	44	50	java/io/IOException
    //   44	48	50	java/io/IOException
    //   9	18	53	java/lang/ClassNotFoundException
    //   60	64	70	java/io/IOException
    //   64	68	70	java/io/IOException
    //   9	18	73	finally
    //   80	84	90	java/io/IOException
    //   84	88	90	java/io/IOException
    //   18	23	94	finally
    //   18	23	98	java/lang/ClassNotFoundException
    //   18	23	102	java/io/IOException
    //   23	31	106	java/io/IOException
  }
  
  /* Error */
  private byte[] j(Object paramObject)
  {
    // Byte code:
    //   0: new 371	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 372	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_3
    //   8: new 374	java/io/ObjectOutputStream
    //   11: dup
    //   12: aload_3
    //   13: invokespecial 377	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   16: astore_2
    //   17: aload_2
    //   18: aload_1
    //   19: invokevirtual 381	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   22: aload_3
    //   23: invokevirtual 385	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   26: astore_1
    //   27: aload_2
    //   28: invokevirtual 386	java/io/ObjectOutputStream:close	()V
    //   31: aload_3
    //   32: invokevirtual 387	java/io/ByteArrayOutputStream:close	()V
    //   35: aload_1
    //   36: areturn
    //   37: astore_1
    //   38: aconst_null
    //   39: astore_2
    //   40: aload_2
    //   41: ifnull +7 -> 48
    //   44: aload_2
    //   45: invokevirtual 386	java/io/ObjectOutputStream:close	()V
    //   48: aload_3
    //   49: invokevirtual 387	java/io/ByteArrayOutputStream:close	()V
    //   52: aconst_null
    //   53: areturn
    //   54: astore_1
    //   55: aconst_null
    //   56: areturn
    //   57: astore_1
    //   58: aconst_null
    //   59: astore_2
    //   60: aload_2
    //   61: ifnull +7 -> 68
    //   64: aload_2
    //   65: invokevirtual 386	java/io/ObjectOutputStream:close	()V
    //   68: aload_3
    //   69: invokevirtual 387	java/io/ByteArrayOutputStream:close	()V
    //   72: aload_1
    //   73: athrow
    //   74: astore_2
    //   75: goto -3 -> 72
    //   78: astore_1
    //   79: goto -19 -> 60
    //   82: astore_1
    //   83: goto -43 -> 40
    //   86: astore_2
    //   87: aload_1
    //   88: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	89	0	this	v
    //   0	89	1	paramObject	Object
    //   16	49	2	localObjectOutputStream	java.io.ObjectOutputStream
    //   74	1	2	localIOException1	java.io.IOException
    //   86	1	2	localIOException2	java.io.IOException
    //   7	62	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   8	17	37	java/io/IOException
    //   44	48	54	java/io/IOException
    //   48	52	54	java/io/IOException
    //   8	17	57	finally
    //   64	68	74	java/io/IOException
    //   68	72	74	java/io/IOException
    //   17	27	78	finally
    //   17	27	82	java/io/IOException
    //   27	35	86	java/io/IOException
  }
  
  private void lA()
  {
    try
    {
      afi.close();
      return;
    }
    catch (SQLiteException localSQLiteException) {}
  }
  
  private List<DataLayer.a> lx()
  {
    try
    {
      x(aec.currentTimeMillis());
      List localList = e(ly());
      return localList;
    }
    finally
    {
      lA();
    }
  }
  
  private List<v.b> ly()
  {
    Object localObject = S("Error opening database for loadSerialized.");
    ArrayList localArrayList = new ArrayList();
    if (localObject == null) {
      return localArrayList;
    }
    localObject = ((SQLiteDatabase)localObject).query("datalayer", new String[] { "key", "value" }, null, null, null, null, "ID", null);
    try
    {
      if (((Cursor)localObject).moveToNext()) {
        localArrayList.add(new v.b(((Cursor)localObject).getString(0), ((Cursor)localObject).getBlob(1)));
      }
      return localList;
    }
    finally
    {
      ((Cursor)localObject).close();
    }
  }
  
  private int lz()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    int i = 0;
    int j = 0;
    Object localObject5 = S("Error opening database for getNumStoredEntries.");
    if (localObject5 == null) {}
    for (;;)
    {
      return j;
      try
      {
        localObject5 = ((SQLiteDatabase)localObject5).rawQuery("SELECT COUNT(*) from datalayer", null);
        localObject1 = localObject5;
        localObject3 = localObject5;
        if (((Cursor)localObject5).moveToFirst())
        {
          localObject1 = localObject5;
          localObject3 = localObject5;
          long l = ((Cursor)localObject5).getLong(0);
          i = (int)l;
        }
        j = i;
        return i;
      }
      catch (SQLiteException localSQLiteException)
      {
        localObject4 = localObject1;
        bh.D("Error getting numStoredEntries");
        return 0;
      }
      finally
      {
        Object localObject4;
        if (localObject4 != null) {
          ((Cursor)localObject4).close();
        }
      }
    }
  }
  
  private void x(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = S("Error opening database for deleteOlderThan.");
    if (localSQLiteDatabase == null) {
      return;
    }
    try
    {
      int i = localSQLiteDatabase.delete("datalayer", "expires <= ?", new String[] { Long.toString(paramLong) });
      bh.C("Deleted " + i + " expired items");
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      bh.D("Error deleting old entries.");
    }
  }
  
  public void a(DataLayer.c.a parama)
  {
    afh.execute(new v.2(this, parama));
  }
  
  public void a(List<DataLayer.a> paramList, long paramLong)
  {
    paramList = f(paramList);
    afh.execute(new v.1(this, paramList, paramLong));
  }
  
  public void bP(String paramString)
  {
    afh.execute(new v.3(this, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */