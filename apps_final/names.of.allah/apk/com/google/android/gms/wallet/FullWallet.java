package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;

public final class FullWallet
  implements SafeParcelable
{
  public static final Parcelable.Creator<FullWallet> CREATOR = new f();
  String aiN;
  String aiO;
  ProxyCard aiP;
  String aiQ;
  Address aiR;
  Address aiS;
  String[] aiT;
  UserAddress aiU;
  UserAddress aiV;
  InstrumentInfo[] aiW;
  private final int xJ;
  
  private FullWallet()
  {
    xJ = 1;
  }
  
  FullWallet(int paramInt, String paramString1, String paramString2, ProxyCard paramProxyCard, String paramString3, Address paramAddress1, Address paramAddress2, String[] paramArrayOfString, UserAddress paramUserAddress1, UserAddress paramUserAddress2, InstrumentInfo[] paramArrayOfInstrumentInfo)
  {
    xJ = paramInt;
    aiN = paramString1;
    aiO = paramString2;
    aiP = paramProxyCard;
    aiQ = paramString3;
    aiR = paramAddress1;
    aiS = paramAddress2;
    aiT = paramArrayOfString;
    aiU = paramUserAddress1;
    aiV = paramUserAddress2;
    aiW = paramArrayOfInstrumentInfo;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  @Deprecated
  public final Address getBillingAddress()
  {
    return aiR;
  }
  
  public final UserAddress getBuyerBillingAddress()
  {
    return aiU;
  }
  
  public final UserAddress getBuyerShippingAddress()
  {
    return aiV;
  }
  
  public final String getEmail()
  {
    return aiQ;
  }
  
  public final String getGoogleTransactionId()
  {
    return aiN;
  }
  
  public final InstrumentInfo[] getInstrumentInfos()
  {
    return aiW;
  }
  
  public final String getMerchantTransactionId()
  {
    return aiO;
  }
  
  public final String[] getPaymentDescriptions()
  {
    return aiT;
  }
  
  public final ProxyCard getProxyCard()
  {
    return aiP;
  }
  
  @Deprecated
  public final Address getShippingAddress()
  {
    return aiS;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.FullWallet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */