package com.millennialmedia.android;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import org.json.JSONArray;

class BridgeMMCachedVideo
  extends MMJSObject
  implements AdCache.AdCacheTaskListener
{
  private boolean success;
  
  private VideoPlayerActivity getVPA()
  {
    if ((contextRef != null) && ((contextRef.get() instanceof MMActivity)))
    {
      MMActivity localMMActivity = (MMActivity)contextRef.get();
      if ((localMMActivity.getWrappedActivity() != null) && ((localMMActivity.getWrappedActivity() instanceof VideoPlayerActivity))) {
        return (VideoPlayerActivity)localMMActivity.getWrappedActivity();
      }
    }
    return null;
  }
  
  public MMJSResponse availableCachedVideos(HashMap<String, String> paramHashMap)
  {
    Object localObject = (Context)contextRef.get();
    if (localObject != null)
    {
      paramHashMap = new JSONArray();
      AdCache.iterateCachedAds((Context)localObject, 2, new BridgeMMCachedVideo.1(this, (Context)localObject, paramHashMap));
      localObject = new MMJSResponse();
      result = 1;
      response = paramHashMap;
      return (MMJSResponse)localObject;
    }
    return null;
  }
  
  /* Error */
  public MMJSResponse cacheVideo(HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 19	com/millennialmedia/android/BridgeMMCachedVideo:contextRef	Ljava/lang/ref/WeakReference;
    //   6: invokevirtual 25	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   9: checkcast 37	android/content/Context
    //   12: astore_2
    //   13: aload_1
    //   14: ldc 75
    //   16: invokevirtual 80	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   19: checkcast 82	java/lang/String
    //   22: astore_1
    //   23: aload_1
    //   24: ifnull +270 -> 294
    //   27: aload_2
    //   28: ifnull +266 -> 294
    //   31: getstatic 88	java/lang/System:out	Ljava/io/PrintStream;
    //   34: aload_1
    //   35: invokevirtual 94	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   38: new 96	com/millennialmedia/android/HttpGetRequest
    //   41: dup
    //   42: invokespecial 97	com/millennialmedia/android/HttpGetRequest:<init>	()V
    //   45: aload_1
    //   46: invokevirtual 100	com/millennialmedia/android/HttpGetRequest:get	(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    //   49: astore_3
    //   50: aload_3
    //   51: ifnonnull +14 -> 65
    //   54: ldc 102
    //   56: invokestatic 107	com/millennialmedia/android/MMSDK$Log:i	(Ljava/lang/String;)V
    //   59: aconst_null
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: areturn
    //   65: aload_3
    //   66: invokeinterface 113 1 0
    //   71: astore_3
    //   72: aload_3
    //   73: ifnonnull +41 -> 114
    //   76: ldc 115
    //   78: invokestatic 118	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   81: aconst_null
    //   82: astore_1
    //   83: goto -22 -> 61
    //   86: astore_1
    //   87: new 120	java/lang/StringBuilder
    //   90: dup
    //   91: ldc 122
    //   93: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   96: aload_1
    //   97: invokevirtual 128	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   100: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   106: invokestatic 118	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   109: aconst_null
    //   110: astore_1
    //   111: goto -50 -> 61
    //   114: aload_3
    //   115: invokeinterface 141 1 0
    //   120: lconst_0
    //   121: lcmp
    //   122: ifne +13 -> 135
    //   125: ldc -113
    //   127: invokestatic 118	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   130: aconst_null
    //   131: astore_1
    //   132: goto -71 -> 61
    //   135: aload_3
    //   136: invokeinterface 147 1 0
    //   141: astore 4
    //   143: aload 4
    //   145: ifnull +149 -> 294
    //   148: aload 4
    //   150: invokeinterface 152 1 0
    //   155: ifnull +139 -> 294
    //   158: aload 4
    //   160: invokeinterface 152 1 0
    //   165: ldc -102
    //   167: invokevirtual 158	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   170: istore 5
    //   172: iload 5
    //   174: ifeq +120 -> 294
    //   177: new 160	com/millennialmedia/android/VideoAd
    //   180: dup
    //   181: aload_3
    //   182: invokeinterface 164 1 0
    //   187: invokestatic 168	com/millennialmedia/android/HttpGetRequest:convertStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
    //   190: invokespecial 169	com/millennialmedia/android/VideoAd:<init>	(Ljava/lang/String;)V
    //   193: astore_3
    //   194: aload_3
    //   195: invokevirtual 173	com/millennialmedia/android/VideoAd:isValid	()Z
    //   198: ifeq +96 -> 294
    //   201: aload_3
    //   202: iconst_3
    //   203: putfield 176	com/millennialmedia/android/VideoAd:downloadPriority	I
    //   206: aload_2
    //   207: aconst_null
    //   208: aload_3
    //   209: aload_0
    //   210: invokestatic 180	com/millennialmedia/android/AdCache:startDownloadTask	(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    //   213: istore 5
    //   215: iload 5
    //   217: ifeq +117 -> 334
    //   220: aload_0
    //   221: invokevirtual 185	java/lang/Object:wait	()V
    //   224: aload_0
    //   225: getfield 187	com/millennialmedia/android/BridgeMMCachedVideo:success	Z
    //   228: ifeq +62 -> 290
    //   231: ldc -67
    //   233: iconst_1
    //   234: anewarray 182	java/lang/Object
    //   237: dup
    //   238: iconst_0
    //   239: aload_1
    //   240: aastore
    //   241: invokestatic 193	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   244: invokestatic 197	com/millennialmedia/android/MMJSResponse:responseWithSuccess	(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    //   247: astore_1
    //   248: aload_0
    //   249: invokevirtual 200	java/lang/Object:notify	()V
    //   252: goto -191 -> 61
    //   255: astore_1
    //   256: aload_0
    //   257: monitorexit
    //   258: aload_1
    //   259: athrow
    //   260: astore_1
    //   261: aload_1
    //   262: invokevirtual 203	java/lang/IllegalStateException:printStackTrace	()V
    //   265: ldc -51
    //   267: invokestatic 118	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   270: aconst_null
    //   271: astore_1
    //   272: goto -211 -> 61
    //   275: astore_1
    //   276: aload_1
    //   277: invokevirtual 206	java/io/IOException:printStackTrace	()V
    //   280: ldc -51
    //   282: invokestatic 118	com/millennialmedia/android/MMSDK$Log:d	(Ljava/lang/String;)V
    //   285: aconst_null
    //   286: astore_1
    //   287: goto -226 -> 61
    //   290: aload_0
    //   291: invokevirtual 200	java/lang/Object:notify	()V
    //   294: aconst_null
    //   295: astore_1
    //   296: goto -235 -> 61
    //   299: astore_1
    //   300: aload_1
    //   301: invokestatic 210	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/Throwable;)V
    //   304: ldc -44
    //   306: iconst_1
    //   307: anewarray 182	java/lang/Object
    //   310: dup
    //   311: iconst_0
    //   312: aload_1
    //   313: invokevirtual 213	java/lang/InterruptedException:getMessage	()Ljava/lang/String;
    //   316: aastore
    //   317: invokestatic 216	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   320: aload_0
    //   321: invokevirtual 200	java/lang/Object:notify	()V
    //   324: goto -30 -> 294
    //   327: astore_1
    //   328: aload_0
    //   329: invokevirtual 200	java/lang/Object:notify	()V
    //   332: aload_1
    //   333: athrow
    //   334: ldc -38
    //   336: iconst_1
    //   337: anewarray 182	java/lang/Object
    //   340: dup
    //   341: iconst_0
    //   342: aload_1
    //   343: aastore
    //   344: invokestatic 193	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   347: invokestatic 221	com/millennialmedia/android/MMJSResponse:responseWithError	(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    //   350: astore_1
    //   351: goto -290 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	354	0	this	BridgeMMCachedVideo
    //   0	354	1	paramHashMap	HashMap<String, String>
    //   12	195	2	localContext	Context
    //   49	160	3	localObject	Object
    //   141	18	4	localHeader	org.apache.http.Header
    //   170	46	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   38	50	86	java/lang/Exception
    //   54	59	86	java/lang/Exception
    //   65	72	86	java/lang/Exception
    //   2	23	255	finally
    //   31	38	255	finally
    //   38	50	255	finally
    //   54	59	255	finally
    //   65	72	255	finally
    //   76	81	255	finally
    //   87	109	255	finally
    //   114	130	255	finally
    //   135	143	255	finally
    //   148	172	255	finally
    //   177	194	255	finally
    //   194	215	255	finally
    //   248	252	255	finally
    //   261	270	255	finally
    //   276	285	255	finally
    //   290	294	255	finally
    //   320	324	255	finally
    //   328	334	255	finally
    //   334	351	255	finally
    //   177	194	260	java/lang/IllegalStateException
    //   177	194	275	java/io/IOException
    //   220	248	299	java/lang/InterruptedException
    //   220	248	327	finally
    //   300	320	327	finally
  }
  
  public void downloadCompleted(CachedAd paramCachedAd, boolean paramBoolean)
  {
    try
    {
      Context localContext = (Context)contextRef.get();
      if ((paramBoolean) && (localContext != null)) {
        AdCache.save(localContext, paramCachedAd);
      }
      success = paramBoolean;
      notify();
      return;
    }
    finally {}
  }
  
  public void downloadStart(CachedAd paramCachedAd) {}
  
  public MMJSResponse endVideo(HashMap<String, String> paramHashMap)
  {
    paramHashMap = getVPA();
    if (paramHashMap != null) {
      return runOnUiThreadFuture(new BridgeMMCachedVideo.3(this, paramHashMap));
    }
    return null;
  }
  
  public MMJSResponse pauseVideo(HashMap<String, String> paramHashMap)
  {
    paramHashMap = getVPA();
    if (paramHashMap != null) {
      return runOnUiThreadFuture(new BridgeMMCachedVideo.4(this, paramHashMap));
    }
    return null;
  }
  
  public MMJSResponse playCachedVideo(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    String str = (String)paramHashMap.get("videoId");
    if ((str != null) && (localContext != null))
    {
      VideoAd localVideoAd = (VideoAd)AdCache.load(localContext, str);
      if ((localVideoAd != null) && (localVideoAd.canShow(localContext, null, false)))
      {
        localVideoAd.show(localContext, getAdImplId((String)paramHashMap.get("PROPERTY_EXPANDING")));
        return MMJSResponse.responseWithSuccess(String.format("Playing Video(%s)", new Object[] { str }));
      }
    }
    return null;
  }
  
  public MMJSResponse playVideo(HashMap<String, String> paramHashMap)
  {
    paramHashMap = getVPA();
    if (paramHashMap != null) {
      return runOnUiThreadFuture(new BridgeMMCachedVideo.2(this, paramHashMap));
    }
    return null;
  }
  
  public MMJSResponse restartVideo(HashMap<String, String> paramHashMap)
  {
    paramHashMap = getVPA();
    if (paramHashMap != null) {
      return runOnUiThreadFuture(new BridgeMMCachedVideo.5(this, paramHashMap));
    }
    return null;
  }
  
  @Deprecated
  public MMJSResponse videoIdExists(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    paramHashMap = (String)paramHashMap.get("videoId");
    if ((paramHashMap != null) && (localContext != null))
    {
      VideoAd localVideoAd = (VideoAd)AdCache.load(localContext, paramHashMap);
      if ((localVideoAd != null) && (localVideoAd.isOnDisk(localContext)) && (!localVideoAd.isExpired())) {
        return MMJSResponse.responseWithSuccess(paramHashMap);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMCachedVideo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */