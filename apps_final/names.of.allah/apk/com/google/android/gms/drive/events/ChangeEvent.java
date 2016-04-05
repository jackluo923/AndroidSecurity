package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public final class ChangeEvent
  implements SafeParcelable, ResourceEvent
{
  public static final Parcelable.Creator<ChangeEvent> CREATOR = new a();
  final DriveId Hw;
  final int Id;
  final int xJ;
  
  ChangeEvent(int paramInt1, DriveId paramDriveId, int paramInt2)
  {
    xJ = paramInt1;
    Hw = paramDriveId;
    Id = paramInt2;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final DriveId getDriveId()
  {
    return Hw;
  }
  
  public final int getType()
  {
    return 1;
  }
  
  public final boolean hasContentChanged()
  {
    return (Id & 0x2) != 0;
  }
  
  public final boolean hasMetadataChanged()
  {
    return (Id & 0x1) != 0;
  }
  
  public final String toString()
  {
    return String.format("ChangeEvent [id=%s,changeFlags=%x]", new Object[] { Hw, Integer.valueOf(Id) });
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.events.ChangeEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */