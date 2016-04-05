package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.g;
import android.support.v4.a.h;
import android.support.v4.c.d;
import android.support.v4.c.m;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class LoaderManagerImpl$LoaderInfo
  implements h<Object>
{
  final Bundle mArgs;
  LoaderManager.LoaderCallbacks<Object> mCallbacks;
  Object mData;
  boolean mDeliveredData;
  boolean mDestroyed;
  boolean mHaveData;
  final int mId;
  boolean mListenerRegistered;
  g<Object> mLoader;
  LoaderInfo mPendingLoader;
  boolean mReportNextStart;
  boolean mRetaining;
  boolean mRetainingStarted;
  boolean mStarted;
  
  public LoaderManagerImpl$LoaderInfo(int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks<Object> paramLoaderCallbacks)
  {
    mId = paramBundle;
    mArgs = paramLoaderCallbacks;
    LoaderManager.LoaderCallbacks localLoaderCallbacks;
    mCallbacks = localLoaderCallbacks;
  }
  
  final void callOnLoadFinished(g<Object> paramg, Object paramObject)
  {
    String str;
    if (mCallbacks != null)
    {
      if (this$0.mActivity == null) {
        break label184;
      }
      str = this$0.mActivity.mFragments.mNoTransactionsBecause;
      this$0.mActivity.mFragments.mNoTransactionsBecause = "onLoadFinished";
    }
    for (;;)
    {
      try
      {
        if (LoaderManagerImpl.DEBUG)
        {
          StringBuilder localStringBuilder1 = new StringBuilder("  onLoadFinished in ").append(paramg).append(": ");
          StringBuilder localStringBuilder2 = new StringBuilder(64);
          d.a(paramObject, localStringBuilder2);
          localStringBuilder2.append("}");
          Log.v("LoaderManager", localStringBuilder2.toString());
        }
        mCallbacks.onLoadFinished(paramg, paramObject);
        if (this$0.mActivity != null) {
          this$0.mActivity.mFragments.mNoTransactionsBecause = str;
        }
        mDeliveredData = true;
        return;
      }
      finally
      {
        if (this$0.mActivity != null) {
          this$0.mActivity.mFragments.mNoTransactionsBecause = str;
        }
      }
      label184:
      str = null;
    }
  }
  
  /* Error */
  final void destroy()
  {
    // Byte code:
    //   0: aload_0
    //   1: astore_1
    //   2: getstatic 73	android/support/v4/app/LoaderManagerImpl:DEBUG	Z
    //   5: ifeq +25 -> 30
    //   8: ldc 102
    //   10: new 75	java/lang/StringBuilder
    //   13: dup
    //   14: ldc 122
    //   16: invokespecial 80	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   19: aload_1
    //   20: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   23: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: invokestatic 112	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   29: pop
    //   30: aload_1
    //   31: iconst_1
    //   32: putfield 124	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mDestroyed	Z
    //   35: aload_1
    //   36: getfield 118	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mDeliveredData	Z
    //   39: istore 4
    //   41: aload_1
    //   42: iconst_0
    //   43: putfield 118	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mDeliveredData	Z
    //   46: aload_1
    //   47: getfield 45	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mCallbacks	Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    //   50: ifnull +126 -> 176
    //   53: aload_1
    //   54: getfield 126	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mLoader	Landroid/support/v4/a/g;
    //   57: ifnull +119 -> 176
    //   60: aload_1
    //   61: getfield 128	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mHaveData	Z
    //   64: ifeq +112 -> 176
    //   67: iload 4
    //   69: ifeq +107 -> 176
    //   72: getstatic 73	android/support/v4/app/LoaderManagerImpl:DEBUG	Z
    //   75: ifeq +25 -> 100
    //   78: ldc 102
    //   80: new 75	java/lang/StringBuilder
    //   83: dup
    //   84: ldc -126
    //   86: invokespecial 80	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   89: aload_1
    //   90: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: invokestatic 112	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   99: pop
    //   100: aload_1
    //   101: getfield 36	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   104: getfield 56	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   107: ifnull +184 -> 291
    //   110: aload_1
    //   111: getfield 36	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   114: getfield 56	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   117: getfield 62	android/support/v4/app/FragmentActivity:mFragments	Landroid/support/v4/app/FragmentManagerImpl;
    //   120: getfield 68	android/support/v4/app/FragmentManagerImpl:mNoTransactionsBecause	Ljava/lang/String;
    //   123: astore_2
    //   124: aload_1
    //   125: getfield 36	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   128: getfield 56	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   131: getfield 62	android/support/v4/app/FragmentActivity:mFragments	Landroid/support/v4/app/FragmentManagerImpl;
    //   134: ldc -124
    //   136: putfield 68	android/support/v4/app/FragmentManagerImpl:mNoTransactionsBecause	Ljava/lang/String;
    //   139: aload_1
    //   140: getfield 45	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mCallbacks	Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    //   143: aload_1
    //   144: getfield 126	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mLoader	Landroid/support/v4/a/g;
    //   147: invokeinterface 135 2 0
    //   152: aload_1
    //   153: getfield 36	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   156: getfield 56	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   159: ifnull +17 -> 176
    //   162: aload_1
    //   163: getfield 36	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   166: getfield 56	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   169: getfield 62	android/support/v4/app/FragmentActivity:mFragments	Landroid/support/v4/app/FragmentManagerImpl;
    //   172: aload_2
    //   173: putfield 68	android/support/v4/app/FragmentManagerImpl:mNoTransactionsBecause	Ljava/lang/String;
    //   176: aload_1
    //   177: aconst_null
    //   178: putfield 45	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mCallbacks	Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    //   181: aload_1
    //   182: aconst_null
    //   183: putfield 137	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mData	Ljava/lang/Object;
    //   186: aload_1
    //   187: iconst_0
    //   188: putfield 128	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mHaveData	Z
    //   191: aload_1
    //   192: getfield 126	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mLoader	Landroid/support/v4/a/g;
    //   195: ifnull +53 -> 248
    //   198: aload_1
    //   199: getfield 139	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mListenerRegistered	Z
    //   202: ifeq +16 -> 218
    //   205: aload_1
    //   206: iconst_0
    //   207: putfield 139	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mListenerRegistered	Z
    //   210: aload_1
    //   211: getfield 126	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mLoader	Landroid/support/v4/a/g;
    //   214: aload_1
    //   215: invokevirtual 144	android/support/v4/a/g:a	(Landroid/support/v4/a/h;)V
    //   218: aload_1
    //   219: getfield 126	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mLoader	Landroid/support/v4/a/g;
    //   222: astore_2
    //   223: aload_2
    //   224: iconst_1
    //   225: putfield 147	android/support/v4/a/g:e	Z
    //   228: aload_2
    //   229: iconst_0
    //   230: putfield 150	android/support/v4/a/g:c	Z
    //   233: aload_2
    //   234: iconst_0
    //   235: putfield 153	android/support/v4/a/g:d	Z
    //   238: aload_2
    //   239: iconst_0
    //   240: putfield 156	android/support/v4/a/g:f	Z
    //   243: aload_2
    //   244: iconst_0
    //   245: putfield 159	android/support/v4/a/g:g	Z
    //   248: aload_1
    //   249: getfield 161	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mPendingLoader	Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    //   252: ifnull +38 -> 290
    //   255: aload_1
    //   256: getfield 161	android/support/v4/app/LoaderManagerImpl$LoaderInfo:mPendingLoader	Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    //   259: astore_1
    //   260: goto -258 -> 2
    //   263: astore_3
    //   264: aload_1
    //   265: getfield 36	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   268: getfield 56	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   271: ifnull +17 -> 288
    //   274: aload_1
    //   275: getfield 36	android/support/v4/app/LoaderManagerImpl$LoaderInfo:this$0	Landroid/support/v4/app/LoaderManagerImpl;
    //   278: getfield 56	android/support/v4/app/LoaderManagerImpl:mActivity	Landroid/support/v4/app/FragmentActivity;
    //   281: getfield 62	android/support/v4/app/FragmentActivity:mFragments	Landroid/support/v4/app/FragmentManagerImpl;
    //   284: aload_2
    //   285: putfield 68	android/support/v4/app/FragmentManagerImpl:mNoTransactionsBecause	Ljava/lang/String;
    //   288: aload_3
    //   289: athrow
    //   290: return
    //   291: aconst_null
    //   292: astore_2
    //   293: goto -154 -> 139
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	296	0	this	LoaderInfo
    //   1	274	1	localLoaderInfo	LoaderInfo
    //   123	170	2	localObject1	Object
    //   263	26	3	localObject2	Object
    //   39	29	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   139	152	263	finally
  }
  
  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramFileDescriptor = paramString;
    paramString = this;
    for (;;)
    {
      paramPrintWriter.print(paramFileDescriptor);
      paramPrintWriter.print("mId=");
      paramPrintWriter.print(mId);
      paramPrintWriter.print(" mArgs=");
      paramPrintWriter.println(mArgs);
      paramPrintWriter.print(paramFileDescriptor);
      paramPrintWriter.print("mCallbacks=");
      paramPrintWriter.println(mCallbacks);
      paramPrintWriter.print(paramFileDescriptor);
      paramPrintWriter.print("mLoader=");
      paramPrintWriter.println(mLoader);
      if (mLoader != null)
      {
        paramArrayOfString = mLoader;
        String str = paramFileDescriptor + "  ";
        paramPrintWriter.print(str);
        paramPrintWriter.print("mId=");
        paramPrintWriter.print(a);
        paramPrintWriter.print(" mListener=");
        paramPrintWriter.println(b);
        if ((c) || (f) || (g))
        {
          paramPrintWriter.print(str);
          paramPrintWriter.print("mStarted=");
          paramPrintWriter.print(c);
          paramPrintWriter.print(" mContentChanged=");
          paramPrintWriter.print(f);
          paramPrintWriter.print(" mProcessingChange=");
          paramPrintWriter.println(g);
        }
        if ((d) || (e))
        {
          paramPrintWriter.print(str);
          paramPrintWriter.print("mAbandoned=");
          paramPrintWriter.print(d);
          paramPrintWriter.print(" mReset=");
          paramPrintWriter.println(e);
        }
      }
      if ((mHaveData) || (mDeliveredData))
      {
        paramPrintWriter.print(paramFileDescriptor);
        paramPrintWriter.print("mHaveData=");
        paramPrintWriter.print(mHaveData);
        paramPrintWriter.print("  mDeliveredData=");
        paramPrintWriter.println(mDeliveredData);
        paramPrintWriter.print(paramFileDescriptor);
        paramPrintWriter.print("mData=");
        paramPrintWriter.println(mData);
      }
      paramPrintWriter.print(paramFileDescriptor);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(mStarted);
      paramPrintWriter.print(" mReportNextStart=");
      paramPrintWriter.print(mReportNextStart);
      paramPrintWriter.print(" mDestroyed=");
      paramPrintWriter.println(mDestroyed);
      paramPrintWriter.print(paramFileDescriptor);
      paramPrintWriter.print("mRetaining=");
      paramPrintWriter.print(mRetaining);
      paramPrintWriter.print(" mRetainingStarted=");
      paramPrintWriter.print(mRetainingStarted);
      paramPrintWriter.print(" mListenerRegistered=");
      paramPrintWriter.println(mListenerRegistered);
      if (mPendingLoader == null) {
        break;
      }
      paramPrintWriter.print(paramFileDescriptor);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(mPendingLoader);
      paramPrintWriter.println(":");
      paramString = mPendingLoader;
      paramFileDescriptor = paramFileDescriptor + "  ";
    }
  }
  
  final void finishRetain()
  {
    if (mRetaining)
    {
      if (LoaderManagerImpl.DEBUG) {
        Log.v("LoaderManager", "  Finished Retaining: " + this);
      }
      mRetaining = false;
      if ((mStarted != mRetainingStarted) && (!mStarted)) {
        stop();
      }
    }
    if ((mStarted) && (mHaveData) && (!mReportNextStart)) {
      callOnLoadFinished(mLoader, mData);
    }
  }
  
  public final void onLoadComplete(g<Object> paramg, Object paramObject)
  {
    if (LoaderManagerImpl.DEBUG) {
      Log.v("LoaderManager", "onLoadComplete: " + this);
    }
    if (mDestroyed) {
      if (LoaderManagerImpl.DEBUG) {
        Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
      }
    }
    do
    {
      do
      {
        return;
        if (this$0.mLoaders.a(mId) == this) {
          break;
        }
      } while (!LoaderManagerImpl.DEBUG);
      Log.v("LoaderManager", "  Ignoring load complete -- not active");
      return;
      LoaderInfo localLoaderInfo = mPendingLoader;
      if (localLoaderInfo != null)
      {
        if (LoaderManagerImpl.DEBUG) {
          Log.v("LoaderManager", "  Switching to pending loader: " + localLoaderInfo);
        }
        mPendingLoader = null;
        this$0.mLoaders.a(mId, null);
        destroy();
        this$0.installLoader(localLoaderInfo);
        return;
      }
      if ((mData != paramObject) || (!mHaveData))
      {
        mData = paramObject;
        mHaveData = true;
        if (mStarted) {
          callOnLoadFinished(paramg, paramObject);
        }
      }
      paramg = (LoaderInfo)this$0.mInactiveLoaders.a(mId);
      if ((paramg != null) && (paramg != this))
      {
        mDeliveredData = false;
        paramg.destroy();
        this$0.mInactiveLoaders.b(mId);
      }
    } while ((this$0.mActivity == null) || (this$0.hasRunningLoaders()));
    this$0.mActivity.mFragments.startPendingDeferredFragments();
  }
  
  final void reportStart()
  {
    if ((mStarted) && (mReportNextStart))
    {
      mReportNextStart = false;
      if (mHaveData) {
        callOnLoadFinished(mLoader, mData);
      }
    }
  }
  
  final void retain()
  {
    if (LoaderManagerImpl.DEBUG) {
      Log.v("LoaderManager", "  Retaining: " + this);
    }
    mRetaining = true;
    mRetainingStarted = mStarted;
    mStarted = false;
    mCallbacks = null;
  }
  
  final void start()
  {
    if ((mRetaining) && (mRetainingStarted)) {
      mStarted = true;
    }
    do
    {
      do
      {
        return;
      } while (mStarted);
      mStarted = true;
      if (LoaderManagerImpl.DEBUG) {
        Log.v("LoaderManager", "  Starting: " + this);
      }
      if ((mLoader == null) && (mCallbacks != null)) {
        mLoader = mCallbacks.onCreateLoader(mId, mArgs);
      }
    } while (mLoader == null);
    if ((mLoader.getClass().isMemberClass()) && (!Modifier.isStatic(mLoader.getClass().getModifiers()))) {
      throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + mLoader);
    }
    if (!mListenerRegistered)
    {
      localg = mLoader;
      int i = mId;
      if (b != null) {
        throw new IllegalStateException("There is already a listener registered");
      }
      b = this;
      a = i;
      mListenerRegistered = true;
    }
    g localg = mLoader;
    c = true;
    e = false;
    d = false;
  }
  
  final void stop()
  {
    if (LoaderManagerImpl.DEBUG) {
      Log.v("LoaderManager", "  Stopping: " + this);
    }
    mStarted = false;
    if ((!mRetaining) && (mLoader != null) && (mListenerRegistered))
    {
      mListenerRegistered = false;
      mLoader.a(this);
      mLoader.c = false;
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(mId);
    localStringBuilder.append(" : ");
    d.a(mLoader, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.LoaderManagerImpl.LoaderInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */