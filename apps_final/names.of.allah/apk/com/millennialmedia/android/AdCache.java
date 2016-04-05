package com.millennialmedia.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

final class AdCache
{
  private static final String CACHED_AD_FILE = "ad.dat";
  private static final String CACHE_INCOMPLETE_PREFIX = "incompleteDownload_";
  private static final String CACHE_PREFIX = "nextCachedAd_";
  private static final String CACHE_PREFIX_APID = "nextCachedAd_apids";
  private static final String LOCK_FILE = "ad.lock";
  static final int PRIORITY_FETCH = 3;
  static final int PRIORITY_PRECACHE = 1;
  static final int PRIORITY_REFRESH = 2;
  static final String PRIVATE_CACHE_DIR = ".mmsyscache";
  private static Set<String> apidListSet;
  private static String cachedVideoList;
  private static boolean cachedVideoListLoaded;
  private static Set<String> cachedVideoSet;
  private static Map<String, String> incompleteDownloadHashMap;
  private static boolean incompleteDownloadHashMapLoaded;
  static boolean isExternalEnabled = true;
  private static Map<String, String> nextCachedAdHashMap;
  private static boolean nextCachedAdHashMapLoaded;
  
  static void cachedVideoWasAdded(Context paramContext, String paramString)
  {
    if (paramString != null) {}
    try
    {
      if (!cachedVideoListLoaded) {
        getCachedVideoList(paramContext);
      }
      if (cachedVideoSet == null) {
        cachedVideoSet = new HashSet();
      }
      cachedVideoSet.add(paramString);
      cachedVideoList = null;
      return;
    }
    finally {}
  }
  
  static void cachedVideoWasRemoved(Context paramContext, String paramString)
  {
    if (paramString != null) {}
    try
    {
      if (!cachedVideoListLoaded) {
        getCachedVideoList(paramContext);
      }
      if (cachedVideoSet != null)
      {
        cachedVideoSet.remove(paramString);
        cachedVideoList = null;
      }
      return;
    }
    finally {}
  }
  
  static void cleanCache(Context paramContext)
  {
    Utils.ThreadUtils.execute(new AdCache.3(paramContext));
  }
  
  static void cleanUpExpiredAds(Context paramContext)
  {
    iterateCachedAds(paramContext, 1, new AdCache.4(paramContext));
  }
  
  static void cleanupCache(Context paramContext)
  {
    cleanupInternalCache(paramContext);
    if (isExternalStorageAvailable(paramContext)) {
      cleanupExternalCache(paramContext);
    }
  }
  
  static void cleanupDirectory(File paramFile, long paramLong)
  {
    paramFile = paramFile.listFiles();
    int j = paramFile.length;
    int i = 0;
    if (i < j)
    {
      File localFile = paramFile[i];
      if (localFile.isFile()) {
        if (System.currentTimeMillis() - localFile.lastModified() > paramLong) {
          localFile.delete();
        }
      }
      for (;;)
      {
        i += 1;
        break;
        if (localFile.isDirectory()) {
          try
          {
            cleanupDirectory(localFile, paramLong);
            if (localFile.list().length == 0) {
              localFile.delete();
            }
          }
          catch (SecurityException localSecurityException) {}
        }
      }
    }
  }
  
  private static void cleanupExternalCache(Context paramContext)
  {
    File localFile = getExternalCacheDirectory(paramContext);
    if (localFile == null) {}
    while ((!localFile.exists()) || (!localFile.isDirectory())) {
      return;
    }
    cleanupDirectory(localFile, sharedHandShakecreativeCacheTimeout);
  }
  
  private static void cleanupInternalCache(Context paramContext)
  {
    File localFile = getInternalCacheDirectory(paramContext);
    if (localFile == null) {}
    while ((!localFile.exists()) || (!localFile.isDirectory())) {
      return;
    }
    cleanupDirectory(localFile, sharedHandShakecreativeCacheTimeout);
  }
  
  static boolean deleteFile(Context paramContext, String paramString)
  {
    paramContext = getCachedAdFile(paramContext, paramString);
    if (paramContext != null) {
      return paramContext.delete();
    }
    return false;
  }
  
  /* Error */
  static boolean downloadComponent(String paramString1, String paramString2, File paramFile, Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 8
    //   6: aconst_null
    //   7: astore 4
    //   9: aconst_null
    //   10: astore 7
    //   12: aload_0
    //   13: invokestatic 181	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   16: ifeq +10 -> 26
    //   19: ldc -73
    //   21: invokestatic 189	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   24: iconst_0
    //   25: ireturn
    //   26: new 114	java/io/File
    //   29: dup
    //   30: aload_2
    //   31: aload_1
    //   32: invokespecial 192	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   35: astore 9
    //   37: ldc -62
    //   39: iconst_2
    //   40: anewarray 4	java/lang/Object
    //   43: dup
    //   44: iconst_0
    //   45: aload_1
    //   46: aastore
    //   47: dup
    //   48: iconst_1
    //   49: aload_0
    //   50: aastore
    //   51: invokestatic 198	com/millennialmedia/android/MMSDK$Log:v	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   54: aload 9
    //   56: invokevirtual 150	java/io/File:exists	()Z
    //   59: ifeq +37 -> 96
    //   62: aload 9
    //   64: invokevirtual 201	java/io/File:length	()J
    //   67: lconst_0
    //   68: lcmp
    //   69: ifle +27 -> 96
    //   72: new 203	java/lang/StringBuilder
    //   75: dup
    //   76: invokespecial 204	java/lang/StringBuilder:<init>	()V
    //   79: aload_1
    //   80: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: ldc -46
    //   85: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: invokestatic 216	com/millennialmedia/android/MMSDK$Log:v	(Ljava/lang/String;)V
    //   94: iconst_1
    //   95: ireturn
    //   96: new 218	java/net/URL
    //   99: dup
    //   100: aload_0
    //   101: invokespecial 220	java/net/URL:<init>	(Ljava/lang/String;)V
    //   104: astore_0
    //   105: iconst_1
    //   106: invokestatic 226	java/net/HttpURLConnection:setFollowRedirects	(Z)V
    //   109: aload_0
    //   110: invokevirtual 230	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   113: checkcast 222	java/net/HttpURLConnection
    //   116: astore_2
    //   117: aload_2
    //   118: sipush 30000
    //   121: invokevirtual 234	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   124: aload_2
    //   125: ldc -20
    //   127: invokevirtual 239	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   130: aload_2
    //   131: invokevirtual 242	java/net/HttpURLConnection:connect	()V
    //   134: aload_2
    //   135: invokevirtual 246	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   138: astore 5
    //   140: aload 7
    //   142: astore 6
    //   144: aload 8
    //   146: astore_0
    //   147: aload 5
    //   149: astore 4
    //   151: aload_2
    //   152: ldc -8
    //   154: invokevirtual 252	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   157: astore_2
    //   158: aload_2
    //   159: ifnull +541 -> 700
    //   162: aload 7
    //   164: astore 6
    //   166: aload 8
    //   168: astore_0
    //   169: aload 5
    //   171: astore 4
    //   173: aload_2
    //   174: invokestatic 258	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   177: lstore 11
    //   179: aload 5
    //   181: ifnonnull +66 -> 247
    //   184: aload 7
    //   186: astore 6
    //   188: aload 8
    //   190: astore_0
    //   191: aload 5
    //   193: astore 4
    //   195: ldc_w 260
    //   198: iconst_1
    //   199: anewarray 4	java/lang/Object
    //   202: dup
    //   203: iconst_0
    //   204: aload_1
    //   205: aastore
    //   206: invokestatic 263	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   209: aload 5
    //   211: ifnull +8 -> 219
    //   214: aload 5
    //   216: invokevirtual 268	java/io/InputStream:close	()V
    //   219: iconst_0
    //   220: ireturn
    //   221: astore_0
    //   222: ldc_w 270
    //   225: iconst_1
    //   226: anewarray 4	java/lang/Object
    //   229: dup
    //   230: iconst_0
    //   231: aload_0
    //   232: invokevirtual 273	java/io/IOException:getMessage	()Ljava/lang/String;
    //   235: aastore
    //   236: invokestatic 263	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   239: aload 9
    //   241: invokevirtual 134	java/io/File:delete	()Z
    //   244: pop
    //   245: iconst_0
    //   246: ireturn
    //   247: aload 7
    //   249: astore 6
    //   251: aload 8
    //   253: astore_0
    //   254: aload 5
    //   256: astore 4
    //   258: aload_3
    //   259: aload_3
    //   260: invokestatic 276	com/millennialmedia/android/AdCache:getCacheDirectory	(Landroid/content/Context;)Ljava/io/File;
    //   263: invokestatic 280	com/millennialmedia/android/AdCache:isInternalDir	(Landroid/content/Context;Ljava/io/File;)Z
    //   266: ifeq +139 -> 405
    //   269: aload 7
    //   271: astore 6
    //   273: aload 8
    //   275: astore_0
    //   276: aload 5
    //   278: astore 4
    //   280: aload_3
    //   281: aload 9
    //   283: invokevirtual 283	java/io/File:getName	()Ljava/lang/String;
    //   286: iconst_1
    //   287: invokevirtual 289	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   290: astore_2
    //   291: aload_2
    //   292: astore 6
    //   294: aload_2
    //   295: astore_0
    //   296: aload 5
    //   298: astore 4
    //   300: sipush 4096
    //   303: newarray <illegal type>
    //   305: astore_3
    //   306: aload_2
    //   307: astore 6
    //   309: aload_2
    //   310: astore_0
    //   311: aload 5
    //   313: astore 4
    //   315: aload 5
    //   317: aload_3
    //   318: invokevirtual 293	java/io/InputStream:read	([B)I
    //   321: istore 10
    //   323: iload 10
    //   325: ifle +104 -> 429
    //   328: aload_2
    //   329: astore 6
    //   331: aload_2
    //   332: astore_0
    //   333: aload 5
    //   335: astore 4
    //   337: aload_2
    //   338: aload_3
    //   339: iconst_0
    //   340: iload 10
    //   342: invokevirtual 299	java/io/FileOutputStream:write	([BII)V
    //   345: goto -39 -> 306
    //   348: astore_2
    //   349: aload 6
    //   351: astore_0
    //   352: aload 5
    //   354: astore 4
    //   356: ldc_w 301
    //   359: iconst_2
    //   360: anewarray 4	java/lang/Object
    //   363: dup
    //   364: iconst_0
    //   365: aload_1
    //   366: aastore
    //   367: dup
    //   368: iconst_1
    //   369: aload_2
    //   370: invokevirtual 302	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   373: aastore
    //   374: invokestatic 263	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   377: aload 5
    //   379: ifnull +8 -> 387
    //   382: aload 5
    //   384: invokevirtual 268	java/io/InputStream:close	()V
    //   387: aload 6
    //   389: ifnull +8 -> 397
    //   392: aload 6
    //   394: invokevirtual 303	java/io/FileOutputStream:close	()V
    //   397: aload 9
    //   399: invokevirtual 134	java/io/File:delete	()Z
    //   402: pop
    //   403: iconst_0
    //   404: ireturn
    //   405: aload 7
    //   407: astore 6
    //   409: aload 8
    //   411: astore_0
    //   412: aload 5
    //   414: astore 4
    //   416: new 295	java/io/FileOutputStream
    //   419: dup
    //   420: aload 9
    //   422: invokespecial 306	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   425: astore_2
    //   426: goto -135 -> 291
    //   429: aload_2
    //   430: astore 6
    //   432: aload_2
    //   433: astore_0
    //   434: aload 5
    //   436: astore 4
    //   438: aload 9
    //   440: invokevirtual 201	java/io/File:length	()J
    //   443: lstore 13
    //   445: lload 13
    //   447: lload 11
    //   449: lcmp
    //   450: ifeq +12 -> 462
    //   453: lload 11
    //   455: ldc2_w 307
    //   458: lcmp
    //   459: ifne +49 -> 508
    //   462: aload 5
    //   464: ifnull +8 -> 472
    //   467: aload 5
    //   469: invokevirtual 268	java/io/InputStream:close	()V
    //   472: aload_2
    //   473: ifnull +7 -> 480
    //   476: aload_2
    //   477: invokevirtual 303	java/io/FileOutputStream:close	()V
    //   480: iconst_1
    //   481: ireturn
    //   482: astore_0
    //   483: ldc_w 270
    //   486: iconst_1
    //   487: anewarray 4	java/lang/Object
    //   490: dup
    //   491: iconst_0
    //   492: aload_0
    //   493: invokevirtual 273	java/io/IOException:getMessage	()Ljava/lang/String;
    //   496: aastore
    //   497: invokestatic 263	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   500: aload 9
    //   502: invokevirtual 134	java/io/File:delete	()Z
    //   505: pop
    //   506: iconst_0
    //   507: ireturn
    //   508: aload_2
    //   509: astore 6
    //   511: aload_2
    //   512: astore_0
    //   513: aload 5
    //   515: astore 4
    //   517: ldc_w 310
    //   520: invokestatic 312	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;)V
    //   523: aload 5
    //   525: ifnull +8 -> 533
    //   528: aload 5
    //   530: invokevirtual 268	java/io/InputStream:close	()V
    //   533: aload_2
    //   534: ifnull -137 -> 397
    //   537: aload_2
    //   538: invokevirtual 303	java/io/FileOutputStream:close	()V
    //   541: goto -144 -> 397
    //   544: astore_0
    //   545: ldc_w 270
    //   548: iconst_1
    //   549: anewarray 4	java/lang/Object
    //   552: dup
    //   553: iconst_0
    //   554: aload_0
    //   555: invokevirtual 273	java/io/IOException:getMessage	()Ljava/lang/String;
    //   558: aastore
    //   559: invokestatic 263	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   562: aload 9
    //   564: invokevirtual 134	java/io/File:delete	()Z
    //   567: pop
    //   568: iconst_0
    //   569: ireturn
    //   570: astore_3
    //   571: aload_2
    //   572: astore 6
    //   574: aload_2
    //   575: astore_0
    //   576: aload 5
    //   578: astore 4
    //   580: ldc_w 301
    //   583: iconst_2
    //   584: anewarray 4	java/lang/Object
    //   587: dup
    //   588: iconst_0
    //   589: aload_1
    //   590: aastore
    //   591: dup
    //   592: iconst_1
    //   593: aload_3
    //   594: invokevirtual 313	java/lang/SecurityException:getMessage	()Ljava/lang/String;
    //   597: aastore
    //   598: invokestatic 263	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   601: goto -78 -> 523
    //   604: astore_2
    //   605: aload_0
    //   606: astore_1
    //   607: aload_2
    //   608: astore_0
    //   609: aload 4
    //   611: ifnull +8 -> 619
    //   614: aload 4
    //   616: invokevirtual 268	java/io/InputStream:close	()V
    //   619: aload_1
    //   620: ifnull +7 -> 627
    //   623: aload_1
    //   624: invokevirtual 303	java/io/FileOutputStream:close	()V
    //   627: aload_0
    //   628: athrow
    //   629: astore_0
    //   630: ldc_w 270
    //   633: iconst_1
    //   634: anewarray 4	java/lang/Object
    //   637: dup
    //   638: iconst_0
    //   639: aload_0
    //   640: invokevirtual 273	java/io/IOException:getMessage	()Ljava/lang/String;
    //   643: aastore
    //   644: invokestatic 263	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   647: aload 9
    //   649: invokevirtual 134	java/io/File:delete	()Z
    //   652: pop
    //   653: iconst_0
    //   654: ireturn
    //   655: astore_0
    //   656: ldc_w 270
    //   659: iconst_1
    //   660: anewarray 4	java/lang/Object
    //   663: dup
    //   664: iconst_0
    //   665: aload_0
    //   666: invokevirtual 273	java/io/IOException:getMessage	()Ljava/lang/String;
    //   669: aastore
    //   670: invokestatic 263	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   673: aload 9
    //   675: invokevirtual 134	java/io/File:delete	()Z
    //   678: pop
    //   679: iconst_0
    //   680: ireturn
    //   681: astore_0
    //   682: aconst_null
    //   683: astore_2
    //   684: aload 4
    //   686: astore_1
    //   687: aload_2
    //   688: astore 4
    //   690: goto -81 -> 609
    //   693: astore_2
    //   694: aconst_null
    //   695: astore 5
    //   697: goto -348 -> 349
    //   700: ldc2_w 307
    //   703: lstore 11
    //   705: goto -526 -> 179
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	708	0	paramString1	String
    //   0	708	1	paramString2	String
    //   0	708	2	paramFile	File
    //   0	708	3	paramContext	Context
    //   7	682	4	localObject1	Object
    //   138	558	5	localInputStream	java.io.InputStream
    //   1	572	6	localObject2	Object
    //   10	396	7	localObject3	Object
    //   4	406	8	localObject4	Object
    //   35	639	9	localFile	File
    //   321	20	10	i	int
    //   177	527	11	l1	long
    //   443	3	13	l2	long
    // Exception table:
    //   from	to	target	type
    //   214	219	221	java/io/IOException
    //   151	158	348	java/lang/Exception
    //   173	179	348	java/lang/Exception
    //   195	209	348	java/lang/Exception
    //   258	269	348	java/lang/Exception
    //   280	291	348	java/lang/Exception
    //   300	306	348	java/lang/Exception
    //   315	323	348	java/lang/Exception
    //   337	345	348	java/lang/Exception
    //   416	426	348	java/lang/Exception
    //   438	445	348	java/lang/Exception
    //   517	523	348	java/lang/Exception
    //   580	601	348	java/lang/Exception
    //   467	472	482	java/io/IOException
    //   476	480	482	java/io/IOException
    //   528	533	544	java/io/IOException
    //   537	541	544	java/io/IOException
    //   438	445	570	java/lang/SecurityException
    //   517	523	570	java/lang/SecurityException
    //   151	158	604	finally
    //   173	179	604	finally
    //   195	209	604	finally
    //   258	269	604	finally
    //   280	291	604	finally
    //   300	306	604	finally
    //   315	323	604	finally
    //   337	345	604	finally
    //   356	377	604	finally
    //   416	426	604	finally
    //   438	445	604	finally
    //   517	523	604	finally
    //   580	601	604	finally
    //   382	387	629	java/io/IOException
    //   392	397	629	java/io/IOException
    //   614	619	655	java/io/IOException
    //   623	627	655	java/io/IOException
    //   96	140	681	finally
    //   96	140	693	java/lang/Exception
  }
  
  static boolean downloadComponentToCache(String paramString1, String paramString2, Context paramContext)
  {
    return downloadComponent(paramString1, paramString2, getCacheDirectory(paramContext), paramContext);
  }
  
  static File getCacheDirectory(Context paramContext)
  {
    if (isExternalStorageAvailable(paramContext)) {
      return getExternalCacheDirectory(paramContext);
    }
    return getInternalCacheDirectory(paramContext);
  }
  
  private static File getCachedAdFile(Context paramContext, String paramString)
  {
    String str = paramString + "ad.dat";
    boolean bool = isExternalStorageAvailable(paramContext);
    paramString = getCacheDirectory(paramContext);
    if (paramString != null) {}
    for (;;)
    {
      try
      {
        if (!paramString.isDirectory()) {
          break label133;
        }
        paramString = new File(paramString, str);
        if (((paramString == null) || (!paramString.exists())) && (!bool))
        {
          paramContext = paramContext.getFilesDir();
          if (paramContext != null)
          {
            paramContext = new File(paramContext, ".mmsyscache" + File.separator + str);
            if (paramContext.exists())
            {
              bool = paramContext.isFile();
              if (bool) {
                return paramContext;
              }
            }
          }
        }
      }
      catch (Exception paramContext)
      {
        MMSDK.Log.e(paramContext);
        return null;
      }
      return paramString;
      label133:
      paramString = null;
    }
  }
  
  static String getCachedVideoList(Context paramContext)
  {
    for (;;)
    {
      try
      {
        if (cachedVideoList != null) {
          break label158;
        }
        if (!cachedVideoListLoaded)
        {
          localObject = new HashSet();
          iterateCachedAds(paramContext, 2, new AdCache.1(paramContext, (Set)localObject));
          cachedVideoSet = (Set)localObject;
          cachedVideoListLoaded = true;
        }
        if ((cachedVideoSet == null) || (cachedVideoSet.size() <= 0)) {
          break label158;
        }
        paramContext = new StringBuilder();
        Object localObject = cachedVideoSet.iterator();
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        String str = (String)((Iterator)localObject).next();
        if (paramContext.length() > 0) {
          paramContext.append("," + (String)str);
        } else {
          paramContext.append((String)str);
        }
      }
      finally {}
    }
    cachedVideoList = paramContext.toString();
    label158:
    paramContext = cachedVideoList;
    return paramContext;
  }
  
  static File getDownloadFile(Context paramContext, String paramString)
  {
    File localFile = getCacheDirectory(paramContext);
    paramContext = null;
    if (localFile != null) {
      paramContext = new File(localFile, paramString);
    }
    return paramContext;
  }
  
  private static File getExternalCacheDirectory(Context paramContext)
  {
    paramContext = Environment.getExternalStorageDirectory();
    if (paramContext != null)
    {
      paramContext = new File(paramContext, ".mmsyscache");
      if ((paramContext.exists()) || (paramContext.mkdirs())) {}
    }
    else
    {
      return null;
    }
    return paramContext;
  }
  
  /* Error */
  static String getIncompleteDownload(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 369	com/millennialmedia/android/AdCache:incompleteDownloadHashMapLoaded	Z
    //   6: ifne +7 -> 13
    //   9: aload_0
    //   10: invokestatic 372	com/millennialmedia/android/AdCache:loadIncompleteDownloadHashMap	(Landroid/content/Context;)V
    //   13: aload_1
    //   14: ifnonnull +10 -> 24
    //   17: aconst_null
    //   18: astore_0
    //   19: ldc 2
    //   21: monitorexit
    //   22: aload_0
    //   23: areturn
    //   24: getstatic 374	com/millennialmedia/android/AdCache:incompleteDownloadHashMap	Ljava/util/Map;
    //   27: aload_1
    //   28: invokeinterface 380 2 0
    //   33: checkcast 352	java/lang/String
    //   36: astore_0
    //   37: goto -18 -> 19
    //   40: astore_0
    //   41: ldc 2
    //   43: monitorexit
    //   44: aload_0
    //   45: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	paramContext	Context
    //   0	46	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   3	13	40	finally
    //   24	37	40	finally
  }
  
  private static File getInternalCacheDirectory(Context paramContext)
  {
    File localFile = paramContext.getFilesDir();
    paramContext = localFile;
    if (localFile != null)
    {
      paramContext = localFile;
      if (!localFile.exists())
      {
        paramContext = localFile;
        if (!localFile.mkdirs()) {
          paramContext = null;
        }
      }
    }
    return paramContext;
  }
  
  /* Error */
  static String getNextCachedAd(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 383	com/millennialmedia/android/AdCache:nextCachedAdHashMapLoaded	Z
    //   6: ifne +7 -> 13
    //   9: aload_0
    //   10: invokestatic 386	com/millennialmedia/android/AdCache:loadNextCachedAdHashMap	(Landroid/content/Context;)V
    //   13: aload_1
    //   14: ifnonnull +10 -> 24
    //   17: aconst_null
    //   18: astore_0
    //   19: ldc 2
    //   21: monitorexit
    //   22: aload_0
    //   23: areturn
    //   24: getstatic 388	com/millennialmedia/android/AdCache:nextCachedAdHashMap	Ljava/util/Map;
    //   27: aload_1
    //   28: invokeinterface 380 2 0
    //   33: checkcast 352	java/lang/String
    //   36: astore_0
    //   37: goto -18 -> 19
    //   40: astore_0
    //   41: ldc 2
    //   43: monitorexit
    //   44: aload_0
    //   45: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	paramContext	Context
    //   0	46	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   3	13	40	finally
    //   24	37	40	finally
  }
  
  static boolean hasDownloadFile(Context paramContext, String paramString)
  {
    paramContext = getDownloadFile(paramContext, paramString);
    return (paramContext != null) && (paramContext.exists());
  }
  
  static boolean isExternalStorageAvailable(Context paramContext)
  {
    return (paramContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) && (Environment.getExternalStorageState().equals("mounted")) && (isExternalEnabled);
  }
  
  static boolean isInternalDir(Context paramContext, File paramFile)
  {
    paramContext = getInternalCacheDirectory(paramContext);
    return (paramContext != null) && (paramContext.equals(paramFile));
  }
  
  /* Error */
  static void iterateCachedAds(Context paramContext, int paramInt, AdCache.Iterator paramIterator)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 276	com/millennialmedia/android/AdCache:getCacheDirectory	(Landroid/content/Context;)Ljava/io/File;
    //   4: astore_0
    //   5: aload_0
    //   6: ifnull +114 -> 120
    //   9: aload_0
    //   10: new 408	com/millennialmedia/android/AdCache$2
    //   13: dup
    //   14: invokespecial 409	com/millennialmedia/android/AdCache$2:<init>	()V
    //   17: invokevirtual 412	java/io/File:listFiles	(Ljava/io/FileFilter;)[Ljava/io/File;
    //   20: astore 5
    //   22: aload 5
    //   24: arraylength
    //   25: istore 8
    //   27: iconst_0
    //   28: istore 7
    //   30: aconst_null
    //   31: astore_3
    //   32: iload 7
    //   34: iload 8
    //   36: if_icmpge +84 -> 120
    //   39: aload 5
    //   41: iload 7
    //   43: aaload
    //   44: astore 6
    //   46: aload 6
    //   48: ifnull +18 -> 66
    //   51: aload_3
    //   52: astore 4
    //   54: aload 6
    //   56: invokevirtual 150	java/io/File:exists	()Z
    //   59: istore 12
    //   61: iload 12
    //   63: ifne +26 -> 89
    //   66: aload_3
    //   67: astore_0
    //   68: aload_3
    //   69: ifnull +9 -> 78
    //   72: aload_3
    //   73: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   76: aconst_null
    //   77: astore_0
    //   78: iload 7
    //   80: iconst_1
    //   81: iadd
    //   82: istore 7
    //   84: aload_0
    //   85: astore_3
    //   86: goto -54 -> 32
    //   89: iload_1
    //   90: ifne +50 -> 140
    //   93: aload_3
    //   94: astore 4
    //   96: aload_2
    //   97: aload 6
    //   99: invokevirtual 283	java/io/File:getName	()Ljava/lang/String;
    //   102: invokevirtual 421	com/millennialmedia/android/AdCache$Iterator:callback	(Ljava/lang/String;)Z
    //   105: istore 12
    //   107: iload 12
    //   109: ifne +16 -> 125
    //   112: aload_3
    //   113: ifnull +7 -> 120
    //   116: aload_3
    //   117: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   120: aload_2
    //   121: invokevirtual 424	com/millennialmedia/android/AdCache$Iterator:done	()V
    //   124: return
    //   125: aload_3
    //   126: astore_0
    //   127: aload_3
    //   128: ifnull -50 -> 78
    //   131: aload_3
    //   132: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   135: aconst_null
    //   136: astore_0
    //   137: goto -59 -> 78
    //   140: aload_3
    //   141: astore 4
    //   143: new 414	java/io/ObjectInputStream
    //   146: dup
    //   147: new 426	java/io/FileInputStream
    //   150: dup
    //   151: aload 6
    //   153: invokespecial 427	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   156: invokespecial 430	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   159: astore_0
    //   160: aload_0
    //   161: invokevirtual 433	java/io/ObjectInputStream:readInt	()I
    //   164: istore 9
    //   166: aload_0
    //   167: invokevirtual 436	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   170: checkcast 438	java/util/Date
    //   173: astore_3
    //   174: aload_0
    //   175: invokevirtual 436	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   178: checkcast 352	java/lang/String
    //   181: astore 4
    //   183: aload_0
    //   184: invokevirtual 441	java/io/ObjectInputStream:readLong	()J
    //   187: lstore 10
    //   189: iload_1
    //   190: iconst_1
    //   191: if_icmpne +82 -> 273
    //   194: aload_2
    //   195: aload 6
    //   197: invokevirtual 283	java/io/File:getName	()Ljava/lang/String;
    //   200: iload 9
    //   202: aload_3
    //   203: aload 4
    //   205: lload 10
    //   207: aload_0
    //   208: invokevirtual 444	com/millennialmedia/android/AdCache$Iterator:callback	(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;JLjava/io/ObjectInputStream;)Z
    //   211: ifne +101 -> 312
    //   214: aload_0
    //   215: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   218: goto -98 -> 120
    //   221: astore_3
    //   222: aload_0
    //   223: astore 4
    //   225: aload_3
    //   226: astore_0
    //   227: aload 4
    //   229: astore_3
    //   230: aload_3
    //   231: astore 4
    //   233: ldc_w 446
    //   236: iconst_1
    //   237: anewarray 4	java/lang/Object
    //   240: dup
    //   241: iconst_0
    //   242: aload 6
    //   244: invokevirtual 283	java/io/File:getName	()Ljava/lang/String;
    //   247: aastore
    //   248: invokestatic 448	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   251: aload_3
    //   252: astore 4
    //   254: aload_0
    //   255: invokestatic 450	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/Throwable;)V
    //   258: aload_3
    //   259: astore_0
    //   260: aload_3
    //   261: ifnull -183 -> 78
    //   264: aload_3
    //   265: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   268: aconst_null
    //   269: astore_0
    //   270: goto -192 -> 78
    //   273: aload_2
    //   274: aload_0
    //   275: invokevirtual 436	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   278: checkcast 452	com/millennialmedia/android/CachedAd
    //   281: invokevirtual 455	com/millennialmedia/android/AdCache$Iterator:callback	(Lcom/millennialmedia/android/CachedAd;)Z
    //   284: ifne +28 -> 312
    //   287: aload_0
    //   288: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   291: goto -171 -> 120
    //   294: astore_2
    //   295: aload_0
    //   296: astore 4
    //   298: aload_2
    //   299: astore_0
    //   300: aload 4
    //   302: ifnull +8 -> 310
    //   305: aload 4
    //   307: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   310: aload_0
    //   311: athrow
    //   312: aload_0
    //   313: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   316: aconst_null
    //   317: astore_0
    //   318: goto -240 -> 78
    //   321: astore_3
    //   322: goto -244 -> 78
    //   325: astore_0
    //   326: aload_3
    //   327: astore_0
    //   328: goto -250 -> 78
    //   331: astore_0
    //   332: goto -212 -> 120
    //   335: astore_0
    //   336: aload_3
    //   337: astore_0
    //   338: goto -260 -> 78
    //   341: astore_0
    //   342: aload_3
    //   343: astore_0
    //   344: goto -266 -> 78
    //   347: astore_2
    //   348: goto -38 -> 310
    //   351: astore_0
    //   352: goto -52 -> 300
    //   355: astore_0
    //   356: goto -126 -> 230
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	359	0	paramContext	Context
    //   0	359	1	paramInt	int
    //   0	359	2	paramIterator	AdCache.Iterator
    //   31	172	3	localObject1	Object
    //   221	5	3	localException	Exception
    //   229	36	3	localObject2	Object
    //   321	22	3	localIOException	java.io.IOException
    //   52	254	4	localObject3	Object
    //   20	20	5	arrayOfFile	File[]
    //   44	199	6	localFile	File
    //   28	55	7	i	int
    //   25	12	8	j	int
    //   164	37	9	k	int
    //   187	19	10	l	long
    //   59	49	12	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   160	189	221	java/lang/Exception
    //   194	218	221	java/lang/Exception
    //   273	291	221	java/lang/Exception
    //   160	189	294	finally
    //   194	218	294	finally
    //   273	291	294	finally
    //   312	316	321	java/io/IOException
    //   72	76	325	java/io/IOException
    //   116	120	331	java/io/IOException
    //   131	135	335	java/io/IOException
    //   264	268	341	java/io/IOException
    //   305	310	347	java/io/IOException
    //   54	61	351	finally
    //   96	107	351	finally
    //   143	160	351	finally
    //   233	251	351	finally
    //   254	258	351	finally
    //   54	61	355	java/lang/Exception
    //   96	107	355	java/lang/Exception
    //   143	160	355	java/lang/Exception
  }
  
  /* Error */
  static CachedAd load(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +13 -> 14
    //   4: aload_1
    //   5: ldc_w 461
    //   8: invokevirtual 405	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   11: ifeq +5 -> 16
    //   14: aconst_null
    //   15: areturn
    //   16: aload_0
    //   17: aload_1
    //   18: invokestatic 169	com/millennialmedia/android/AdCache:getCachedAdFile	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    //   21: astore_0
    //   22: aload_0
    //   23: ifnull -9 -> 14
    //   26: new 414	java/io/ObjectInputStream
    //   29: dup
    //   30: new 426	java/io/FileInputStream
    //   33: dup
    //   34: aload_0
    //   35: invokespecial 427	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   38: invokespecial 430	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   41: astore_2
    //   42: aload_2
    //   43: astore_0
    //   44: aload_2
    //   45: invokevirtual 433	java/io/ObjectInputStream:readInt	()I
    //   48: pop
    //   49: aload_2
    //   50: astore_0
    //   51: aload_2
    //   52: invokevirtual 436	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   55: pop
    //   56: aload_2
    //   57: astore_0
    //   58: aload_2
    //   59: invokevirtual 436	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   62: pop
    //   63: aload_2
    //   64: astore_0
    //   65: aload_2
    //   66: invokevirtual 441	java/io/ObjectInputStream:readLong	()J
    //   69: pop2
    //   70: aload_2
    //   71: astore_0
    //   72: aload_2
    //   73: invokevirtual 436	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   76: checkcast 452	com/millennialmedia/android/CachedAd
    //   79: astore_3
    //   80: aload_2
    //   81: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   84: aload_3
    //   85: astore_0
    //   86: aload_0
    //   87: areturn
    //   88: astore_0
    //   89: aconst_null
    //   90: astore_0
    //   91: ldc_w 463
    //   94: iconst_1
    //   95: anewarray 4	java/lang/Object
    //   98: dup
    //   99: iconst_0
    //   100: aload_1
    //   101: aastore
    //   102: invokestatic 263	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   105: aload_0
    //   106: ifnull +7 -> 113
    //   109: aload_0
    //   110: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   113: aconst_null
    //   114: astore_0
    //   115: goto -29 -> 86
    //   118: astore_0
    //   119: aconst_null
    //   120: astore_0
    //   121: goto -35 -> 86
    //   124: astore_3
    //   125: aconst_null
    //   126: astore_2
    //   127: aload_2
    //   128: astore_0
    //   129: ldc_w 465
    //   132: iconst_1
    //   133: anewarray 4	java/lang/Object
    //   136: dup
    //   137: iconst_0
    //   138: aload_1
    //   139: aastore
    //   140: invokestatic 263	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   143: aload_2
    //   144: astore_0
    //   145: aload_3
    //   146: invokevirtual 302	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   149: invokestatic 189	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   152: aload_2
    //   153: astore_0
    //   154: aload_3
    //   155: invokestatic 450	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/Throwable;)V
    //   158: aload_2
    //   159: ifnull +7 -> 166
    //   162: aload_2
    //   163: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   166: aconst_null
    //   167: astore_0
    //   168: goto -82 -> 86
    //   171: astore_0
    //   172: aconst_null
    //   173: astore_0
    //   174: goto -88 -> 86
    //   177: astore_1
    //   178: aconst_null
    //   179: astore_0
    //   180: aload_0
    //   181: ifnull +7 -> 188
    //   184: aload_0
    //   185: invokevirtual 415	java/io/ObjectInputStream:close	()V
    //   188: aload_1
    //   189: athrow
    //   190: astore_0
    //   191: aload_3
    //   192: astore_0
    //   193: goto -107 -> 86
    //   196: astore_0
    //   197: goto -9 -> 188
    //   200: astore_1
    //   201: goto -21 -> 180
    //   204: astore_1
    //   205: goto -25 -> 180
    //   208: astore_3
    //   209: goto -82 -> 127
    //   212: astore_0
    //   213: aload_2
    //   214: astore_0
    //   215: goto -124 -> 91
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	218	0	paramContext	Context
    //   0	218	1	paramString	String
    //   41	173	2	localObjectInputStream	java.io.ObjectInputStream
    //   79	6	3	localCachedAd	CachedAd
    //   124	68	3	localException1	Exception
    //   208	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   26	42	88	java/io/FileNotFoundException
    //   109	113	118	java/io/IOException
    //   26	42	124	java/lang/Exception
    //   162	166	171	java/io/IOException
    //   26	42	177	finally
    //   80	84	190	java/io/IOException
    //   184	188	196	java/io/IOException
    //   44	49	200	finally
    //   51	56	200	finally
    //   58	63	200	finally
    //   65	70	200	finally
    //   72	80	200	finally
    //   129	143	200	finally
    //   145	152	200	finally
    //   154	158	200	finally
    //   91	105	204	finally
    //   44	49	208	java/lang/Exception
    //   51	56	208	java/lang/Exception
    //   58	63	208	java/lang/Exception
    //   65	70	208	java/lang/Exception
    //   72	80	208	java/lang/Exception
    //   44	49	212	java/io/FileNotFoundException
    //   51	56	212	java/io/FileNotFoundException
    //   58	63	212	java/io/FileNotFoundException
    //   65	70	212	java/io/FileNotFoundException
    //   72	80	212	java/io/FileNotFoundException
  }
  
  private static void loadApidListSet(SharedPreferences paramSharedPreferences)
  {
    apidListSet = new HashSet();
    paramSharedPreferences = paramSharedPreferences.getString("nextCachedAd_apids", null);
    if (paramSharedPreferences != null)
    {
      paramSharedPreferences = paramSharedPreferences.split(MMSDK.COMMA);
      if ((paramSharedPreferences != null) && (paramSharedPreferences.length > 0))
      {
        int j = paramSharedPreferences.length;
        int i = 0;
        while (i < j)
        {
          Object localObject = paramSharedPreferences[i];
          apidListSet.add(localObject);
          i += 1;
        }
      }
    }
  }
  
  static CachedAd loadIncompleteDownload(Context paramContext, String paramString)
  {
    paramString = getIncompleteDownload(paramContext, paramString);
    if (paramString == null) {
      return null;
    }
    return load(paramContext, paramString);
  }
  
  private static void loadIncompleteDownloadHashMap(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("MillennialMediaSettings", 0);
    incompleteDownloadHashMap = new ConcurrentHashMap();
    if (apidListSet == null) {
      loadApidListSet(paramContext);
    }
    Iterator localIterator = apidListSet.iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      String[] arrayOfString = MMAdImpl.getAdTypes();
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str2 = arrayOfString[i];
        String str3 = paramContext.getString("incompleteDownload_" + str2 + '_' + str1, null);
        if (str3 != null) {
          incompleteDownloadHashMap.put(str2 + '_' + str1, str3);
        }
        i += 1;
      }
    }
    incompleteDownloadHashMapLoaded = true;
  }
  
  static CachedAd loadNextCachedAd(Context paramContext, String paramString)
  {
    paramString = getNextCachedAd(paramContext, paramString);
    if ((paramString == null) || (paramString.equals(""))) {
      return null;
    }
    return load(paramContext, paramString);
  }
  
  private static void loadNextCachedAdHashMap(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("MillennialMediaSettings", 0);
    nextCachedAdHashMap = new ConcurrentHashMap();
    if (apidListSet == null) {
      loadApidListSet(paramContext);
    }
    Iterator localIterator = apidListSet.iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      String[] arrayOfString = MMAdImpl.getAdTypes();
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str2 = arrayOfString[i];
        String str3 = paramContext.getString("nextCachedAd_" + str2 + '_' + str1, null);
        if (str3 != null) {
          nextCachedAdHashMap.put(str2 + '_' + str1, str3);
        }
        i += 1;
      }
    }
    nextCachedAdHashMapLoaded = true;
  }
  
  static void resetCache(Context paramContext)
  {
    iterateCachedAds(paramContext, 2, new AdCache.5(paramContext));
    cachedVideoSet = null;
    cachedVideoList = null;
    cachedVideoListLoaded = false;
    Iterator localIterator;
    if (nextCachedAdHashMap != null)
    {
      localIterator = nextCachedAdHashMap.keySet().iterator();
      while (localIterator.hasNext()) {
        setNextCachedAd(paramContext, (String)localIterator.next(), null);
      }
    }
    if (incompleteDownloadHashMap != null)
    {
      localIterator = incompleteDownloadHashMap.keySet().iterator();
      while (localIterator.hasNext()) {
        setIncompleteDownload(paramContext, (String)localIterator.next(), null);
      }
    }
  }
  
  /* Error */
  static boolean save(Context paramContext, CachedAd paramCachedAd)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: aload_1
    //   7: ifnonnull +5 -> 12
    //   10: iconst_0
    //   11: ireturn
    //   12: aload_0
    //   13: aload_1
    //   14: invokevirtual 535	com/millennialmedia/android/CachedAd:getId	()Ljava/lang/String;
    //   17: invokestatic 169	com/millennialmedia/android/AdCache:getCachedAdFile	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    //   20: astore_3
    //   21: aload_3
    //   22: ifnull -12 -> 10
    //   25: ldc_w 537
    //   28: iconst_2
    //   29: anewarray 4	java/lang/Object
    //   32: dup
    //   33: iconst_0
    //   34: aload_1
    //   35: invokevirtual 535	com/millennialmedia/android/CachedAd:getId	()Ljava/lang/String;
    //   38: aastore
    //   39: dup
    //   40: iconst_1
    //   41: aload_3
    //   42: aastore
    //   43: invokestatic 198	com/millennialmedia/android/MMSDK$Log:v	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   46: new 114	java/io/File
    //   49: dup
    //   50: aload_3
    //   51: invokevirtual 540	java/io/File:getParent	()Ljava/lang/String;
    //   54: new 203	java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial 204	java/lang/StringBuilder:<init>	()V
    //   61: aload_1
    //   62: invokevirtual 535	com/millennialmedia/android/CachedAd:getId	()Ljava/lang/String;
    //   65: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: ldc 20
    //   70: invokevirtual 208	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokespecial 543	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   79: astore_2
    //   80: aload_2
    //   81: invokevirtual 546	java/io/File:createNewFile	()Z
    //   84: ifne +30 -> 114
    //   87: ldc_w 548
    //   90: iconst_1
    //   91: anewarray 4	java/lang/Object
    //   94: dup
    //   95: iconst_0
    //   96: aload_1
    //   97: invokevirtual 535	com/millennialmedia/android/CachedAd:getId	()Ljava/lang/String;
    //   100: aastore
    //   101: invokestatic 198	com/millennialmedia/android/MMSDK$Log:v	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   104: aload_2
    //   105: invokevirtual 134	java/io/File:delete	()Z
    //   108: pop
    //   109: iconst_0
    //   110: ireturn
    //   111: astore_0
    //   112: iconst_0
    //   113: ireturn
    //   114: new 550	java/io/ObjectOutputStream
    //   117: dup
    //   118: new 295	java/io/FileOutputStream
    //   121: dup
    //   122: aload_3
    //   123: invokespecial 306	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   126: invokespecial 553	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   129: astore_3
    //   130: aload_3
    //   131: aload_1
    //   132: invokevirtual 556	com/millennialmedia/android/CachedAd:getType	()I
    //   135: invokevirtual 559	java/io/ObjectOutputStream:writeInt	(I)V
    //   138: aload_3
    //   139: aload_1
    //   140: getfield 563	com/millennialmedia/android/CachedAd:expiration	Ljava/util/Date;
    //   143: invokevirtual 567	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   146: aload_3
    //   147: aload_1
    //   148: getfield 570	com/millennialmedia/android/CachedAd:acid	Ljava/lang/String;
    //   151: invokevirtual 567	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   154: aload_3
    //   155: aload_1
    //   156: getfield 573	com/millennialmedia/android/CachedAd:deferredViewStart	J
    //   159: invokevirtual 577	java/io/ObjectOutputStream:writeLong	(J)V
    //   162: aload_3
    //   163: aload_1
    //   164: invokevirtual 567	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   167: aload_2
    //   168: invokevirtual 134	java/io/File:delete	()Z
    //   171: pop
    //   172: aload_3
    //   173: invokevirtual 578	java/io/ObjectOutputStream:close	()V
    //   176: aload_1
    //   177: aload_0
    //   178: invokevirtual 581	com/millennialmedia/android/CachedAd:saveAssets	(Landroid/content/Context;)Z
    //   181: ifne +83 -> 264
    //   184: aload_1
    //   185: aload_0
    //   186: invokevirtual 583	com/millennialmedia/android/CachedAd:delete	(Landroid/content/Context;)V
    //   189: iconst_0
    //   190: ireturn
    //   191: astore_3
    //   192: aconst_null
    //   193: astore_0
    //   194: aload 4
    //   196: astore_2
    //   197: ldc_w 585
    //   200: iconst_1
    //   201: anewarray 4	java/lang/Object
    //   204: dup
    //   205: iconst_0
    //   206: aload_1
    //   207: invokevirtual 535	com/millennialmedia/android/CachedAd:getId	()Ljava/lang/String;
    //   210: aastore
    //   211: invokestatic 263	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   214: aload_3
    //   215: invokevirtual 302	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   218: invokestatic 189	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   221: aload_3
    //   222: invokestatic 450	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/Throwable;)V
    //   225: aload_0
    //   226: invokevirtual 134	java/io/File:delete	()Z
    //   229: pop
    //   230: aload_2
    //   231: ifnull -221 -> 10
    //   234: aload_2
    //   235: invokevirtual 578	java/io/ObjectOutputStream:close	()V
    //   238: iconst_0
    //   239: ireturn
    //   240: astore_0
    //   241: iconst_0
    //   242: ireturn
    //   243: astore_0
    //   244: aconst_null
    //   245: astore_2
    //   246: aload 5
    //   248: astore_1
    //   249: aload_2
    //   250: invokevirtual 134	java/io/File:delete	()Z
    //   253: pop
    //   254: aload_1
    //   255: ifnull +7 -> 262
    //   258: aload_1
    //   259: invokevirtual 578	java/io/ObjectOutputStream:close	()V
    //   262: aload_0
    //   263: athrow
    //   264: iconst_1
    //   265: ireturn
    //   266: astore_1
    //   267: goto -5 -> 262
    //   270: astore_0
    //   271: aload 5
    //   273: astore_1
    //   274: goto -25 -> 249
    //   277: astore_0
    //   278: aload_3
    //   279: astore_1
    //   280: goto -31 -> 249
    //   283: astore_1
    //   284: aload_0
    //   285: astore_3
    //   286: aload_1
    //   287: astore_0
    //   288: aload_2
    //   289: astore_1
    //   290: aload_3
    //   291: astore_2
    //   292: goto -43 -> 249
    //   295: astore_3
    //   296: aload_2
    //   297: astore_0
    //   298: aload 4
    //   300: astore_2
    //   301: goto -104 -> 197
    //   304: astore 5
    //   306: aload_3
    //   307: astore_0
    //   308: aload_2
    //   309: astore 4
    //   311: aload 5
    //   313: astore_3
    //   314: aload_0
    //   315: astore_2
    //   316: aload 4
    //   318: astore_0
    //   319: goto -122 -> 197
    //   322: astore_2
    //   323: goto -147 -> 176
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	326	0	paramContext	Context
    //   0	326	1	paramCachedAd	CachedAd
    //   79	237	2	localObject1	Object
    //   322	1	2	localIOException	java.io.IOException
    //   20	153	3	localObject2	Object
    //   191	88	3	localException1	Exception
    //   285	6	3	localContext	Context
    //   295	12	3	localException2	Exception
    //   313	1	3	localException3	Exception
    //   4	313	4	localObject3	Object
    //   1	271	5	localObject4	Object
    //   304	8	5	localException4	Exception
    // Exception table:
    //   from	to	target	type
    //   104	109	111	java/io/IOException
    //   46	80	191	java/lang/Exception
    //   225	230	240	java/io/IOException
    //   234	238	240	java/io/IOException
    //   46	80	243	finally
    //   249	254	266	java/io/IOException
    //   258	262	266	java/io/IOException
    //   80	104	270	finally
    //   114	130	270	finally
    //   130	167	277	finally
    //   197	225	283	finally
    //   80	104	295	java/lang/Exception
    //   114	130	295	java/lang/Exception
    //   130	167	304	java/lang/Exception
    //   167	176	322	java/io/IOException
  }
  
  private static void saveApidListSet(SharedPreferences.Editor paramEditor, String paramString)
  {
    int i = paramString.indexOf('_');
    String str;
    Object localObject;
    if ((i >= 0) && (i < paramString.length()))
    {
      str = paramString.substring(i + 1);
      if ((str != null) && (!apidListSet.contains(str)))
      {
        paramString = null;
        if (!apidListSet.isEmpty())
        {
          localObject = apidListSet.iterator();
          paramString = new StringBuilder();
          while (((Iterator)localObject).hasNext()) {
            paramString.append((String)((Iterator)localObject).next() + MMSDK.COMMA);
          }
        }
        localObject = new StringBuilder();
        if (paramString != null) {
          break label170;
        }
      }
    }
    label170:
    for (paramString = "";; paramString = paramString.toString())
    {
      paramEditor.putString("nextCachedAd_apids", paramString + str);
      apidListSet.add(str);
      return;
    }
  }
  
  private static void saveIncompleteDownloadHashMap(Context paramContext, String paramString)
  {
    if (paramString != null)
    {
      paramContext = paramContext.getSharedPreferences("MillennialMediaSettings", 0).edit();
      saveApidListSet(paramContext, paramString);
      paramContext.putString("incompleteDownload_" + paramString, (String)incompleteDownloadHashMap.get(paramString));
      paramContext.commit();
    }
  }
  
  private static void saveNextCachedAdHashMapValue(Context paramContext, String paramString)
  {
    if (paramString != null)
    {
      paramContext = paramContext.getSharedPreferences("MillennialMediaSettings", 0).edit();
      saveApidListSet(paramContext, paramString);
      paramContext.putString("nextCachedAd_" + paramString, (String)nextCachedAdHashMap.get(paramString));
      paramContext.commit();
    }
  }
  
  static void setEnableExternalStorage(boolean paramBoolean)
  {
    isExternalEnabled = paramBoolean;
  }
  
  static void setIncompleteDownload(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      if (!incompleteDownloadHashMapLoaded) {
        loadIncompleteDownloadHashMap(paramContext);
      }
      if (paramString1 != null)
      {
        Map localMap = incompleteDownloadHashMap;
        String str = paramString2;
        if (paramString2 == null) {
          str = "";
        }
        localMap.put(paramString1, str);
        saveIncompleteDownloadHashMap(paramContext, paramString1);
      }
      return;
    }
    finally {}
  }
  
  static void setNextCachedAd(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      if (!nextCachedAdHashMapLoaded) {
        loadNextCachedAdHashMap(paramContext);
      }
      if (paramString1 != null)
      {
        Map localMap = nextCachedAdHashMap;
        String str = paramString2;
        if (paramString2 == null) {
          str = "";
        }
        localMap.put(paramString1, str);
        saveNextCachedAdHashMapValue(paramContext, paramString1);
      }
      return;
    }
    finally {}
  }
  
  static boolean startDownloadTask(Context paramContext, String paramString, CachedAd paramCachedAd, AdCache.AdCacheTaskListener paramAdCacheTaskListener)
  {
    return AdCacheThreadPool.sharedThreadPool().startDownloadTask(paramContext, paramString, paramCachedAd, paramAdCacheTaskListener);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */