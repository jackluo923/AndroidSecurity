package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.CommonWalletObject;
import com.google.android.gms.wallet.wobs.CommonWalletObject.a;

public final class OfferWalletObject
  implements SafeParcelable
{
  public static final Parcelable.Creator<OfferWalletObject> CREATOR = new n();
  String ajQ;
  CommonWalletObject ajR;
  String eC;
  private final int xJ;
  
  OfferWalletObject()
  {
    xJ = 3;
  }
  
  OfferWalletObject(int paramInt, String paramString1, String paramString2, CommonWalletObject paramCommonWalletObject)
  {
    xJ = paramInt;
    ajQ = paramString2;
    if (paramInt < 3)
    {
      ajR = CommonWalletObject.nf().cw(paramString1).ng();
      return;
    }
    ajR = paramCommonWalletObject;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String getId()
  {
    return ajR.getId();
  }
  
  public final String getRedemptionCode()
  {
    return ajQ;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    n.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.OfferWalletObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */