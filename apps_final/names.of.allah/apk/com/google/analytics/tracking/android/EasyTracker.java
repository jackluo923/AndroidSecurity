package com.google.analytics.tracking.android;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

public class EasyTracker
  extends Tracker
{
  private static final int DEFAULT_SAMPLE_RATE = 100;
  private static final String EASY_TRACKER_NAME = "easy_tracker";
  static final int NUM_MILLISECONDS_TO_WAIT_FOR_OPEN_ACTIVITY = 1000;
  private static EasyTracker sInstance;
  private static String sResourcePackageName;
  private int mActivitiesActive;
  private final Map<String, String> mActivityNameMap;
  private Clock mClock;
  private Context mContext;
  private final GoogleAnalytics mGoogleAnalytics;
  private boolean mIsAutoActivityTracking;
  private boolean mIsInForeground;
  private boolean mIsReportUncaughtExceptionsEnabled;
  private long mLastOnStopTime;
  private ParameterLoader mParameterFetcher;
  private ServiceManager mServiceManager;
  private long mSessionTimeout;
  private boolean mStartSessionOnNextSend;
  private Timer mTimer;
  private TimerTask mTimerTask;
  
  private EasyTracker(Context paramContext)
  {
    this(paramContext, new ParameterLoaderImpl(paramContext), GoogleAnalytics.getInstance(paramContext), GAServiceManager.getInstance(), null);
  }
  
  private EasyTracker(Context paramContext, ParameterLoader paramParameterLoader, GoogleAnalytics paramGoogleAnalytics, ServiceManager paramServiceManager, TrackerHandler paramTrackerHandler) {}
  
  private void clearExistingTimer()
  {
    try
    {
      if (mTimer != null)
      {
        mTimer.cancel();
        mTimer = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private String getActivityName(Activity paramActivity)
  {
    String str1 = paramActivity.getClass().getCanonicalName();
    if (mActivityNameMap.containsKey(str1)) {
      return (String)mActivityNameMap.get(str1);
    }
    String str2 = mParameterFetcher.getString(str1);
    paramActivity = str2;
    if (str2 == null) {
      paramActivity = str1;
    }
    mActivityNameMap.put(str1, paramActivity);
    return paramActivity;
  }
  
  public static EasyTracker getInstance(Context paramContext)
  {
    if (sInstance == null) {
      sInstance = new EasyTracker(paramContext);
    }
    return sInstance;
  }
  
  private Logger.LogLevel getLogLevelFromString(String paramString)
  {
    try
    {
      paramString = Logger.LogLevel.valueOf(paramString.toUpperCase());
      return paramString;
    }
    catch (IllegalArgumentException paramString) {}
    return null;
  }
  
  @VisibleForTesting
  static EasyTracker getNewInstance(Context paramContext, ParameterLoader paramParameterLoader, GoogleAnalytics paramGoogleAnalytics, ServiceManager paramServiceManager, TrackerHandler paramTrackerHandler)
  {
    paramContext = new EasyTracker(paramContext, paramParameterLoader, paramGoogleAnalytics, paramServiceManager, paramTrackerHandler);
    sInstance = paramContext;
    return paramContext;
  }
  
  private void loadParameters()
  {
    Log.v("Starting EasyTracker.");
    Object localObject2 = mParameterFetcher.getString("ga_trackingId");
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject1 = mParameterFetcher.getString("ga_api_key");
    }
    set("&tid", (String)localObject1);
    Log.v("[EasyTracker] trackingId loaded: " + (String)localObject1);
    localObject1 = mParameterFetcher.getString("ga_appName");
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      Log.v("[EasyTracker] app name loaded: " + (String)localObject1);
      set("&an", (String)localObject1);
    }
    localObject1 = mParameterFetcher.getString("ga_appVersion");
    if (localObject1 != null)
    {
      Log.v("[EasyTracker] app version loaded: " + (String)localObject1);
      set("&av", (String)localObject1);
    }
    localObject1 = mParameterFetcher.getString("ga_logLevel");
    if (localObject1 != null)
    {
      localObject1 = getLogLevelFromString((String)localObject1);
      if (localObject1 != null)
      {
        Log.v("[EasyTracker] log level loaded: " + localObject1);
        mGoogleAnalytics.getLogger().setLogLevel((Logger.LogLevel)localObject1);
      }
    }
    localObject2 = mParameterFetcher.getDoubleFromString("ga_sampleFrequency");
    localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new Double(mParameterFetcher.getInt("ga_sampleRate", 100));
    }
    if (((Double)localObject1).doubleValue() != 100.0D) {
      set("&sf", Double.toString(((Double)localObject1).doubleValue()));
    }
    Log.v("[EasyTracker] sample rate loaded: " + localObject1);
    int i = mParameterFetcher.getInt("ga_dispatchPeriod", 1800);
    Log.v("[EasyTracker] dispatch period loaded: " + i);
    mServiceManager.setLocalDispatchPeriod(i);
    mSessionTimeout = (mParameterFetcher.getInt("ga_sessionTimeout", 30) * 1000);
    Log.v("[EasyTracker] session timeout loaded: " + mSessionTimeout);
    if ((mParameterFetcher.getBoolean("ga_autoActivityTracking")) || (mParameterFetcher.getBoolean("ga_auto_activity_tracking"))) {}
    for (boolean bool = true;; bool = false)
    {
      mIsAutoActivityTracking = bool;
      Log.v("[EasyTracker] auto activity tracking loaded: " + mIsAutoActivityTracking);
      bool = mParameterFetcher.getBoolean("ga_anonymizeIp");
      if (bool)
      {
        set("&aip", "1");
        Log.v("[EasyTracker] anonymize ip loaded: " + bool);
      }
      mIsReportUncaughtExceptionsEnabled = mParameterFetcher.getBoolean("ga_reportUncaughtExceptions");
      if (mIsReportUncaughtExceptionsEnabled)
      {
        Thread.setDefaultUncaughtExceptionHandler(new ExceptionReporter(this, mServiceManager, Thread.getDefaultUncaughtExceptionHandler(), mContext));
        Log.v("[EasyTracker] report uncaught exceptions loaded: " + mIsReportUncaughtExceptionsEnabled);
      }
      bool = mParameterFetcher.getBoolean("ga_dryRun");
      mGoogleAnalytics.setDryRun(bool);
      return;
    }
  }
  
  private void setContext(Context paramContext, ParameterLoader paramParameterLoader, ServiceManager paramServiceManager)
  {
    if (paramContext == null) {
      Log.e("Context cannot be null");
    }
    mContext = paramContext.getApplicationContext();
    mServiceManager = paramServiceManager;
    mParameterFetcher = paramParameterLoader;
    loadParameters();
  }
  
  public static void setResourcePackageName(String paramString)
  {
    sResourcePackageName = paramString;
  }
  
  public void activityStart(Activity paramActivity)
  {
    GAUsage.getInstance().setUsage(GAUsage.Field.EASY_TRACKER_ACTIVITY_START);
    clearExistingTimer();
    if ((!mIsInForeground) && (mActivitiesActive == 0) && (checkForNewSession())) {
      mStartSessionOnNextSend = true;
    }
    mIsInForeground = true;
    mActivitiesActive += 1;
    if (mIsAutoActivityTracking)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("&t", "appview");
      GAUsage.getInstance().setDisableUsage(true);
      set("&cd", getActivityName(paramActivity));
      send(localHashMap);
      GAUsage.getInstance().setDisableUsage(false);
    }
  }
  
  public void activityStop(Activity paramActivity)
  {
    GAUsage.getInstance().setUsage(GAUsage.Field.EASY_TRACKER_ACTIVITY_STOP);
    mActivitiesActive -= 1;
    mActivitiesActive = Math.max(0, mActivitiesActive);
    mLastOnStopTime = mClock.currentTimeMillis();
    if (mActivitiesActive == 0)
    {
      clearExistingTimer();
      mTimerTask = new EasyTracker.NotInForegroundTimerTask(this, null);
      mTimer = new Timer("waitForActivityStart");
      mTimer.schedule(mTimerTask, 1000L);
    }
  }
  
  boolean checkForNewSession()
  {
    return (mSessionTimeout == 0L) || ((mSessionTimeout > 0L) && (mClock.currentTimeMillis() > mLastOnStopTime + mSessionTimeout));
  }
  
  @Deprecated
  public void dispatchLocalHits()
  {
    mServiceManager.dispatchLocalHits();
  }
  
  @VisibleForTesting
  int getActivitiesActive()
  {
    return mActivitiesActive;
  }
  
  @VisibleForTesting
  void overrideUncaughtExceptionHandler(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    if (mIsReportUncaughtExceptionsEnabled) {
      Thread.setDefaultUncaughtExceptionHandler(paramUncaughtExceptionHandler);
    }
  }
  
  public void send(Map<String, String> paramMap)
  {
    if (mStartSessionOnNextSend)
    {
      paramMap.put("&sc", "start");
      mStartSessionOnNextSend = false;
    }
    super.send(paramMap);
  }
  
  @VisibleForTesting
  void setClock(Clock paramClock)
  {
    mClock = paramClock;
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.EasyTracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */