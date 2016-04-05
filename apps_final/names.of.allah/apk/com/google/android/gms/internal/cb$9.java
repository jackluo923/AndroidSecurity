package com.google.android.gms.internal;

import android.os.RemoteException;

class cb$9
  implements Runnable
{
  cb$9(cb paramcb) {}
  
  public void run()
  {
    try
    {
      cb.a(nU).onAdClosed();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not call onAdClosed.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cb.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */