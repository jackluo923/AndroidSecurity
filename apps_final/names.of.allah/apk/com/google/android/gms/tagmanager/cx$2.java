package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class cx$2
  implements Handler.Callback
{
  cx$2(cx paramcx) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == what) && (cx.cE().equals(obj)))
    {
      ahS.cl();
      if ((cx.b(ahS) > 0) && (!cx.c(ahS))) {
        cx.d(ahS).sendMessageDelayed(cx.d(ahS).obtainMessage(1, cx.cE()), cx.b(ahS));
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cx.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */