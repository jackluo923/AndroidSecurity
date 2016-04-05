package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;

public final class MaskedWalletRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<MaskedWalletRequest> CREATOR = new l();
  String aiI;
  String aiO;
  Cart aiX;
  boolean ajC;
  boolean ajD;
  boolean ajE;
  String ajF;
  String ajG;
  boolean ajH;
  boolean ajI;
  CountrySpecification[] ajJ;
  boolean ajK;
  boolean ajL;
  ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> ajM;
  private final int xJ;
  
  MaskedWalletRequest()
  {
    xJ = 3;
    ajK = true;
    ajL = true;
  }
  
  MaskedWalletRequest(int paramInt, String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString2, String paramString3, String paramString4, Cart paramCart, boolean paramBoolean4, boolean paramBoolean5, CountrySpecification[] paramArrayOfCountrySpecification, boolean paramBoolean6, boolean paramBoolean7, ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> paramArrayList)
  {
    xJ = paramInt;
    aiO = paramString1;
    ajC = paramBoolean1;
    ajD = paramBoolean2;
    ajE = paramBoolean3;
    ajF = paramString2;
    aiI = paramString3;
    ajG = paramString4;
    aiX = paramCart;
    ajH = paramBoolean4;
    ajI = paramBoolean5;
    ajJ = paramArrayOfCountrySpecification;
    ajK = paramBoolean6;
    ajL = paramBoolean7;
    ajM = paramArrayList;
  }
  
  public static MaskedWalletRequest.Builder newBuilder()
  {
    MaskedWalletRequest localMaskedWalletRequest = new MaskedWalletRequest();
    localMaskedWalletRequest.getClass();
    return new MaskedWalletRequest.Builder(localMaskedWalletRequest, null);
  }
  
  public final boolean allowDebitCard()
  {
    return ajL;
  }
  
  public final boolean allowPrepaidCard()
  {
    return ajK;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> getAllowedCountrySpecificationsForShipping()
  {
    return ajM;
  }
  
  public final CountrySpecification[] getAllowedShippingCountrySpecifications()
  {
    return ajJ;
  }
  
  public final Cart getCart()
  {
    return aiX;
  }
  
  public final String getCurrencyCode()
  {
    return aiI;
  }
  
  public final String getEstimatedTotalPrice()
  {
    return ajF;
  }
  
  public final String getMerchantName()
  {
    return ajG;
  }
  
  public final String getMerchantTransactionId()
  {
    return aiO;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean isBillingAgreement()
  {
    return ajI;
  }
  
  public final boolean isPhoneNumberRequired()
  {
    return ajC;
  }
  
  public final boolean isShippingAddressRequired()
  {
    return ajD;
  }
  
  public final boolean shouldRetrieveWalletObjects()
  {
    return ajH;
  }
  
  public final boolean useMinimalBillingAddress()
  {
    return ajE;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    l.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.MaskedWalletRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */