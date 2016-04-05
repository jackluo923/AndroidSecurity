package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ak
  implements Parcelable.Creator<OnListEntriesResponse>
{
  static void a(OnListEntriesResponse paramOnListEntriesResponse, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, Jx, paramInt, false);
    b.a(paramParcel, 3, IM);
    b.G(paramParcel, i);
  }
  
  public OnListEntriesResponse al(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    DataHolder localDataHolder = null;
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
        i = a.g(paramParcel, k);
        break;
      case 2: 
        localDataHolder = (DataHolder)a.a(paramParcel, k, DataHolder.CREATOR);
        break;
      case 3: 
        bool = a.c(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new OnListEntriesResponse(i, localDataHolder, bool);
  }
  
  public OnListEntriesResponse[] bh(int paramInt)
  {
    return new OnListEntriesResponse[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */