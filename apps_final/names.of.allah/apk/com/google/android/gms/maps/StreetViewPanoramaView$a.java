package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class StreetViewPanoramaView$a
  extends a<StreetViewPanoramaView.b>
{
  protected f<StreetViewPanoramaView.b> ZC;
  private final ViewGroup ZH;
  private final StreetViewPanoramaOptions aaa;
  private final Context mContext;
  
  StreetViewPanoramaView$a(ViewGroup paramViewGroup, Context paramContext, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
  {
    ZH = paramViewGroup;
    mContext = paramContext;
    aaa = paramStreetViewPanoramaOptions;
  }
  
  protected void a(f<StreetViewPanoramaView.b> paramf)
  {
    ZC = paramf;
    ju();
  }
  
  public void ju()
  {
    if ((ZC != null) && (gC() == null)) {}
    try
    {
      IStreetViewPanoramaViewDelegate localIStreetViewPanoramaViewDelegate = u.E(mContext).a(e.h(mContext), aaa);
      ZC.a(new StreetViewPanoramaView.b(ZH, localIStreetViewPanoramaViewDelegate));
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
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */