package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;

class ct$1
  implements Runnable
{
  ct$1(ct paramct, cw paramcw, Intent paramIntent) {}
  
  public void run()
  {
    try
    {
      if (ct.a(pc).a(pa.pk, -1, pb))
      {
        ct.c(pc).a(new cx(ct.b(pc), pa.pl, true, -1, pb, pa));
        return;
      }
      ct.c(pc).a(new cx(ct.b(pc), pa.pl, false, -1, pb, pa));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.D("Fail to verify and dispatch pending transaction");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ct.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */