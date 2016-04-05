package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public class AuthorizeAccessRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<AuthorizeAccessRequest> CREATOR = new b();
  final DriveId Hw;
  final long Ip;
  final int xJ;
  
  AuthorizeAccessRequest(int paramInt, long paramLong, DriveId paramDriveId)
  {
    xJ = paramInt;
    Ip = paramLong;
    Hw = paramDriveId;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.AuthorizeAccessRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */