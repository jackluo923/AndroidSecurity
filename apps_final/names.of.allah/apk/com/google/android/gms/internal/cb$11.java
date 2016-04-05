package com.google.android.gms.internal;

import android.os.RemoteException;

class cb$11
  implements Runnable
{
  cb$11(cb paramcb) {}
  
  public void run()
  {
    try
    {
      cb.a(nU).onAdLeftApplication();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not call onAdLeftApplication.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cb.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */