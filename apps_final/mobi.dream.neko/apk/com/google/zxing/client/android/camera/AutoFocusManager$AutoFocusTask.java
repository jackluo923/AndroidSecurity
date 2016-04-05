package com.google.zxing.client.android.camera;

import android.os.AsyncTask;

final class AutoFocusManager$AutoFocusTask
  extends AsyncTask<Object, Object, Object>
{
  private AutoFocusManager$AutoFocusTask(AutoFocusManager paramAutoFocusManager) {}
  
  protected Object doInBackground(Object... arg1)
  {
    try
    {
      Thread.sleep(2000L);
      synchronized (this$0)
      {
        if (AutoFocusManager.access$100(this$0)) {
          this$0.start();
        }
        return null;
      }
    }
    catch (InterruptedException ???)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.camera.AutoFocusManager.AutoFocusTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */