package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class TextDeletedDetails
  implements SafeParcelable
{
  public static final Parcelable.Creator<TextDeletedDetails> CREATOR = new e();
  final int LI;
  final int mIndex;
  final int xJ;
  
  TextDeletedDetails(int paramInt1, int paramInt2, int paramInt3)
  {
    xJ = paramInt1;
    mIndex = paramInt2;
    LI = paramInt3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.realtime.internal.event.TextDeletedDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */