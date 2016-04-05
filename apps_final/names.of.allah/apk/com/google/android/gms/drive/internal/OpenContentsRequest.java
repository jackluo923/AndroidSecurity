package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public class OpenContentsRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<OpenContentsRequest> CREATOR = new ar();
  final int Hv;
  final DriveId Ir;
  final int xJ;
  
  OpenContentsRequest(int paramInt1, DriveId paramDriveId, int paramInt2)
  {
    xJ = paramInt1;
    Ir = paramDriveId;
    Hv = paramInt2;
  }
  
  public OpenContentsRequest(DriveId paramDriveId, int paramInt)
  {
    this(1, paramDriveId, paramInt);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ar.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.OpenContentsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */