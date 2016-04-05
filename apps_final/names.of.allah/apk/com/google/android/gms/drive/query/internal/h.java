package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;

public class h
  implements Parcelable.Creator<LogicalFilter>
{
  static void a(LogicalFilter paramLogicalFilter, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1000, xJ);
    b.a(paramParcel, 1, KI, paramInt, false);
    b.b(paramParcel, 2, KV, false);
    b.G(paramParcel, i);
  }
  
  public LogicalFilter aL(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    Operator localOperator = null;
    int i = 0;
    ArrayList localArrayList = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.A(paramParcel);
      switch (a.ar(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1000: 
        i = a.g(paramParcel, k);
        break;
      case 1: 
        localOperator = (Operator)a.a(paramParcel, k, Operator.CREATOR);
        break;
      case 2: 
        localArrayList = a.c(paramParcel, k, FilterHolder.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new LogicalFilter(i, localOperator, localArrayList);
  }
  
  public LogicalFilter[] bH(int paramInt)
  {
    return new LogicalFilter[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.internal.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */