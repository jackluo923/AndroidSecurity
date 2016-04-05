package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class n
  implements SafeParcelable
{
  public static final Parcelable.Creator<n> CREATOR = new o();
  String akZ;
  String description;
  private final int xJ;
  
  n()
  {
    xJ = 1;
  }
  
  n(int paramInt, String paramString1, String paramString2)
  {
    xJ = paramInt;
    akZ = paramString1;
    description = paramString2;
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
    o.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */