package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class SupportMapFragment
  extends Fragment
{
  private GoogleMap ZA;
  private final SupportMapFragment.b aad = new SupportMapFragment.b(this);
  
  public static SupportMapFragment newInstance()
  {
    return new SupportMapFragment();
  }
  
  public static SupportMapFragment newInstance(GoogleMapOptions paramGoogleMapOptions)
  {
    SupportMapFragment localSupportMapFragment = new SupportMapFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramGoogleMapOptions);
    localSupportMapFragment.setArguments(localBundle);
    return localSupportMapFragment;
  }
  
  public final GoogleMap getMap()
  {
    Object localObject = jt();
    if (localObject == null) {}
    for (;;)
    {
      return null;
      try
      {
        localObject = ((IMapFragmentDelegate)localObject).getMap();
        if (localObject == null) {
          continue;
        }
        if ((ZA == null) || (ZA.jk().asBinder() != ((IGoogleMapDelegate)localObject).asBinder())) {
          ZA = new GoogleMap((IGoogleMapDelegate)localObject);
        }
        return ZA;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
  }
  
  protected IMapFragmentDelegate jt()
  {
    aad.ju();
    if (aad.gC() == null) {
      return null;
    }
    return ((SupportMapFragment.a)aad.gC()).jt();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(SupportMapFragment.class.getClassLoader());
    }
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    SupportMapFragment.b.a(aad, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aad.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return aad.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    aad.onDestroy();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    aad.onDestroyView();
    super.onDestroyView();
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    SupportMapFragment.b.a(aad, paramActivity);
    paramAttributeSet = GoogleMapOptions.createFromAttributes(paramActivity, paramAttributeSet);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramAttributeSet);
    aad.onInflate(paramActivity, localBundle, paramBundle);
  }
  
  public void onLowMemory()
  {
    aad.onLowMemory();
    super.onLowMemory();
  }
  
  public void onPause()
  {
    aad.onPause();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    aad.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(SupportMapFragment.class.getClassLoader());
    }
    super.onSaveInstanceState(paramBundle);
    aad.onSaveInstanceState(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.SupportMapFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */