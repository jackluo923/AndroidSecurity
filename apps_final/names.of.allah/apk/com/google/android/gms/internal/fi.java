package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class fi
  implements Parcelable.Creator<fh>
{
  static void a(fh paramfh, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.a(paramParcel, 1, xK, paramInt, false);
    b.c(paramParcel, 1000, xJ);
    b.a(paramParcel, 2, xL, false);
    b.a(paramParcel, 3, xM);
    b.G(paramParcel, i);
  }
  
  public fh[] D(int paramInt)
  {
    return new fh[paramInt];
  }
  
  public fh l(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    String str = null;
    fl[] arrayOffl = null;
    int i = 0;
    boolean bool = false;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.A(paramParcel);
      switch (a.ar(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        arrayOffl = (fl[])a.b(paramParcel, k, fl.CREATOR);
        break;
      case 1000: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        str = a.o(paramParcel, k);
        break;
      case 3: 
        bool = a.c(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new fh(i, arrayOffl, str, bool);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */