package com.appyet.manager;

import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.google.analytics.tracking.android.GoogleAnalytics;
import com.google.analytics.tracking.android.MapBuilder;
import com.google.analytics.tracking.android.Tracker;

public final class ap
{
  public Tracker a;
  public Tracker b;
  private ApplicationContext c;
  private GoogleAnalytics d;
  
  public ap(ApplicationContext paramApplicationContext)
  {
    c = paramApplicationContext;
    a();
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: getfield 18	com/appyet/manager/ap:c	Lcom/appyet/context/ApplicationContext;
    //   5: invokestatic 29	com/google/analytics/tracking/android/GoogleAnalytics:getInstance	(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;
    //   8: putfield 31	com/appyet/manager/ap:d	Lcom/google/analytics/tracking/android/GoogleAnalytics;
    //   11: aload_0
    //   12: getfield 18	com/appyet/manager/ap:c	Lcom/appyet/context/ApplicationContext;
    //   15: getfield 37	com/appyet/context/ApplicationContext:r	Lcom/appyet/metadata/MetadataAppSync;
    //   18: ifnull +99 -> 117
    //   21: aload_0
    //   22: getfield 18	com/appyet/manager/ap:c	Lcom/appyet/context/ApplicationContext;
    //   25: getfield 37	com/appyet/context/ApplicationContext:r	Lcom/appyet/metadata/MetadataAppSync;
    //   28: getfield 43	com/appyet/metadata/MetadataAppSync:VendorGoogleAnalyticUACode	Ljava/lang/String;
    //   31: ifnull +86 -> 117
    //   34: aload_0
    //   35: getfield 18	com/appyet/manager/ap:c	Lcom/appyet/context/ApplicationContext;
    //   38: getfield 37	com/appyet/context/ApplicationContext:r	Lcom/appyet/metadata/MetadataAppSync;
    //   41: getfield 43	com/appyet/metadata/MetadataAppSync:VendorGoogleAnalyticUACode	Ljava/lang/String;
    //   44: invokevirtual 49	java/lang/String:trim	()Ljava/lang/String;
    //   47: ldc 51
    //   49: invokevirtual 55	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   52: ifne +65 -> 117
    //   55: aload_0
    //   56: aload_0
    //   57: getfield 31	com/appyet/manager/ap:d	Lcom/google/analytics/tracking/android/GoogleAnalytics;
    //   60: aload_0
    //   61: getfield 18	com/appyet/manager/ap:c	Lcom/appyet/context/ApplicationContext;
    //   64: getfield 37	com/appyet/context/ApplicationContext:r	Lcom/appyet/metadata/MetadataAppSync;
    //   67: getfield 43	com/appyet/metadata/MetadataAppSync:VendorGoogleAnalyticUACode	Ljava/lang/String;
    //   70: invokevirtual 59	com/google/analytics/tracking/android/GoogleAnalytics:getTracker	(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    //   73: putfield 61	com/appyet/manager/ap:a	Lcom/google/analytics/tracking/android/Tracker;
    //   76: aload_0
    //   77: getfield 18	com/appyet/manager/ap:c	Lcom/appyet/context/ApplicationContext;
    //   80: getfield 65	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   83: getfield 71	com/appyet/metadata/Metadata:MetadataApplication	Lcom/appyet/metadata/MetadataApplication;
    //   86: getfield 76	com/appyet/metadata/MetadataApplication:UserGoogleAnalyticUaCode	Ljava/lang/String;
    //   89: ifnull +111 -> 200
    //   92: aload_0
    //   93: aload_0
    //   94: getfield 31	com/appyet/manager/ap:d	Lcom/google/analytics/tracking/android/GoogleAnalytics;
    //   97: aload_0
    //   98: getfield 18	com/appyet/manager/ap:c	Lcom/appyet/context/ApplicationContext;
    //   101: getfield 65	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   104: getfield 71	com/appyet/metadata/Metadata:MetadataApplication	Lcom/appyet/metadata/MetadataApplication;
    //   107: getfield 76	com/appyet/metadata/MetadataApplication:UserGoogleAnalyticUaCode	Ljava/lang/String;
    //   110: invokevirtual 59	com/google/analytics/tracking/android/GoogleAnalytics:getTracker	(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    //   113: putfield 78	com/appyet/manager/ap:b	Lcom/google/analytics/tracking/android/Tracker;
    //   116: return
    //   117: aload_0
    //   118: getfield 18	com/appyet/manager/ap:c	Lcom/appyet/context/ApplicationContext;
    //   121: getfield 65	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   124: getfield 71	com/appyet/metadata/Metadata:MetadataApplication	Lcom/appyet/metadata/MetadataApplication;
    //   127: getfield 81	com/appyet/metadata/MetadataApplication:VendorGoogleAnalyticUaCode	Ljava/lang/String;
    //   130: ifnull +62 -> 192
    //   133: aload_0
    //   134: getfield 18	com/appyet/manager/ap:c	Lcom/appyet/context/ApplicationContext;
    //   137: getfield 65	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   140: getfield 71	com/appyet/metadata/Metadata:MetadataApplication	Lcom/appyet/metadata/MetadataApplication;
    //   143: getfield 81	com/appyet/metadata/MetadataApplication:VendorGoogleAnalyticUaCode	Ljava/lang/String;
    //   146: invokevirtual 49	java/lang/String:trim	()Ljava/lang/String;
    //   149: ldc 51
    //   151: invokevirtual 55	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   154: ifne +38 -> 192
    //   157: aload_0
    //   158: aload_0
    //   159: getfield 31	com/appyet/manager/ap:d	Lcom/google/analytics/tracking/android/GoogleAnalytics;
    //   162: aload_0
    //   163: getfield 18	com/appyet/manager/ap:c	Lcom/appyet/context/ApplicationContext;
    //   166: getfield 65	com/appyet/context/ApplicationContext:q	Lcom/appyet/metadata/Metadata;
    //   169: getfield 71	com/appyet/metadata/Metadata:MetadataApplication	Lcom/appyet/metadata/MetadataApplication;
    //   172: getfield 81	com/appyet/metadata/MetadataApplication:VendorGoogleAnalyticUaCode	Ljava/lang/String;
    //   175: invokevirtual 59	com/google/analytics/tracking/android/GoogleAnalytics:getTracker	(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    //   178: putfield 61	com/appyet/manager/ap:a	Lcom/google/analytics/tracking/android/Tracker;
    //   181: goto -105 -> 76
    //   184: astore_1
    //   185: aload_1
    //   186: invokestatic 86	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   189: goto -113 -> 76
    //   192: aload_0
    //   193: aconst_null
    //   194: putfield 61	com/appyet/manager/ap:a	Lcom/google/analytics/tracking/android/Tracker;
    //   197: goto -121 -> 76
    //   200: aload_0
    //   201: aconst_null
    //   202: putfield 78	com/appyet/manager/ap:b	Lcom/google/analytics/tracking/android/Tracker;
    //   205: return
    //   206: astore_1
    //   207: aload_1
    //   208: invokestatic 86	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   211: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	212	0	this	ap
    //   184	2	1	localException1	Exception
    //   206	2	1	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   11	76	184	java/lang/Exception
    //   117	181	184	java/lang/Exception
    //   192	197	184	java/lang/Exception
    //   76	116	206	java/lang/Exception
    //   200	205	206	java/lang/Exception
  }
  
  public final void a(Exception paramException)
  {
    if (a != null) {
      a.send(MapBuilder.createException(paramException.getMessage(), Boolean.valueOf(false)).build());
    }
  }
  
  public final void a(String paramString)
  {
    new aq(this, paramString).a(new Void[0]);
  }
  
  public final void a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      if (a != null) {
        a.send(MapBuilder.createSocial(paramString1, paramString2, paramString3).build());
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          if (b != null) {
            b.send(MapBuilder.createSocial(paramString1, paramString2, paramString3).build());
          }
          return;
        }
        catch (Exception paramString1)
        {
          d.a(paramString1);
        }
        localException = localException;
        d.a(localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */