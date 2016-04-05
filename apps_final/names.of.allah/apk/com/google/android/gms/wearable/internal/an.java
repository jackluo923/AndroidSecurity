package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class an
  implements Parcelable.Creator<am>
{
  static void a(am paramam, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.c(paramParcel, 2, statusCode);
    b.a(paramParcel, 3, alL, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public am cH(Parcel paramParcel)
  {
    int j = 0;
    int k = a.B(paramParcel);
    m localm = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.A(paramParcel);
      switch (a.ar(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        i = a.g(paramParcel, m);
        break;
      case 2: 
        j = a.g(paramParcel, m);
        break;
      case 3: 
        localm = (m)a.a(paramParcel, m, m.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new am(i, j, localm);
  }
  
  public am[] eq(int paramInt)
  {
    return new am[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */