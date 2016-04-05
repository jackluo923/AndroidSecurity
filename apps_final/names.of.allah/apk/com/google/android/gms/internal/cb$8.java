package com.google.android.gms.internal;

import android.os.RemoteException;

class cb$8
  implements Runnable
{
  cb$8(cb paramcb) {}
  
  public void run()
  {
    try
    {
      cb.a(nU).onAdLoaded();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not call onAdLoaded.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cb.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */