package com.google.android.gms.internal;

import android.os.RemoteException;

class cb$2
  implements Runnable
{
  cb$2(cb paramcb) {}
  
  public void run()
  {
    try
    {
      cb.a(nU).onAdOpened();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not call onAdOpened.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cb.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */