package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class b
  implements Parcelable.Creator<FieldOnlyFilter>
{
  static void a(FieldOnlyFilter paramFieldOnlyFilter, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.b.C(paramParcel);
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 1000, xJ);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 1, KJ, paramInt, false);
    com.google.android.gms.common.internal.safeparcel.b.G(paramParcel, i);
  }
  
  public FieldOnlyFilter aG(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    int i = 0;
    MetadataBundle localMetadataBundle = null;
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
        localMetadataBundle = (MetadataBundle)a.a(paramParcel, k, MetadataBundle.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new FieldOnlyFilter(i, localMetadataBundle);
  }
  
  public FieldOnlyFilter[] bC(int paramInt)
  {
    return new FieldOnlyFilter[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */