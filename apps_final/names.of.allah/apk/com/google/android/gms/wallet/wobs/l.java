package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class l
  implements SafeParcelable
{
  public static final Parcelable.Creator<l> CREATOR = new m();
  long akX;
  long akY;
  private final int xJ;
  
  l()
  {
    xJ = 1;
  }
  
  l(int paramInt, long paramLong1, long paramLong2)
  {
    xJ = paramInt;
    akX = paramLong1;
    akY = paramLong2;
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
    m.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */