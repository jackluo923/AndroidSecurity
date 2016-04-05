package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.Payments;

public class lr
  implements Payments
{
  public void changeMaskedWallet(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2, int paramInt)
  {
    paramGoogleApiClient.a(new lr.4(this, paramString1, paramString2, paramInt));
  }
  
  public void checkForPreAuthorization(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    paramGoogleApiClient.a(new lr.1(this, paramInt));
  }
  
  public void loadFullWallet(GoogleApiClient paramGoogleApiClient, FullWalletRequest paramFullWalletRequest, int paramInt)
  {
    paramGoogleApiClient.a(new lr.3(this, paramFullWalletRequest, paramInt));
  }
  
  public void loadMaskedWallet(GoogleApiClient paramGoogleApiClient, MaskedWalletRequest paramMaskedWalletRequest, int paramInt)
  {
    paramGoogleApiClient.a(new lr.2(this, paramMaskedWalletRequest, paramInt));
  }
  
  public void notifyTransactionStatus(GoogleApiClient paramGoogleApiClient, NotifyTransactionStatusRequest paramNotifyTransactionStatusRequest)
  {
    paramGoogleApiClient.a(new lr.5(this, paramNotifyTransactionStatusRequest));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */