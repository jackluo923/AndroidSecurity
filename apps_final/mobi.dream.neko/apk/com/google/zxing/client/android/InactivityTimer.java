package com.google.zxing.client.android;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.util.Log;
import com.google.zxing.client.android.common.executor.AsyncTaskExecInterface;
import com.google.zxing.client.android.common.executor.AsyncTaskExecManager;

final class InactivityTimer
{
  private static final long INACTIVITY_DELAY_MS = 300000L;
  private static final String TAG = InactivityTimer.class.getSimpleName();
  private final Activity activity;
  private InactivityAsyncTask inactivityTask;
  private final BroadcastReceiver powerStatusReceiver;
  private final AsyncTaskExecInterface taskExec;
  
  InactivityTimer(Activity paramActivity)
  {
    activity = paramActivity;
    taskExec = ((AsyncTaskExecInterface)new AsyncTaskExecManager().build());
    powerStatusReceiver = new PowerStatusReceiver(null);
    onActivity();
  }
  
  private void cancel()
  {
    try
    {
      InactivityAsyncTask localInactivityAsyncTask = inactivityTask;
      if (localInactivityAsyncTask != null)
      {
        localInactivityAsyncTask.cancel(true);
        inactivityTask = null;
      }
      return;
    }
    finally {}
  }
  
  void onActivity()
  {
    try
    {
      cancel();
      inactivityTask = new InactivityAsyncTask(null);
      taskExec.execute(inactivityTask, new Object[0]);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void onPause()
  {
    cancel();
    activity.unregisterReceiver(powerStatusReceiver);
  }
  
  public void onResume()
  {
    activity.registerReceiver(powerStatusReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    onActivity();
  }
  
  void shutdown()
  {
    cancel();
  }
  
  private final class InactivityAsyncTask
    extends AsyncTask<Object, Object, Object>
  {
    private InactivityAsyncTask() {}
    
    protected Object doInBackground(Object... paramVarArgs)
    {
      try
      {
        Thread.sleep(300000L);
        Log.i(InactivityTimer.TAG, "Finishing activity due to inactivity");
        activity.finish();
        return null;
      }
      catch (InterruptedException paramVarArgs)
      {
        for (;;) {}
      }
    }
  }
  
  private final class PowerStatusReceiver
    extends BroadcastReceiver
  {
    private PowerStatusReceiver() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if ("android.intent.action.BATTERY_CHANGED".equals(paramIntent.getAction())) {
        if (paramIntent.getIntExtra("plugged", -1) > 0) {
          break label36;
        }
      }
      label36:
      for (int i = 1; i != 0; i = 0)
      {
        onActivity();
        return;
      }
      InactivityTimer.this.cancel();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.InactivityTimer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */