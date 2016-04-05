package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;

class FlowMonitor
{
  static final String HITS_DISPATCHED = "hitsDispatched";
  static final String HITS_DISPATCHED_PARAM = "_s";
  static final String HITS_GENERATED = "hitsGenerated";
  static final String HITS_GENERATED_PARAM = "_g";
  static final String HITS_PAST_PROXY = "hitsPastProxy";
  static final String HITS_PAST_PROXY_PARAM = "_p";
  static final String HITS_STORED_IN_DB = "hitsStoredInDb";
  static final String HITS_STORED_IN_DB_PARAM = "_d";
  private static final int HIT_INTERVAL = 50;
  static final String LAST_QUERY_TIMESTAMP = "lastQueryTimestamp";
  static final String LAST_QUERY_TIMESTAMP_PARAM = "_ts";
  static final String MONITOR_TYPE = "flow";
  static final String MONITOR_TYPE_PARAM = "_t";
  static final String PREFERENCES_LABEL = "GoogleAnalytics";
  private static final long TIME_INTERVAL = 14400000L;
  private static FlowMonitor sInstance;
  SharedPreferences.Editor mEditor;
  private int mHitsDispatched;
  private int mHitsGenerated;
  private int mHitsPastProxy;
  private int mHitsStoredInDb;
  private long mLastQueryTimeStamp;
  SharedPreferences mPersistentStore;
  
  @VisibleForTesting
  FlowMonitor(Context paramContext)
  {
    mPersistentStore = paramContext.getSharedPreferences("GoogleAnalytics", 0);
    mEditor = mPersistentStore.edit();
    mHitsGenerated = mPersistentStore.getInt("hitsGenerated", 0);
    mHitsPastProxy = mPersistentStore.getInt("hitsPastProxy", 0);
    mHitsStoredInDb = mPersistentStore.getInt("hitsStoredInDb", 0);
    mHitsDispatched = mPersistentStore.getInt("hitsDispatched", 0);
    mLastQueryTimeStamp = mPersistentStore.getLong("lastQueryTimestamp", 0L);
    if (mLastQueryTimeStamp == 0L)
    {
      mLastQueryTimeStamp = System.currentTimeMillis();
      mEditor.putLong("lastQueryTimestamp", mLastQueryTimeStamp);
      mEditor.commit();
    }
  }
  
  public static FlowMonitor getInstance(Context paramContext)
  {
    if (sInstance == null) {
      sInstance = new FlowMonitor(paramContext);
    }
    return sInstance;
  }
  
  public String buildAndResetHitsDispatched()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("_s=").append(mHitsDispatched);
    mHitsDispatched = 0;
    mEditor.putInt("hitsDispatched", mHitsDispatched);
    mEditor.commit();
    return localStringBuilder.toString();
  }
  
  public Map<String, String> generateHit()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("_t", "flow");
    localHashMap.put("_ts", String.valueOf(mLastQueryTimeStamp));
    mLastQueryTimeStamp = System.currentTimeMillis();
    mEditor.putLong("lastQueryTimestamp", mLastQueryTimeStamp);
    localHashMap.put("_g", getAndResetHitsGeneratedParameter());
    return localHashMap;
  }
  
  String getAndResetHitsGeneratedParameter()
  {
    int i = mHitsGenerated;
    mHitsGenerated = 0;
    mEditor.putInt("hitsGenerated", 0);
    mEditor.commit();
    return String.valueOf(i);
  }
  
  public String getAndResetHitsPastProxy()
  {
    int i = mHitsPastProxy;
    mHitsPastProxy = 0;
    mEditor.putInt("hitsPastProxy", mHitsPastProxy);
    mEditor.commit();
    return String.valueOf(i);
  }
  
  public String getAndResetHitsStoredInDb()
  {
    int i = mHitsStoredInDb;
    mHitsStoredInDb = 0;
    mEditor.putInt("hitsStoredInDb", mHitsStoredInDb);
    mEditor.commit();
    return String.valueOf(i);
  }
  
  public void incrementHitsDispatched(int paramInt)
  {
    mHitsDispatched += paramInt;
    mEditor.putInt("hitsDispatched", paramInt);
    mEditor.commit();
  }
  
  public void incrementHitsGenerated(int paramInt)
  {
    mHitsGenerated += paramInt;
    mEditor.putInt("hitsGenerated", paramInt);
    mEditor.commit();
  }
  
  public void incrementHitsPastProxy(int paramInt)
  {
    mHitsPastProxy += paramInt;
    mEditor.putInt("hitsPastProxy", paramInt);
    mEditor.commit();
  }
  
  public void incrementHitsStoredInDb(int paramInt)
  {
    mHitsStoredInDb += paramInt;
    mEditor.putInt("hitsStoredInDb", paramInt);
    mEditor.commit();
  }
  
  public boolean shouldReport()
  {
    return (mHitsGenerated >= 50) && (System.currentTimeMillis() - mLastQueryTimeStamp >= 14400000L);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.FlowMonitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */