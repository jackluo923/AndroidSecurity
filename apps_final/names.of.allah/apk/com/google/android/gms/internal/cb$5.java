package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.b;

class cb$5
  implements Runnable
{
  cb$5(cb paramcb, b paramb) {}
  
  public void run()
  {
    try
    {
      cb.a(nU).onAdFailedToLoad(cc.a(nV));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not call onAdFailedToLoad.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cb.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */