package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class d
  implements SafeParcelable
{
  public static final Parcelable.Creator<d> CREATOR = new e();
  LoyaltyWalletObject aiL;
  OfferWalletObject aiM;
  private final int xJ;
  
  d()
  {
    xJ = 2;
  }
  
  d(int paramInt, LoyaltyWalletObject paramLoyaltyWalletObject, OfferWalletObject paramOfferWalletObject)
  {
    xJ = paramInt;
    aiL = paramLoyaltyWalletObject;
    aiM = paramOfferWalletObject;
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
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */