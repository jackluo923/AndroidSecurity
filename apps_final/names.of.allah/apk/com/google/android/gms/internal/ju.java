package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ju
  implements Parcelable.Creator<jt>
{
  static void a(jt paramjt, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.a(paramParcel, 1, qU, false);
    b.c(paramParcel, 1000, xJ);
    b.G(paramParcel, paramInt);
  }
  
  public jt by(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    int i = 0;
    String str = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.A(paramParcel);
      switch (a.ar(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        str = a.o(paramParcel, k);
        break;
      case 1000: 
        i = a.g(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new jt(i, str);
  }
  
  public jt[] cT(int paramInt)
  {
    return new jt[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */