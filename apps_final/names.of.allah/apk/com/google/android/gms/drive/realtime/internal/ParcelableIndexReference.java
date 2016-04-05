package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ParcelableIndexReference
  implements SafeParcelable
{
  public static final Parcelable.Creator<ParcelableIndexReference> CREATOR = new q();
  final String Ln;
  final boolean Lo;
  final int mIndex;
  final int xJ;
  
  ParcelableIndexReference(int paramInt1, String paramString, int paramInt2, boolean paramBoolean)
  {
    xJ = paramInt1;
    Ln = paramString;
    mIndex = paramInt2;
    Lo = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    q.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.realtime.internal.ParcelableIndexReference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */