package com.google.android.gms.drive.events;

import android.content.Intent;
import android.os.Binder;
import android.os.Parcel;
import android.util.Log;
import java.util.concurrent.LinkedBlockingDeque;

class DriveEventService$1
  extends Binder
{
  DriveEventService$1(DriveEventService paramDriveEventService) {}
  
  protected boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    Log.d("DriveEventService", "onTransact");
    paramParcel1 = (DriveEvent)paramParcel1.readParcelable(If.getClassLoader());
    DriveEventService.gi().add(paramParcel1);
    If.startService(new Intent(If, If.getClass()));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.events.DriveEventService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */