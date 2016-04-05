package com.google.android.gms.drive.events;

import com.google.android.gms.drive.DriveId;

public class b
{
  public static boolean a(int paramInt, DriveId paramDriveId)
  {
    return (paramDriveId != null) || (aK(paramInt));
  }
  
  public static boolean aK(int paramInt)
  {
    return (0x6 & 1 << paramInt) != 0L;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.events.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */