package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.internal.v;

public final class GroundOverlayOptions
  implements SafeParcelable
{
  public static final GroundOverlayOptionsCreator CREATOR = new GroundOverlayOptionsCreator();
  public static final float NO_DIMENSION = -1.0F;
  private float aaA;
  private LatLngBounds aaB;
  private float aaC = 0.0F;
  private float aaD = 0.5F;
  private float aaE = 0.5F;
  private float aan;
  private float aau;
  private boolean aav = true;
  private BitmapDescriptor aax;
  private LatLng aay;
  private float aaz;
  private final int xJ;
  
  public GroundOverlayOptions()
  {
    xJ = 1;
  }
  
  GroundOverlayOptions(int paramInt, IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    xJ = paramInt;
    aax = new BitmapDescriptor(d.a.ag(paramIBinder));
    aay = paramLatLng;
    aaz = paramFloat1;
    aaA = paramFloat2;
    aaB = paramLatLngBounds;
    aan = paramFloat3;
    aau = paramFloat4;
    aav = paramBoolean;
    aaC = paramFloat5;
    aaD = paramFloat6;
    aaE = paramFloat7;
  }
  
  private GroundOverlayOptions a(LatLng paramLatLng, float paramFloat1, float paramFloat2)
  {
    aay = paramLatLng;
    aaz = paramFloat1;
    aaA = paramFloat2;
    return this;
  }
  
  public final GroundOverlayOptions anchor(float paramFloat1, float paramFloat2)
  {
    aaD = paramFloat1;
    aaE = paramFloat2;
    return this;
  }
  
  public final GroundOverlayOptions bearing(float paramFloat)
  {
    aan = ((paramFloat % 360.0F + 360.0F) % 360.0F);
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final float getAnchorU()
  {
    return aaD;
  }
  
  public final float getAnchorV()
  {
    return aaE;
  }
  
  public final float getBearing()
  {
    return aan;
  }
  
  public final LatLngBounds getBounds()
  {
    return aaB;
  }
  
  public final float getHeight()
  {
    return aaA;
  }
  
  public final BitmapDescriptor getImage()
  {
    return aax;
  }
  
  public final LatLng getLocation()
  {
    return aay;
  }
  
  public final float getTransparency()
  {
    return aaC;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final float getWidth()
  {
    return aaz;
  }
  
  public final float getZIndex()
  {
    return aau;
  }
  
  public final GroundOverlayOptions image(BitmapDescriptor paramBitmapDescriptor)
  {
    aax = paramBitmapDescriptor;
    return this;
  }
  
  public final boolean isVisible()
  {
    return aav;
  }
  
  final IBinder jI()
  {
    return aax.ji().asBinder();
  }
  
  public final GroundOverlayOptions position(LatLng paramLatLng, float paramFloat)
  {
    boolean bool2 = true;
    if (aaB == null)
    {
      bool1 = true;
      hn.a(bool1, "Position has already been set using positionFromBounds");
      if (paramLatLng == null) {
        break label59;
      }
      bool1 = true;
      label24:
      hn.b(bool1, "Location must be specified");
      if (paramFloat < 0.0F) {
        break label64;
      }
    }
    label59:
    label64:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      hn.b(bool1, "Width must be non-negative");
      return a(paramLatLng, paramFloat, -1.0F);
      bool1 = false;
      break;
      bool1 = false;
      break label24;
    }
  }
  
  public final GroundOverlayOptions position(LatLng paramLatLng, float paramFloat1, float paramFloat2)
  {
    boolean bool2 = true;
    if (aaB == null)
    {
      bool1 = true;
      hn.a(bool1, "Position has already been set using positionFromBounds");
      if (paramLatLng == null) {
        break label81;
      }
      bool1 = true;
      label27:
      hn.b(bool1, "Location must be specified");
      if (paramFloat1 < 0.0F) {
        break label87;
      }
      bool1 = true;
      label43:
      hn.b(bool1, "Width must be non-negative");
      if (paramFloat2 < 0.0F) {
        break label93;
      }
    }
    label81:
    label87:
    label93:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      hn.b(bool1, "Height must be non-negative");
      return a(paramLatLng, paramFloat1, paramFloat2);
      bool1 = false;
      break;
      bool1 = false;
      break label27;
      bool1 = false;
      break label43;
    }
  }
  
  public final GroundOverlayOptions positionFromBounds(LatLngBounds paramLatLngBounds)
  {
    if (aay == null) {}
    for (boolean bool = true;; bool = false)
    {
      hn.a(bool, "Position has already been set using position: %s", new Object[] { aay });
      aaB = paramLatLngBounds;
      return this;
    }
  }
  
  public final GroundOverlayOptions transparency(float paramFloat)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F)) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "Transparency must be in the range [0..1]");
      aaC = paramFloat;
      return this;
    }
  }
  
  public final GroundOverlayOptions visible(boolean paramBoolean)
  {
    aav = paramBoolean;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (v.jG())
    {
      c.a(this, paramParcel, paramInt);
      return;
    }
    GroundOverlayOptionsCreator.a(this, paramParcel, paramInt);
  }
  
  public final GroundOverlayOptions zIndex(float paramFloat)
  {
    aau = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.GroundOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */