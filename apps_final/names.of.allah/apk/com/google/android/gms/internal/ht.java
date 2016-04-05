package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ht
  implements Parcelable.Creator<hs>
{
  static void a(hs paramhs, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, GQ, false);
    b.c(paramParcel, 3, GR);
    b.G(paramParcel, paramInt);
  }
  
  public hs D(Parcel paramParcel)
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
        i = a.g(paramParcel, m);
        break;
      case 2: 
        str = a.o(paramParcel, m);
        break;
      case 3: 
        j = a.g(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new hs(i, str, j);
  }
  
  public hs[] as(int paramInt)
  {
    return new hs[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */