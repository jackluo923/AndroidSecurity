package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class OnMetadataResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<OnMetadataResponse> CREATOR = new am();
  final MetadataBundle IA;
  final int xJ;
  
  OnMetadataResponse(int paramInt, MetadataBundle paramMetadataBundle)
  {
    xJ = paramInt;
    IA = paramMetadataBundle;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public MetadataBundle gw()
  {
    return IA;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    am.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.OnMetadataResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */