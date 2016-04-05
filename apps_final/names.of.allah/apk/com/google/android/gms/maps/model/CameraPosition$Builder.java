package com.google.android.gms.maps.model;

public final class CameraPosition$Builder
{
  private LatLng aak;
  private float aal;
  private float aam;
  private float aan;
  
  public CameraPosition$Builder() {}
  
  public CameraPosition$Builder(CameraPosition paramCameraPosition)
  {
    aak = target;
    aal = zoom;
    aam = tilt;
    aan = bearing;
  }
  
  public final Builder bearing(float paramFloat)
  {
    aan = paramFloat;
    return this;
  }
  
  public final CameraPosition build()
  {
    return new CameraPosition(aak, aal, aam, aan);
  }
  
  public final Builder target(LatLng paramLatLng)
  {
    aak = paramLatLng;
    return this;
  }
  
  public final Builder tilt(float paramFloat)
  {
    aam = paramFloat;
    return this;
  }
  
  public final Builder zoom(float paramFloat)
  {
    aal = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.CameraPosition.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */