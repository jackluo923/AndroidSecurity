package com.google.android.gms.wallet.wobs;

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
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, paramp.getVersionCode());
    b.a(paramParcel, 2, akW, false);
    b.a(paramParcel, 3, qb, false);
    b.a(paramParcel, 4, ala, paramInt, false);
    b.a(paramParcel, 5, alb, paramInt, false);
    b.a(paramParcel, 6, alc, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public p cr(Parcel paramParcel)
  {
    n localn1 = null;
    int j = a.B(paramParcel);
    int i = 0;
    n localn2 = null;
    l locall = null;
    String str1 = null;
    String str2 = null;
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
        str2 = a.o(paramParcel, k);
        break;
      case 3: 
        str1 = a.o(paramParcel, k);
        break;
      case 4: 
        locall = (l)a.a(paramParcel, k, l.CREATOR);
        break;
      case 5: 
        localn2 = (n)a.a(paramParcel, k, n.CREATOR);
        break;
      case 6: 
        localn1 = (n)a.a(paramParcel, k, n.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new p(i, str2, str1, locall, localn2, localn1);
  }
  
  public p[] dZ(int paramInt)
  {
    return new p[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */