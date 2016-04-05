package com.adsdk.sdk.video;

class TrackerService$1
  implements Runnable
{
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: iconst_0
    //   1: invokestatic 22	com/adsdk/sdk/video/TrackerService:access$0	(Z)V
    //   4: invokestatic 26	com/adsdk/sdk/video/TrackerService:access$1	()Z
    //   7: ifeq +191 -> 198
    //   10: iconst_0
    //   11: invokestatic 22	com/adsdk/sdk/video/TrackerService:access$0	(Z)V
    //   14: iconst_0
    //   15: invokestatic 29	com/adsdk/sdk/video/TrackerService:access$7	(Z)V
    //   18: aconst_null
    //   19: invokestatic 33	com/adsdk/sdk/video/TrackerService:access$8	(Ljava/lang/Thread;)V
    //   22: return
    //   23: invokestatic 37	com/adsdk/sdk/video/TrackerService:access$3	()Lcom/adsdk/sdk/video/TrackEvent;
    //   26: astore_1
    //   27: aload_1
    //   28: ifnull +170 -> 198
    //   31: new 39	java/lang/StringBuilder
    //   34: dup
    //   35: ldc 41
    //   37: invokespecial 44	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   40: aload_1
    //   41: getfield 50	com/adsdk/sdk/video/TrackEvent:url	Ljava/lang/String;
    //   44: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 56
    //   49: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: aload_1
    //   53: getfield 60	com/adsdk/sdk/video/TrackEvent:timestamp	J
    //   56: invokevirtual 63	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   59: ldc 65
    //   61: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokestatic 69	com/adsdk/sdk/video/TrackerService:access$4	()Ljava/util/Queue;
    //   67: invokeinterface 75 1 0
    //   72: invokevirtual 78	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   75: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 87	com/adsdk/sdk/Log:d	(Ljava/lang/String;)V
    //   81: ldc 89
    //   83: invokestatic 87	com/adsdk/sdk/Log:d	(Ljava/lang/String;)V
    //   86: new 39	java/lang/StringBuilder
    //   89: dup
    //   90: ldc 91
    //   92: invokespecial 44	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   95: aload_1
    //   96: getfield 50	com/adsdk/sdk/video/TrackEvent:url	Ljava/lang/String;
    //   99: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   105: invokestatic 87	com/adsdk/sdk/Log:d	(Ljava/lang/String;)V
    //   108: new 93	org/apache/http/impl/client/DefaultHttpClient
    //   111: dup
    //   112: invokespecial 94	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   115: astore_2
    //   116: aload_2
    //   117: invokevirtual 98	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   120: sipush 10000
    //   123: invokestatic 104	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   126: aload_2
    //   127: invokevirtual 98	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   130: sipush 10000
    //   133: invokestatic 107	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   136: new 109	org/apache/http/client/methods/HttpGet
    //   139: dup
    //   140: invokespecial 110	org/apache/http/client/methods/HttpGet:<init>	()V
    //   143: astore_3
    //   144: aload_3
    //   145: ldc 112
    //   147: ldc 114
    //   149: invokestatic 120	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   152: invokevirtual 124	org/apache/http/client/methods/HttpGet:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   155: aload_3
    //   156: new 126	java/net/URI
    //   159: dup
    //   160: aload_1
    //   161: getfield 50	com/adsdk/sdk/video/TrackEvent:url	Ljava/lang/String;
    //   164: invokevirtual 131	java/lang/String:trim	()Ljava/lang/String;
    //   167: invokespecial 132	java/net/URI:<init>	(Ljava/lang/String;)V
    //   170: invokevirtual 136	org/apache/http/client/methods/HttpGet:setURI	(Ljava/net/URI;)V
    //   173: aload_2
    //   174: aload_3
    //   175: invokevirtual 140	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   178: invokeinterface 146 1 0
    //   183: invokeinterface 151 1 0
    //   188: sipush 200
    //   191: if_icmpeq +78 -> 269
    //   194: aload_1
    //   195: invokestatic 155	com/adsdk/sdk/video/TrackerService:requestRetry	(Lcom/adsdk/sdk/video/TrackEvent;)V
    //   198: invokestatic 158	com/adsdk/sdk/video/TrackerService:access$2	()Z
    //   201: ifeq +9 -> 210
    //   204: invokestatic 26	com/adsdk/sdk/video/TrackerService:access$1	()Z
    //   207: ifeq -184 -> 23
    //   210: invokestatic 26	com/adsdk/sdk/video/TrackerService:access$1	()Z
    //   213: ifne +72 -> 285
    //   216: invokestatic 161	com/adsdk/sdk/video/TrackerService:access$5	()Ljava/util/Queue;
    //   219: invokeinterface 164 1 0
    //   224: ifne +61 -> 285
    //   227: ldc2_w 165
    //   230: invokestatic 172	java/lang/Thread:sleep	(J)V
    //   233: invokestatic 176	com/adsdk/sdk/video/TrackerService:access$6	()Ljava/lang/Object;
    //   236: astore_1
    //   237: aload_1
    //   238: monitorenter
    //   239: invokestatic 69	com/adsdk/sdk/video/TrackerService:access$4	()Ljava/util/Queue;
    //   242: invokestatic 161	com/adsdk/sdk/video/TrackerService:access$5	()Ljava/util/Queue;
    //   245: invokeinterface 180 2 0
    //   250: pop
    //   251: invokestatic 161	com/adsdk/sdk/video/TrackerService:access$5	()Ljava/util/Queue;
    //   254: invokeinterface 183 1 0
    //   259: aload_1
    //   260: monitorexit
    //   261: goto -257 -> 4
    //   264: astore_2
    //   265: aload_1
    //   266: monitorexit
    //   267: aload_2
    //   268: athrow
    //   269: ldc -71
    //   271: invokestatic 87	com/adsdk/sdk/Log:d	(Ljava/lang/String;)V
    //   274: goto -76 -> 198
    //   277: astore_2
    //   278: aload_1
    //   279: invokestatic 155	com/adsdk/sdk/video/TrackerService:requestRetry	(Lcom/adsdk/sdk/video/TrackEvent;)V
    //   282: goto -84 -> 198
    //   285: iconst_1
    //   286: invokestatic 22	com/adsdk/sdk/video/TrackerService:access$0	(Z)V
    //   289: goto -285 -> 4
    //   292: astore_1
    //   293: goto -60 -> 233
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	296	0	this	1
    //   292	1	1	localException	Exception
    //   115	59	2	localDefaultHttpClient	org.apache.http.impl.client.DefaultHttpClient
    //   264	4	2	localObject2	Object
    //   277	1	2	localThrowable	Throwable
    //   143	32	3	localHttpGet	org.apache.http.client.methods.HttpGet
    // Exception table:
    //   from	to	target	type
    //   239	261	264	finally
    //   155	198	277	java/lang/Throwable
    //   269	274	277	java/lang/Throwable
    //   227	233	292	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.TrackerService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */