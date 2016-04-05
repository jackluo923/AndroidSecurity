package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.Filter;

public class HasFilter<T>
  implements SafeParcelable, Filter
{
  public static final f CREATOR = new f();
  final MetadataBundle KJ;
  final MetadataField<T> KK;
  final int xJ;
  
  HasFilter(int paramInt, MetadataBundle paramMetadataBundle)
  {
    xJ = paramInt;
    KJ = paramMetadataBundle;
    KK = e.b(paramMetadataBundle);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.internal.HasFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */