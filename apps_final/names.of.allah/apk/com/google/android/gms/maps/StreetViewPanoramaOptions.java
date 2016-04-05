package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public final class StreetViewPanoramaOptions
  implements SafeParcelable
{
  public static final StreetViewPanoramaOptionsCreator CREATOR = new StreetViewPanoramaOptionsCreator();
  private StreetViewPanoramaCamera ZS;
  private String ZT;
  private LatLng ZU;
  private Integer ZV;
  private Boolean ZW = Boolean.valueOf(true);
  private Boolean ZX = Boolean.valueOf(true);
  private Boolean ZY = Boolean.valueOf(true);
  private Boolean Zq;
  private Boolean Zw = Boolean.valueOf(true);
  private final int xJ;
  
  public StreetViewPanoramaOptions()
  {
    xJ = 1;
  }
  
  StreetViewPanoramaOptions(int paramInt, StreetViewPanoramaCamera paramStreetViewPanoramaCamera, String paramString, LatLng paramLatLng, Integer paramInteger, byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4, byte paramByte5)
  {
    xJ = paramInt;
    ZS = paramStreetViewPanoramaCamera;
    ZU = paramLatLng;
    ZV = paramInteger;
    ZT = paramString;
    ZW = a.a(paramByte1);
    Zw = a.a(paramByte2);
    ZX = a.a(paramByte3);
    ZY = a.a(paramByte4);
    Zq = a.a(paramByte5);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final Boolean getPanningGesturesEnabled()
  {
    return ZX;
  }
  
  public final String getPanoramaId()
  {
    return ZT;
  }
  
  public final LatLng getPosition()
  {
    return ZU;
  }
  
  public final Integer getRadius()
  {
    return ZV;
  }
  
  public final Boolean getStreetNamesEnabled()
  {
    return ZY;
  }
  
  public final StreetViewPanoramaCamera getStreetViewPanoramaCamera()
  {
    return ZS;
  }
  
  public final Boolean getUseViewLifecycleInFragment()
  {
    return Zq;
  }
  
  public final Boolean getUserNavigationEnabled()
  {
    return ZW;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final Boolean getZoomGesturesEnabled()
  {
    return Zw;
  }
  
  final byte jA()
  {
    return a.c(ZY);
  }
  
  final byte jm()
  {
    return a.c(Zq);
  }
  
  final byte jq()
  {
    return a.c(Zw);
  }
  
  final byte jy()
  {
    return a.c(ZW);
  }
  
  final byte jz()
  {
    return a.c(ZX);
  }
  
  public final StreetViewPanoramaOptions panningGesturesEnabled(boolean paramBoolean)
  {
    ZX = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera paramStreetViewPanoramaCamera)
  {
    ZS = paramStreetViewPanoramaCamera;
    return this;
  }
  
  public final StreetViewPanoramaOptions panoramaId(String paramString)
  {
    ZT = paramString;
    return this;
  }
  
  public final StreetViewPanoramaOptions position(LatLng paramLatLng)
  {
    ZU = paramLatLng;
    return this;
  }
  
  public final StreetViewPanoramaOptions position(LatLng paramLatLng, Integer paramInteger)
  {
    ZU = paramLatLng;
    ZV = paramInteger;
    return this;
  }
  
  public final StreetViewPanoramaOptions streetNamesEnabled(boolean paramBoolean)
  {
    ZY = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final StreetViewPanoramaOptions useViewLifecycleInFragment(boolean paramBoolean)
  {
    Zq = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final StreetViewPanoramaOptions userNavigationEnabled(boolean paramBoolean)
  {
    ZW = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    StreetViewPanoramaOptionsCreator.a(this, paramParcel, paramInt);
  }
  
  public final StreetViewPanoramaOptions zoomGesturesEnabled(boolean paramBoolean)
  {
    Zw = Boolean.valueOf(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */