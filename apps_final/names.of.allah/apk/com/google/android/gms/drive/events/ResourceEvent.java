package com.google.android.gms.drive.events;

import com.google.android.gms.drive.DriveId;

public abstract interface ResourceEvent
  extends DriveEvent
{
  public abstract DriveId getDriveId();
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.events.ResourceEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */