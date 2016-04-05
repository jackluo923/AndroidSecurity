package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.internal.IProjectionDelegate;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.VisibleRegion;

public final class Projection
{
  private final IProjectionDelegate ZJ;
  
  Projection(IProjectionDelegate paramIProjectionDelegate)
  {
    ZJ = paramIProjectionDelegate;
  }
  
  public final LatLng fromScreenLocation(Point paramPoint)
  {
    try
    {
      paramPoint = ZJ.fromScreenLocation(e.h(paramPoint));
      return paramPoint;
    }
    catch (RemoteException paramPoint)
    {
      throw new RuntimeRemoteException(paramPoint);
    }
  }
  
  public final VisibleRegion getVisibleRegion()
  {
    try
    {
      VisibleRegion localVisibleRegion = ZJ.getVisibleRegion();
      return localVisibleRegion;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final Point toScreenLocation(LatLng paramLatLng)
  {
    try
    {
      paramLatLng = (Point)e.e(ZJ.toScreenLocation(paramLatLng));
      return paramLatLng;
    }
    catch (RemoteException paramLatLng)
    {
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.Projection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */