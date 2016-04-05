package com.actionbarsherlock.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.Handler;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

class ActivityChooserModel
  extends DataSetObservable
{
  private static final String ATTRIBUTE_ACTIVITY = "activity";
  private static final String ATTRIBUTE_TIME = "time";
  private static final String ATTRIBUTE_WEIGHT = "weight";
  private static final boolean DEBUG = false;
  private static final int DEFAULT_ACTIVITY_INFLATION = 5;
  private static final float DEFAULT_HISTORICAL_RECORD_WEIGHT = 1.0F;
  public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
  public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;
  private static final String HISTORY_FILE_EXTENSION = ".xml";
  private static final int INVALID_INDEX = -1;
  private static final String LOG_TAG = ActivityChooserModel.class.getSimpleName();
  private static final Executor SERIAL_EXECUTOR = Executors.newSingleThreadExecutor();
  private static final String TAG_HISTORICAL_RECORD = "historical-record";
  private static final String TAG_HISTORICAL_RECORDS = "historical-records";
  private static final Map<String, ActivityChooserModel> sDataModelRegistry;
  private static final Object sRegistryLock = new Object();
  private final List<ActivityChooserModel.ActivityResolveInfo> mActivites = new ArrayList();
  private ActivityChooserModel.OnChooseActivityListener mActivityChoserModelPolicy;
  private ActivityChooserModel.ActivitySorter mActivitySorter = new ActivityChooserModel.DefaultSorter(this, null);
  private boolean mCanReadHistoricalData = true;
  private final Context mContext;
  private final Handler mHandler = new Handler();
  private final List<ActivityChooserModel.HistoricalRecord> mHistoricalRecords = new ArrayList();
  private boolean mHistoricalRecordsChanged = true;
  private final String mHistoryFileName;
  private int mHistoryMaxSize = 50;
  private final Object mInstanceLock = new Object();
  private Intent mIntent;
  private boolean mReadShareHistoryCalled = false;
  
  static
  {
    sDataModelRegistry = new HashMap();
  }
  
  private ActivityChooserModel(Context paramContext, String paramString)
  {
    mContext = paramContext.getApplicationContext();
    if ((!TextUtils.isEmpty(paramString)) && (!paramString.endsWith(".xml")))
    {
      mHistoryFileName = (paramString + ".xml");
      return;
    }
    mHistoryFileName = paramString;
  }
  
  private boolean addHisoricalRecord(ActivityChooserModel.HistoricalRecord paramHistoricalRecord)
  {
    synchronized (mInstanceLock)
    {
      boolean bool = mHistoricalRecords.add(paramHistoricalRecord);
      if (bool)
      {
        mHistoricalRecordsChanged = true;
        pruneExcessiveHistoricalRecordsLocked();
        persistHistoricalData();
        sortActivities();
      }
      return bool;
    }
  }
  
  public static ActivityChooserModel get(Context paramContext, String paramString)
  {
    synchronized (sRegistryLock)
    {
      ActivityChooserModel localActivityChooserModel2 = (ActivityChooserModel)sDataModelRegistry.get(paramString);
      ActivityChooserModel localActivityChooserModel1 = localActivityChooserModel2;
      if (localActivityChooserModel2 == null)
      {
        localActivityChooserModel1 = new ActivityChooserModel(paramContext, paramString);
        sDataModelRegistry.put(paramString, localActivityChooserModel1);
      }
      localActivityChooserModel1.readHistoricalData();
      return localActivityChooserModel1;
    }
  }
  
  private void loadActivitiesLocked()
  {
    mActivites.clear();
    if (mIntent != null)
    {
      List localList = mContext.getPackageManager().queryIntentActivities(mIntent, 0);
      int j = localList.size();
      int i = 0;
      while (i < j)
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localList.get(i);
        mActivites.add(new ActivityChooserModel.ActivityResolveInfo(this, localResolveInfo));
        i += 1;
      }
      sortActivities();
      return;
    }
    notifyChanged();
  }
  
  private void persistHistoricalData()
  {
    synchronized (mInstanceLock)
    {
      if (!mReadShareHistoryCalled) {
        throw new IllegalStateException("No preceding call to #readHistoricalData");
      }
    }
    if (!mHistoricalRecordsChanged) {
      return;
    }
    mHistoricalRecordsChanged = false;
    mCanReadHistoricalData = true;
    if (!TextUtils.isEmpty(mHistoryFileName)) {
      SERIAL_EXECUTOR.execute(new ActivityChooserModel.HistoryPersister(this, null));
    }
  }
  
  private void pruneExcessiveHistoricalRecordsLocked()
  {
    List localList = mHistoricalRecords;
    int j = localList.size() - mHistoryMaxSize;
    if (j <= 0) {}
    for (;;)
    {
      return;
      mHistoricalRecordsChanged = true;
      int i = 0;
      while (i < j)
      {
        localList.remove(0);
        i += 1;
      }
    }
  }
  
  private void readHistoricalData()
  {
    synchronized (mInstanceLock)
    {
      if ((!mCanReadHistoricalData) || (!mHistoricalRecordsChanged)) {
        return;
      }
      mCanReadHistoricalData = false;
      mReadShareHistoryCalled = true;
      if (!TextUtils.isEmpty(mHistoryFileName)) {
        SERIAL_EXECUTOR.execute(new ActivityChooserModel.HistoryLoader(this, null));
      }
      return;
    }
  }
  
  private void sortActivities()
  {
    synchronized (mInstanceLock)
    {
      if ((mActivitySorter != null) && (!mActivites.isEmpty()))
      {
        mActivitySorter.sort(mIntent, mActivites, Collections.unmodifiableList(mHistoricalRecords));
        notifyChanged();
      }
      return;
    }
  }
  
  public Intent chooseActivity(int paramInt)
  {
    Object localObject = (ActivityChooserModel.ActivityResolveInfo)mActivites.get(paramInt);
    localObject = new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
    Intent localIntent1 = new Intent(mIntent);
    localIntent1.setComponent((ComponentName)localObject);
    if (mActivityChoserModelPolicy != null)
    {
      Intent localIntent2 = new Intent(localIntent1);
      if (mActivityChoserModelPolicy.onChooseActivity(this, localIntent2)) {
        return null;
      }
    }
    addHisoricalRecord(new ActivityChooserModel.HistoricalRecord((ComponentName)localObject, System.currentTimeMillis(), 1.0F));
    return localIntent1;
  }
  
  public ResolveInfo getActivity(int paramInt)
  {
    synchronized (mInstanceLock)
    {
      ResolveInfo localResolveInfo = mActivites.get(paramInt)).resolveInfo;
      return localResolveInfo;
    }
  }
  
  public int getActivityCount()
  {
    synchronized (mInstanceLock)
    {
      int i = mActivites.size();
      return i;
    }
  }
  
  public int getActivityIndex(ResolveInfo paramResolveInfo)
  {
    List localList = mActivites;
    int j = localList.size();
    int i = 0;
    while (i < j)
    {
      if (getresolveInfo == paramResolveInfo) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public ResolveInfo getDefaultActivity()
  {
    synchronized (mInstanceLock)
    {
      if (!mActivites.isEmpty())
      {
        ResolveInfo localResolveInfo = mActivites.get(0)).resolveInfo;
        return localResolveInfo;
      }
      return null;
    }
  }
  
  public int getHistoryMaxSize()
  {
    synchronized (mInstanceLock)
    {
      int i = mHistoryMaxSize;
      return i;
    }
  }
  
  public int getHistorySize()
  {
    synchronized (mInstanceLock)
    {
      int i = mHistoricalRecords.size();
      return i;
    }
  }
  
  public Intent getIntent()
  {
    synchronized (mInstanceLock)
    {
      Intent localIntent = mIntent;
      return localIntent;
    }
  }
  
  public void setActivitySorter(ActivityChooserModel.ActivitySorter paramActivitySorter)
  {
    synchronized (mInstanceLock)
    {
      if (mActivitySorter == paramActivitySorter) {
        return;
      }
      mActivitySorter = paramActivitySorter;
      sortActivities();
      return;
    }
  }
  
  public void setDefaultActivity(int paramInt)
  {
    ActivityChooserModel.ActivityResolveInfo localActivityResolveInfo1 = (ActivityChooserModel.ActivityResolveInfo)mActivites.get(paramInt);
    ActivityChooserModel.ActivityResolveInfo localActivityResolveInfo2 = (ActivityChooserModel.ActivityResolveInfo)mActivites.get(0);
    if (localActivityResolveInfo2 != null) {}
    for (float f = weight - weight + 5.0F;; f = 1.0F)
    {
      addHisoricalRecord(new ActivityChooserModel.HistoricalRecord(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name), System.currentTimeMillis(), f));
      return;
    }
  }
  
  public void setHistoryMaxSize(int paramInt)
  {
    synchronized (mInstanceLock)
    {
      if (mHistoryMaxSize == paramInt) {
        return;
      }
      mHistoryMaxSize = paramInt;
      pruneExcessiveHistoricalRecordsLocked();
      sortActivities();
      return;
    }
  }
  
  public void setIntent(Intent paramIntent)
  {
    synchronized (mInstanceLock)
    {
      if (mIntent == paramIntent) {
        return;
      }
      mIntent = paramIntent;
      loadActivitiesLocked();
      return;
    }
  }
  
  public void setOnChooseActivityListener(ActivityChooserModel.OnChooseActivityListener paramOnChooseActivityListener)
  {
    mActivityChoserModelPolicy = paramOnChooseActivityListener;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */