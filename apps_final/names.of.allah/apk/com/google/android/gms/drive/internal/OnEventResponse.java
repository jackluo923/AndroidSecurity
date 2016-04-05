package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.FileConflictEvent;

public class OnEventResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<OnEventResponse> CREATOR = new aj();
  final int In;
  final ChangeEvent Jv;
  final FileConflictEvent Jw;
  final int xJ;
  
  OnEventResponse(int paramInt1, int paramInt2, ChangeEvent paramChangeEvent, FileConflictEvent paramFileConflictEvent)
  {
    xJ = paramInt1;
    In = paramInt2;
    Jv = paramChangeEvent;
    Jw = paramFileConflictEvent;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getEventType()
  {
    return In;
  }
  
  public ChangeEvent gr()
  {
    return Jv;
  }
  
  public FileConflictEvent gs()
  {
    return Jw;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    aj.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.OnEventResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */