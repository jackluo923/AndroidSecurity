package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public class OnDriveIdResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<OnDriveIdResponse> CREATOR = new ai();
  DriveId Ir;
  final int xJ;
  
  OnDriveIdResponse(int paramInt, DriveId paramDriveId)
  {
    xJ = paramInt;
    Ir = paramDriveId;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public DriveId getDriveId()
  {
    return Ir;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ai.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.OnDriveIdResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */