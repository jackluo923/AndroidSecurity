package com.inmobi.commons.thinICE.icedatacollector;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.thinICE.wifi.WifiUtil;
import java.util.LinkedList;
import java.util.List;

public final class IceDataCollector
{
  public static final String TAG = "IceDataCollector";
  private static Context a = null;
  private static ThinICEConfigSettings b = new ThinICEConfigSettings();
  private static Looper c = null;
  private static Handler d = null;
  private static boolean e = false;
  private static Activity f = null;
  private static Runnable g = new b();
  private static LinkedList<Sample> h = new LinkedList();
  private static Sample i = null;
  private static final Object j = new Object();
  private static ThinICEListener k = null;
  private static Runnable l = new a();
  
  private static final boolean a(ThinICEConfigSettings paramThinICEConfigSettings1, ThinICEConfigSettings paramThinICEConfigSettings2)
  {
    return (paramThinICEConfigSettings1.isEnabled() != paramThinICEConfigSettings2.isEnabled()) || (paramThinICEConfigSettings1.getSampleInterval() != paramThinICEConfigSettings2.getSampleInterval());
  }
  
  /* Error */
  public static void flush()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 100	com/inmobi/commons/thinICE/icedatacollector/BuildSettings:DEBUG	Z
    //   6: ifeq +11 -> 17
    //   9: ldc 8
    //   11: ldc 102
    //   13: invokestatic 107	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   16: pop
    //   17: getstatic 66	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:j	Ljava/lang/Object;
    //   20: astore_0
    //   21: aload_0
    //   22: monitorenter
    //   23: aconst_null
    //   24: putstatic 63	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:i	Lcom/inmobi/commons/thinICE/icedatacollector/Sample;
    //   27: new 58	java/util/LinkedList
    //   30: dup
    //   31: invokespecial 59	java/util/LinkedList:<init>	()V
    //   34: putstatic 61	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:h	Ljava/util/LinkedList;
    //   37: aload_0
    //   38: monitorexit
    //   39: ldc 2
    //   41: monitorexit
    //   42: return
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    //   48: astore_0
    //   49: ldc 2
    //   51: monitorexit
    //   52: aload_0
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   48	5	0	localObject2	Object
    //   43	4	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   23	39	43	finally
    //   3	17	48	finally
    //   17	23	48	finally
    //   44	48	48	finally
  }
  
  public static ThinICEConfigSettings getConfig()
  {
    return new ThinICEConfigSettings(b);
  }
  
  public static WifiInfo getConnectedWifiInfo(Context paramContext)
  {
    int m = b.getWifiFlags();
    if (!ThinICEConfigSettings.bitTest(m, 2)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      boolean bool2 = ThinICEConfigSettings.bitTest(m, 1);
      if (b.isSampleConnectedWifiEnabled()) {
        try
        {
          if (WifiUtil.hasGetConnectedWifiInfoPermission(paramContext)) {
            return WifiUtil.getConnectedWifiInfo(paramContext, bool1, bool2);
          }
          if (BuildSettings.DEBUG) {
            Log.w("IceDataCollector", "application does not have permission to access connected wifi ap");
          }
          return null;
        }
        catch (Exception paramContext)
        {
          if (BuildSettings.DEBUG) {
            Log.e("IceDataCollector", "Error getting wifi data", paramContext);
          }
        }
      }
      return null;
    }
  }
  
  public static List<Sample> getData()
  {
    if (BuildSettings.DEBUG) {
      Log.d("IceDataCollector", "-- getData()");
    }
    synchronized (j)
    {
      LinkedList localLinkedList = h;
      flush();
      return localLinkedList;
    }
  }
  
  public static int getSampleCount()
  {
    synchronized (j)
    {
      int m = h.size();
      return m;
    }
  }
  
  private static void m()
  {
    if (BuildSettings.DEBUG) {
      Log.d("IceDataCollector", "startSampling()");
    }
    if (c != null) {
      if (BuildSettings.DEBUG) {
        Log.d("IceDataCollector", "ignoring, already sampling");
      }
    }
    do
    {
      return;
      Object localObject = new HandlerThread("IDC");
      ((HandlerThread)localObject).start();
      c = ((HandlerThread)localObject).getLooper();
      localObject = new Handler(c);
      d = (Handler)localObject;
      ((Handler)localObject).postDelayed(l, b.getSampleInterval() / 2L);
    } while (!BuildSettings.DEBUG);
    Log.d("IceDataCollector", "next sample in " + b.getSampleInterval() / 2L + " ms");
  }
  
  private static void n()
  {
    if (BuildSettings.DEBUG) {
      Log.d("IceDataCollector", "stopSampling()");
    }
    if (c == null) {
      if (BuildSettings.DEBUG) {
        Log.d("IceDataCollector", "ignoring, not currently sampling");
      }
    }
    do
    {
      return;
      d.removeCallbacks(l);
      d = null;
      c.quit();
      c = null;
    } while (!BuildSettings.DEBUG);
    Log.d("IceDataCollector", "sampling stopped");
  }
  
  /* Error */
  public static void setConfig(ThinICEConfigSettings arg0)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 100	com/inmobi/commons/thinICE/icedatacollector/BuildSettings:DEBUG	Z
    //   6: ifeq +30 -> 36
    //   9: ldc 8
    //   11: new 194	java/lang/StringBuilder
    //   14: dup
    //   15: ldc -28
    //   17: invokespecial 197	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: aload_0
    //   21: invokevirtual 231	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   24: ldc -23
    //   26: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: invokestatic 107	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   35: pop
    //   36: aload_0
    //   37: ifnonnull +21 -> 58
    //   40: getstatic 100	com/inmobi/commons/thinICE/icedatacollector/BuildSettings:DEBUG	Z
    //   43: ifeq +11 -> 54
    //   46: ldc 8
    //   48: ldc -21
    //   50: invokestatic 107	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   53: pop
    //   54: ldc 2
    //   56: monitorexit
    //   57: return
    //   58: getstatic 43	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:b	Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    //   61: astore_1
    //   62: aload_0
    //   63: putstatic 43	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:b	Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    //   66: aload_1
    //   67: invokevirtual 238	com/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings:getSampleHistorySize	()I
    //   70: istore_2
    //   71: getstatic 43	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:b	Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    //   74: invokevirtual 238	com/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings:getSampleHistorySize	()I
    //   77: istore_3
    //   78: iload_3
    //   79: iload_2
    //   80: if_icmpge +55 -> 135
    //   83: getstatic 66	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:j	Ljava/lang/Object;
    //   86: astore_0
    //   87: aload_0
    //   88: monitorenter
    //   89: getstatic 61	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:h	Ljava/util/LinkedList;
    //   92: invokevirtual 159	java/util/LinkedList:size	()I
    //   95: iload_3
    //   96: if_icmple +37 -> 133
    //   99: getstatic 100	com/inmobi/commons/thinICE/icedatacollector/BuildSettings:DEBUG	Z
    //   102: ifeq +11 -> 113
    //   105: ldc 8
    //   107: ldc -16
    //   109: invokestatic 107	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   112: pop
    //   113: getstatic 61	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:h	Ljava/util/LinkedList;
    //   116: iconst_0
    //   117: getstatic 61	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:h	Ljava/util/LinkedList;
    //   120: invokevirtual 159	java/util/LinkedList:size	()I
    //   123: iload_3
    //   124: isub
    //   125: invokevirtual 244	java/util/LinkedList:subList	(II)Ljava/util/List;
    //   128: invokeinterface 249 1 0
    //   133: aload_0
    //   134: monitorexit
    //   135: getstatic 45	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:c	Landroid/os/Looper;
    //   138: ifnonnull +31 -> 169
    //   141: getstatic 100	com/inmobi/commons/thinICE/icedatacollector/BuildSettings:DEBUG	Z
    //   144: ifeq -90 -> 54
    //   147: ldc 8
    //   149: ldc -5
    //   151: invokestatic 107	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   154: pop
    //   155: goto -101 -> 54
    //   158: astore_0
    //   159: ldc 2
    //   161: monitorexit
    //   162: aload_0
    //   163: athrow
    //   164: astore_1
    //   165: aload_0
    //   166: monitorexit
    //   167: aload_1
    //   168: athrow
    //   169: aload_1
    //   170: getstatic 43	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:b	Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    //   173: invokestatic 253	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:a	(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)Z
    //   176: ifeq -122 -> 54
    //   179: invokestatic 90	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:n	()V
    //   182: getstatic 43	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:b	Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    //   185: invokevirtual 83	com/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings:isEnabled	()Z
    //   188: ifeq +9 -> 197
    //   191: invokestatic 255	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:m	()V
    //   194: goto -140 -> 54
    //   197: invokestatic 153	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:flush	()V
    //   200: aconst_null
    //   201: putstatic 36	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:a	Landroid/content/Context;
    //   204: aconst_null
    //   205: putstatic 51	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:f	Landroid/app/Activity;
    //   208: aconst_null
    //   209: putstatic 68	com/inmobi/commons/thinICE/icedatacollector/IceDataCollector:k	Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;
    //   212: goto -158 -> 54
    // Local variable table:
    //   start	length	slot	name	signature
    //   61	6	1	localThinICEConfigSettings1	ThinICEConfigSettings
    //   164	6	1	localThinICEConfigSettings2	ThinICEConfigSettings
    //   70	11	2	m	int
    //   77	48	3	n	int
    // Exception table:
    //   from	to	target	type
    //   3	36	158	finally
    //   40	54	158	finally
    //   58	78	158	finally
    //   83	89	158	finally
    //   135	155	158	finally
    //   165	169	158	finally
    //   169	194	158	finally
    //   197	212	158	finally
    //   89	113	164	finally
    //   113	133	164	finally
    //   133	135	164	finally
  }
  
  public static void setListener(ThinICEListener paramThinICEListener)
  {
    k = paramThinICEListener;
  }
  
  public static void start(Context paramContext)
  {
    for (;;)
    {
      try
      {
        if (BuildSettings.DEBUG) {
          Log.d("IceDataCollector", "-- start()");
        }
        if (paramContext == null)
        {
          if (BuildSettings.DEBUG) {
            Log.d("IceDataCollector", "aborting, context is null");
          }
          return;
        }
        if (!b.isEnabled())
        {
          if (!BuildSettings.DEBUG) {
            continue;
          }
          Log.d("IceDataCollector", "ignoring, data collection is disabled in settings");
          continue;
        }
        if (Build.VERSION.SDK_INT >= 14) {
          break label114;
        }
      }
      finally {}
      if (!(paramContext instanceof Activity))
      {
        if (BuildSettings.DEBUG) {
          Log.w("IceDataCollector", "aborting, build < 14 and context is not an activity");
        }
      }
      else
      {
        f = (Activity)paramContext;
        label114:
        a = paramContext.getApplicationContext();
        m();
        if (e)
        {
          if (BuildSettings.DEBUG) {
            Log.d("IceDataCollector", "stop previously requested, clearing request");
          }
          e = false;
          d.removeCallbacks(g);
        }
      }
    }
  }
  
  public static void stop()
  {
    for (;;)
    {
      try
      {
        if (BuildSettings.DEBUG) {
          Log.d("IceDataCollector", "-- stop()");
        }
        if (c == null)
        {
          Log.d("IceDataCollector", "ignoring, not currently running");
          return;
        }
        if (e)
        {
          Log.d("IceDataCollector", "ignoring, stop already requested");
          continue;
        }
        e = true;
      }
      finally {}
      d.postDelayed(g, b.getStopRequestTimeout());
      if (BuildSettings.DEBUG) {
        Log.d("IceDataCollector", "stop requested, occurring in " + b.getStopRequestTimeout() + " ms");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.icedatacollector.IceDataCollector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */