package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class OnSyncMoreResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<OnSyncMoreResponse> CREATOR = new aq();
  final boolean IM;
  final int xJ;
  
  OnSyncMoreResponse(int paramInt, boolean paramBoolean)
  {
    xJ = paramInt;
    IM = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    aq.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.OnSyncMoreResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */