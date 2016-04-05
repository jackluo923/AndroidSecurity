package com.google.android.gms.maps;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.maps.internal.IMapViewDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class MapView
  extends FrameLayout
{
  private GoogleMap ZA;
  private final MapView.b ZD;
  
  public MapView(Context paramContext)
  {
    super(paramContext);
    ZD = new MapView.b(this, paramContext, null);
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ZD = new MapView.b(this, paramContext, GoogleMapOptions.createFromAttributes(paramContext, paramAttributeSet));
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ZD = new MapView.b(this, paramContext, GoogleMapOptions.createFromAttributes(paramContext, paramAttributeSet));
  }
  
  public MapView(Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    super(paramContext);
    ZD = new MapView.b(this, paramContext, paramGoogleMapOptions);
  }
  
  public final GoogleMap getMap()
  {
    if (ZA != null) {
      return ZA;
    }
    ZD.ju();
    if (ZD.gC() == null) {
      return null;
    }
    try
    {
      ZA = new GoogleMap(((MapView.a)ZD.gC()).jv().getMap());
      return ZA;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    ZD.onCreate(paramBundle);
    if (ZD.gC() == null)
    {
      paramBundle = ZD;
      MapView.b.b(this);
    }
  }
  
  public final void onDestroy()
  {
    ZD.onDestroy();
  }
  
  public final void onLowMemory()
  {
    ZD.onLowMemory();
  }
  
  public final void onPause()
  {
    ZD.onPause();
  }
  
  public final void onResume()
  {
    ZD.onResume();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    ZD.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */