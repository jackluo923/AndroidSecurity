package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.model.internal.c;

public final class GroundOverlay
{
  private final c aaw;
  
  public GroundOverlay(c paramc)
  {
    aaw = ((c)hn.f(paramc));
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GroundOverlay)) {
      return false;
    }
    try
    {
      boolean bool = aaw.a(aaw);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new RuntimeRemoteException((RemoteException)paramObject);
    }
  }
  
  public final float getBearing()
  {
    try
    {
      float f = aaw.getBearing();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final LatLngBounds getBounds()
  {
    try
    {
      LatLngBounds localLatLngBounds = aaw.getBounds();
      return localLatLngBounds;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final float getHeight()
  {
    try
    {
      float f = aaw.getHeight();
      return f;
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
      String str = aaw.getId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final LatLng getPosition()
  {
    try
    {
      LatLng localLatLng = aaw.getPosition();
      return localLatLng;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final float getTransparency()
  {
    try
    {
      float f = aaw.getTransparency();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final float getWidth()
  {
    try
    {
      float f = aaw.getWidth();
      return f;
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
      float f = aaw.getZIndex();
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
      int i = aaw.hashCodeRemote();
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
      boolean bool = aaw.isVisible();
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
      aaw.remove();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setBearing(float paramFloat)
  {
    try
    {
      aaw.setBearing(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setDimensions(float paramFloat)
  {
    try
    {
      aaw.setDimensions(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setDimensions(float paramFloat1, float paramFloat2)
  {
    try
    {
      aaw.a(paramFloat1, paramFloat2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void setImage(BitmapDescriptor paramBitmapDescriptor)
  {
    try
    {
      aaw.l(paramBitmapDescriptor.ji());
      return;
    }
    catch (RemoteException paramBitmapDescriptor)
    {
      throw new RuntimeRemoteException(paramBitmapDescriptor);
    }
  }
  
  public final void setPosition(LatLng paramLatLng)
  {
    try
    {
      aaw.setPosition(paramLatLng);
      return;
    }
    catch (RemoteException paramLatLng)
    {
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public final void setPositionFromBounds(LatLngBounds paramLatLngBounds)
  {
    try
    {
      aaw.setPositionFromBounds(paramLatLngBounds);
      return;
    }
    catch (RemoteException paramLatLngBounds)
    {
      throw new RuntimeRemoteException(paramLatLngBounds);
    }
  }
  
  public final void setTransparency(float paramFloat)
  {
    try
    {
      aaw.setTransparency(paramFloat);
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
      aaw.setVisible(paramBoolean);
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
      aaw.setZIndex(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.GroundOverlay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */