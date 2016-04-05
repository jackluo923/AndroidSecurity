package com.google.android.gms.wallet;

import com.google.android.gms.identity.intents.model.UserAddress;

public final class MaskedWallet$Builder
{
  private MaskedWallet$Builder(MaskedWallet paramMaskedWallet) {}
  
  public final MaskedWallet build()
  {
    return ajB;
  }
  
  public final Builder setBillingAddress(Address paramAddress)
  {
    ajB.aiR = paramAddress;
    return this;
  }
  
  public final Builder setBuyerBillingAddress(UserAddress paramUserAddress)
  {
    ajB.aiU = paramUserAddress;
    return this;
  }
  
  public final Builder setBuyerShippingAddress(UserAddress paramUserAddress)
  {
    ajB.aiV = paramUserAddress;
    return this;
  }
  
  public final Builder setEmail(String paramString)
  {
    ajB.aiQ = paramString;
    return this;
  }
  
  public final Builder setGoogleTransactionId(String paramString)
  {
    ajB.aiN = paramString;
    return this;
  }
  
  public final Builder setInstrumentInfos(InstrumentInfo[] paramArrayOfInstrumentInfo)
  {
    ajB.aiW = paramArrayOfInstrumentInfo;
    return this;
  }
  
  public final Builder setLoyaltyWalletObjects(LoyaltyWalletObject[] paramArrayOfLoyaltyWalletObject)
  {
    ajB.ajz = paramArrayOfLoyaltyWalletObject;
    return this;
  }
  
  public final Builder setMerchantTransactionId(String paramString)
  {
    ajB.aiO = paramString;
    return this;
  }
  
  public final Builder setOfferWalletObjects(OfferWalletObject[] paramArrayOfOfferWalletObject)
  {
    ajB.ajA = paramArrayOfOfferWalletObject;
    return this;
  }
  
  public final Builder setPaymentDescriptions(String[] paramArrayOfString)
  {
    ajB.aiT = paramArrayOfString;
    return this;
  }
  
  public final Builder setShippingAddress(Address paramAddress)
  {
    ajB.aiS = paramAddress;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.MaskedWallet.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */