package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class LocationRequestCreator
  implements Parcelable.Creator<LocationRequest>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void a(LocationRequest paramLocationRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.c(paramParcel, 1, mPriority);
    b.c(paramParcel, 1000, paramLocationRequest.getVersionCode());
    b.a(paramParcel, 2, Vi);
    b.a(paramParcel, 3, Vj);
    b.a(paramParcel, 4, Vk);
    b.a(paramParcel, 5, UY);
    b.c(paramParcel, 6, Vl);
    b.a(paramParcel, 7, Vm);
    b.G(paramParcel, paramInt);
  }
  
  public LocationRequest createFromParcel(Parcel paramParcel)
  {
    boolean bool = false;
    int m = a.B(paramParcel);
    int j = 102;
    long l3 = 3600000L;
    long l2 = 600000L;
    long l1 = Long.MAX_VALUE;
    int i = Integer.MAX_VALUE;
    float f = 0.0F;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.A(paramParcel);
      switch (a.ar(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        j = a.g(paramParcel, n);
        break;
      case 1000: 
        k = a.g(paramParcel, n);
        break;
      case 2: 
        l3 = a.i(paramParcel, n);
        break;
      case 3: 
        l2 = a.i(paramParcel, n);
        break;
      case 4: 
        bool = a.c(paramParcel, n);
        break;
      case 5: 
        l1 = a.i(paramParcel, n);
        break;
      case 6: 
        i = a.g(paramParcel, n);
        break;
      case 7: 
        f = a.l(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new LocationRequest(k, j, l3, l2, bool, l1, i, f);
  }
  
  public LocationRequest[] newArray(int paramInt)
  {
    return new LocationRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationRequestCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */