package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

final class hc$a
  extends Handler
{
  public hc$a(hc paramhc, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    if ((what == 1) && (!Gf.isConnecting()))
    {
      paramMessage = (hc.b)obj;
      paramMessage.fp();
      paramMessage.unregister();
      return;
    }
    if (what == 3)
    {
      hc.a(Gf).a(new ConnectionResult(((Integer)obj).intValue(), null));
      return;
    }
    if (what == 4)
    {
      hc.a(Gf, 1);
      hc.a(Gf, null);
      hc.a(Gf).ao(((Integer)obj).intValue());
      return;
    }
    if ((what == 2) && (!Gf.isConnected()))
    {
      paramMessage = (hc.b)obj;
      paramMessage.fp();
      paramMessage.unregister();
      return;
    }
    if ((what == 2) || (what == 1))
    {
      ((hc.b)obj).fq();
      return;
    }
    Log.wtf("GmsClient", "Don't know how to handle this message.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */