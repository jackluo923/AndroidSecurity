package com.google.android.gms.wallet;

import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;

public final class MaskedWalletRequest$Builder
{
  private MaskedWalletRequest$Builder(MaskedWalletRequest paramMaskedWalletRequest) {}
  
  public final Builder addAllowedCountrySpecificationForShipping(CountrySpecification paramCountrySpecification)
  {
    if (ajN.ajM == null) {
      ajN.ajM = new ArrayList();
    }
    ajN.ajM.add(paramCountrySpecification);
    return this;
  }
  
  public final Builder addAllowedCountrySpecificationsForShipping(Collection<CountrySpecification> paramCollection)
  {
    if (paramCollection != null)
    {
      if (ajN.ajM == null) {
        ajN.ajM = new ArrayList();
      }
      ajN.ajM.addAll(paramCollection);
    }
    return this;
  }
  
  public final MaskedWalletRequest build()
  {
    return ajN;
  }
  
  public final Builder setAllowDebitCard(boolean paramBoolean)
  {
    ajN.ajL = paramBoolean;
    return this;
  }
  
  public final Builder setAllowPrepaidCard(boolean paramBoolean)
  {
    ajN.ajK = paramBoolean;
    return this;
  }
  
  public final Builder setCart(Cart paramCart)
  {
    ajN.aiX = paramCart;
    return this;
  }
  
  public final Builder setCurrencyCode(String paramString)
  {
    ajN.aiI = paramString;
    return this;
  }
  
  public final Builder setEstimatedTotalPrice(String paramString)
  {
    ajN.ajF = paramString;
    return this;
  }
  
  public final Builder setIsBillingAgreement(boolean paramBoolean)
  {
    ajN.ajI = paramBoolean;
    return this;
  }
  
  public final Builder setMerchantName(String paramString)
  {
    ajN.ajG = paramString;
    return this;
  }
  
  public final Builder setMerchantTransactionId(String paramString)
  {
    ajN.aiO = paramString;
    return this;
  }
  
  public final Builder setPhoneNumberRequired(boolean paramBoolean)
  {
    ajN.ajC = paramBoolean;
    return this;
  }
  
  public final Builder setShippingAddressRequired(boolean paramBoolean)
  {
    ajN.ajD = paramBoolean;
    return this;
  }
  
  public final Builder setShouldRetrieveWalletObjects(boolean paramBoolean)
  {
    ajN.ajH = paramBoolean;
    return this;
  }
  
  public final Builder setUseMinimalBillingAddress(boolean paramBoolean)
  {
    ajN.ajE = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.MaskedWalletRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */