package com.google.analytics.tracking.android;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.Command;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

class GAThread
  extends Thread
  implements AnalyticsThread
{
  static final String API_VERSION = "1";
  private static final String CLIENT_VERSION = "ma3.0.2";
  private static final int MAX_SAMPLE_RATE = 100;
  private static final int SAMPLE_RATE_MODULO = 10000;
  private static final int SAMPLE_RATE_MULTIPLIER = 100;
  private static GAThread sInstance;
  private volatile String mClientId;
  private volatile boolean mClosed = false;
  private volatile List<Command> mCommands;
  private final Context mContext;
  private volatile boolean mDisabled = false;
  private volatile String mInstallCampaign;
  private volatile ServiceProxy mServiceProxy;
  private final LinkedBlockingQueue<Runnable> queue = new LinkedBlockingQueue();
  
  private GAThread(Context paramContext)
  {
    super("GAThread");
    if (paramContext != null) {}
    for (mContext = paramContext.getApplicationContext();; mContext = paramContext)
    {
      start();
      return;
    }
  }
  
  @VisibleForTesting
  GAThread(Context paramContext, ServiceProxy paramServiceProxy)
  {
    super("GAThread");
    if (paramContext != null) {}
    for (mContext = paramContext.getApplicationContext();; mContext = paramContext)
    {
      mServiceProxy = paramServiceProxy;
      start();
      return;
    }
  }
  
  private void fillAppParameters(Map<String, String> paramMap)
  {
    AppFieldsDefaultProvider localAppFieldsDefaultProvider = AppFieldsDefaultProvider.getProvider();
    Utils.putIfAbsent(paramMap, "&an", localAppFieldsDefaultProvider.getValue("&an"));
    Utils.putIfAbsent(paramMap, "&av", localAppFieldsDefaultProvider.getValue("&av"));
    Utils.putIfAbsent(paramMap, "&aid", localAppFieldsDefaultProvider.getValue("&aid"));
    Utils.putIfAbsent(paramMap, "&aiid", localAppFieldsDefaultProvider.getValue("&aiid"));
    paramMap.put("&v", "1");
  }
  
  @VisibleForTesting
  static String getAndClearCampaign(Context paramContext)
  {
    try
    {
      localObject = paramContext.openFileInput("gaInstallData");
      arrayOfByte = new byte[' '];
      i = ((FileInputStream)localObject).read(arrayOfByte, 0, 8192);
      if (((FileInputStream)localObject).available() > 0)
      {
        Log.e("Too much campaign data, ignoring it.");
        ((FileInputStream)localObject).close();
        paramContext.deleteFile("gaInstallData");
        return null;
      }
      ((FileInputStream)localObject).close();
      paramContext.deleteFile("gaInstallData");
      if (i <= 0)
      {
        Log.w("Campaign file is empty.");
        return null;
      }
    }
    catch (FileNotFoundException paramContext)
    {
      byte[] arrayOfByte;
      int i;
      Log.i("No campaign data found.");
      return null;
      Object localObject = new String(arrayOfByte, 0, i);
      Log.i("Campaign found: " + (String)localObject);
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      Log.e("Error reading campaign data.");
      paramContext.deleteFile("gaInstallData");
    }
    return null;
  }
  
  static GAThread getInstance(Context paramContext)
  {
    if (sInstance == null) {
      sInstance = new GAThread(paramContext);
    }
    return sInstance;
  }
  
  private String getUrlScheme(Map<String, String> paramMap)
  {
    if (paramMap.containsKey("useSecure"))
    {
      if (Utils.safeParseBoolean((String)paramMap.get("useSecure"), true)) {
        return "https:";
      }
      return "http:";
    }
    return "https:";
  }
  
  @VisibleForTesting
  static int hashClientIdForSampling(String paramString)
  {
    int k = 1;
    if (!TextUtils.isEmpty(paramString))
    {
      int j = paramString.length();
      int i = 0;
      j -= 1;
      for (;;)
      {
        k = i;
        if (j < 0) {
          break;
        }
        k = paramString.charAt(j);
        k = (i << 6 & 0xFFFFFFF) + k + (k << 14);
        int m = 0xFE00000 & k;
        i = k;
        if (m != 0) {
          i = k ^ m >> 21;
        }
        j -= 1;
      }
    }
    return k;
  }
  
  private boolean isSampledOut(Map<String, String> paramMap)
  {
    if (paramMap.get("&sf") == null) {
      return false;
    }
    double d = Utils.safeParseDouble((String)paramMap.get("&sf"), 100.0D);
    if (d >= 100.0D) {
      return false;
    }
    if (hashClientIdForSampling((String)paramMap.get("&cid")) % 10000 >= d * 100.0D)
    {
      if (paramMap.get("&t") == null) {}
      for (paramMap = "unknown";; paramMap = (String)paramMap.get("&t"))
      {
        Log.v(String.format("%s hit sampled out", new Object[] { paramMap }));
        return true;
      }
    }
    return false;
  }
  
  private String printStackTrace(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintStream);
    localPrintStream.flush();
    return new String(localByteArrayOutputStream.toByteArray());
  }
  
  public void clearHits()
  {
    queueToThread(new GAThread.3(this));
  }
  
  @VisibleForTesting
  void close()
  {
    mClosed = true;
    interrupt();
  }
  
  public void dispatch()
  {
    queueToThread(new GAThread.2(this));
  }
  
  public LinkedBlockingQueue<Runnable> getQueue()
  {
    return queue;
  }
  
  public Thread getThread()
  {
    return this;
  }
  
  @VisibleForTesting
  protected void init()
  {
    mServiceProxy.createService();
    mCommands = new ArrayList();
    mCommands.add(new Command("appendVersion", "&_v".substring(1), "ma3.0.2"));
    mCommands.add(new Command("appendQueueTime", "&qt".substring(1), null));
    mCommands.add(new Command("appendCacheBuster", "&z".substring(1), null));
  }
  
  @VisibleForTesting
  boolean isDisabled()
  {
    return mDisabled;
  }
  
  @VisibleForTesting
  void queueToThread(Runnable paramRunnable)
  {
    queue.add(paramRunnable);
  }
  
  public void run()
  {
    try
    {
      Thread.sleep(5000L);
      for (;;)
      {
        try
        {
          if (mServiceProxy == null) {
            mServiceProxy = new GAServiceProxy(mContext, this);
          }
          init();
          mClientId = ClientIdDefaultProvider.getProvider().getValue("&cid");
          mInstallCampaign = getAndClearCampaign(mContext);
        }
        catch (Throwable localThrowable2)
        {
          Log.e("Error initializing the GAThread: " + printStackTrace(localThrowable2));
          Log.e("Google Analytics will not start up.");
          mDisabled = true;
          continue;
        }
        if (mClosed) {
          return;
        }
        try
        {
          Runnable localRunnable = (Runnable)queue.take();
          if (!mDisabled) {
            localRunnable.run();
          }
        }
        catch (InterruptedException localInterruptedException1)
        {
          Log.i(localInterruptedException1.toString());
        }
        catch (Throwable localThrowable1)
        {
          Log.e("Error on GAThread: " + printStackTrace(localThrowable1));
          Log.e("Google Analytics is shutting down.");
          mDisabled = true;
        }
      }
    }
    catch (InterruptedException localInterruptedException2)
    {
      for (;;)
      {
        Log.w("sleep interrupted in GAThread initialize");
      }
    }
  }
  
  public void sendHit(Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap(paramMap);
    String str = (String)paramMap.get("&ht");
    paramMap = str;
    if (str != null) {}
    try
    {
      Long.valueOf(str).longValue();
      paramMap = str;
    }
    catch (NumberFormatException paramMap)
    {
      for (;;)
      {
        paramMap = null;
      }
    }
    if (paramMap == null) {
      localHashMap.put("&ht", Long.toString(System.currentTimeMillis()));
    }
    queueToThread(new GAThread.1(this, localHashMap));
  }
  
  public void setForceLocalDispatch()
  {
    queueToThread(new GAThread.4(this));
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.GAThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */