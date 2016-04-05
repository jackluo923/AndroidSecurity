package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;

public class at
  implements Parcelable.Creator<as>
{
  static void a(as paramas, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.c(paramParcel, 2, statusCode);
    b.a(paramParcel, 3, alY);
    b.b(paramParcel, 4, ama, false);
    b.G(paramParcel, paramInt);
  }
  
  public as cK(Parcel paramParcel)
  {
    int i = 0;
    int k = a.B(paramParcel);
    long l = 0L;
    ArrayList localArrayList = null;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.A(paramParcel);
      switch (a.ar(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        j = a.g(paramParcel, m);
        break;
      case 2: 
        i = a.g(paramParcel, m);
        break;
      case 3: 
        l = a.i(paramParcel, m);
        break;
      case 4: 
        localArrayList = a.c(paramParcel, m, ak.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new as(j, i, l, localArrayList);
  }
  
  public as[] et(int paramInt)
  {
    return new as[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */