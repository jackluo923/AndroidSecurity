package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class ProxyCard
  implements SafeParcelable
{
  public static final Parcelable.Creator<ProxyCard> CREATOR = new o();
  String ajS;
  String ajT;
  int ajU;
  int ajV;
  private final int xJ;
  
  ProxyCard(int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3)
  {
    xJ = paramInt1;
    ajS = paramString1;
    ajT = paramString2;
    ajU = paramInt2;
    ajV = paramInt3;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String getCvn()
  {
    return ajT;
  }
  
  public final int getExpirationMonth()
  {
    return ajU;
  }
  
  public final int getExpirationYear()
  {
    return ajV;
  }
  
  public final String getPan()
  {
    return ajS;
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
 * Qualified Name:     com.google.android.gms.wallet.ProxyCard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */