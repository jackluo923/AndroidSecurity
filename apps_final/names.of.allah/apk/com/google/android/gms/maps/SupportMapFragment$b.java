package com.google.android.gms.maps;

import android.app.Activity;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.a;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class SupportMapFragment$b
  extends a<SupportMapFragment.a>
{
  private final Fragment FS;
  protected f<SupportMapFragment.a> ZC;
  private Activity oe;
  
  SupportMapFragment$b(Fragment paramFragment)
  {
    FS = paramFragment;
  }
  
  private void setActivity(Activity paramActivity)
  {
    oe = paramActivity;
    ju();
  }
  
  protected void a(f<SupportMapFragment.a> paramf)
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
      IMapFragmentDelegate localIMapFragmentDelegate = u.E(oe).i(e.h(oe));
      ZC.a(new SupportMapFragment.a(FS, localIMapFragmentDelegate));
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
 * Qualified Name:     com.google.android.gms.maps.SupportMapFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */