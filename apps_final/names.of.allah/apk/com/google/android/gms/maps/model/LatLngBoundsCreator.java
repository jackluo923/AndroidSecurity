package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class LatLngBoundsCreator
  implements Parcelable.Creator<LatLngBounds>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void a(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, paramLatLngBounds.getVersionCode());
    b.a(paramParcel, 2, southwest, paramInt, false);
    b.a(paramParcel, 3, northeast, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public LatLngBounds createFromParcel(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    LatLng localLatLng1 = null;
    int i = 0;
    LatLng localLatLng2 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.A(paramParcel);
      switch (a.ar(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        localLatLng1 = (LatLng)a.a(paramParcel, k, LatLng.CREATOR);
        break;
      case 3: 
        localLatLng2 = (LatLng)a.a(paramParcel, k, LatLng.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new LatLngBounds(i, localLatLng1, localLatLng2);
  }
  
  public LatLngBounds[] newArray(int paramInt)
  {
    return new LatLngBounds[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBoundsCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */