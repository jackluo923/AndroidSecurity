package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class OnListEntriesResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<OnListEntriesResponse> CREATOR = new ak();
  final boolean IM;
  final DataHolder Jx;
  final int xJ;
  
  OnListEntriesResponse(int paramInt, DataHolder paramDataHolder, boolean paramBoolean)
  {
    xJ = paramInt;
    Jx = paramDataHolder;
    IM = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public DataHolder gt()
  {
    return Jx;
  }
  
  public boolean gu()
  {
    return IM;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ak.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.OnListEntriesResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */