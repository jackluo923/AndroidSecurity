package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.internal.h;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class GoogleMap$6$1
  implements LocationSource.OnLocationChangedListener
{
  GoogleMap$6$1(GoogleMap.6 param6, h paramh) {}
  
  public void onLocationChanged(Location paramLocation)
  {
    try
    {
      Zf.k(e.h(paramLocation));
      return;
    }
    catch (RemoteException paramLocation)
    {
      throw new RuntimeRemoteException(paramLocation);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.6.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */