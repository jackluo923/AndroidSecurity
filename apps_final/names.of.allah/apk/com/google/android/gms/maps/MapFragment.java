package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class MapFragment
  extends Fragment
{
  private GoogleMap ZA;
  private final MapFragment.b Zz = new MapFragment.b(this);
  
  public static MapFragment newInstance()
  {
    return new MapFragment();
  }
  
  public static MapFragment newInstance(GoogleMapOptions paramGoogleMapOptions)
  {
    MapFragment localMapFragment = new MapFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramGoogleMapOptions);
    localMapFragment.setArguments(localBundle);
    return localMapFragment;
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
    Zz.ju();
    if (Zz.gC() == null) {
      return null;
    }
    return ((MapFragment.a)Zz.gC()).jt();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(MapFragment.class.getClassLoader());
    }
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    MapFragment.b.a(Zz, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Zz.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return Zz.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    Zz.onDestroy();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    Zz.onDestroyView();
    super.onDestroyView();
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    MapFragment.b.a(Zz, paramActivity);
    paramAttributeSet = GoogleMapOptions.createFromAttributes(paramActivity, paramAttributeSet);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramAttributeSet);
    Zz.onInflate(paramActivity, localBundle, paramBundle);
  }
  
  public void onLowMemory()
  {
    Zz.onLowMemory();
    super.onLowMemory();
  }
  
  public void onPause()
  {
    Zz.onPause();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    Zz.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(MapFragment.class.getClassLoader());
    }
    super.onSaveInstanceState(paramBundle);
    Zz.onSaveInstanceState(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */