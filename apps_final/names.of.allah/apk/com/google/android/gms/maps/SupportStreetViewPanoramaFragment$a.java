package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.t;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class SupportStreetViewPanoramaFragment$a
  implements LifecycleDelegate
{
  private final Fragment FS;
  private final IStreetViewPanoramaFragmentDelegate ZR;
  
  public SupportStreetViewPanoramaFragment$a(Fragment paramFragment, IStreetViewPanoramaFragmentDelegate paramIStreetViewPanoramaFragmentDelegate)
  {
    ZR = ((IStreetViewPanoramaFragmentDelegate)hn.f(paramIStreetViewPanoramaFragmentDelegate));
    FS = ((Fragment)hn.f(paramFragment));
  }
  
  public IStreetViewPanoramaFragmentDelegate jx()
  {
    return ZR;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {}
    try
    {
      localBundle = new Bundle();
      paramBundle = FS.getArguments();
      if ((paramBundle != null) && (paramBundle.containsKey("StreetViewPanoramaOptions"))) {
        t.a(localBundle, "StreetViewPanoramaOptions", paramBundle.getParcelable("StreetViewPanoramaOptions"));
      }
      ZR.onCreate(localBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    try
    {
      paramLayoutInflater = ZR.onCreateView(e.h(paramLayoutInflater), e.h(paramViewGroup), paramBundle);
      return (View)e.e(paramLayoutInflater);
    }
    catch (RemoteException paramLayoutInflater)
    {
      throw new RuntimeRemoteException(paramLayoutInflater);
    }
  }
  
  public void onDestroy()
  {
    try
    {
      ZR.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onDestroyView()
  {
    try
    {
      ZR.onDestroyView();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    try
    {
      ZR.onInflate(e.h(paramActivity), null, paramBundle2);
      return;
    }
    catch (RemoteException paramActivity)
    {
      throw new RuntimeRemoteException(paramActivity);
    }
  }
  
  public void onLowMemory()
  {
    try
    {
      ZR.onLowMemory();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onPause()
  {
    try
    {
      ZR.onPause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onResume()
  {
    try
    {
      ZR.onResume();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      ZR.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public void onStart() {}
  
  public void onStop() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.SupportStreetViewPanoramaFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */