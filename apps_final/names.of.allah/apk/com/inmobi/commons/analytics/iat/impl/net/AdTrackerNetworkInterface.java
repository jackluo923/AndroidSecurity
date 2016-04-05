package com.inmobi.commons.analytics.iat.impl.net;

import android.os.Handler;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants.StatusCode;
import com.inmobi.commons.analytics.iat.impl.AdTrackerUtils;
import com.inmobi.commons.analytics.iat.impl.Goal;
import com.inmobi.commons.analytics.iat.impl.GoalList;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerConfigParams;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer;
import com.inmobi.commons.cache.RetryMechanism;
import com.inmobi.commons.internal.CommonsException;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.Logger;
import java.util.Calendar;
import java.util.Date;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

public class AdTrackerNetworkInterface
{
  private static GoalList a;
  private static AtomicBoolean b = null;
  private static AtomicBoolean c;
  private static Thread d;
  private static Handler e;
  private static AtomicBoolean f = null;
  private static AtomicBoolean g = null;
  private static AdTrackerWebViewLoader h;
  private static boolean i = false;
  private static int j = 0;
  private static String k = "https://d.appsdt.com/download/tracker/?";
  private static String l = "https://d.appsdt.com/sdkdwnldbeacon.html";
  private static String m = "https://d.appsdt.com/download/tracker/iatsdkconfs?";
  private static Timer n = new Timer();
  
  static String a()
  {
    return k;
  }
  
  /* Error */
  private static void a(Goal arg0)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 69	com/inmobi/commons/analytics/iat/impl/Goal:getGoalName	()Ljava/lang/String;
    //   4: astore_1
    //   5: aload_0
    //   6: invokevirtual 73	com/inmobi/commons/analytics/iat/impl/Goal:getRetryTime	()J
    //   9: lstore 5
    //   11: invokestatic 79	com/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer:getConfigParams	()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;
    //   14: invokevirtual 85	com/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams:getRetryParams	()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;
    //   17: invokevirtual 91	com/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams:getMaxWaitTime	()I
    //   20: istore_2
    //   21: iconst_1
    //   22: getstatic 33	com/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface:f	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   25: invokevirtual 97	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   28: if_icmpne +63 -> 91
    //   31: lconst_0
    //   32: lstore_3
    //   33: lload_3
    //   34: lconst_0
    //   35: lcmp
    //   36: ifle +42 -> 78
    //   39: ldc 99
    //   41: new 101	java/lang/StringBuilder
    //   44: dup
    //   45: ldc 103
    //   47: invokespecial 106	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   50: aload_1
    //   51: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: ldc 112
    //   56: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: lload_3
    //   60: ldc2_w 113
    //   63: ldiv
    //   64: invokevirtual 117	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   67: ldc 119
    //   69: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: invokestatic 128	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   78: getstatic 130	com/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface:d	Ljava/lang/Thread;
    //   81: astore_0
    //   82: aload_0
    //   83: monitorenter
    //   84: lload_3
    //   85: invokestatic 136	java/lang/Thread:sleep	(J)V
    //   88: aload_0
    //   89: monitorexit
    //   90: return
    //   91: lload 5
    //   93: lstore_3
    //   94: lload 5
    //   96: iload_2
    //   97: i2l
    //   98: lcmp
    //   99: ifle -66 -> 33
    //   102: iload_2
    //   103: i2l
    //   104: lstore_3
    //   105: goto -72 -> 33
    //   108: astore_1
    //   109: aload_0
    //   110: monitorexit
    //   111: aload_1
    //   112: athrow
    //   113: astore_0
    //   114: ldc 99
    //   116: ldc -118
    //   118: aload_0
    //   119: invokestatic 142	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   122: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   4	47	1	str	String
    //   108	4	1	localObject	Object
    //   20	83	2	i1	int
    //   32	73	3	l1	long
    //   9	86	5	l2	long
    // Exception table:
    //   from	to	target	type
    //   84	90	108	finally
    //   0	31	113	java/lang/Exception
    //   39	78	113	java/lang/Exception
    //   78	84	113	java/lang/Exception
    //   109	113	113	java/lang/Exception
  }
  
  private static void a(String paramString, Goal paramGoal)
  {
    boolean bool = paramGoal.isDuplicateGoal();
    int i1 = paramGoal.getGoalCount();
    String str = paramGoal.getGoalName();
    if (!h()) {}
    for (paramString = Boolean.valueOf(reportUsingWebview(paramString, paramGoal)); paramString.booleanValue(); paramString = Boolean.valueOf(reportUsingNetwork(paramString, paramGoal)))
    {
      FileOperations.setPreferences(InternalSDKUtil.getContext(), "IMAdTrackerStatusUpload", "goalPingSuccess", true);
      a.removeGoal(str, i1);
      if ("download".equals(str)) {
        AdTrackerUtils.updateStatus();
      }
      return;
    }
    a.increaseRetryTime(str, i1, bool);
  }
  
  static String b()
  {
    return l;
  }
  
  private static void b(String paramString)
  {
    try
    {
      a.saveGoals();
      i = AdTrackerInitializer.getLogger().startNewSample();
      Goal localGoal = (Goal)a.get(0);
      if (!InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext()))
      {
        Log.debug("[InMobi]-[AdTracker]-4.4.1", "Network Unavailable");
        j = 1;
        deinit();
        return;
      }
      a(localGoal);
      g();
      a(paramString, localGoal);
      FileOperations.setPreferences(InternalSDKUtil.getContext(), "IMAdTrackerStatusUpload", "waitForReferrer", true);
      j = 0;
      return;
    }
    catch (Exception paramString)
    {
      Log.internal("[InMobi]-[AdTracker]-4.4.1", "Failed to process IAT goals", paramString);
    }
  }
  
  public static void deinit()
  {
    if (b != null) {
      b.set(false);
    }
    if ((a != null) && (!a.isEmpty())) {
      a.saveGoals();
    }
    c.set(false);
    a = null;
  }
  
  private static void g()
  {
    try
    {
      if ((!i()) && (!l()))
      {
        Log.internal("[InMobi]-[AdTracker]-4.4.1", "Getting wait time for referrer");
        long l1 = j();
        Log.internal("[InMobi]-[AdTracker]-4.4.1", "Waiting for referrer for " + l1 + "secs");
        if (!i()) {}
        synchronized (d)
        {
          d.wait(l1 * 1000L);
          if (!i())
          {
            ??? = AdTrackerUtils.getReferrerFromLogs();
            if (??? != null)
            {
              Log.internal("[InMobi]-[AdTracker]-4.4.1", "Saving referrer from logs: " + (String)???);
              AdTrackerUtils.setReferrerFromLogs(InternalSDKUtil.getContext(), (String)???);
              return;
            }
          }
        }
      }
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[AdTracker]-4.4.1", "Failed to set referrer", localException);
    }
  }
  
  public static GoalList getGoalList()
  {
    return a;
  }
  
  public static Thread getNetworkThread()
  {
    return d;
  }
  
  public static Handler getUIHandler()
  {
    return e;
  }
  
  public static AtomicBoolean getWebviewUploadStatus()
  {
    return g;
  }
  
  private static boolean h()
  {
    try
    {
      String str = FileOperations.getPreferences(InternalSDKUtil.getContext(), "IMAdTrackerStatusUpload", "timetoLive");
      Object localObject = FileOperations.getPreferences(InternalSDKUtil.getContext(), "IMAdTrackerStatusUpload", "iat_ids");
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.setTime(new Date());
      localCalendar.getTime().toString();
      if (str != null)
      {
        if (localObject == null) {
          return false;
        }
        localObject = localCalendar.getTime();
        localCalendar.add(11, Integer.parseInt(str));
        boolean bool = localCalendar.getTime().after((Date)localObject);
        if (bool) {
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[AdTracker]-4.4.1", "Error parsing ttl", localException);
    }
    return false;
  }
  
  private static boolean i()
  {
    return FileOperations.getPreferences(InternalSDKUtil.getContext(), "IMAdTrackerStatusUpload", "referrer") != null;
  }
  
  public static void init()
  {
    if (a == null) {
      a = GoalList.getLoggedGoals();
    }
    if (b == null) {
      b = new AtomicBoolean(false);
    }
    c = new AtomicBoolean(false);
    if (e == null) {
      e = new Handler();
    }
    f = new AtomicBoolean(true);
    g = new AtomicBoolean(false);
  }
  
  public static boolean isMetricSample()
  {
    return i;
  }
  
  public static boolean isSynced()
  {
    return c.get();
  }
  
  public static int isUnstableNetwork()
  {
    return j;
  }
  
  private static long j()
  {
    long l1;
    try
    {
      int i1 = AdTrackerInitializer.getConfigParams().getReferrerWaitTimeRetryCount();
      int i2 = AdTrackerInitializer.getConfigParams().getReferrerWaitTimeRetryInterval();
      int i3 = AdTrackerInitializer.getConfigParams().getReferrerWaitTime();
      int i4 = (i1 * i2 + 0) * i1 / 2;
      new RetryMechanism(i1 - 1, i2, n).rescheduleTimer(new AdTrackerNetworkInterface.b());
      long l2;
      synchronized (d)
      {
        d.wait(i4);
        l1 = FileOperations.getLongPreferences(InternalSDKUtil.getContext(), "IMAdTrackerStatusUpload", "referrerWaitTime");
        l2 = l1;
        if (0L != l1) {}
      }
      Log.internal("[InMobi]-[AdTracker]-4.4.1", "Failed to get wait time", localException1);
    }
    catch (Exception localException1)
    {
      l1 = 0L;
    }
    return l1;
  }
  
  private static void k()
  {
    Object localObject2 = new DefaultHttpClient();
    Object localObject1 = m + "t=" + System.currentTimeMillis();
    Log.internal("[InMobi]-[AdTracker]-4.4.1", "Fetch Wait time URL: " + (String)localObject1);
    HttpGet localHttpGet = new HttpGet((String)localObject1);
    localObject1 = null;
    try
    {
      localObject2 = ((DefaultHttpClient)localObject2).execute(localHttpGet);
      localObject1 = localObject2;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        try
        {
          localObject1 = EntityUtils.toString(((HttpResponse)localObject1).getEntity());
          Log.internal("[InMobi]-[AdTracker]-4.4.1", "Wait time received for referrer: " + (String)localObject1);
          long l1 = new JSONObject((String)localObject1).getLong("referrerWaitTime");
          FileOperations.setPreferences(InternalSDKUtil.getContext(), "IMAdTrackerStatusUpload", "referrerWaitTime", l1);
          return;
        }
        catch (Exception localException1)
        {
          Log.internal("[InMobi]-[AdTracker]-4.4.1", "Error fetching wait time for referrer", localException1);
          return;
        }
        localException2 = localException2;
        Log.internal("[InMobi]-[AdTracker]-4.4.1", "Error fetching wait time for referrer", localException2);
      }
    }
    if (((HttpResponse)localObject1).getStatusLine().getStatusCode() == 200) {}
    throw new CommonsException(-1);
  }
  
  private static boolean l()
  {
    return FileOperations.getBooleanPreferences(InternalSDKUtil.getContext(), "IMAdTrackerStatusUpload", "waitForReferrer");
  }
  
  public static void notifyThread()
  {
    try
    {
      synchronized (d)
      {
        d.notify();
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[AdTracker]-4.4.1", "Failed to notify thread", localException);
    }
  }
  
  public static AdTrackerConstants.StatusCode reportToServer(String paramString)
  {
    try
    {
      if (b.compareAndSet(false, true))
      {
        paramString = new Thread(new AdTrackerNetworkInterface.a(paramString));
        d = paramString;
        paramString.setPriority(1);
        d.start();
      }
      paramString = AdTrackerConstants.StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS;
      return paramString;
    }
    finally {}
  }
  
  protected static boolean reportUsingNetwork(String paramString, Goal paramGoal)
  {
    String str1 = paramGoal.getGoalName();
    try
    {
      String str2 = FileOperations.getPreferences(InternalSDKUtil.getContext(), "IMAdTrackerStatusUpload", "iat_ids");
      AdTrackerConstants.StatusCode localStatusCode = AdTrackerConstants.StatusCode.APP_ANALYTICS_UPLOAD_FAILURE;
      paramString = AdTrackerRequestResponseBuilder.sendHTTPRequest(paramString, paramGoal, str2);
      if (AdTrackerConstants.StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS == paramString)
      {
        f.set(true);
        Log.debug("[InMobi]-[AdTracker]-4.4.1", "Successfully uploaded goal: " + str1);
      }
      for (;;)
      {
        return f.get();
        if (AdTrackerConstants.StatusCode.RELOAD_WEBVIEW_ERROR != paramString) {
          break;
        }
        f.set(false);
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        f.set(false);
        Log.debug("[InMobi]-[AdTracker]-4.4.1", "Failed to upload goal: " + str1);
        Log.internal("[InMobi]-[AdTracker]-4.4.1", "Failed to report goal: ", paramString);
        continue;
        f.set(false);
        Log.debug("[InMobi]-[AdTracker]-4.4.1", "Failed to upload goal: " + str1);
      }
    }
  }
  
  protected static boolean reportUsingWebview(String arg0, Goal paramGoal)
  {
    for (;;)
    {
      try
      {
        i1 = AdTrackerInitializer.getConfigParams().getWebviewTimeout();
        h = new AdTrackerWebViewLoader();
        AdTrackerRequestResponseBuilder.saveWebviewRequestParam(???, paramGoal);
        h.loadWebview(paramGoal);
      }
      catch (Exception ???)
      {
        int i1;
        f.set(false);
        Log.internal("[InMobi]-[AdTracker]-4.4.1", "Failed to load webview Exception", ???);
        continue;
        f.set(true);
        Log.debug("[InMobi]-[AdTracker]-4.4.1", "Uploaded goal successfully: " + paramGoal.getGoalName());
        continue;
      }
      synchronized (d)
      {
        d.wait(i1);
        if (true == AdTrackerWebViewLoader.isWebviewLoading()) {
          AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, paramGoal, 0, 0L, 408, null);
        }
        if (!g.get())
        {
          f.set(false);
          Log.debug("[InMobi]-[AdTracker]-4.4.1", "Failed to upload goal: " + paramGoal.getGoalName());
          h.deinit(i1);
          return g.get();
        }
      }
    }
  }
  
  public static void setSynced(boolean paramBoolean)
  {
    c.set(paramBoolean);
  }
  
  public static void setWebviewUploadStatus(boolean paramBoolean)
  {
    g.set(paramBoolean);
  }
  
  public static void waitThread(int paramInt)
  {
    try
    {
      synchronized (d)
      {
        d.wait(paramInt);
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[AdTracker]-4.4.1", "Failed to notify thread", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */