package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;
import com.google.android.gms.internal.hn;

public final class MaskedWallet
  implements SafeParcelable
{
  public static final Parcelable.Creator<MaskedWallet> CREATOR = new k();
  String aiN;
  String aiO;
  String aiQ;
  Address aiR;
  Address aiS;
  String[] aiT;
  UserAddress aiU;
  UserAddress aiV;
  InstrumentInfo[] aiW;
  OfferWalletObject[] ajA;
  LoyaltyWalletObject[] ajz;
  private final int xJ;
  
  private MaskedWallet()
  {
    xJ = 2;
  }
  
  MaskedWallet(int paramInt, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, Address paramAddress1, Address paramAddress2, LoyaltyWalletObject[] paramArrayOfLoyaltyWalletObject, OfferWalletObject[] paramArrayOfOfferWalletObject, UserAddress paramUserAddress1, UserAddress paramUserAddress2, InstrumentInfo[] paramArrayOfInstrumentInfo)
  {
    xJ = paramInt;
    aiN = paramString1;
    aiO = paramString2;
    aiT = paramArrayOfString;
    aiQ = paramString3;
    aiR = paramAddress1;
    aiS = paramAddress2;
    ajz = paramArrayOfLoyaltyWalletObject;
    ajA = paramArrayOfOfferWalletObject;
    aiU = paramUserAddress1;
    aiV = paramUserAddress2;
    aiW = paramArrayOfInstrumentInfo;
  }
  
  public static MaskedWallet.Builder nb()
  {
    MaskedWallet localMaskedWallet = new MaskedWallet();
    localMaskedWallet.getClass();
    return new MaskedWallet.Builder(localMaskedWallet, null);
  }
  
  public static MaskedWallet.Builder newBuilderFrom(MaskedWallet paramMaskedWallet)
  {
    hn.f(paramMaskedWallet);
    return nb().setGoogleTransactionId(paramMaskedWallet.getGoogleTransactionId()).setMerchantTransactionId(paramMaskedWallet.getMerchantTransactionId()).setPaymentDescriptions(paramMaskedWallet.getPaymentDescriptions()).setInstrumentInfos(paramMaskedWallet.getInstrumentInfos()).setEmail(paramMaskedWallet.getEmail()).setLoyaltyWalletObjects(paramMaskedWallet.getLoyaltyWalletObjects()).setOfferWalletObjects(paramMaskedWallet.getOfferWalletObjects()).setBuyerBillingAddress(paramMaskedWallet.getBuyerBillingAddress()).setBuyerShippingAddress(paramMaskedWallet.getBuyerShippingAddress());
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
  
  public final LoyaltyWalletObject[] getLoyaltyWalletObjects()
  {
    return ajz;
  }
  
  public final String getMerchantTransactionId()
  {
    return aiO;
  }
  
  public final OfferWalletObject[] getOfferWalletObjects()
  {
    return ajA;
  }
  
  public final String[] getPaymentDescriptions()
  {
    return aiT;
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
    k.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.MaskedWallet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */