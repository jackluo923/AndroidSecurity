package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class kc
  implements Parcelable.Creator<kb>
{
  static void a(kb paramkb, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.a(paramParcel, 1, YS, false);
    b.c(paramParcel, 1000, versionCode);
    b.a(paramParcel, 2, YT, false);
    b.G(paramParcel, paramInt);
  }
  
  public kb bB(Parcel paramParcel)
  {
    String str2 = null;
    int j = a.B(paramParcel);
    int i = 0;
    String str1 = null;
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
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new kb(i, str1, str2);
  }
  
  public kb[] cW(int paramInt)
  {
    return new kb[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */