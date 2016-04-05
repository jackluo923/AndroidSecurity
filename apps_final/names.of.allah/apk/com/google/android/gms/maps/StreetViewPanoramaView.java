package com.google.android.gms.maps;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class StreetViewPanoramaView
  extends FrameLayout
{
  private StreetViewPanorama ZQ;
  private final StreetViewPanoramaView.a ZZ;
  
  public StreetViewPanoramaView(Context paramContext)
  {
    super(paramContext);
    ZZ = new StreetViewPanoramaView.a(this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ZZ = new StreetViewPanoramaView.a(this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ZZ = new StreetViewPanoramaView.a(this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
  {
    super(paramContext);
    ZZ = new StreetViewPanoramaView.a(this, paramContext, paramStreetViewPanoramaOptions);
  }
  
  public final StreetViewPanorama getStreetViewPanorama()
  {
    if (ZQ != null) {
      return ZQ;
    }
    ZZ.ju();
    if (ZZ.gC() == null) {
      return null;
    }
    try
    {
      ZQ = new StreetViewPanorama(((StreetViewPanoramaView.b)ZZ.gC()).jB().getStreetViewPanorama());
      return ZQ;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    ZZ.onCreate(paramBundle);
    if (ZZ.gC() == null)
    {
      paramBundle = ZZ;
      StreetViewPanoramaView.a.b(this);
    }
  }
  
  public final void onDestroy()
  {
    ZZ.onDestroy();
  }
  
  public final void onLowMemory()
  {
    ZZ.onLowMemory();
  }
  
  public final void onPause()
  {
    ZZ.onPause();
  }
  
  public final void onResume()
  {
    ZZ.onResume();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    ZZ.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */