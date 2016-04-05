package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;

public class k
{
  static void a(VisibleRegion paramVisibleRegion, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, paramVisibleRegion.getVersionCode());
    b.a(paramParcel, 2, nearLeft, paramInt, false);
    b.a(paramParcel, 3, nearRight, paramInt, false);
    b.a(paramParcel, 4, farLeft, paramInt, false);
    b.a(paramParcel, 5, farRight, paramInt, false);
    b.a(paramParcel, 6, latLngBounds, paramInt, false);
    b.G(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */