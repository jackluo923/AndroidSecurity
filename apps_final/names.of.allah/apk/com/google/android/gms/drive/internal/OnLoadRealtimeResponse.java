package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class OnLoadRealtimeResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<OnLoadRealtimeResponse> CREATOR = new an();
  final boolean Jz;
  final int xJ;
  
  OnLoadRealtimeResponse(int paramInt, boolean paramBoolean)
  {
    xJ = paramInt;
    Jz = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    an.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.OnLoadRealtimeResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */