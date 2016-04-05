package com.google.zxing.client.android;

import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;

final class InactivityTimer$InactivityAsyncTask
  extends AsyncTask<Object, Object, Object>
{
  private InactivityTimer$InactivityAsyncTask(InactivityTimer paramInactivityTimer) {}
  
  protected Object doInBackground(Object... paramVarArgs)
  {
    try
    {
      Thread.sleep(300000L);
      Log.i(InactivityTimer.access$300(), "Finishing activity due to inactivity");
      InactivityTimer.access$400(this$0).finish();
      return null;
    }
    catch (InterruptedException paramVarArgs)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.InactivityTimer.InactivityAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */