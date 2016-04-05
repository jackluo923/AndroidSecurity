package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import java.util.List;

public class SetResourceParentsRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<SetResourceParentsRequest> CREATOR = new av();
  final DriveId JC;
  final List<DriveId> JD;
  final int xJ;
  
  SetResourceParentsRequest(int paramInt, DriveId paramDriveId, List<DriveId> paramList)
  {
    xJ = paramInt;
    JC = paramDriveId;
    JD = paramList;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    av.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.SetResourceParentsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */