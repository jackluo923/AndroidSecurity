package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class lh
  implements SafeParcelable
{
  public static final Parcelable.Creator<lh> CREATOR = new li();
  int[] aka;
  private final int xJ;
  
  lh()
  {
    this(1, null);
  }
  
  lh(int paramInt, int[] paramArrayOfInt)
  {
    xJ = paramInt;
    aka = paramArrayOfInt;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    li.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */