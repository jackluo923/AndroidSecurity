package kagegames.apps.DWBeta;

import android.app.Activity;
import android.os.Handler;
import android.util.Log;

class PollManager
{
  public static final long DELAY_FIGHT = 8000L;
  public static final long DELAY_NORMAL = 30000L;
  public static final long DELAY_SHOUTBOX = 10000L;
  private static final int STATE_NOT_READY = 1;
  private static final int STATE_PAUSE = 2;
  private static final int STATE_RUNNING = 3;
  private static String TAG;
  private _DWActivity mCurDWActivity;
  private long mDelay;
  private Runnable mFirstPollTask;
  private Runnable mRecurringPollTask;
  private long mStartPauseTime;
  private long mStartTime;
  private int mState;
  private Handler mTimerHandler;
  
  static
  {
    String str = "PollManager";
    TAG = str;
  }
  
  PollManager(_DWActivity param_DWActivity, long paramLong)
  {
    Object localObject = new android/os/Handler;
    ((Handler)localObject).<init>();
    mTimerHandler = ((Handler)localObject);
    localObject = null;
    mCurDWActivity = ((_DWActivity)localObject);
    localObject = new kagegames/apps/DWBeta/PollManager$1;
    ((PollManager.1)localObject).<init>(this);
    mFirstPollTask = ((Runnable)localObject);
    localObject = new kagegames/apps/DWBeta/PollManager$2;
    ((PollManager.2)localObject).<init>(this);
    mRecurringPollTask = ((Runnable)localObject);
    mCurDWActivity = param_DWActivity;
    int i = 1;
    mState = i;
    mDelay = paramLong;
  }
  
  public void StartPolling()
  {
    int i = 3;
    mState = i;
    startTimer();
  }
  
  public void cleanup()
  {
    _DWActivity local_DWActivity = null;
    mCurDWActivity = local_DWActivity;
  }
  
  private long getCurDelay()
  {
    Object localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getDWGameState();
    localObject = ((DWGameState)localObject).getCurOwner();
    boolean bool = ((DWOwner)localObject).IsWaitingForResponse();
    if (bool) {}
    for (long l = 8000L;; l = mDelay) {
      return l;
    }
  }
  
  public void pause()
  {
    int i = mState;
    int j = 3;
    if (i == j) {
      stopTimer();
    }
    i = 2;
    mState = i;
  }
  
  private void pollServer()
  {
    Activity localActivity = null;
    Object localObject1 = mCurDWActivity;
    String str;
    if (localObject1 == null)
    {
      localObject1 = TAG;
      str = "mCurDWActivity is null in PollManager";
      Log.d((String)localObject1, str);
    }
    for (;;)
    {
      return;
      localObject1 = TAG;
      str = "Server Polled Started";
      Log.d((String)localObject1, str);
      long l1 = getCurDelay();
      long l4 = 30000L;
      boolean bool1 = l1 < l4;
      if (!bool1)
      {
        Object localObject2 = DWApplication.getInstance();
        localObject2 = ((DWApplication)localObject2).getServerRequestsMgr();
        str = "POLL_NORMAL";
        ((ServerRequestsMgr)localObject2).SendDWCommand(localActivity, str, localActivity, localActivity);
      }
      long l2 = getCurDelay();
      l4 = 10000L;
      boolean bool2 = l2 < l4;
      if (!bool2)
      {
        Object localObject3 = DWApplication.getInstance();
        localObject3 = ((DWApplication)localObject3).getServerRequestsMgr();
        str = "POLL_SHOUTBOX";
        ((ServerRequestsMgr)localObject3).SendDWCommand(localActivity, str, localActivity, localActivity);
      }
      long l3 = getCurDelay();
      l4 = 8000L;
      boolean bool3 = l3 < l4;
      if (!bool3)
      {
        localObject4 = DWApplication.getInstance();
        localObject4 = ((DWApplication)localObject4).getServerRequestsMgr();
        str = "POLL_FIGHT";
        ((ServerRequestsMgr)localObject4).SendDWCommand(localActivity, str, localActivity, localActivity);
      }
      Object localObject4 = TAG;
      str = "Server Polled Done";
      Log.d((String)localObject4, str);
      localObject4 = mCurDWActivity;
      ((_DWActivity)localObject4).UpdateUI();
    }
  }
  
  public void setDelay(long paramLong)
  {
    mDelay = paramLong;
    pollServer();
  }
  
  private void startTimer()
  {
    long l = System.currentTimeMillis();
    mStartTime = l;
    Object localObject1 = mTimerHandler;
    Object localObject2 = mRecurringPollTask;
    ((Handler)localObject1).removeCallbacks((Runnable)localObject2);
    localObject1 = mTimerHandler;
    localObject2 = mRecurringPollTask;
    ((Handler)localObject1).post((Runnable)localObject2);
    localObject1 = TAG;
    localObject2 = "PollTimerStarted";
    Log.d((String)localObject1, (String)localObject2);
  }
  
  private void stopTimer()
  {
    Object localObject1 = mTimerHandler;
    Object localObject2 = mRecurringPollTask;
    ((Handler)localObject1).removeCallbacks((Runnable)localObject2);
    localObject1 = TAG;
    localObject2 = "PollTimerStopped";
    Log.d((String)localObject1, (String)localObject2);
  }
  
  public void unpause()
  {
    int i = mState;
    int j = 2;
    if (i == j) {
      startTimer();
    }
    i = 3;
    mState = i;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.PollManager
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */