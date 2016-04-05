package com.google.android.gms.drive.events;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

public abstract interface DriveEvent
  extends SafeParcelable
{
  public static final int TYPE_CHANGE = 1;
  
  public abstract DriveId getDriveId();
  
  public abstract int getType();
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.events.DriveEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */