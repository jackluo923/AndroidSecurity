package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class a
  implements Parcelable.Creator<ComparisonFilter>
{
  static void a(ComparisonFilter paramComparisonFilter, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1000, xJ);
    b.a(paramParcel, 1, KI, paramInt, false);
    b.a(paramParcel, 2, KJ, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public ComparisonFilter aF(Parcel paramParcel)
  {
    int j = com.google.android.gms.common.internal.safeparcel.a.B(paramParcel);
    Operator localOperator = null;
    int i = 0;
    MetadataBundle localMetadataBundle = null;
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
        localOperator = (Operator)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, k, Operator.CREATOR);
        break;
      case 2: 
        localMetadataBundle = (MetadataBundle)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, k, MetadataBundle.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new ComparisonFilter(i, localOperator, localMetadataBundle);
  }
  
  public ComparisonFilter[] bB(int paramInt)
  {
    return new ComparisonFilter[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */