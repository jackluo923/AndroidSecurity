package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class q
  implements Parcelable.Creator<p>
{
  static void a(p paramp, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.c(paramParcel, 2, statusCode);
    b.c(paramParcel, 3, alI);
    b.G(paramParcel, paramInt);
  }
  
  public p cy(Parcel paramParcel)
  {
    int k = 0;
    int m = a.B(paramParcel);
    int j = 0;
    int i = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.A(paramParcel);
      switch (a.ar(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        i = a.g(paramParcel, n);
        break;
      case 2: 
        j = a.g(paramParcel, n);
        break;
      case 3: 
        k = a.g(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new p(i, j, k);
  }
  
  public p[] eh(int paramInt)
  {
    return new p[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */