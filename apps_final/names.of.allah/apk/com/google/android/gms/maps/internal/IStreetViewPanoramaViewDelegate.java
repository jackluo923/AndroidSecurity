package com.google.android.gms.maps.internal;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.d;

public abstract interface IStreetViewPanoramaViewDelegate
  extends IInterface
{
  public abstract IStreetViewPanoramaDelegate getStreetViewPanorama();
  
  public abstract d getView();
  
  public abstract void onCreate(Bundle paramBundle);
  
  public abstract void onDestroy();
  
  public abstract void onLowMemory();
  
  public abstract void onPause();
  
  public abstract void onResume();
  
  public abstract void onSaveInstanceState(Bundle paramBundle);
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */