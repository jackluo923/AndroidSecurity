package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ValuesSetDetails
  implements SafeParcelable
{
  public static final Parcelable.Creator<ValuesSetDetails> CREATOR = new j();
  final int LC;
  final int LD;
  final int mIndex;
  final int xJ;
  
  ValuesSetDetails(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    xJ = paramInt1;
    mIndex = paramInt2;
    LC = paramInt3;
    LD = paramInt4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.realtime.internal.event.ValuesSetDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */