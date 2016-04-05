package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class jy
  implements Parcelable.Creator<jx>
{
  static void a(jx paramjx, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.a(paramParcel, 1, qU, false);
    b.c(paramParcel, 1000, xJ);
    b.c(paramParcel, 2, YP);
    b.G(paramParcel, paramInt);
  }
  
  public jx bA(Parcel paramParcel)
  {
    int j = 0;
    int k = a.B(paramParcel);
    String str = null;
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
        str = a.o(paramParcel, m);
        break;
      case 1000: 
        i = a.g(paramParcel, m);
        break;
      case 2: 
        j = a.g(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new jx(i, str, j);
  }
  
  public jx[] cV(int paramInt)
  {
    return new jx[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */