package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class CameraPositionCreator
  implements Parcelable.Creator<CameraPosition>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
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
  
  public CameraPosition createFromParcel(Parcel paramParcel)
  {
    float f1 = 0.0F;
    int j = a.B(paramParcel);
    int i = 0;
    LatLng localLatLng = null;
    float f2 = 0.0F;
    float f3 = 0.0F;
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
        localLatLng = (LatLng)a.a(paramParcel, k, LatLng.CREATOR);
        break;
      case 3: 
        f3 = a.l(paramParcel, k);
        break;
      case 4: 
        f2 = a.l(paramParcel, k);
        break;
      case 5: 
        f1 = a.l(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new CameraPosition(i, localLatLng, f3, f2, f1);
  }
  
  public CameraPosition[] newArray(int paramInt)
  {
    return new CameraPosition[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.CameraPositionCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */