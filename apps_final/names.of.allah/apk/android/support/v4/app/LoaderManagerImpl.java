package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.g;
import android.support.v4.c.d;
import android.support.v4.c.m;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class LoaderManagerImpl
  extends LoaderManager
{
  static boolean DEBUG = false;
  static final String TAG = "LoaderManager";
  FragmentActivity mActivity;
  boolean mCreatingLoader;
  final m<LoaderManagerImpl.LoaderInfo> mInactiveLoaders = new m();
  final m<LoaderManagerImpl.LoaderInfo> mLoaders = new m();
  boolean mRetaining;
  boolean mRetainingStarted;
  boolean mStarted;
  final String mWho;
  
  LoaderManagerImpl(String paramString, FragmentActivity paramFragmentActivity, boolean paramBoolean)
  {
    mWho = paramString;
    mActivity = paramFragmentActivity;
    mStarted = paramBoolean;
  }
  
  private LoaderManagerImpl.LoaderInfo createAndInstallLoader(int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks<Object> paramLoaderCallbacks)
  {
    try
    {
      mCreatingLoader = true;
      paramBundle = createLoader(paramInt, paramBundle, paramLoaderCallbacks);
      installLoader(paramBundle);
      return paramBundle;
    }
    finally
    {
      mCreatingLoader = false;
    }
  }
  
  private LoaderManagerImpl.LoaderInfo createLoader(int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks<Object> paramLoaderCallbacks)
  {
    LoaderManagerImpl.LoaderInfo localLoaderInfo = new LoaderManagerImpl.LoaderInfo(this, paramInt, paramBundle, paramLoaderCallbacks);
    mLoader = paramLoaderCallbacks.onCreateLoader(paramInt, paramBundle);
    return localLoaderInfo;
  }
  
  public void destroyLoader(int paramInt)
  {
    if (mCreatingLoader) {
      throw new IllegalStateException("Called while creating a loader");
    }
    if (DEBUG) {
      Log.v("LoaderManager", "destroyLoader in " + this + " of " + paramInt);
    }
    int i = mLoaders.f(paramInt);
    LoaderManagerImpl.LoaderInfo localLoaderInfo;
    if (i >= 0)
    {
      localLoaderInfo = (LoaderManagerImpl.LoaderInfo)mLoaders.e(i);
      mLoaders.c(i);
      localLoaderInfo.destroy();
    }
    paramInt = mInactiveLoaders.f(paramInt);
    if (paramInt >= 0)
    {
      localLoaderInfo = (LoaderManagerImpl.LoaderInfo)mInactiveLoaders.e(paramInt);
      mInactiveLoaders.c(paramInt);
      localLoaderInfo.destroy();
    }
    if ((mActivity != null) && (!hasRunningLoaders())) {
      mActivity.mFragments.startPendingDeferredFragments();
    }
  }
  
  void doDestroy()
  {
    if (!mRetaining)
    {
      if (DEBUG) {
        Log.v("LoaderManager", "Destroying Active in " + this);
      }
      i = mLoaders.a() - 1;
      while (i >= 0)
      {
        ((LoaderManagerImpl.LoaderInfo)mLoaders.e(i)).destroy();
        i -= 1;
      }
      mLoaders.b();
    }
    if (DEBUG) {
      Log.v("LoaderManager", "Destroying Inactive in " + this);
    }
    int i = mInactiveLoaders.a() - 1;
    while (i >= 0)
    {
      ((LoaderManagerImpl.LoaderInfo)mInactiveLoaders.e(i)).destroy();
      i -= 1;
    }
    mInactiveLoaders.b();
  }
  
  void doReportNextStart()
  {
    int i = mLoaders.a() - 1;
    while (i >= 0)
    {
      mLoaders.e(i)).mReportNextStart = true;
      i -= 1;
    }
  }
  
  void doReportStart()
  {
    int i = mLoaders.a() - 1;
    while (i >= 0)
    {
      ((LoaderManagerImpl.LoaderInfo)mLoaders.e(i)).reportStart();
      i -= 1;
    }
  }
  
  void doRetain()
  {
    if (DEBUG) {
      Log.v("LoaderManager", "Retaining in " + this);
    }
    if (!mStarted)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, localRuntimeException);
    }
    for (;;)
    {
      return;
      mRetaining = true;
      mStarted = false;
      int i = mLoaders.a() - 1;
      while (i >= 0)
      {
        ((LoaderManagerImpl.LoaderInfo)mLoaders.e(i)).retain();
        i -= 1;
      }
    }
  }
  
  void doStart()
  {
    if (DEBUG) {
      Log.v("LoaderManager", "Starting in " + this);
    }
    if (mStarted)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
    }
    for (;;)
    {
      return;
      mStarted = true;
      int i = mLoaders.a() - 1;
      while (i >= 0)
      {
        ((LoaderManagerImpl.LoaderInfo)mLoaders.e(i)).start();
        i -= 1;
      }
    }
  }
  
  void doStop()
  {
    if (DEBUG) {
      Log.v("LoaderManager", "Stopping in " + this);
    }
    if (!mStarted)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
      return;
    }
    int i = mLoaders.a() - 1;
    while (i >= 0)
    {
      ((LoaderManagerImpl.LoaderInfo)mLoaders.e(i)).stop();
      i -= 1;
    }
    mStarted = false;
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int j = 0;
    String str;
    int i;
    LoaderManagerImpl.LoaderInfo localLoaderInfo;
    if (mLoaders.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      str = paramString + "    ";
      i = 0;
      while (i < mLoaders.a())
      {
        localLoaderInfo = (LoaderManagerImpl.LoaderInfo)mLoaders.e(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(mLoaders.d(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localLoaderInfo.toString());
        localLoaderInfo.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
    if (mInactiveLoaders.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      str = paramString + "    ";
      i = j;
      while (i < mInactiveLoaders.a())
      {
        localLoaderInfo = (LoaderManagerImpl.LoaderInfo)mInactiveLoaders.e(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(mInactiveLoaders.d(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localLoaderInfo.toString());
        localLoaderInfo.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
  }
  
  void finishRetain()
  {
    if (mRetaining)
    {
      if (DEBUG) {
        Log.v("LoaderManager", "Finished Retaining in " + this);
      }
      mRetaining = false;
      int i = mLoaders.a() - 1;
      while (i >= 0)
      {
        ((LoaderManagerImpl.LoaderInfo)mLoaders.e(i)).finishRetain();
        i -= 1;
      }
    }
  }
  
  public <D> g<D> getLoader(int paramInt)
  {
    if (mCreatingLoader) {
      throw new IllegalStateException("Called while creating a loader");
    }
    LoaderManagerImpl.LoaderInfo localLoaderInfo = (LoaderManagerImpl.LoaderInfo)mLoaders.a(paramInt);
    if (localLoaderInfo != null)
    {
      if (mPendingLoader != null) {
        return mPendingLoader.mLoader;
      }
      return mLoader;
    }
    return null;
  }
  
  public boolean hasRunningLoaders()
  {
    int j = mLoaders.a();
    int i = 0;
    boolean bool2 = false;
    if (i < j)
    {
      LoaderManagerImpl.LoaderInfo localLoaderInfo = (LoaderManagerImpl.LoaderInfo)mLoaders.e(i);
      if ((mStarted) && (!mDeliveredData)) {}
      for (boolean bool1 = true;; bool1 = false)
      {
        bool2 |= bool1;
        i += 1;
        break;
      }
    }
    return bool2;
  }
  
  public <D> g<D> initLoader(int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks<D> paramLoaderCallbacks)
  {
    if (mCreatingLoader) {
      throw new IllegalStateException("Called while creating a loader");
    }
    LoaderManagerImpl.LoaderInfo localLoaderInfo = (LoaderManagerImpl.LoaderInfo)mLoaders.a(paramInt);
    if (DEBUG) {
      Log.v("LoaderManager", "initLoader in " + this + ": args=" + paramBundle);
    }
    if (localLoaderInfo == null)
    {
      paramLoaderCallbacks = createAndInstallLoader(paramInt, paramBundle, paramLoaderCallbacks);
      paramBundle = paramLoaderCallbacks;
      if (DEBUG) {
        Log.v("LoaderManager", "  Created new loader " + paramLoaderCallbacks);
      }
    }
    for (paramBundle = paramLoaderCallbacks;; paramBundle = localLoaderInfo)
    {
      if ((mHaveData) && (mStarted)) {
        paramBundle.callOnLoadFinished(mLoader, mData);
      }
      return mLoader;
      if (DEBUG) {
        Log.v("LoaderManager", "  Re-using existing loader " + localLoaderInfo);
      }
      mCallbacks = paramLoaderCallbacks;
    }
  }
  
  void installLoader(LoaderManagerImpl.LoaderInfo paramLoaderInfo)
  {
    mLoaders.a(mId, paramLoaderInfo);
    if (mStarted) {
      paramLoaderInfo.start();
    }
  }
  
  public <D> g<D> restartLoader(int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks<D> paramLoaderCallbacks)
  {
    if (mCreatingLoader) {
      throw new IllegalStateException("Called while creating a loader");
    }
    LoaderManagerImpl.LoaderInfo localLoaderInfo1 = (LoaderManagerImpl.LoaderInfo)mLoaders.a(paramInt);
    if (DEBUG) {
      Log.v("LoaderManager", "restartLoader in " + this + ": args=" + paramBundle);
    }
    if (localLoaderInfo1 != null)
    {
      LoaderManagerImpl.LoaderInfo localLoaderInfo2 = (LoaderManagerImpl.LoaderInfo)mInactiveLoaders.a(paramInt);
      if (localLoaderInfo2 == null) {
        break label301;
      }
      if (!mHaveData) {
        break label170;
      }
      if (DEBUG) {
        Log.v("LoaderManager", "  Removing last inactive loader: " + localLoaderInfo1);
      }
      mDeliveredData = false;
      localLoaderInfo2.destroy();
    }
    for (;;)
    {
      mLoader.d = true;
      mInactiveLoaders.a(paramInt, localLoaderInfo1);
      for (;;)
      {
        return createAndInstallLoadermLoader;
        label170:
        if (mStarted) {
          break;
        }
        if (DEBUG) {
          Log.v("LoaderManager", "  Current loader is stopped; replacing");
        }
        mLoaders.a(paramInt, null);
        localLoaderInfo1.destroy();
      }
      if (mPendingLoader != null)
      {
        if (DEBUG) {
          Log.v("LoaderManager", "  Removing pending loader: " + mPendingLoader);
        }
        mPendingLoader.destroy();
        mPendingLoader = null;
      }
      if (DEBUG) {
        Log.v("LoaderManager", "  Enqueuing as new pending loader");
      }
      mPendingLoader = createLoader(paramInt, paramBundle, paramLoaderCallbacks);
      return mPendingLoader.mLoader;
      label301:
      if (DEBUG) {
        Log.v("LoaderManager", "  Making last loader inactive: " + localLoaderInfo1);
      }
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    d.a(mActivity, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
  
  void updateActivity(FragmentActivity paramFragmentActivity)
  {
    mActivity = paramFragmentActivity;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.LoaderManagerImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */