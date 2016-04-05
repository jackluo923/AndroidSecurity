package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.im;
import java.util.Collections;
import java.util.List;
import org.apache.http.impl.client.DefaultHttpClient;

class ca
  implements at
{
  private static final String wM = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", new Object[] { "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time" });
  private ik aec;
  private final ca.b agn;
  private volatile ab ago;
  private final au agp;
  private final Context mContext;
  private final String wP;
  private long wR;
  private final int wS;
  
  ca(au paramau, Context paramContext)
  {
    this(paramau, paramContext, "gtm_urls.db", 2000);
  }
  
  ca(au paramau, Context paramContext, String paramString, int paramInt)
  {
    mContext = paramContext.getApplicationContext();
    wP = paramString;
    agp = paramau;
    aec = im.fW();
    agn = new ca.b(this, mContext, wP);
    ago = new da(new DefaultHttpClient(), mContext, new ca.a(this));
    wR = 0L;
    wS = paramInt;
  }
  
  private SQLiteDatabase S(String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = agn.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      bh.D(paramString);
    }
    return null;
  }
  
  private void c(long paramLong1, long paramLong2)
  {
    SQLiteDatabase localSQLiteDatabase = S("Error opening database for getNumStoredHits.");
    if (localSQLiteDatabase == null) {
      return;
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("hit_first_send_time", Long.valueOf(paramLong2));
    try
    {
      localSQLiteDatabase.update("gtm_hits", localContentValues, "hit_id=?", new String[] { String.valueOf(paramLong1) });
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      bh.D("Error setting HIT_FIRST_DISPATCH_TIME for hitId: " + paramLong1);
      y(paramLong1);
    }
  }
  
  private void dm()
  {
    int i = jdMethod_do() - wS + 1;
    if (i > 0)
    {
      List localList = A(i);
      bh.C("Store full, deleting " + localList.size() + " hits to make room.");
      a((String[])localList.toArray(new String[0]));
    }
  }
  
  private void g(long paramLong, String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = S("Error opening database for putHit");
    if (localSQLiteDatabase == null) {
      return;
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("hit_time", Long.valueOf(paramLong));
    localContentValues.put("hit_url", paramString);
    localContentValues.put("hit_first_send_time", Integer.valueOf(0));
    try
    {
      localSQLiteDatabase.insert("gtm_hits", null, localContentValues);
      agp.s(false);
      return;
    }
    catch (SQLiteException paramString)
    {
      bh.D("Error storing hit");
    }
  }
  
  private void y(long paramLong)
  {
    a(new String[] { String.valueOf(paramLong) });
  }
  
  /* Error */
  List<String> A(int paramInt)
  {
    // Byte code:
    //   0: new 238	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 239	java/util/ArrayList:<init>	()V
    //   7: astore 5
    //   9: iload_1
    //   10: ifgt +11 -> 21
    //   13: ldc -15
    //   15: invokestatic 115	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   18: aload 5
    //   20: areturn
    //   21: aload_0
    //   22: ldc -13
    //   24: invokespecial 134	com/google/android/gms/tagmanager/ca:S	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   27: astore_2
    //   28: aload_2
    //   29: ifnonnull +6 -> 35
    //   32: aload 5
    //   34: areturn
    //   35: ldc -11
    //   37: iconst_1
    //   38: anewarray 4	java/lang/Object
    //   41: dup
    //   42: iconst_0
    //   43: ldc 31
    //   45: aastore
    //   46: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   49: astore_3
    //   50: iload_1
    //   51: invokestatic 248	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   54: astore 4
    //   56: aload_2
    //   57: ldc 29
    //   59: iconst_1
    //   60: anewarray 39	java/lang/String
    //   63: dup
    //   64: iconst_0
    //   65: ldc 31
    //   67: aastore
    //   68: aconst_null
    //   69: aconst_null
    //   70: aconst_null
    //   71: aconst_null
    //   72: aload_3
    //   73: aload 4
    //   75: invokevirtual 252	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   78: astore_3
    //   79: aload_3
    //   80: astore_2
    //   81: aload_3
    //   82: invokeinterface 258 1 0
    //   87: ifeq +38 -> 125
    //   90: aload_3
    //   91: astore_2
    //   92: aload 5
    //   94: aload_3
    //   95: iconst_0
    //   96: invokeinterface 262 2 0
    //   101: invokestatic 152	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   104: invokeinterface 266 2 0
    //   109: pop
    //   110: aload_3
    //   111: astore_2
    //   112: aload_3
    //   113: invokeinterface 269 1 0
    //   118: istore 6
    //   120: iload 6
    //   122: ifne -32 -> 90
    //   125: aload_3
    //   126: ifnull +9 -> 135
    //   129: aload_3
    //   130: invokeinterface 272 1 0
    //   135: aload 5
    //   137: areturn
    //   138: astore 4
    //   140: aconst_null
    //   141: astore_3
    //   142: aload_3
    //   143: astore_2
    //   144: new 160	java/lang/StringBuilder
    //   147: dup
    //   148: ldc_w 274
    //   151: invokespecial 164	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   154: aload 4
    //   156: invokevirtual 277	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   159: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   165: invokestatic 115	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   168: aload_3
    //   169: ifnull -34 -> 135
    //   172: aload_3
    //   173: invokeinterface 272 1 0
    //   178: goto -43 -> 135
    //   181: astore_3
    //   182: aconst_null
    //   183: astore_2
    //   184: aload_2
    //   185: ifnull +9 -> 194
    //   188: aload_2
    //   189: invokeinterface 272 1 0
    //   194: aload_3
    //   195: athrow
    //   196: astore_3
    //   197: goto -13 -> 184
    //   200: astore 4
    //   202: goto -60 -> 142
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	205	0	this	ca
    //   0	205	1	paramInt	int
    //   27	162	2	localObject1	Object
    //   49	124	3	localObject2	Object
    //   181	14	3	localObject3	Object
    //   196	1	3	localObject4	Object
    //   54	20	4	str	String
    //   138	17	4	localSQLiteException1	SQLiteException
    //   200	1	4	localSQLiteException2	SQLiteException
    //   7	129	5	localArrayList	java.util.ArrayList
    //   118	3	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   35	79	138	android/database/sqlite/SQLiteException
    //   35	79	181	finally
    //   81	90	196	finally
    //   92	110	196	finally
    //   112	120	196	finally
    //   144	168	196	finally
    //   81	90	200	android/database/sqlite/SQLiteException
    //   92	110	200	android/database/sqlite/SQLiteException
    //   112	120	200	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  public List<ap> B(int paramInt)
  {
    // Byte code:
    //   0: new 238	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 239	java/util/ArrayList:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: ldc_w 282
    //   12: invokespecial 134	com/google/android/gms/tagmanager/ca:S	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   15: astore 6
    //   17: aload 6
    //   19: ifnonnull +9 -> 28
    //   22: aload_3
    //   23: astore 4
    //   25: aload 4
    //   27: areturn
    //   28: aconst_null
    //   29: astore_2
    //   30: ldc -11
    //   32: iconst_1
    //   33: anewarray 4	java/lang/Object
    //   36: dup
    //   37: iconst_0
    //   38: ldc 31
    //   40: aastore
    //   41: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   44: astore 4
    //   46: iload_1
    //   47: invokestatic 248	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   50: astore 5
    //   52: aload 6
    //   54: ldc 29
    //   56: iconst_3
    //   57: anewarray 39	java/lang/String
    //   60: dup
    //   61: iconst_0
    //   62: ldc 31
    //   64: aastore
    //   65: dup
    //   66: iconst_1
    //   67: ldc 33
    //   69: aastore
    //   70: dup
    //   71: iconst_2
    //   72: ldc 37
    //   74: aastore
    //   75: aconst_null
    //   76: aconst_null
    //   77: aconst_null
    //   78: aconst_null
    //   79: aload 4
    //   81: aload 5
    //   83: invokevirtual 252	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   86: astore 4
    //   88: aload 4
    //   90: astore_2
    //   91: new 238	java/util/ArrayList
    //   94: dup
    //   95: invokespecial 239	java/util/ArrayList:<init>	()V
    //   98: astore 5
    //   100: aload_2
    //   101: invokeinterface 258 1 0
    //   106: ifeq +52 -> 158
    //   109: aload 5
    //   111: new 284	com/google/android/gms/tagmanager/ap
    //   114: dup
    //   115: aload_2
    //   116: iconst_0
    //   117: invokeinterface 262 2 0
    //   122: aload_2
    //   123: iconst_1
    //   124: invokeinterface 262 2 0
    //   129: aload_2
    //   130: iconst_2
    //   131: invokeinterface 262 2 0
    //   136: invokespecial 287	com/google/android/gms/tagmanager/ap:<init>	(JJJ)V
    //   139: invokeinterface 266 2 0
    //   144: pop
    //   145: aload_2
    //   146: invokeinterface 269 1 0
    //   151: istore 9
    //   153: iload 9
    //   155: ifne -46 -> 109
    //   158: aload_2
    //   159: ifnull +9 -> 168
    //   162: aload_2
    //   163: invokeinterface 272 1 0
    //   168: aload_2
    //   169: astore_3
    //   170: ldc -11
    //   172: iconst_1
    //   173: anewarray 4	java/lang/Object
    //   176: dup
    //   177: iconst_0
    //   178: ldc 31
    //   180: aastore
    //   181: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   184: astore 4
    //   186: aload_2
    //   187: astore_3
    //   188: iload_1
    //   189: invokestatic 248	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   192: astore 7
    //   194: aload_2
    //   195: astore_3
    //   196: aload 6
    //   198: ldc 29
    //   200: iconst_2
    //   201: anewarray 39	java/lang/String
    //   204: dup
    //   205: iconst_0
    //   206: ldc 31
    //   208: aastore
    //   209: dup
    //   210: iconst_1
    //   211: ldc 35
    //   213: aastore
    //   214: aconst_null
    //   215: aconst_null
    //   216: aconst_null
    //   217: aconst_null
    //   218: aload 4
    //   220: aload 7
    //   222: invokevirtual 252	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   225: astore 4
    //   227: aload 4
    //   229: invokeinterface 258 1 0
    //   234: ifeq +55 -> 289
    //   237: iconst_0
    //   238: istore_1
    //   239: aload 4
    //   241: checkcast 289	android/database/sqlite/SQLiteCursor
    //   244: invokevirtual 293	android/database/sqlite/SQLiteCursor:getWindow	()Landroid/database/CursorWindow;
    //   247: invokevirtual 298	android/database/CursorWindow:getNumRows	()I
    //   250: ifle +122 -> 372
    //   253: aload 5
    //   255: iload_1
    //   256: invokeinterface 302 2 0
    //   261: checkcast 284	com/google/android/gms/tagmanager/ap
    //   264: aload 4
    //   266: iconst_1
    //   267: invokeinterface 305 2 0
    //   272: invokevirtual 308	com/google/android/gms/tagmanager/ap:R	(Ljava/lang/String;)V
    //   275: aload 4
    //   277: invokeinterface 269 1 0
    //   282: istore 9
    //   284: iload 9
    //   286: ifne +321 -> 607
    //   289: aload 4
    //   291: ifnull +10 -> 301
    //   294: aload 4
    //   296: invokeinterface 272 1 0
    //   301: aload 5
    //   303: areturn
    //   304: astore 4
    //   306: aconst_null
    //   307: astore 5
    //   309: aload_3
    //   310: astore_2
    //   311: aload 5
    //   313: astore_3
    //   314: new 160	java/lang/StringBuilder
    //   317: dup
    //   318: ldc_w 274
    //   321: invokespecial 164	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   324: aload 4
    //   326: invokevirtual 277	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   329: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   335: invokestatic 115	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   338: aload_2
    //   339: astore 4
    //   341: aload_3
    //   342: ifnull -317 -> 25
    //   345: aload_3
    //   346: invokeinterface 272 1 0
    //   351: aload_2
    //   352: areturn
    //   353: astore 4
    //   355: aload_2
    //   356: astore_3
    //   357: aload 4
    //   359: astore_2
    //   360: aload_3
    //   361: ifnull +9 -> 370
    //   364: aload_3
    //   365: invokeinterface 272 1 0
    //   370: aload_2
    //   371: athrow
    //   372: ldc_w 310
    //   375: iconst_1
    //   376: anewarray 4	java/lang/Object
    //   379: dup
    //   380: iconst_0
    //   381: aload 5
    //   383: iload_1
    //   384: invokeinterface 302 2 0
    //   389: checkcast 284	com/google/android/gms/tagmanager/ap
    //   392: invokevirtual 314	com/google/android/gms/tagmanager/ap:dg	()J
    //   395: invokestatic 143	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   398: aastore
    //   399: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   402: invokestatic 115	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   405: goto -130 -> 275
    //   408: astore_3
    //   409: aload 4
    //   411: astore_2
    //   412: aload_3
    //   413: astore 4
    //   415: aload_2
    //   416: astore_3
    //   417: new 160	java/lang/StringBuilder
    //   420: dup
    //   421: ldc_w 316
    //   424: invokespecial 164	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   427: aload 4
    //   429: invokevirtual 277	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   432: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   435: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   438: invokestatic 115	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   441: aload_2
    //   442: astore_3
    //   443: new 238	java/util/ArrayList
    //   446: dup
    //   447: invokespecial 239	java/util/ArrayList:<init>	()V
    //   450: astore 4
    //   452: aload_2
    //   453: astore_3
    //   454: aload 5
    //   456: invokeinterface 320 1 0
    //   461: astore 5
    //   463: iconst_0
    //   464: istore_1
    //   465: aload_2
    //   466: astore_3
    //   467: aload 5
    //   469: invokeinterface 325 1 0
    //   474: ifeq +71 -> 545
    //   477: aload_2
    //   478: astore_3
    //   479: aload 5
    //   481: invokeinterface 329 1 0
    //   486: checkcast 284	com/google/android/gms/tagmanager/ap
    //   489: astore 6
    //   491: iload_1
    //   492: istore 8
    //   494: aload_2
    //   495: astore_3
    //   496: aload 6
    //   498: invokevirtual 332	com/google/android/gms/tagmanager/ap:lJ	()Ljava/lang/String;
    //   501: invokestatic 338	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   504: ifeq +10 -> 514
    //   507: iload_1
    //   508: ifne +37 -> 545
    //   511: iconst_1
    //   512: istore 8
    //   514: aload_2
    //   515: astore_3
    //   516: aload 4
    //   518: aload 6
    //   520: invokeinterface 266 2 0
    //   525: pop
    //   526: iload 8
    //   528: istore_1
    //   529: goto -64 -> 465
    //   532: astore_2
    //   533: aload_3
    //   534: ifnull +9 -> 543
    //   537: aload_3
    //   538: invokeinterface 272 1 0
    //   543: aload_2
    //   544: athrow
    //   545: aload_2
    //   546: ifnull +9 -> 555
    //   549: aload_2
    //   550: invokeinterface 272 1 0
    //   555: aload 4
    //   557: areturn
    //   558: astore_2
    //   559: aload 4
    //   561: astore_3
    //   562: goto -29 -> 533
    //   565: astore 4
    //   567: goto -152 -> 415
    //   570: astore 4
    //   572: aload_2
    //   573: astore_3
    //   574: aload 4
    //   576: astore_2
    //   577: goto -217 -> 360
    //   580: astore_2
    //   581: goto -221 -> 360
    //   584: astore 4
    //   586: aload_2
    //   587: astore 5
    //   589: aload_3
    //   590: astore_2
    //   591: aload 5
    //   593: astore_3
    //   594: goto -280 -> 314
    //   597: astore 4
    //   599: aload_2
    //   600: astore_3
    //   601: aload 5
    //   603: astore_2
    //   604: goto -290 -> 314
    //   607: iload_1
    //   608: iconst_1
    //   609: iadd
    //   610: istore_1
    //   611: goto -372 -> 239
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	614	0	this	ca
    //   0	614	1	paramInt	int
    //   29	486	2	localObject1	Object
    //   532	18	2	localObject2	Object
    //   558	15	2	localObject3	Object
    //   576	1	2	localObject4	Object
    //   580	7	2	localObject5	Object
    //   590	14	2	localObject6	Object
    //   7	358	3	localObject7	Object
    //   408	5	3	localSQLiteException1	SQLiteException
    //   416	185	3	localObject8	Object
    //   23	272	4	localObject9	Object
    //   304	21	4	localSQLiteException2	SQLiteException
    //   339	1	4	localObject10	Object
    //   353	57	4	localObject11	Object
    //   413	147	4	localObject12	Object
    //   565	1	4	localSQLiteException3	SQLiteException
    //   570	5	4	localObject13	Object
    //   584	1	4	localSQLiteException4	SQLiteException
    //   597	1	4	localSQLiteException5	SQLiteException
    //   50	552	5	localObject14	Object
    //   15	504	6	localObject15	Object
    //   192	29	7	str	String
    //   492	35	8	i	int
    //   151	134	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   30	88	304	android/database/sqlite/SQLiteException
    //   30	88	353	finally
    //   227	237	408	android/database/sqlite/SQLiteException
    //   239	275	408	android/database/sqlite/SQLiteException
    //   275	284	408	android/database/sqlite/SQLiteException
    //   372	405	408	android/database/sqlite/SQLiteException
    //   170	186	532	finally
    //   188	194	532	finally
    //   196	227	532	finally
    //   417	441	532	finally
    //   443	452	532	finally
    //   454	463	532	finally
    //   467	477	532	finally
    //   479	491	532	finally
    //   496	507	532	finally
    //   516	526	532	finally
    //   227	237	558	finally
    //   239	275	558	finally
    //   275	284	558	finally
    //   372	405	558	finally
    //   170	186	565	android/database/sqlite/SQLiteException
    //   188	194	565	android/database/sqlite/SQLiteException
    //   196	227	565	android/database/sqlite/SQLiteException
    //   91	100	570	finally
    //   100	109	570	finally
    //   109	153	570	finally
    //   314	338	580	finally
    //   91	100	584	android/database/sqlite/SQLiteException
    //   100	109	597	android/database/sqlite/SQLiteException
    //   109	153	597	android/database/sqlite/SQLiteException
  }
  
  void a(String[] paramArrayOfString)
  {
    boolean bool = true;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {}
    SQLiteDatabase localSQLiteDatabase;
    do
    {
      return;
      localSQLiteDatabase = S("Error opening database for deleteHits.");
    } while (localSQLiteDatabase == null);
    String str = String.format("HIT_ID in (%s)", new Object[] { TextUtils.join(",", Collections.nCopies(paramArrayOfString.length, "?")) });
    for (;;)
    {
      try
      {
        localSQLiteDatabase.delete("gtm_hits", str, paramArrayOfString);
        paramArrayOfString = agp;
        if (jdMethod_do() == 0)
        {
          paramArrayOfString.s(bool);
          return;
        }
      }
      catch (SQLiteException paramArrayOfString)
      {
        bh.D("Error deleting hits");
        return;
      }
      bool = false;
    }
  }
  
  public void cl()
  {
    bh.C("GTM Dispatch running...");
    if (!ago.cx()) {}
    do
    {
      return;
      List localList = B(40);
      if (localList.isEmpty())
      {
        bh.C("...nothing to dispatch");
        agp.s(true);
        return;
      }
      ago.g(localList);
    } while (lW() <= 0);
    cx.mL().cl();
  }
  
  int dn()
  {
    boolean bool = true;
    long l = aec.currentTimeMillis();
    if (l <= wR + 86400000L) {}
    do
    {
      return 0;
      wR = l;
      localObject = S("Error opening database for deleteStaleHits.");
    } while (localObject == null);
    int i = ((SQLiteDatabase)localObject).delete("gtm_hits", "HIT_TIME < ?", new String[] { Long.toString(aec.currentTimeMillis() - 2592000000L) });
    Object localObject = agp;
    if (jdMethod_do() == 0) {}
    for (;;)
    {
      ((au)localObject).s(bool);
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
        localObject5 = ((SQLiteDatabase)localObject5).rawQuery("SELECT COUNT(*) from gtm_hits", null);
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
        bh.D("Error getting numStoredHits");
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
  
  public void f(long paramLong, String paramString)
  {
    dn();
    dm();
    g(paramLong, paramString);
  }
  
  /* Error */
  int lW()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: ldc -124
    //   5: invokespecial 134	com/google/android/gms/tagmanager/ca:S	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   8: astore_1
    //   9: aload_1
    //   10: ifnonnull +5 -> 15
    //   13: iconst_0
    //   14: ireturn
    //   15: aload_1
    //   16: ldc 29
    //   18: iconst_2
    //   19: anewarray 39	java/lang/String
    //   22: dup
    //   23: iconst_0
    //   24: ldc 31
    //   26: aastore
    //   27: dup
    //   28: iconst_1
    //   29: ldc 37
    //   31: aastore
    //   32: ldc_w 424
    //   35: aconst_null
    //   36: aconst_null
    //   37: aconst_null
    //   38: aconst_null
    //   39: invokevirtual 427	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   42: astore_1
    //   43: aload_1
    //   44: invokeinterface 430 1 0
    //   49: istore 5
    //   51: iload 5
    //   53: istore 4
    //   55: aload_1
    //   56: ifnull +13 -> 69
    //   59: aload_1
    //   60: invokeinterface 272 1 0
    //   65: iload 5
    //   67: istore 4
    //   69: iload 4
    //   71: ireturn
    //   72: astore_1
    //   73: aconst_null
    //   74: astore_1
    //   75: ldc_w 432
    //   78: invokestatic 115	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   81: aload_1
    //   82: ifnull +48 -> 130
    //   85: aload_1
    //   86: invokeinterface 272 1 0
    //   91: iconst_0
    //   92: istore 4
    //   94: goto -25 -> 69
    //   97: astore_1
    //   98: aload_2
    //   99: ifnull +9 -> 108
    //   102: aload_2
    //   103: invokeinterface 272 1 0
    //   108: aload_1
    //   109: athrow
    //   110: astore_3
    //   111: aload_1
    //   112: astore_2
    //   113: aload_3
    //   114: astore_1
    //   115: goto -17 -> 98
    //   118: astore_3
    //   119: aload_1
    //   120: astore_2
    //   121: aload_3
    //   122: astore_1
    //   123: goto -25 -> 98
    //   126: astore_2
    //   127: goto -52 -> 75
    //   130: iconst_0
    //   131: istore 4
    //   133: goto -64 -> 69
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	136	0	this	ca
    //   8	52	1	localObject1	Object
    //   72	1	1	localSQLiteException1	SQLiteException
    //   74	12	1	localObject2	Object
    //   97	15	1	localObject3	Object
    //   114	9	1	localObject4	Object
    //   1	120	2	localObject5	Object
    //   126	1	2	localSQLiteException2	SQLiteException
    //   110	4	3	localObject6	Object
    //   118	4	3	localObject7	Object
    //   53	79	4	i	int
    //   49	17	5	j	int
    // Exception table:
    //   from	to	target	type
    //   15	43	72	android/database/sqlite/SQLiteException
    //   15	43	97	finally
    //   43	51	110	finally
    //   75	81	118	finally
    //   43	51	126	android/database/sqlite/SQLiteException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */