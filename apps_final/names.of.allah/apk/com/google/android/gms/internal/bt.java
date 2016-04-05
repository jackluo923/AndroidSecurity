package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.b;
import com.google.ads.mediation.g;
import com.google.ads.mediation.j;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import java.util.Map;

public final class bt
  extends bu.a
{
  private Map<Class<? extends NetworkExtras>, NetworkExtras> nO;
  
  private <NETWORK_EXTRAS extends j, SERVER_PARAMETERS extends g> bv n(String paramString)
  {
    try
    {
      Object localObject = Class.forName(paramString, false, bt.class.getClassLoader());
      if (b.class.isAssignableFrom((Class)localObject))
      {
        localObject = (b)((Class)localObject).newInstance();
        return new ca((b)localObject, (j)nO.get(((b)localObject).getAdditionalParametersType()));
      }
      if (MediationAdapter.class.isAssignableFrom((Class)localObject)) {
        return new by((MediationAdapter)((Class)localObject).newInstance());
      }
      ev.D("Could not instantiate mediation adapter: " + paramString + " (not a valid adapter).");
      throw new RemoteException();
    }
    catch (Throwable localThrowable)
    {
      ev.D("Could not instantiate mediation adapter: " + paramString + ". " + localThrowable.getMessage());
      throw new RemoteException();
    }
  }
  
  public final void c(Map<Class<? extends NetworkExtras>, NetworkExtras> paramMap)
  {
    nO = paramMap;
  }
  
  public final bv m(String paramString)
  {
    return n(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */