package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class p
  implements SafeParcelable
{
  public static final Parcelable.Creator<p> CREATOR = new q();
  String akW;
  l ala;
  n alb;
  n alc;
  String qb;
  private final int xJ;
  
  p()
  {
    xJ = 1;
  }
  
  p(int paramInt, String paramString1, String paramString2, l paraml, n paramn1, n paramn2)
  {
    xJ = paramInt;
    akW = paramString1;
    qb = paramString2;
    ala = paraml;
    alb = paramn1;
    alc = paramn2;
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
    q.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */