package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;

public class e
{
  static void a(LatLng paramLatLng, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.c(paramParcel, 1, paramLatLng.getVersionCode());
    b.a(paramParcel, 2, latitude);
    b.a(paramParcel, 3, longitude);
    b.G(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */