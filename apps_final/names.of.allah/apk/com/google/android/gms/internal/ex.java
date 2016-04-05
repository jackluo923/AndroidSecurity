package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ex
  implements Parcelable.Creator<ew>
{
  static void a(ew paramew, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, st, false);
    b.c(paramParcel, 3, su);
    b.c(paramParcel, 4, sv);
    b.a(paramParcel, 5, sw);
    b.G(paramParcel, paramInt);
  }
  
  public ew j(Parcel paramParcel)
  {
    boolean bool = false;
    int m = a.B(paramParcel);
    String str = null;
    int i = 0;
    int j = 0;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.A(paramParcel);
      switch (a.ar(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        k = a.g(paramParcel, n);
        break;
      case 2: 
        str = a.o(paramParcel, n);
        break;
      case 3: 
        j = a.g(paramParcel, n);
        break;
      case 4: 
        i = a.g(paramParcel, n);
        break;
      case 5: 
        bool = a.c(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new ew(k, str, j, i, bool);
  }
  
  public ew[] q(int paramInt)
  {
    return new ew[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */