package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class lj
  implements SafeParcelable
{
  public static final Parcelable.Creator<lj> CREATOR = new lk();
  String[] akb;
  byte[][] akc;
  private final int xJ;
  
  lj()
  {
    this(1, new String[0], new byte[0][]);
  }
  
  lj(int paramInt, String[] paramArrayOfString, byte[][] paramArrayOfByte)
  {
    xJ = paramInt;
    akb = paramArrayOfString;
    akc = paramArrayOfByte;
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
    lk.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */