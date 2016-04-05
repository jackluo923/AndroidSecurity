package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class StreetViewPanoramaFragment
  extends Fragment
{
  private final StreetViewPanoramaFragment.b ZP = new StreetViewPanoramaFragment.b(this);
  private StreetViewPanorama ZQ;
  
  public static StreetViewPanoramaFragment newInstance()
  {
    return new StreetViewPanoramaFragment();
  }
  
  public static StreetViewPanoramaFragment newInstance(StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
  {
    StreetViewPanoramaFragment localStreetViewPanoramaFragment = new StreetViewPanoramaFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("StreetViewPanoramaOptions", paramStreetViewPanoramaOptions);
    localStreetViewPanoramaFragment.setArguments(localBundle);
    return localStreetViewPanoramaFragment;
  }
  
  public final StreetViewPanorama getStreetViewPanorama()
  {
    Object localObject = jx();
    if (localObject == null) {}
    for (;;)
    {
      return null;
      try
      {
        localObject = ((IStreetViewPanoramaFragmentDelegate)localObject).getStreetViewPanorama();
        if (localObject == null) {
          continue;
        }
        if ((ZQ == null) || (ZQ.jw().asBinder() != ((IStreetViewPanoramaDelegate)localObject).asBinder())) {
          ZQ = new StreetViewPanorama((IStreetViewPanoramaDelegate)localObject);
        }
        return ZQ;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
  }
  
  protected IStreetViewPanoramaFragmentDelegate jx()
  {
    ZP.ju();
    if (ZP.gC() == null) {
      return null;
    }
    return ((StreetViewPanoramaFragment.a)ZP.gC()).jx();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
    }
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    StreetViewPanoramaFragment.b.a(ZP, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ZP.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return ZP.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    ZP.onDestroy();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    ZP.onDestroyView();
    super.onDestroyView();
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    StreetViewPanoramaFragment.b.a(ZP, paramActivity);
    paramAttributeSet = new Bundle();
    ZP.onInflate(paramActivity, paramAttributeSet, paramBundle);
  }
  
  public void onLowMemory()
  {
    ZP.onLowMemory();
    super.onLowMemory();
  }
  
  public void onPause()
  {
    ZP.onPause();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    ZP.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
    }
    super.onSaveInstanceState(paramBundle);
    ZP.onSaveInstanceState(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */