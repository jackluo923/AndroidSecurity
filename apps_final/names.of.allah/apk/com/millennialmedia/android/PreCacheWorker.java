package com.millennialmedia.android;

import android.content.Context;
import android.text.TextUtils;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

class PreCacheWorker
  extends Thread
{
  private static boolean busy;
  private Context appContext;
  private DTOCachedVideo[] cachedVideos;
  private boolean downloadedNewVideos;
  private String noVideosToCacheURL;
  
  private PreCacheWorker(DTOCachedVideo[] paramArrayOfDTOCachedVideo, Context paramContext, String paramString)
  {
    cachedVideos = paramArrayOfDTOCachedVideo;
    noVideosToCacheURL = paramString;
    appContext = paramContext.getApplicationContext();
  }
  
  private void handleContent(DTOCachedVideo paramDTOCachedVideo, HttpEntity paramHttpEntity)
  {
    Object localObject = paramHttpEntity.getContentType();
    if (localObject != null)
    {
      localObject = ((Header)localObject).getValue();
      if ((localObject == null) || (!((String)localObject).equalsIgnoreCase("application/json"))) {
        break label38;
      }
      handleJson(paramDTOCachedVideo, paramHttpEntity);
    }
    label38:
    while ((localObject == null) || (!((String)localObject).startsWith("video/"))) {
      return;
    }
    handleVideoFile(paramDTOCachedVideo, paramHttpEntity);
  }
  
  /* Error */
  private void handleJson(DTOCachedVideo paramDTOCachedVideo, HttpEntity paramHttpEntity)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_2
    //   3: invokeinterface 80 1 0
    //   8: invokestatic 86	com/millennialmedia/android/HttpGetRequest:convertStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
    //   11: astore 4
    //   13: aload_3
    //   14: astore_2
    //   15: aload 4
    //   17: invokestatic 92	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   20: ifne +13 -> 33
    //   23: new 94	com/millennialmedia/android/VideoAd
    //   26: dup
    //   27: aload 4
    //   29: invokespecial 97	com/millennialmedia/android/VideoAd:<init>	(Ljava/lang/String;)V
    //   32: astore_2
    //   33: aload_2
    //   34: ifnull +40 -> 74
    //   37: aload_2
    //   38: invokevirtual 101	com/millennialmedia/android/VideoAd:isValid	()Z
    //   41: ifeq +33 -> 74
    //   44: aload_2
    //   45: iconst_1
    //   46: putfield 105	com/millennialmedia/android/VideoAd:downloadPriority	I
    //   49: aload_0
    //   50: getfield 30	com/millennialmedia/android/PreCacheWorker:appContext	Landroid/content/Context;
    //   53: aconst_null
    //   54: aload_2
    //   55: new 107	com/millennialmedia/android/PreCacheWorker$1
    //   58: dup
    //   59: aload_0
    //   60: aload_1
    //   61: invokespecial 110	com/millennialmedia/android/PreCacheWorker$1:<init>	(Lcom/millennialmedia/android/PreCacheWorker;Lcom/millennialmedia/android/DTOCachedVideo;)V
    //   64: invokestatic 116	com/millennialmedia/android/AdCache:startDownloadTask	(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    //   67: ifeq +30 -> 97
    //   70: aload_0
    //   71: invokevirtual 121	java/lang/Object:wait	()V
    //   74: return
    //   75: astore_1
    //   76: aload_1
    //   77: invokevirtual 124	java/lang/IllegalStateException:printStackTrace	()V
    //   80: ldc 126
    //   82: invokestatic 131	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   85: return
    //   86: astore_1
    //   87: aload_1
    //   88: invokevirtual 132	java/io/IOException:printStackTrace	()V
    //   91: ldc 126
    //   93: invokestatic 131	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   96: return
    //   97: aload_1
    //   98: getfield 137	com/millennialmedia/android/DTOCachedVideo:preCacheStartURL	Ljava/lang/String;
    //   101: invokestatic 142	com/millennialmedia/android/MMSDK$Event:logEvent	(Ljava/lang/String;)V
    //   104: aload_1
    //   105: getfield 145	com/millennialmedia/android/DTOCachedVideo:preCacheFailedURL	Ljava/lang/String;
    //   108: invokestatic 142	com/millennialmedia/android/MMSDK$Event:logEvent	(Ljava/lang/String;)V
    //   111: return
    //   112: astore_1
    //   113: aload_1
    //   114: invokevirtual 146	java/lang/InterruptedException:printStackTrace	()V
    //   117: ldc -108
    //   119: iconst_1
    //   120: anewarray 118	java/lang/Object
    //   123: dup
    //   124: iconst_0
    //   125: aload_1
    //   126: invokevirtual 151	java/lang/InterruptedException:getMessage	()Ljava/lang/String;
    //   129: aastore
    //   130: invokestatic 155	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   133: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	PreCacheWorker
    //   0	134	1	paramDTOCachedVideo	DTOCachedVideo
    //   0	134	2	paramHttpEntity	HttpEntity
    //   1	13	3	localObject	Object
    //   11	17	4	str	String
    // Exception table:
    //   from	to	target	type
    //   2	13	75	java/lang/IllegalStateException
    //   15	33	75	java/lang/IllegalStateException
    //   2	13	86	java/io/IOException
    //   15	33	86	java/io/IOException
    //   44	74	112	java/lang/InterruptedException
    //   97	111	112	java/lang/InterruptedException
  }
  
  private void handleVideoFile(DTOCachedVideo paramDTOCachedVideo, HttpEntity paramHttpEntity)
  {
    if (!TextUtils.isEmpty(videoFileId))
    {
      MMSDK.Event.logEvent(preCacheStartURL);
      if (AdCache.downloadComponentToCache(url, videoFileId + "video.dat", appContext)) {
        MMSDK.Event.logEvent(preCacheCompleteURL);
      }
    }
    else
    {
      return;
    }
    MMSDK.Event.logEvent(preCacheFailedURL);
  }
  
  static void preCacheVideos(DTOCachedVideo[] paramArrayOfDTOCachedVideo, Context paramContext, String paramString)
  {
    try
    {
      if (!busy)
      {
        busy = true;
        new PreCacheWorker(paramArrayOfDTOCachedVideo, paramContext, paramString).start();
      }
      return;
    }
    finally
    {
      paramArrayOfDTOCachedVideo = finally;
      throw paramArrayOfDTOCachedVideo;
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 20	com/millennialmedia/android/PreCacheWorker:cachedVideos	[Lcom/millennialmedia/android/DTOCachedVideo;
    //   6: astore_1
    //   7: aload_1
    //   8: arraylength
    //   9: istore 5
    //   11: iconst_0
    //   12: istore 4
    //   14: iload 4
    //   16: iload 5
    //   18: if_icmpge +144 -> 162
    //   21: aload_1
    //   22: iload 4
    //   24: aaload
    //   25: astore_2
    //   26: new 82	com/millennialmedia/android/HttpGetRequest
    //   29: dup
    //   30: invokespecial 192	com/millennialmedia/android/HttpGetRequest:<init>	()V
    //   33: aload_2
    //   34: getfield 161	com/millennialmedia/android/DTOCachedVideo:url	Ljava/lang/String;
    //   37: invokevirtual 196	com/millennialmedia/android/HttpGetRequest:get	(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    //   40: astore_3
    //   41: aload_3
    //   42: ifnonnull +11 -> 53
    //   45: ldc -58
    //   47: invokestatic 131	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   50: goto +161 -> 211
    //   53: aload_3
    //   54: invokeinterface 204 1 0
    //   59: astore_3
    //   60: aload_3
    //   61: ifnonnull +73 -> 134
    //   64: ldc -50
    //   66: invokestatic 131	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   69: goto +142 -> 211
    //   72: astore_1
    //   73: ldc 2
    //   75: monitorenter
    //   76: iconst_0
    //   77: putstatic 183	com/millennialmedia/android/PreCacheWorker:busy	Z
    //   80: aload_0
    //   81: getfield 37	com/millennialmedia/android/PreCacheWorker:downloadedNewVideos	Z
    //   84: ifne +20 -> 104
    //   87: aload_0
    //   88: getfield 22	com/millennialmedia/android/PreCacheWorker:noVideosToCacheURL	Ljava/lang/String;
    //   91: invokestatic 92	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   94: ifne +10 -> 104
    //   97: aload_0
    //   98: getfield 22	com/millennialmedia/android/PreCacheWorker:noVideosToCacheURL	Ljava/lang/String;
    //   101: invokestatic 142	com/millennialmedia/android/MMSDK$Event:logEvent	(Ljava/lang/String;)V
    //   104: ldc 2
    //   106: monitorexit
    //   107: aload_1
    //   108: athrow
    //   109: astore_1
    //   110: aload_0
    //   111: monitorexit
    //   112: aload_1
    //   113: athrow
    //   114: astore_2
    //   115: ldc -48
    //   117: iconst_1
    //   118: anewarray 118	java/lang/Object
    //   121: dup
    //   122: iconst_0
    //   123: aload_2
    //   124: invokevirtual 209	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   127: aastore
    //   128: invokestatic 211	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   131: goto +80 -> 211
    //   134: aload_3
    //   135: invokeinterface 215 1 0
    //   140: lconst_0
    //   141: lcmp
    //   142: ifne +11 -> 153
    //   145: ldc -39
    //   147: invokestatic 131	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   150: goto +61 -> 211
    //   153: aload_0
    //   154: aload_2
    //   155: aload_3
    //   156: invokespecial 219	com/millennialmedia/android/PreCacheWorker:handleContent	(Lcom/millennialmedia/android/DTOCachedVideo;Lorg/apache/http/HttpEntity;)V
    //   159: goto +52 -> 211
    //   162: ldc 2
    //   164: monitorenter
    //   165: iconst_0
    //   166: putstatic 183	com/millennialmedia/android/PreCacheWorker:busy	Z
    //   169: aload_0
    //   170: getfield 37	com/millennialmedia/android/PreCacheWorker:downloadedNewVideos	Z
    //   173: ifne +20 -> 193
    //   176: aload_0
    //   177: getfield 22	com/millennialmedia/android/PreCacheWorker:noVideosToCacheURL	Ljava/lang/String;
    //   180: invokestatic 92	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   183: ifne +10 -> 193
    //   186: aload_0
    //   187: getfield 22	com/millennialmedia/android/PreCacheWorker:noVideosToCacheURL	Ljava/lang/String;
    //   190: invokestatic 142	com/millennialmedia/android/MMSDK$Event:logEvent	(Ljava/lang/String;)V
    //   193: ldc 2
    //   195: monitorexit
    //   196: aload_0
    //   197: monitorexit
    //   198: return
    //   199: astore_1
    //   200: ldc 2
    //   202: monitorexit
    //   203: aload_1
    //   204: athrow
    //   205: astore_1
    //   206: ldc 2
    //   208: monitorexit
    //   209: aload_1
    //   210: athrow
    //   211: iload 4
    //   213: iconst_1
    //   214: iadd
    //   215: istore 4
    //   217: goto -203 -> 14
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	220	0	this	PreCacheWorker
    //   6	16	1	arrayOfDTOCachedVideo	DTOCachedVideo[]
    //   72	36	1	localObject1	Object
    //   109	4	1	localObject2	Object
    //   199	5	1	localObject3	Object
    //   205	5	1	localObject4	Object
    //   25	9	2	localDTOCachedVideo	DTOCachedVideo
    //   114	41	2	localException	Exception
    //   40	116	3	localObject5	Object
    //   12	204	4	i	int
    //   9	10	5	j	int
    // Exception table:
    //   from	to	target	type
    //   2	11	72	finally
    //   26	41	72	finally
    //   45	50	72	finally
    //   53	60	72	finally
    //   64	69	72	finally
    //   115	131	72	finally
    //   134	150	72	finally
    //   153	159	72	finally
    //   73	76	109	finally
    //   107	109	109	finally
    //   162	165	109	finally
    //   200	205	109	finally
    //   206	211	109	finally
    //   26	41	114	java/lang/Exception
    //   45	50	114	java/lang/Exception
    //   53	60	114	java/lang/Exception
    //   165	193	199	finally
    //   193	196	199	finally
    //   76	104	205	finally
    //   104	107	205	finally
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.PreCacheWorker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */