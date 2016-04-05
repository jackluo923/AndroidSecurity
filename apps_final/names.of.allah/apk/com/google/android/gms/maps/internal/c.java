package com.google.android.gms.maps.internal;

import android.os.IInterface;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.model.internal.a;

public abstract interface c
  extends IInterface
{
  public abstract IMapViewDelegate a(d paramd, GoogleMapOptions paramGoogleMapOptions);
  
  public abstract IStreetViewPanoramaViewDelegate a(d paramd, StreetViewPanoramaOptions paramStreetViewPanoramaOptions);
  
  public abstract void a(d paramd, int paramInt);
  
  public abstract void h(d paramd);
  
  public abstract IMapFragmentDelegate i(d paramd);
  
  public abstract IStreetViewPanoramaFragmentDelegate j(d paramd);
  
  public abstract ICameraUpdateFactoryDelegate jC();
  
  public abstract a jD();
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */