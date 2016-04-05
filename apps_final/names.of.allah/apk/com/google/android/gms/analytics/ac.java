package com.google.android.gms.analytics;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.internal.fe;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.impl.client.DefaultHttpClient;

class ac
  implements d
{
  private static final String wM = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", new Object[] { "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id" });
  private final Context mContext;
  private final e tZ;
  private i ur;
  private final ac.a wN;
  private volatile n wO;
  private final String wP;
  private ab wQ;
  private long wR;
  private final int wS;
  
  ac(e parame, Context paramContext)
  {
    this(parame, paramContext, "google_analytics_v4.db", 2000);
  }
  
  ac(e parame, Context paramContext, String paramString, int paramInt)
  {
    mContext = paramContext.getApplicationContext();
    wP = paramString;
    tZ = parame;
    ur = new ac.1(this);
    wN = new ac.a(this, mContext, wP);
    wO = new ah(new DefaultHttpClient(), mContext);
    wR = 0L;
    wS = paramInt;
  }
  
  private SQLiteDatabase S(String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = wN.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      aa.D(paramString);
    }
    return null;
  }
  
  private void a(Map<String, String> paramMap, long paramLong, String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = S("Error opening database for putHit");
    if (localSQLiteDatabase == null) {
      return;
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("hit_string", v(paramMap));
    localContentValues.put("hit_time", Long.valueOf(paramLong));
    if (paramMap.containsKey("AppUID")) {}
    for (;;)
    {
      try
      {
        paramLong = Long.parseLong((String)paramMap.get("AppUID"));
        localContentValues.put("hit_app_id", Long.valueOf(paramLong));
        paramMap = paramString;
        if (paramString == null) {
          paramMap = "http://www.google-analytics.com/collect";
        }
        if (paramMap.length() != 0) {
          break;
        }
        aa.D("Empty path: not sending hit");
        return;
      }
      catch (NumberFormatException paramMap) {}
      paramLong = 0L;
    }
    localContentValues.put("hit_url", paramMap);
    try
    {
      localSQLiteDatabase.insert("hits2", null, localContentValues);
      tZ.s(false);
      return;
    }
    catch (SQLiteException paramMap)
    {
      aa.D("Error storing hit");
    }
  }
  
  private void a(Map<String, String> paramMap, Collection<fe> paramCollection)
  {
    String str = "&_v".substring(1);
    if (paramCollection != null)
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        fe localfe = (fe)paramCollection.next();
        if ("appendVersion".equals(localfe.getId())) {
          paramMap.put(str, localfe.getValue());
        }
      }
    }
  }
  
  private void dm()
  {
    int i = jdMethod_do() - wS + 1;
    if (i > 0)
    {
      List localList = A(i);
      aa.C("Store full, deleting " + localList.size() + " hits to make room.");
      a((String[])localList.toArray(new String[0]));
    }
  }
  
  static String v(Map<String, String> paramMap)
  {
    ArrayList localArrayList = new ArrayList(paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localArrayList.add(y.encode((String)localEntry.getKey()) + "=" + y.encode((String)localEntry.getValue()));
    }
    return TextUtils.join("&", localArrayList);
  }
  
  /* Error */
  List<String> A(int paramInt)
  {
    // Byte code:
    //   0: new 273	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 313	java/util/ArrayList:<init>	()V
    //   7: astore 5
    //   9: iload_1
    //   10: ifgt +12 -> 22
    //   13: ldc_w 315
    //   16: invokestatic 113	com/google/android/gms/analytics/aa:D	(Ljava/lang/String;)V
    //   19: aload 5
    //   21: areturn
    //   22: aload_0
    //   23: ldc_w 317
    //   26: invokespecial 122	com/google/android/gms/analytics/ac:S	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   29: astore_2
    //   30: aload_2
    //   31: ifnonnull +6 -> 37
    //   34: aload 5
    //   36: areturn
    //   37: ldc_w 319
    //   40: iconst_1
    //   41: anewarray 4	java/lang/Object
    //   44: dup
    //   45: iconst_0
    //   46: ldc 33
    //   48: aastore
    //   49: invokestatic 47	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   52: astore_3
    //   53: iload_1
    //   54: invokestatic 323	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   57: astore 4
    //   59: aload_2
    //   60: ldc 31
    //   62: iconst_1
    //   63: anewarray 43	java/lang/String
    //   66: dup
    //   67: iconst_0
    //   68: ldc 33
    //   70: aastore
    //   71: aconst_null
    //   72: aconst_null
    //   73: aconst_null
    //   74: aconst_null
    //   75: aload_3
    //   76: aload 4
    //   78: invokevirtual 327	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   81: astore_3
    //   82: aload_3
    //   83: astore_2
    //   84: aload_3
    //   85: invokeinterface 332 1 0
    //   90: ifeq +38 -> 128
    //   93: aload_3
    //   94: astore_2
    //   95: aload 5
    //   97: aload_3
    //   98: iconst_0
    //   99: invokeinterface 336 2 0
    //   104: invokestatic 339	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   107: invokeinterface 303 2 0
    //   112: pop
    //   113: aload_3
    //   114: astore_2
    //   115: aload_3
    //   116: invokeinterface 342 1 0
    //   121: istore 6
    //   123: iload 6
    //   125: ifne -32 -> 93
    //   128: aload_3
    //   129: ifnull +9 -> 138
    //   132: aload_3
    //   133: invokeinterface 345 1 0
    //   138: aload 5
    //   140: areturn
    //   141: astore 4
    //   143: aconst_null
    //   144: astore_3
    //   145: aload_3
    //   146: astore_2
    //   147: new 237	java/lang/StringBuilder
    //   150: dup
    //   151: ldc_w 347
    //   154: invokespecial 241	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   157: aload 4
    //   159: invokevirtual 350	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   162: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 258	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: invokestatic 113	com/google/android/gms/analytics/aa:D	(Ljava/lang/String;)V
    //   171: aload_3
    //   172: ifnull -34 -> 138
    //   175: aload_3
    //   176: invokeinterface 345 1 0
    //   181: goto -43 -> 138
    //   184: astore_3
    //   185: aconst_null
    //   186: astore_2
    //   187: aload_2
    //   188: ifnull +9 -> 197
    //   191: aload_2
    //   192: invokeinterface 345 1 0
    //   197: aload_3
    //   198: athrow
    //   199: astore_3
    //   200: goto -13 -> 187
    //   203: astore 4
    //   205: goto -60 -> 145
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	208	0	this	ac
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
  
  /* Error */
  public List<x> B(int paramInt)
  {
    // Byte code:
    //   0: new 273	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 313	java/util/ArrayList:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: ldc_w 354
    //   12: invokespecial 122	com/google/android/gms/analytics/ac:S	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   15: astore 6
    //   17: aload 6
    //   19: ifnonnull +9 -> 28
    //   22: aload_3
    //   23: astore 4
    //   25: aload 4
    //   27: areturn
    //   28: aconst_null
    //   29: astore_2
    //   30: ldc_w 319
    //   33: iconst_1
    //   34: anewarray 4	java/lang/Object
    //   37: dup
    //   38: iconst_0
    //   39: ldc 33
    //   41: aastore
    //   42: invokestatic 47	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   45: astore 4
    //   47: iload_1
    //   48: invokestatic 323	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   51: astore 5
    //   53: aload 6
    //   55: ldc 31
    //   57: iconst_2
    //   58: anewarray 43	java/lang/String
    //   61: dup
    //   62: iconst_0
    //   63: ldc 33
    //   65: aastore
    //   66: dup
    //   67: iconst_1
    //   68: ldc 35
    //   70: aastore
    //   71: aconst_null
    //   72: aconst_null
    //   73: aconst_null
    //   74: aconst_null
    //   75: aload 4
    //   77: aload 5
    //   79: invokevirtual 327	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   82: astore 4
    //   84: aload 4
    //   86: astore_2
    //   87: new 273	java/util/ArrayList
    //   90: dup
    //   91: invokespecial 313	java/util/ArrayList:<init>	()V
    //   94: astore 5
    //   96: aload_2
    //   97: invokeinterface 332 1 0
    //   102: ifeq +46 -> 148
    //   105: aload 5
    //   107: new 356	com/google/android/gms/analytics/x
    //   110: dup
    //   111: aconst_null
    //   112: aload_2
    //   113: iconst_0
    //   114: invokeinterface 336 2 0
    //   119: aload_2
    //   120: iconst_1
    //   121: invokeinterface 336 2 0
    //   126: invokespecial 359	com/google/android/gms/analytics/x:<init>	(Ljava/lang/String;JJ)V
    //   129: invokeinterface 303 2 0
    //   134: pop
    //   135: aload_2
    //   136: invokeinterface 342 1 0
    //   141: istore 9
    //   143: iload 9
    //   145: ifne -40 -> 105
    //   148: aload_2
    //   149: ifnull +9 -> 158
    //   152: aload_2
    //   153: invokeinterface 345 1 0
    //   158: aload_2
    //   159: astore_3
    //   160: ldc_w 319
    //   163: iconst_1
    //   164: anewarray 4	java/lang/Object
    //   167: dup
    //   168: iconst_0
    //   169: ldc 33
    //   171: aastore
    //   172: invokestatic 47	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   175: astore 4
    //   177: aload_2
    //   178: astore_3
    //   179: iload_1
    //   180: invokestatic 323	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   183: astore 7
    //   185: aload_2
    //   186: astore_3
    //   187: aload 6
    //   189: ldc 31
    //   191: iconst_3
    //   192: anewarray 43	java/lang/String
    //   195: dup
    //   196: iconst_0
    //   197: ldc 33
    //   199: aastore
    //   200: dup
    //   201: iconst_1
    //   202: ldc 39
    //   204: aastore
    //   205: dup
    //   206: iconst_2
    //   207: ldc 37
    //   209: aastore
    //   210: aconst_null
    //   211: aconst_null
    //   212: aconst_null
    //   213: aconst_null
    //   214: aload 4
    //   216: aload 7
    //   218: invokevirtual 327	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   221: astore 4
    //   223: aload 4
    //   225: invokeinterface 332 1 0
    //   230: ifeq +77 -> 307
    //   233: iconst_0
    //   234: istore_1
    //   235: aload 4
    //   237: checkcast 361	android/database/sqlite/SQLiteCursor
    //   240: invokevirtual 365	android/database/sqlite/SQLiteCursor:getWindow	()Landroid/database/CursorWindow;
    //   243: invokevirtual 370	android/database/CursorWindow:getNumRows	()I
    //   246: ifle +144 -> 390
    //   249: aload 5
    //   251: iload_1
    //   252: invokeinterface 373 2 0
    //   257: checkcast 356	com/google/android/gms/analytics/x
    //   260: aload 4
    //   262: iconst_1
    //   263: invokeinterface 376 2 0
    //   268: invokevirtual 379	com/google/android/gms/analytics/x:Q	(Ljava/lang/String;)V
    //   271: aload 5
    //   273: iload_1
    //   274: invokeinterface 373 2 0
    //   279: checkcast 356	com/google/android/gms/analytics/x
    //   282: aload 4
    //   284: iconst_2
    //   285: invokeinterface 376 2 0
    //   290: invokevirtual 382	com/google/android/gms/analytics/x:R	(Ljava/lang/String;)V
    //   293: aload 4
    //   295: invokeinterface 342 1 0
    //   300: istore 9
    //   302: iload 9
    //   304: ifne +321 -> 625
    //   307: aload 4
    //   309: ifnull +10 -> 319
    //   312: aload 4
    //   314: invokeinterface 345 1 0
    //   319: aload 5
    //   321: areturn
    //   322: astore 4
    //   324: aconst_null
    //   325: astore 5
    //   327: aload_3
    //   328: astore_2
    //   329: aload 5
    //   331: astore_3
    //   332: new 237	java/lang/StringBuilder
    //   335: dup
    //   336: ldc_w 347
    //   339: invokespecial 241	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   342: aload 4
    //   344: invokevirtual 350	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   347: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: invokevirtual 258	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   353: invokestatic 113	com/google/android/gms/analytics/aa:D	(Ljava/lang/String;)V
    //   356: aload_2
    //   357: astore 4
    //   359: aload_3
    //   360: ifnull -335 -> 25
    //   363: aload_3
    //   364: invokeinterface 345 1 0
    //   369: aload_2
    //   370: areturn
    //   371: astore 4
    //   373: aload_2
    //   374: astore_3
    //   375: aload 4
    //   377: astore_2
    //   378: aload_3
    //   379: ifnull +9 -> 388
    //   382: aload_3
    //   383: invokeinterface 345 1 0
    //   388: aload_2
    //   389: athrow
    //   390: ldc_w 384
    //   393: iconst_1
    //   394: anewarray 4	java/lang/Object
    //   397: dup
    //   398: iconst_0
    //   399: aload 5
    //   401: iload_1
    //   402: invokeinterface 373 2 0
    //   407: checkcast 356	com/google/android/gms/analytics/x
    //   410: invokevirtual 388	com/google/android/gms/analytics/x:dg	()J
    //   413: invokestatic 139	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   416: aastore
    //   417: invokestatic 47	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   420: invokestatic 113	com/google/android/gms/analytics/aa:D	(Ljava/lang/String;)V
    //   423: goto -130 -> 293
    //   426: astore_3
    //   427: aload 4
    //   429: astore_2
    //   430: aload_3
    //   431: astore 4
    //   433: aload_2
    //   434: astore_3
    //   435: new 237	java/lang/StringBuilder
    //   438: dup
    //   439: ldc_w 390
    //   442: invokespecial 241	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   445: aload 4
    //   447: invokevirtual 350	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   450: invokevirtual 255	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   453: invokevirtual 258	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   456: invokestatic 113	com/google/android/gms/analytics/aa:D	(Ljava/lang/String;)V
    //   459: aload_2
    //   460: astore_3
    //   461: new 273	java/util/ArrayList
    //   464: dup
    //   465: invokespecial 313	java/util/ArrayList:<init>	()V
    //   468: astore 4
    //   470: aload_2
    //   471: astore_3
    //   472: aload 5
    //   474: invokeinterface 391 1 0
    //   479: astore 5
    //   481: iconst_0
    //   482: istore_1
    //   483: aload_2
    //   484: astore_3
    //   485: aload 5
    //   487: invokeinterface 201 1 0
    //   492: ifeq +71 -> 563
    //   495: aload_2
    //   496: astore_3
    //   497: aload 5
    //   499: invokeinterface 205 1 0
    //   504: checkcast 356	com/google/android/gms/analytics/x
    //   507: astore 6
    //   509: iload_1
    //   510: istore 8
    //   512: aload_2
    //   513: astore_3
    //   514: aload 6
    //   516: invokevirtual 394	com/google/android/gms/analytics/x:df	()Ljava/lang/String;
    //   519: invokestatic 398	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   522: ifeq +10 -> 532
    //   525: iload_1
    //   526: ifne +37 -> 563
    //   529: iconst_1
    //   530: istore 8
    //   532: aload_2
    //   533: astore_3
    //   534: aload 4
    //   536: aload 6
    //   538: invokeinterface 303 2 0
    //   543: pop
    //   544: iload 8
    //   546: istore_1
    //   547: goto -64 -> 483
    //   550: astore_2
    //   551: aload_3
    //   552: ifnull +9 -> 561
    //   555: aload_3
    //   556: invokeinterface 345 1 0
    //   561: aload_2
    //   562: athrow
    //   563: aload_2
    //   564: ifnull +9 -> 573
    //   567: aload_2
    //   568: invokeinterface 345 1 0
    //   573: aload 4
    //   575: areturn
    //   576: astore_2
    //   577: aload 4
    //   579: astore_3
    //   580: goto -29 -> 551
    //   583: astore 4
    //   585: goto -152 -> 433
    //   588: astore 4
    //   590: aload_2
    //   591: astore_3
    //   592: aload 4
    //   594: astore_2
    //   595: goto -217 -> 378
    //   598: astore_2
    //   599: goto -221 -> 378
    //   602: astore 4
    //   604: aload_2
    //   605: astore 5
    //   607: aload_3
    //   608: astore_2
    //   609: aload 5
    //   611: astore_3
    //   612: goto -280 -> 332
    //   615: astore 4
    //   617: aload_2
    //   618: astore_3
    //   619: aload 5
    //   621: astore_2
    //   622: goto -290 -> 332
    //   625: iload_1
    //   626: iconst_1
    //   627: iadd
    //   628: istore_1
    //   629: goto -394 -> 235
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	632	0	this	ac
    //   0	632	1	paramInt	int
    //   29	504	2	localObject1	Object
    //   550	18	2	localObject2	Object
    //   576	15	2	localObject3	Object
    //   594	1	2	localObject4	Object
    //   598	7	2	localObject5	Object
    //   608	14	2	localObject6	Object
    //   7	376	3	localObject7	Object
    //   426	5	3	localSQLiteException1	SQLiteException
    //   434	185	3	localObject8	Object
    //   23	290	4	localObject9	Object
    //   322	21	4	localSQLiteException2	SQLiteException
    //   357	1	4	localObject10	Object
    //   371	57	4	localObject11	Object
    //   431	147	4	localObject12	Object
    //   583	1	4	localSQLiteException3	SQLiteException
    //   588	5	4	localObject13	Object
    //   602	1	4	localSQLiteException4	SQLiteException
    //   615	1	4	localSQLiteException5	SQLiteException
    //   51	569	5	localObject14	Object
    //   15	522	6	localObject15	Object
    //   183	34	7	str	String
    //   510	35	8	i	int
    //   141	162	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   30	84	322	android/database/sqlite/SQLiteException
    //   30	84	371	finally
    //   223	233	426	android/database/sqlite/SQLiteException
    //   235	293	426	android/database/sqlite/SQLiteException
    //   293	302	426	android/database/sqlite/SQLiteException
    //   390	423	426	android/database/sqlite/SQLiteException
    //   160	177	550	finally
    //   179	185	550	finally
    //   187	223	550	finally
    //   435	459	550	finally
    //   461	470	550	finally
    //   472	481	550	finally
    //   485	495	550	finally
    //   497	509	550	finally
    //   514	525	550	finally
    //   534	544	550	finally
    //   223	233	576	finally
    //   235	293	576	finally
    //   293	302	576	finally
    //   390	423	576	finally
    //   160	177	583	android/database/sqlite/SQLiteException
    //   179	185	583	android/database/sqlite/SQLiteException
    //   187	223	583	android/database/sqlite/SQLiteException
    //   87	96	588	finally
    //   96	105	588	finally
    //   105	143	588	finally
    //   332	356	598	finally
    //   87	96	602	android/database/sqlite/SQLiteException
    //   96	105	615	android/database/sqlite/SQLiteException
    //   105	143	615	android/database/sqlite/SQLiteException
  }
  
  public void a(Map<String, String> paramMap, long paramLong, String paramString, Collection<fe> paramCollection)
  {
    dn();
    dm();
    a(paramMap, paramCollection);
    a(paramMap, paramLong, paramString);
  }
  
  void a(String[] paramArrayOfString)
  {
    boolean bool = true;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {
      aa.D("Empty hitIds passed to deleteHits.");
    }
    Object localObject;
    do
    {
      return;
      localObject = S("Error opening database for deleteHits.");
    } while (localObject == null);
    String str = String.format("HIT_ID in (%s)", new Object[] { TextUtils.join(",", Collections.nCopies(paramArrayOfString.length, "?")) });
    for (;;)
    {
      try
      {
        ((SQLiteDatabase)localObject).delete("hits2", str, paramArrayOfString);
        localObject = tZ;
        if (jdMethod_do() == 0)
        {
          ((e)localObject).s(bool);
          return;
        }
      }
      catch (SQLiteException localSQLiteException)
      {
        aa.D("Error deleting hits " + paramArrayOfString);
        return;
      }
      bool = false;
    }
  }
  
  @Deprecated
  void b(Collection<x> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty()))
    {
      aa.D("Empty/Null collection passed to deleteHits.");
      return;
    }
    String[] arrayOfString = new String[paramCollection.size()];
    paramCollection = paramCollection.iterator();
    int i = 0;
    while (paramCollection.hasNext())
    {
      arrayOfString[i] = String.valueOf(((x)paramCollection.next()).dg());
      i += 1;
    }
    a(arrayOfString);
  }
  
  public void cl()
  {
    boolean bool = true;
    aa.C("Dispatch running...");
    if (!wO.cx()) {
      return;
    }
    List localList = B(40);
    if (localList.isEmpty())
    {
      aa.C("...nothing to dispatch");
      tZ.s(true);
      return;
    }
    if (wQ == null) {
      wQ = new ab("_t=dispatch&_v=ma4.0.2", true);
    }
    if (jdMethod_do() <= localList.size()) {}
    for (;;)
    {
      int i = wO.a(localList, wQ, bool);
      aa.C("sent " + i + " of " + localList.size() + " hits");
      b(localList.subList(0, Math.min(i, localList.size())));
      if ((i != localList.size()) || (jdMethod_do() <= 0)) {
        break;
      }
      GoogleAnalytics.getInstance(mContext).dispatchLocalHits();
      return;
      bool = false;
    }
    wQ = null;
  }
  
  public n cm()
  {
    return wO;
  }
  
  int dn()
  {
    boolean bool = true;
    long l = ur.currentTimeMillis();
    if (l <= wR + 86400000L) {}
    do
    {
      return 0;
      wR = l;
      localObject = S("Error opening database for deleteStaleHits.");
    } while (localObject == null);
    int i = ((SQLiteDatabase)localObject).delete("hits2", "HIT_TIME < ?", new String[] { Long.toString(ur.currentTimeMillis() - 2592000000L) });
    Object localObject = tZ;
    if (jdMethod_do() == 0) {}
    for (;;)
    {
      ((e)localObject).s(bool);
      return i;
      bool = false;
    }
  }
  
  int jdMethod_do()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    int i = 0;
    int j = 0;
    Object localObject5 = S("Error opening database for getNumStoredHits.");
    if (localObject5 == null) {}
    for (;;)
    {
      return j;
      try
      {
        localObject5 = ((SQLiteDatabase)localObject5).rawQuery("SELECT COUNT(*) from hits2", null);
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
        aa.D("Error getting numStoredHits");
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
  
  public void l(long paramLong)
  {
    boolean bool = true;
    Object localObject = S("Error opening database for clearHits");
    if (localObject != null)
    {
      if (paramLong != 0L) {
        break label51;
      }
      ((SQLiteDatabase)localObject).delete("hits2", null, null);
      localObject = tZ;
      if (jdMethod_do() != 0) {
        break label78;
      }
    }
    for (;;)
    {
      ((e)localObject).s(bool);
      return;
      label51:
      ((SQLiteDatabase)localObject).delete("hits2", "hit_app_id = ?", new String[] { Long.valueOf(paramLong).toString() });
      break;
      label78:
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */