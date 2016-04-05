package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.model.internal.e;

public final class IndoorLevel
{
  private final e aaG;
  
  public IndoorLevel(e parame)
  {
    aaG = ((e)hn.f(parame));
  }
  
  public final void activate()
  {
    try
    {
      aaG.activate();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof IndoorLevel)) {
      return false;
    }
    try
    {
      boolean bool = aaG.a(aaG);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new RuntimeRemoteException((RemoteException)paramObject);
    }
  }
  
  public final String getName()
  {
    try
    {
      String str = aaG.getName();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final String getShortName()
  {
    try
    {
      String str = aaG.getShortName();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final int hashCode()
  {
    try
    {
      int i = aaG.hashCodeRemote();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.IndoorLevel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */