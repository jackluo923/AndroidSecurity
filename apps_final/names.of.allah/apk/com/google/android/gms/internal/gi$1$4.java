package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import java.util.Map;

class gi$1$4
  implements Runnable
{
  gi$1$4(gi.1 param1, String paramString1, String paramString2) {}
  
  public void run()
  {
    synchronized (gi.f(Cb.BZ))
    {
      Cast.MessageReceivedCallback localMessageReceivedCallback = (Cast.MessageReceivedCallback)gi.f(Cb.BZ).get(zR);
      if (localMessageReceivedCallback != null)
      {
        localMessageReceivedCallback.onMessageReceived(gi.g(Cb.BZ), zR, Ce);
        return;
      }
    }
    gi.ef().b("Discarded message for unknown namespace '%s'", new Object[] { zR });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gi.1.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */