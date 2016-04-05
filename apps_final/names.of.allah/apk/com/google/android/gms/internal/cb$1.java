package com.google.android.gms.internal;

import android.os.RemoteException;

class cb$1
  implements Runnable
{
  cb$1(cb paramcb) {}
  
  public void run()
  {
    try
    {
      cb.a(nU).onAdClicked();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not call onAdClicked.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cb.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */