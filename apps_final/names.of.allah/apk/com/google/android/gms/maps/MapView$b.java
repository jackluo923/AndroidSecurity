package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class MapView$b
  extends a<MapView.a>
{
  protected f<MapView.a> ZC;
  private final ViewGroup ZH;
  private final GoogleMapOptions ZI;
  private final Context mContext;
  
  MapView$b(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    ZH = paramViewGroup;
    mContext = paramContext;
    ZI = paramGoogleMapOptions;
  }
  
  protected void a(f<MapView.a> paramf)
  {
    ZC = paramf;
    ju();
  }
  
  public void ju()
  {
    if ((ZC != null) && (gC() == null)) {}
    try
    {
      IMapViewDelegate localIMapViewDelegate = u.E(mContext).a(e.h(mContext), ZI);
      ZC.a(new MapView.a(ZH, localIMapViewDelegate));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */