package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.query.internal.LogicalFilter;

public class a
  implements Parcelable.Creator<Query>
{
  static void a(Query paramQuery, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1000, xJ);
    b.a(paramParcel, 1, KB, paramInt, false);
    b.a(paramParcel, 3, KC, false);
    b.a(paramParcel, 4, KD, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public Query aD(Parcel paramParcel)
  {
    int j = com.google.android.gms.common.internal.safeparcel.a.B(paramParcel);
    String str = null;
    LogicalFilter localLogicalFilter = null;
    int i = 0;
    SortOrder localSortOrder = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = com.google.android.gms.common.internal.safeparcel.a.A(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.a.ar(k))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, k);
        break;
      case 1000: 
        i = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, k);
        break;
      case 1: 
        localLogicalFilter = (LogicalFilter)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, k, LogicalFilter.CREATOR);
        break;
      case 3: 
        str = com.google.android.gms.common.internal.safeparcel.a.o(paramParcel, k);
        break;
      case 4: 
        localSortOrder = (SortOrder)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, k, SortOrder.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new Query(i, localLogicalFilter, str, localSortOrder);
  }
  
  public Query[] bz(int paramInt)
  {
    return new Query[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */