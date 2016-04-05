package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

class StreetViewPanoramaView$b
  implements LifecycleDelegate
{
  private final ViewGroup ZE;
  private final IStreetViewPanoramaViewDelegate aab;
  private View aac;
  
  public StreetViewPanoramaView$b(ViewGroup paramViewGroup, IStreetViewPanoramaViewDelegate paramIStreetViewPanoramaViewDelegate)
  {
    aab = ((IStreetViewPanoramaViewDelegate)hn.f(paramIStreetViewPanoramaViewDelegate));
    ZE = ((ViewGroup)hn.f(paramViewGroup));
  }
  
  public IStreetViewPanoramaViewDelegate jB()
  {
    return aab;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    try
    {
      aab.onCreate(paramBundle);
      aac = ((View)e.e(aab.getView()));
      ZE.removeAllViews();
      ZE.addView(aac);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeRemoteException(paramBundle);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void onDestroy()
  {
    try
    {
      aab.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void onDestroyView()
  {
    throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
  }
  
  public void onLowMemory()
  {
    try
    {
      aab.onLowMemory();
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
      aab.onPause();
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
      aab.onResume();
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
      aab.onSaveInstanceState(paramBundle);
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
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */