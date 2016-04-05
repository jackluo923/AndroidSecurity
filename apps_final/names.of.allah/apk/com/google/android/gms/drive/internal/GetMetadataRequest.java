package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public class GetMetadataRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<GetMetadataRequest> CREATOR = new z();
  final DriveId Ir;
  final int xJ;
  
  GetMetadataRequest(int paramInt, DriveId paramDriveId)
  {
    xJ = paramInt;
    Ir = paramDriveId;
  }
  
  public GetMetadataRequest(DriveId paramDriveId)
  {
    this(1, paramDriveId);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    z.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.GetMetadataRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */