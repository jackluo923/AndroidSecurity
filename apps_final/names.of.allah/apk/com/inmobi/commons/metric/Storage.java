package com.inmobi.commons.metric;

import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

public class Storage
{
  MetricConfigParams a = null;
  private String b = "inmobi.cache.data";
  private String c = "inmobi.cache.data.events.number";
  private String d = "inmobi.cache.data.events.timestamp";
  private int e = 0;
  private Storage.PreProcessor f = null;
  private Queuer g = null;
  private long h = -1L;
  private long i = -1L;
  private AtomicBoolean j = new AtomicBoolean(false);
  private AtomicBoolean k = new AtomicBoolean(false);
  private Logger.MetricsCallback l = null;
  
  public Storage(int paramInt, String paramString, Queuer paramQueuer, MetricConfigParams paramMetricConfigParams)
  {
    a = paramMetricConfigParams;
    g = paramQueuer;
    e = paramInt;
    b = (b + "." + paramString);
    c = (c + "." + paramString);
    d = (d + "." + paramString);
  }
  
  public Storage(int paramInt, String paramString, Queuer paramQueuer, MetricConfigParams paramMetricConfigParams, Storage.PreProcessor paramPreProcessor)
  {
    this(paramInt, paramString, paramQueuer, paramMetricConfigParams);
    f = paramPreProcessor;
  }
  
  private void a()
  {
    try
    {
      FileOperations.writeStringToFile(InternalSDKUtil.getContext(), c, h, false);
      FileOperations.writeStringToFile(InternalSDKUtil.getContext(), d, i, false);
      return;
    }
    catch (Exception localException)
    {
      h = 0L;
    }
  }
  
  public long getEvents()
  {
    return h;
  }
  
  public long getTimestamp()
  {
    return i;
  }
  
  public String readLocalCache()
  {
    try
    {
      String str = FileOperations.readFileAsString(InternalSDKUtil.getContext(), b);
      return str;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[AdTracker]-4.4.1", "Unable to read metric info.");
    }
    return "null,";
  }
  
  public void readNumberOfEventsAndTimeStampFromPersistent()
  {
    if (h != -1L) {}
    for (;;)
    {
      return;
      try
      {
        h = Long.parseLong(FileOperations.readFileAsString(InternalSDKUtil.getContext(), c));
        i = Long.parseLong(FileOperations.readFileAsString(InternalSDKUtil.getContext(), d));
        if (i != -1L) {
          continue;
        }
        i = (System.currentTimeMillis() / 1000L);
        a();
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          h = 0L;
        }
      }
    }
  }
  
  public void resetFile()
  {
    try
    {
      FileOperations.writeStringToFile(InternalSDKUtil.getContext(), b, "", false);
      h = 0L;
      i = (System.currentTimeMillis() / 1000L);
      a();
      return;
    }
    catch (IOException localIOException)
    {
      Log.internal("[InMobi]-[AdTracker]-4.4.1", "Someting went wrong while saving metrics log to persistent storage", localIOException);
    }
  }
  
  /* Error */
  public void saveLocalCache()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 62	com/inmobi/commons/metric/Storage:j	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   4: iconst_0
    //   5: iconst_1
    //   6: invokevirtual 151	java/util/concurrent/atomic/AtomicBoolean:compareAndSet	(ZZ)Z
    //   9: ifne +4 -> 13
    //   12: return
    //   13: aload_0
    //   14: getfield 66	com/inmobi/commons/metric/Storage:l	Lcom/inmobi/commons/metric/Logger$MetricsCallback;
    //   17: ifnull +16 -> 33
    //   20: aload_0
    //   21: getfield 66	com/inmobi/commons/metric/Storage:l	Lcom/inmobi/commons/metric/Logger$MetricsCallback;
    //   24: aload_0
    //   25: getfield 33	com/inmobi/commons/metric/Storage:b	Ljava/lang/String;
    //   28: invokeinterface 157 2 0
    //   33: invokestatic 91	com/inmobi/commons/internal/InternalSDKUtil:getContext	()Landroid/content/Context;
    //   36: aload_0
    //   37: getfield 33	com/inmobi/commons/metric/Storage:b	Ljava/lang/String;
    //   40: aload_0
    //   41: getfield 47	com/inmobi/commons/metric/Storage:g	Lcom/inmobi/commons/metric/Queuer;
    //   44: invokevirtual 162	com/inmobi/commons/metric/Queuer:get	()Ljava/lang/String;
    //   47: iconst_1
    //   48: invokestatic 100	com/inmobi/commons/internal/FileOperations:writeStringToFile	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    //   51: aload_0
    //   52: aload_0
    //   53: getfield 53	com/inmobi/commons/metric/Storage:h	J
    //   56: aload_0
    //   57: getfield 47	com/inmobi/commons/metric/Storage:g	Lcom/inmobi/commons/metric/Queuer;
    //   60: invokevirtual 164	com/inmobi/commons/metric/Queuer:a	()J
    //   63: ladd
    //   64: putfield 53	com/inmobi/commons/metric/Storage:h	J
    //   67: aload_0
    //   68: getfield 47	com/inmobi/commons/metric/Storage:g	Lcom/inmobi/commons/metric/Queuer;
    //   71: invokevirtual 167	com/inmobi/commons/metric/Queuer:reset	()V
    //   74: aload_0
    //   75: invokespecial 136	com/inmobi/commons/metric/Storage:a	()V
    //   78: aload_0
    //   79: getfield 62	com/inmobi/commons/metric/Storage:j	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   82: iconst_0
    //   83: invokevirtual 170	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   86: aload_0
    //   87: getfield 62	com/inmobi/commons/metric/Storage:j	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   90: astore_1
    //   91: aload_1
    //   92: monitorenter
    //   93: aload_0
    //   94: getfield 62	com/inmobi/commons/metric/Storage:j	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   97: invokevirtual 173	java/lang/Object:notify	()V
    //   100: aload_1
    //   101: monitorexit
    //   102: return
    //   103: astore_2
    //   104: aload_1
    //   105: monitorexit
    //   106: aload_2
    //   107: athrow
    //   108: astore_1
    //   109: ldc 110
    //   111: ldc -81
    //   113: aload_1
    //   114: invokestatic 146	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   117: return
    //   118: astore_1
    //   119: ldc 110
    //   121: ldc -113
    //   123: aload_1
    //   124: invokestatic 146	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   127: goto -49 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	130	0	this	Storage
    //   108	6	1	localException	Exception
    //   118	6	1	localIOException	IOException
    //   103	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   93	102	103	finally
    //   86	93	108	java/lang/Exception
    //   104	108	108	java/lang/Exception
    //   33	78	118	java/io/IOException
  }
  
  public void saveToLatest()
  {
    saveLocalCache();
  }
  
  /* Error */
  public void sendFile()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 64	com/inmobi/commons/metric/Storage:k	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   4: iconst_0
    //   5: iconst_1
    //   6: invokevirtual 151	java/util/concurrent/atomic/AtomicBoolean:compareAndSet	(ZZ)Z
    //   9: ifne +4 -> 13
    //   12: return
    //   13: aload_0
    //   14: getfield 62	com/inmobi/commons/metric/Storage:j	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   17: iconst_0
    //   18: iconst_1
    //   19: invokevirtual 151	java/util/concurrent/atomic/AtomicBoolean:compareAndSet	(ZZ)Z
    //   22: ifne +36 -> 58
    //   25: aload_0
    //   26: getfield 62	com/inmobi/commons/metric/Storage:j	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   29: astore_1
    //   30: aload_1
    //   31: monitorenter
    //   32: aload_0
    //   33: getfield 62	com/inmobi/commons/metric/Storage:j	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   36: invokevirtual 182	java/lang/Object:wait	()V
    //   39: aload_1
    //   40: monitorexit
    //   41: goto -28 -> 13
    //   44: astore_2
    //   45: aload_1
    //   46: monitorexit
    //   47: aload_2
    //   48: athrow
    //   49: astore_1
    //   50: ldc 110
    //   52: ldc -72
    //   54: invokestatic 118	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   57: return
    //   58: aload_0
    //   59: getfield 66	com/inmobi/commons/metric/Storage:l	Lcom/inmobi/commons/metric/Logger$MetricsCallback;
    //   62: ifnull +19 -> 81
    //   65: aload_0
    //   66: getfield 66	com/inmobi/commons/metric/Storage:l	Lcom/inmobi/commons/metric/Logger$MetricsCallback;
    //   69: aload_0
    //   70: getfield 49	com/inmobi/commons/metric/Storage:a	Lcom/inmobi/commons/metric/MetricConfigParams;
    //   73: invokevirtual 189	com/inmobi/commons/metric/MetricConfigParams:getUrl	()Ljava/lang/String;
    //   76: invokeinterface 192 2 0
    //   81: ldc 110
    //   83: new 68	java/lang/StringBuilder
    //   86: dup
    //   87: ldc -62
    //   89: invokespecial 196	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   92: aload_0
    //   93: getfield 53	com/inmobi/commons/metric/Storage:h	J
    //   96: invokevirtual 94	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   99: ldc -58
    //   101: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokestatic 118	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   110: aload_0
    //   111: invokevirtual 200	com/inmobi/commons/metric/Storage:readLocalCache	()Ljava/lang/String;
    //   114: astore_1
    //   115: new 202	org/json/JSONObject
    //   118: dup
    //   119: invokespecial 203	org/json/JSONObject:<init>	()V
    //   122: astore_2
    //   123: invokestatic 91	com/inmobi/commons/internal/InternalSDKUtil:getContext	()Landroid/content/Context;
    //   126: aconst_null
    //   127: invokestatic 209	com/inmobi/commons/uid/UIDUtil:getMap	(Landroid/content/Context;Lcom/inmobi/commons/uid/UID;)Ljava/util/Map;
    //   130: aload_2
    //   131: invokestatic 213	com/inmobi/commons/uid/UIDUtil:bindToEncodedJSON	(Ljava/util/Map;Lorg/json/JSONObject;)V
    //   134: invokestatic 219	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   137: astore_3
    //   138: aload_2
    //   139: ldc -35
    //   141: aload_3
    //   142: bipush 15
    //   144: invokevirtual 224	java/util/Calendar:get	(I)I
    //   147: invokevirtual 228	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   150: pop
    //   151: aload_2
    //   152: ldc -26
    //   154: aload_3
    //   155: invokevirtual 233	java/util/Calendar:getTimeInMillis	()J
    //   158: invokevirtual 236	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   161: pop
    //   162: aload_2
    //   163: ldc -18
    //   165: aload_0
    //   166: getfield 43	com/inmobi/commons/metric/Storage:e	I
    //   169: invokevirtual 228	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   172: pop
    //   173: aload_2
    //   174: ldc -16
    //   176: new 242	org/json/JSONArray
    //   179: dup
    //   180: new 68	java/lang/StringBuilder
    //   183: dup
    //   184: ldc -12
    //   186: invokespecial 196	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   189: aload_1
    //   190: iconst_0
    //   191: aload_1
    //   192: invokevirtual 250	java/lang/String:length	()I
    //   195: iconst_1
    //   196: isub
    //   197: invokevirtual 254	java/lang/String:substring	(II)Ljava/lang/String;
    //   200: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: ldc_w 256
    //   206: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   212: invokespecial 257	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   215: invokevirtual 260	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   218: pop
    //   219: aload_2
    //   220: astore_1
    //   221: aload_0
    //   222: getfield 45	com/inmobi/commons/metric/Storage:f	Lcom/inmobi/commons/metric/Storage$PreProcessor;
    //   225: ifnull +14 -> 239
    //   228: aload_0
    //   229: getfield 45	com/inmobi/commons/metric/Storage:f	Lcom/inmobi/commons/metric/Storage$PreProcessor;
    //   232: aload_2
    //   233: invokeinterface 266 2 0
    //   238: astore_1
    //   239: aload_1
    //   240: invokevirtual 267	org/json/JSONObject:toString	()Ljava/lang/String;
    //   243: astore_1
    //   244: ldc 110
    //   246: new 68	java/lang/StringBuilder
    //   249: dup
    //   250: ldc_w 269
    //   253: invokespecial 196	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   256: aload_1
    //   257: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: ldc_w 271
    //   263: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: aload_0
    //   267: getfield 49	com/inmobi/commons/metric/Storage:a	Lcom/inmobi/commons/metric/MetricConfigParams;
    //   270: invokevirtual 189	com/inmobi/commons/metric/MetricConfigParams:getUrl	()Ljava/lang/String;
    //   273: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   279: invokestatic 118	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   282: aload_0
    //   283: getfield 49	com/inmobi/commons/metric/Storage:a	Lcom/inmobi/commons/metric/MetricConfigParams;
    //   286: invokevirtual 189	com/inmobi/commons/metric/MetricConfigParams:getUrl	()Ljava/lang/String;
    //   289: aload_1
    //   290: invokestatic 276	com/inmobi/commons/metric/MetricEndPoint:sendData	(Ljava/lang/String;Ljava/lang/String;)V
    //   293: ldc 110
    //   295: new 68	java/lang/StringBuilder
    //   298: dup
    //   299: ldc_w 278
    //   302: invokespecial 196	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   305: aload_0
    //   306: getfield 49	com/inmobi/commons/metric/Storage:a	Lcom/inmobi/commons/metric/MetricConfigParams;
    //   309: invokevirtual 189	com/inmobi/commons/metric/MetricConfigParams:getUrl	()Ljava/lang/String;
    //   312: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokestatic 118	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   321: aload_0
    //   322: invokevirtual 280	com/inmobi/commons/metric/Storage:resetFile	()V
    //   325: aload_0
    //   326: getfield 66	com/inmobi/commons/metric/Storage:l	Lcom/inmobi/commons/metric/Logger$MetricsCallback;
    //   329: ifnull +12 -> 341
    //   332: aload_0
    //   333: getfield 66	com/inmobi/commons/metric/Storage:l	Lcom/inmobi/commons/metric/Logger$MetricsCallback;
    //   336: invokeinterface 283 1 0
    //   341: aload_0
    //   342: getfield 62	com/inmobi/commons/metric/Storage:j	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   345: iconst_0
    //   346: invokevirtual 170	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   349: aload_0
    //   350: getfield 62	com/inmobi/commons/metric/Storage:j	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   353: astore_1
    //   354: aload_1
    //   355: monitorenter
    //   356: aload_0
    //   357: getfield 62	com/inmobi/commons/metric/Storage:j	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   360: invokevirtual 173	java/lang/Object:notify	()V
    //   363: aload_1
    //   364: monitorexit
    //   365: aload_0
    //   366: getfield 64	com/inmobi/commons/metric/Storage:k	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   369: iconst_0
    //   370: invokevirtual 170	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   373: return
    //   374: astore_1
    //   375: ldc 110
    //   377: ldc_w 285
    //   380: invokestatic 118	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   383: aload_0
    //   384: getfield 66	com/inmobi/commons/metric/Storage:l	Lcom/inmobi/commons/metric/Logger$MetricsCallback;
    //   387: ifnull -46 -> 341
    //   390: aload_0
    //   391: getfield 66	com/inmobi/commons/metric/Storage:l	Lcom/inmobi/commons/metric/Logger$MetricsCallback;
    //   394: invokeinterface 288 1 0
    //   399: goto -58 -> 341
    //   402: astore_2
    //   403: aload_1
    //   404: monitorexit
    //   405: aload_2
    //   406: athrow
    //   407: astore_1
    //   408: ldc 110
    //   410: ldc_w 290
    //   413: invokestatic 118	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   416: goto -51 -> 365
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	419	0	this	Storage
    //   29	17	1	localAtomicBoolean	AtomicBoolean
    //   49	1	1	localException1	Exception
    //   374	30	1	localException2	Exception
    //   407	1	1	localException3	Exception
    //   44	4	2	localObject2	Object
    //   122	111	2	localJSONObject	org.json.JSONObject
    //   402	4	2	localObject3	Object
    //   137	18	3	localCalendar	java.util.Calendar
    // Exception table:
    //   from	to	target	type
    //   32	41	44	finally
    //   25	32	49	java/lang/Exception
    //   45	49	49	java/lang/Exception
    //   81	219	374	java/lang/Exception
    //   221	239	374	java/lang/Exception
    //   239	341	374	java/lang/Exception
    //   356	365	402	finally
    //   349	356	407	java/lang/Exception
    //   403	407	407	java/lang/Exception
  }
  
  public void setCallback(Logger.MetricsCallback paramMetricsCallback)
  {
    l = paramMetricsCallback;
  }
  
  public void setPreprocessor(Storage.PreProcessor paramPreProcessor)
  {
    f = paramPreProcessor;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.metric.Storage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */