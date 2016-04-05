package com.google.android.gms.internal;

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
    b.a(paramParcel, 2, mc, false);
    b.c(paramParcel, 3, height);
    b.c(paramParcel, 4, heightPixels);
    b.a(paramParcel, 5, md);
    b.c(paramParcel, 6, width);
    b.c(paramParcel, 7, widthPixels);
    b.a(paramParcel, 8, me, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public am c(Parcel paramParcel)
  {
    am[] arrayOfam = null;
    int i = 0;
    int i1 = a.B(paramParcel);
    int j = 0;
    boolean bool = false;
    int k = 0;
    int m = 0;
    String str = null;
    int n = 0;
    while (paramParcel.dataPosition() < i1)
    {
      int i2 = a.A(paramParcel);
      switch (a.ar(i2))
      {
      default: 
        a.b(paramParcel, i2);
        break;
      case 1: 
        n = a.g(paramParcel, i2);
        break;
      case 2: 
        str = a.o(paramParcel, i2);
        break;
      case 3: 
        m = a.g(paramParcel, i2);
        break;
      case 4: 
        k = a.g(paramParcel, i2);
        break;
      case 5: 
        bool = a.c(paramParcel, i2);
        break;
      case 6: 
        j = a.g(paramParcel, i2);
        break;
      case 7: 
        i = a.g(paramParcel, i2);
        break;
      case 8: 
        arrayOfam = (am[])a.b(paramParcel, i2, am.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != i1) {
      throw new a.a("Overread allowed size end=" + i1, paramParcel);
    }
    return new am(n, str, m, k, bool, j, i, arrayOfam);
  }
  
  public am[] d(int paramInt)
  {
    return new am[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */