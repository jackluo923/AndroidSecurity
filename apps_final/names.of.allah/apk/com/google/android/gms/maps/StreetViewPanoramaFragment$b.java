package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class StreetViewPanoramaFragment$b
  extends a<StreetViewPanoramaFragment.a>
{
  private final Fragment Mg;
  protected f<StreetViewPanoramaFragment.a> ZC;
  private Activity oe;
  
  StreetViewPanoramaFragment$b(Fragment paramFragment)
  {
    Mg = paramFragment;
  }
  
  private void setActivity(Activity paramActivity)
  {
    oe = paramActivity;
    ju();
  }
  
  protected void a(f<StreetViewPanoramaFragment.a> paramf)
  {
    ZC = paramf;
    ju();
  }
  
  public void ju()
  {
    if ((oe != null) && (ZC != null) && (gC() == null)) {}
    try
    {
      MapsInitializer.initialize(oe);
      IStreetViewPanoramaFragmentDelegate localIStreetViewPanoramaFragmentDelegate = u.E(oe).j(e.h(oe));
      ZC.a(new StreetViewPanoramaFragment.a(Mg, localIStreetViewPanoramaFragmentDelegate));
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
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */