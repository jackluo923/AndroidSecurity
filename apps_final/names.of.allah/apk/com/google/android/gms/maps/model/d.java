package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;

public class d
{
  static void a(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, paramLatLngBounds.getVersionCode());
    b.a(paramParcel, 2, southwest, paramInt, false);
    b.a(paramParcel, 3, northeast, paramInt, false);
    b.G(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */