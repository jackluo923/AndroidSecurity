package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class j
  implements SafeParcelable
{
  public static final Parcelable.Creator<j> CREATOR = new k();
  String akW;
  String qb;
  private final int xJ;
  
  j()
  {
    xJ = 1;
  }
  
  j(int paramInt, String paramString1, String paramString2)
  {
    xJ = paramInt;
    akW = paramString1;
    qb = paramString2;
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
    k.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */