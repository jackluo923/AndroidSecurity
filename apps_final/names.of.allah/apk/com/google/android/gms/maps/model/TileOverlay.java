package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.model.internal.h;

public final class TileOverlay
{
  private final h aaZ;
  
  public TileOverlay(h paramh)
  {
    aaZ = ((h)hn.f(paramh));
  }
  
  public final void clearTileCache()
  {
    try
    {
      aaZ.clearTileCache();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof TileOverlay)) {
      return false;
    }
    try
    {
      boolean bool = aaZ.a(aaZ);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new RuntimeRemoteException((RemoteException)paramObject);
    }
  }
  
  public final boolean getFadeIn()
  {
    try
    {
      boolean bool = aaZ.getFadeIn();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final String getId()
  {
    try
    {
      String str = aaZ.getId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final float getZIndex()
  {
    try
    {
      float f = aaZ.getZIndex();
      return f;
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
      int i = aaZ.hashCodeRemote();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isVisible()
  {
    try
    {
      boolean bool = aaZ.isVisible();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void remove()
  {
    try
    {
      aaZ.remove();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setFadeIn(boolean paramBoolean)
  {
    try
    {
      aaZ.setFadeIn(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setVisible(boolean paramBoolean)
  {
    try
    {
      aaZ.setVisible(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setZIndex(float paramFloat)
  {
    try
    {
      aaZ.setZIndex(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */