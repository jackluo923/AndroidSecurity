package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ay
  implements Parcelable.Creator<ax>
{
  static void a(ax paramax, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.c(paramParcel, 2, mB);
    b.c(paramParcel, 3, backgroundColor);
    b.c(paramParcel, 4, mC);
    b.c(paramParcel, 5, mD);
    b.c(paramParcel, 6, mE);
    b.c(paramParcel, 7, mF);
    b.c(paramParcel, 8, mG);
    b.c(paramParcel, 9, mH);
    b.a(paramParcel, 10, mI, false);
    b.c(paramParcel, 11, mJ);
    b.a(paramParcel, 12, mK, false);
    b.c(paramParcel, 13, mL);
    b.c(paramParcel, 14, mM);
    b.a(paramParcel, 15, mN, false);
    b.G(paramParcel, paramInt);
  }
  
  public ax d(Parcel paramParcel)
  {
    int i8 = a.B(paramParcel);
    int i7 = 0;
    int i6 = 0;
    int i5 = 0;
    int i4 = 0;
    int i3 = 0;
    int i2 = 0;
    int i1 = 0;
    int n = 0;
    int m = 0;
    String str3 = null;
    int k = 0;
    String str2 = null;
    int j = 0;
    int i = 0;
    String str1 = null;
    while (paramParcel.dataPosition() < i8)
    {
      int i9 = a.A(paramParcel);
      switch (a.ar(i9))
      {
      default: 
        a.b(paramParcel, i9);
        break;
      case 1: 
        i7 = a.g(paramParcel, i9);
        break;
      case 2: 
        i6 = a.g(paramParcel, i9);
        break;
      case 3: 
        i5 = a.g(paramParcel, i9);
        break;
      case 4: 
        i4 = a.g(paramParcel, i9);
        break;
      case 5: 
        i3 = a.g(paramParcel, i9);
        break;
      case 6: 
        i2 = a.g(paramParcel, i9);
        break;
      case 7: 
        i1 = a.g(paramParcel, i9);
        break;
      case 8: 
        n = a.g(paramParcel, i9);
        break;
      case 9: 
        m = a.g(paramParcel, i9);
        break;
      case 10: 
        str3 = a.o(paramParcel, i9);
        break;
      case 11: 
        k = a.g(paramParcel, i9);
        break;
      case 12: 
        str2 = a.o(paramParcel, i9);
        break;
      case 13: 
        j = a.g(paramParcel, i9);
        break;
      case 14: 
        i = a.g(paramParcel, i9);
        break;
      case 15: 
        str1 = a.o(paramParcel, i9);
      }
    }
    if (paramParcel.dataPosition() != i8) {
      throw new a.a("Overread allowed size end=" + i8, paramParcel);
    }
    return new ax(i7, i6, i5, i4, i3, i2, i1, n, m, str3, k, str2, j, i, str1);
  }
  
  public ax[] f(int paramInt)
  {
    return new ax[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */