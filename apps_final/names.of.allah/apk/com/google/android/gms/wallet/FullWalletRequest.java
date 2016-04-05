package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class FullWalletRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<FullWalletRequest> CREATOR = new g();
  String aiN;
  String aiO;
  Cart aiX;
  private final int xJ;
  
  FullWalletRequest()
  {
    xJ = 1;
  }
  
  FullWalletRequest(int paramInt, String paramString1, String paramString2, Cart paramCart)
  {
    xJ = paramInt;
    aiN = paramString1;
    aiO = paramString2;
    aiX = paramCart;
  }
  
  public static FullWalletRequest.Builder newBuilder()
  {
    FullWalletRequest localFullWalletRequest = new FullWalletRequest();
    localFullWalletRequest.getClass();
    return new FullWalletRequest.Builder(localFullWalletRequest, null);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final Cart getCart()
  {
    return aiX;
  }
  
  public final String getGoogleTransactionId()
  {
    return aiN;
  }
  
  public final String getMerchantTransactionId()
  {
    return aiO;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    g.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.FullWalletRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */