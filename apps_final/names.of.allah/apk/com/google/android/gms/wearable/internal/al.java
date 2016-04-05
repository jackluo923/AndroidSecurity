package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class al
  implements Parcelable.Creator<ak>
{
  static void a(ak paramak, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, packageName, false);
    b.a(paramParcel, 3, label, false);
    b.a(paramParcel, 4, alY);
    b.G(paramParcel, paramInt);
  }
  
  public ak cG(Parcel paramParcel)
  {
    String str1 = null;
    int j = a.B(paramParcel);
    int i = 0;
    long l = 0L;
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
        l = a.i(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new ak(i, str2, str1, l);
  }
  
  public ak[] ep(int paramInt)
  {
    return new ak[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */