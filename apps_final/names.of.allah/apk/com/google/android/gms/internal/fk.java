package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class fk
  implements Parcelable.Creator<fj>
{
  static void a(fj paramfj, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.a(paramParcel, 1, xN, false);
    b.c(paramParcel, 1000, xJ);
    b.a(paramParcel, 2, xO, false);
    b.a(paramParcel, 3, xP, false);
    b.G(paramParcel, paramInt);
  }
  
  public fj[] E(int paramInt)
  {
    return new fj[paramInt];
  }
  
  public fj m(Parcel paramParcel)
  {
    String str3 = null;
    int j = a.B(paramParcel);
    String str1 = null;
    int i = 0;
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
        str1 = a.o(paramParcel, k);
        break;
      case 1000: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        str2 = a.o(paramParcel, k);
        break;
      case 3: 
        str3 = a.o(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new fj(i, str1, str2, str3);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */