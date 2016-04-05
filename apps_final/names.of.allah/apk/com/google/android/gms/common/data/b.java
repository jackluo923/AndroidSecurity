package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;

public class b
  implements Parcelable.Creator<a>
{
  static void a(a parama, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.b.C(paramParcel);
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 1, xJ);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 2, Et, paramInt, false);
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 3, AQ);
    com.google.android.gms.common.internal.safeparcel.b.G(paramParcel, i);
  }
  
  public a[] ab(int paramInt)
  {
    return new a[paramInt];
  }
  
  public a w(Parcel paramParcel)
  {
    int k = com.google.android.gms.common.internal.safeparcel.a.B(paramParcel);
    ParcelFileDescriptor localParcelFileDescriptor = null;
    int i = 0;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = com.google.android.gms.common.internal.safeparcel.a.A(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.a.ar(m))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, m);
        break;
      case 1: 
        i = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, m);
        break;
      case 2: 
        localParcelFileDescriptor = (ParcelFileDescriptor)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, m, ParcelFileDescriptor.CREATOR);
        break;
      case 3: 
        j = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new a(i, localParcelFileDescriptor, j);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */