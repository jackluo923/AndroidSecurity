package com.google.android.gms.internal;

import android.os.RemoteException;

class bl$1
  implements Runnable
{
  bl$1(bl parambl, br parambr) {}
  
  public void run()
  {
    try
    {
      ng.nL.destroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not destroy mediation adapter.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */