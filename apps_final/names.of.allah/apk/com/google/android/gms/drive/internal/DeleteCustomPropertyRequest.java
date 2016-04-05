package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.CustomPropertyKey;

public class DeleteCustomPropertyRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<DeleteCustomPropertyRequest> CREATOR = new m();
  final DriveId Hw;
  final CustomPropertyKey IG;
  final int xJ;
  
  DeleteCustomPropertyRequest(int paramInt, DriveId paramDriveId, CustomPropertyKey paramCustomPropertyKey)
  {
    xJ = paramInt;
    Hw = paramDriveId;
    IG = paramCustomPropertyKey;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    m.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.DeleteCustomPropertyRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */