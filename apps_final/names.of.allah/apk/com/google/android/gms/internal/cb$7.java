package com.google.android.gms.internal;

import android.os.RemoteException;

class cb$7
  implements Runnable
{
  cb$7(cb paramcb) {}
  
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
 * Qualified Name:     com.google.android.gms.internal.cb.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */