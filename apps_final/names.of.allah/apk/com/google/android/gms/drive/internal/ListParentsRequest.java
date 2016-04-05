package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public class ListParentsRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<ListParentsRequest> CREATOR = new ad();
  final DriveId Jo;
  final int xJ;
  
  ListParentsRequest(int paramInt, DriveId paramDriveId)
  {
    xJ = paramInt;
    Jo = paramDriveId;
  }
  
  public ListParentsRequest(DriveId paramDriveId)
  {
    this(1, paramDriveId);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ad.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.ListParentsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */