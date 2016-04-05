package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class e
  implements Parcelable.Creator<StorageStats>
{
  static void a(StorageStats paramStorageStats, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, HY);
    b.a(paramParcel, 3, HZ);
    b.a(paramParcel, 4, Ia);
    b.a(paramParcel, 5, Ib);
    b.c(paramParcel, 6, Ic);
    b.G(paramParcel, paramInt);
  }
  
  public StorageStats O(Parcel paramParcel)
  {
    int i = 0;
    long l1 = 0L;
    int k = a.B(paramParcel);
    long l2 = 0L;
    long l3 = 0L;
    long l4 = 0L;
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
        l4 = a.i(paramParcel, m);
        break;
      case 3: 
        l3 = a.i(paramParcel, m);
        break;
      case 4: 
        l2 = a.i(paramParcel, m);
        break;
      case 5: 
        l1 = a.i(paramParcel, m);
        break;
      case 6: 
        i = a.g(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new StorageStats(j, l4, l3, l2, l1, i);
  }
  
  public StorageStats[] aI(int paramInt)
  {
    return new StorageStats[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */