package com.inmobi.commons.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class ApplicationFocusManager$b
  extends Handler
{
  private boolean a = true;
  
  public ApplicationFocusManager$b(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if ((what == 1001) && (a))
    {
      a = false;
      ApplicationFocusManager.a(Boolean.valueOf(a));
    }
    while ((what != 1002) || (a)) {
      return;
    }
    a = true;
    ApplicationFocusManager.a(Boolean.valueOf(a));
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.ApplicationFocusManager.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */