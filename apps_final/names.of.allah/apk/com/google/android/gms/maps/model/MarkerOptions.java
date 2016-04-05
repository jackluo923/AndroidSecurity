package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;
import com.google.android.gms.maps.internal.v;

public final class MarkerOptions
  implements SafeParcelable
{
  public static final MarkerOptionsCreator CREATOR = new MarkerOptionsCreator();
  private String HV;
  private LatLng ZU;
  private float aaD = 0.5F;
  private float aaE = 1.0F;
  private String aaM;
  private BitmapDescriptor aaN;
  private boolean aaO;
  private boolean aaP = false;
  private float aaQ = 0.0F;
  private float aaR = 0.5F;
  private float aaS = 0.0F;
  private boolean aav = true;
  private float mAlpha = 1.0F;
  private final int xJ;
  
  public MarkerOptions()
  {
    xJ = 1;
  }
  
  MarkerOptions(int paramInt, LatLng paramLatLng, String paramString1, String paramString2, IBinder paramIBinder, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    xJ = paramInt;
    ZU = paramLatLng;
    HV = paramString1;
    aaM = paramString2;
    if (paramIBinder == null) {}
    for (paramLatLng = null;; paramLatLng = new BitmapDescriptor(d.a.ag(paramIBinder)))
    {
      aaN = paramLatLng;
      aaD = paramFloat1;
      aaE = paramFloat2;
      aaO = paramBoolean1;
      aav = paramBoolean2;
      aaP = paramBoolean3;
      aaQ = paramFloat3;
      aaR = paramFloat4;
      aaS = paramFloat5;
      mAlpha = paramFloat6;
      return;
    }
  }
  
  public final MarkerOptions alpha(float paramFloat)
  {
    mAlpha = paramFloat;
    return this;
  }
  
  public final MarkerOptions anchor(float paramFloat1, float paramFloat2)
  {
    aaD = paramFloat1;
    aaE = paramFloat2;
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final MarkerOptions draggable(boolean paramBoolean)
  {
    aaO = paramBoolean;
    return this;
  }
  
  public final MarkerOptions flat(boolean paramBoolean)
  {
    aaP = paramBoolean;
    return this;
  }
  
  public final float getAlpha()
  {
    return mAlpha;
  }
  
  public final float getAnchorU()
  {
    return aaD;
  }
  
  public final float getAnchorV()
  {
    return aaE;
  }
  
  public final BitmapDescriptor getIcon()
  {
    return aaN;
  }
  
  public final float getInfoWindowAnchorU()
  {
    return aaR;
  }
  
  public final float getInfoWindowAnchorV()
  {
    return aaS;
  }
  
  public final LatLng getPosition()
  {
    return ZU;
  }
  
  public final float getRotation()
  {
    return aaQ;
  }
  
  public final String getSnippet()
  {
    return aaM;
  }
  
  public final String getTitle()
  {
    return HV;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final MarkerOptions icon(BitmapDescriptor paramBitmapDescriptor)
  {
    aaN = paramBitmapDescriptor;
    return this;
  }
  
  public final MarkerOptions infoWindowAnchor(float paramFloat1, float paramFloat2)
  {
    aaR = paramFloat1;
    aaS = paramFloat2;
    return this;
  }
  
  public final boolean isDraggable()
  {
    return aaO;
  }
  
  public final boolean isFlat()
  {
    return aaP;
  }
  
  public final boolean isVisible()
  {
    return aav;
  }
  
  final IBinder jJ()
  {
    if (aaN == null) {
      return null;
    }
    return aaN.ji().asBinder();
  }
  
  public final MarkerOptions position(LatLng paramLatLng)
  {
    ZU = paramLatLng;
    return this;
  }
  
  public final MarkerOptions rotation(float paramFloat)
  {
    aaQ = paramFloat;
    return this;
  }
  
  public final MarkerOptions snippet(String paramString)
  {
    aaM = paramString;
    return this;
  }
  
  public final MarkerOptions title(String paramString)
  {
    HV = paramString;
    return this;
  }
  
  public final MarkerOptions visible(boolean paramBoolean)
  {
    aav = paramBoolean;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (v.jG())
    {
      f.a(this, paramParcel, paramInt);
      return;
    }
    MarkerOptionsCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.MarkerOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */