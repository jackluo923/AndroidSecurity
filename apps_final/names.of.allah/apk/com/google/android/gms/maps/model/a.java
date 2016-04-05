package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;

public class a
{
  static void a(CameraPosition paramCameraPosition, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, paramCameraPosition.getVersionCode());
    b.a(paramParcel, 2, target, paramInt, false);
    b.a(paramParcel, 3, zoom);
    b.a(paramParcel, 4, tilt);
    b.a(paramParcel, 5, bearing);
    b.G(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */