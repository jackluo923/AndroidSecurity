package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.R.styleable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.CameraPosition;

public final class GoogleMapOptions
  implements SafeParcelable
{
  public static final GoogleMapOptionsCreator CREATOR = new GoogleMapOptionsCreator();
  private Boolean Zp;
  private Boolean Zq;
  private int Zr = -1;
  private CameraPosition Zs;
  private Boolean Zt;
  private Boolean Zu;
  private Boolean Zv;
  private Boolean Zw;
  private Boolean Zx;
  private Boolean Zy;
  private final int xJ;
  
  public GoogleMapOptions()
  {
    xJ = 1;
  }
  
  GoogleMapOptions(int paramInt1, byte paramByte1, byte paramByte2, int paramInt2, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8)
  {
    xJ = paramInt1;
    Zp = com.google.android.gms.maps.internal.a.a(paramByte1);
    Zq = com.google.android.gms.maps.internal.a.a(paramByte2);
    Zr = paramInt2;
    Zs = paramCameraPosition;
    Zt = com.google.android.gms.maps.internal.a.a(paramByte3);
    Zu = com.google.android.gms.maps.internal.a.a(paramByte4);
    Zv = com.google.android.gms.maps.internal.a.a(paramByte5);
    Zw = com.google.android.gms.maps.internal.a.a(paramByte6);
    Zx = com.google.android.gms.maps.internal.a.a(paramByte7);
    Zy = com.google.android.gms.maps.internal.a.a(paramByte8);
  }
  
  public static GoogleMapOptions createFromAttributes(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return null;
    }
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, R.styleable.MapAttrs);
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (localTypedArray.hasValue(0)) {
      localGoogleMapOptions.mapType(localTypedArray.getInt(0, -1));
    }
    if (localTypedArray.hasValue(13)) {
      localGoogleMapOptions.zOrderOnTop(localTypedArray.getBoolean(13, false));
    }
    if (localTypedArray.hasValue(12)) {
      localGoogleMapOptions.useViewLifecycleInFragment(localTypedArray.getBoolean(12, false));
    }
    if (localTypedArray.hasValue(6)) {
      localGoogleMapOptions.compassEnabled(localTypedArray.getBoolean(6, true));
    }
    if (localTypedArray.hasValue(7)) {
      localGoogleMapOptions.rotateGesturesEnabled(localTypedArray.getBoolean(7, true));
    }
    if (localTypedArray.hasValue(8)) {
      localGoogleMapOptions.scrollGesturesEnabled(localTypedArray.getBoolean(8, true));
    }
    if (localTypedArray.hasValue(9)) {
      localGoogleMapOptions.tiltGesturesEnabled(localTypedArray.getBoolean(9, true));
    }
    if (localTypedArray.hasValue(11)) {
      localGoogleMapOptions.zoomGesturesEnabled(localTypedArray.getBoolean(11, true));
    }
    if (localTypedArray.hasValue(10)) {
      localGoogleMapOptions.zoomControlsEnabled(localTypedArray.getBoolean(10, true));
    }
    localGoogleMapOptions.camera(CameraPosition.createFromAttributes(paramContext, paramAttributeSet));
    localTypedArray.recycle();
    return localGoogleMapOptions;
  }
  
  public final GoogleMapOptions camera(CameraPosition paramCameraPosition)
  {
    Zs = paramCameraPosition;
    return this;
  }
  
  public final GoogleMapOptions compassEnabled(boolean paramBoolean)
  {
    Zu = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final CameraPosition getCamera()
  {
    return Zs;
  }
  
  public final Boolean getCompassEnabled()
  {
    return Zu;
  }
  
  public final int getMapType()
  {
    return Zr;
  }
  
  public final Boolean getRotateGesturesEnabled()
  {
    return Zy;
  }
  
  public final Boolean getScrollGesturesEnabled()
  {
    return Zv;
  }
  
  public final Boolean getTiltGesturesEnabled()
  {
    return Zx;
  }
  
  public final Boolean getUseViewLifecycleInFragment()
  {
    return Zq;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final Boolean getZOrderOnTop()
  {
    return Zp;
  }
  
  public final Boolean getZoomControlsEnabled()
  {
    return Zt;
  }
  
  public final Boolean getZoomGesturesEnabled()
  {
    return Zw;
  }
  
  final byte jl()
  {
    return com.google.android.gms.maps.internal.a.c(Zp);
  }
  
  final byte jm()
  {
    return com.google.android.gms.maps.internal.a.c(Zq);
  }
  
  final byte jn()
  {
    return com.google.android.gms.maps.internal.a.c(Zt);
  }
  
  final byte jo()
  {
    return com.google.android.gms.maps.internal.a.c(Zu);
  }
  
  final byte jp()
  {
    return com.google.android.gms.maps.internal.a.c(Zv);
  }
  
  final byte jq()
  {
    return com.google.android.gms.maps.internal.a.c(Zw);
  }
  
  final byte jr()
  {
    return com.google.android.gms.maps.internal.a.c(Zx);
  }
  
  final byte js()
  {
    return com.google.android.gms.maps.internal.a.c(Zy);
  }
  
  public final GoogleMapOptions mapType(int paramInt)
  {
    Zr = paramInt;
    return this;
  }
  
  public final GoogleMapOptions rotateGesturesEnabled(boolean paramBoolean)
  {
    Zy = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions scrollGesturesEnabled(boolean paramBoolean)
  {
    Zv = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions tiltGesturesEnabled(boolean paramBoolean)
  {
    Zx = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions useViewLifecycleInFragment(boolean paramBoolean)
  {
    Zq = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (v.jG())
    {
      a.a(this, paramParcel, paramInt);
      return;
    }
    GoogleMapOptionsCreator.a(this, paramParcel, paramInt);
  }
  
  public final GoogleMapOptions zOrderOnTop(boolean paramBoolean)
  {
    Zp = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions zoomControlsEnabled(boolean paramBoolean)
  {
    Zt = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions zoomGesturesEnabled(boolean paramBoolean)
  {
    Zw = Boolean.valueOf(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */