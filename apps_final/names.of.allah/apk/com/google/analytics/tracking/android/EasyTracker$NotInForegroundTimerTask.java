package com.google.analytics.tracking.android;

import java.util.TimerTask;

class EasyTracker$NotInForegroundTimerTask
  extends TimerTask
{
  private EasyTracker$NotInForegroundTimerTask(EasyTracker paramEasyTracker) {}
  
  public void run()
  {
    EasyTracker.access$102(this$0, false);
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.EasyTracker.NotInForegroundTimerTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */