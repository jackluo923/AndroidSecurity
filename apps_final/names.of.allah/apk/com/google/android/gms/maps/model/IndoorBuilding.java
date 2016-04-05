package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.model.internal.d;
import com.google.android.gms.maps.model.internal.e.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class IndoorBuilding
{
  private final d aaF;
  
  public IndoorBuilding(d paramd)
  {
    aaF = ((d)hn.f(paramd));
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof IndoorBuilding)) {
      return false;
    }
    try
    {
      boolean bool = aaF.b(aaF);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new RuntimeRemoteException((RemoteException)paramObject);
    }
  }
  
  public final int getActiveLevelIndex()
  {
    try
    {
      int i = aaF.getActiveLevelIndex();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final int getDefaultLevelIndex()
  {
    try
    {
      int i = aaF.getActiveLevelIndex();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final List<IndoorLevel> getLevels()
  {
    try
    {
      Object localObject = aaF.getLevels();
      ArrayList localArrayList = new ArrayList(((List)localObject).size());
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localArrayList.add(new IndoorLevel(e.a.bb((IBinder)((Iterator)localObject).next())));
      }
      return localRemoteException;
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
      int i = aaF.hashCodeRemote();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isUnderground()
  {
    try
    {
      boolean bool = aaF.isUnderground();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.IndoorBuilding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */