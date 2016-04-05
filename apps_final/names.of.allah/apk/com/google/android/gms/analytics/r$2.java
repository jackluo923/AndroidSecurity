package com.google.android.gms.analytics;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class r$2
  implements Handler.Callback
{
  r$2(r paramr) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == what) && (r.cE().equals(obj)))
    {
      u.cP().u(true);
      ud.dispatchLocalHits();
      u.cP().u(false);
      if ((r.b(ud) > 0) && (!r.c(ud))) {
        r.d(ud).sendMessageDelayed(r.d(ud).obtainMessage(1, r.cE()), r.b(ud) * 1000);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.r.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */