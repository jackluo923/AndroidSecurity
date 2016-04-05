package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;

public final class CircleOptions
  implements SafeParcelable
{
  public static final CircleOptionsCreator CREATOR = new CircleOptionsCreator();
  private LatLng aap = null;
  private double aaq = 0.0D;
  private float aar = 10.0F;
  private int aas = -16777216;
  private int aat = 0;
  private float aau = 0.0F;
  private boolean aav = true;
  private final int xJ;
  
  public CircleOptions()
  {
    xJ = 1;
  }
  
  CircleOptions(int paramInt1, LatLng paramLatLng, double paramDouble, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean)
  {
    xJ = paramInt1;
    aap = paramLatLng;
    aaq = paramDouble;
    aar = paramFloat1;
    aas = paramInt2;
    aat = paramInt3;
    aau = paramFloat2;
    aav = paramBoolean;
  }
  
  public final CircleOptions center(LatLng paramLatLng)
  {
    aap = paramLatLng;
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final CircleOptions fillColor(int paramInt)
  {
    aat = paramInt;
    return this;
  }
  
  public final LatLng getCenter()
  {
    return aap;
  }
  
  public final int getFillColor()
  {
    return aat;
  }
  
  public final double getRadius()
  {
    return aaq;
  }
  
  public final int getStrokeColor()
  {
    return aas;
  }
  
  public final float getStrokeWidth()
  {
    return aar;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final float getZIndex()
  {
    return aau;
  }
  
  public final boolean isVisible()
  {
    return aav;
  }
  
  public final CircleOptions radius(double paramDouble)
  {
    aaq = paramDouble;
    return this;
  }
  
  public final CircleOptions strokeColor(int paramInt)
  {
    aas = paramInt;
    return this;
  }
  
  public final CircleOptions strokeWidth(float paramFloat)
  {
    aar = paramFloat;
    return this;
  }
  
  public final CircleOptions visible(boolean paramBoolean)
  {
    aav = paramBoolean;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (v.jG())
    {
      b.a(this, paramParcel, paramInt);
      return;
    }
    CircleOptionsCreator.a(this, paramParcel, paramInt);
  }
  
  public final CircleOptions zIndex(float paramFloat)
  {
    aau = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.CircleOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */