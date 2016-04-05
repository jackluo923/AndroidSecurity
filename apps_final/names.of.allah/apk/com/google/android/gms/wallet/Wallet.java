package com.google.android.gms.wallet;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.lg;
import com.google.android.gms.internal.lr;
import com.google.android.gms.internal.ls;
import com.google.android.gms.internal.lu;
import com.google.android.gms.internal.lv;
import com.google.android.gms.wallet.wobs.r;

public final class Wallet
{
  public static final Api<Wallet.WalletOptions> API = new Api(yF, yE, new Scope[0]);
  public static final Payments Payments = new lr();
  public static final r ajW = new lv();
  public static final lg ajX = new lu();
  private static final Api.c<ls> yE = new Api.c();
  private static final Api.b<ls, Wallet.WalletOptions> yF = new Wallet.1();
  
  @Deprecated
  public static void changeMaskedWallet(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2, int paramInt)
  {
    Payments.changeMaskedWallet(paramGoogleApiClient, paramString1, paramString2, paramInt);
  }
  
  @Deprecated
  public static void checkForPreAuthorization(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    Payments.checkForPreAuthorization(paramGoogleApiClient, paramInt);
  }
  
  @Deprecated
  public static void loadFullWallet(GoogleApiClient paramGoogleApiClient, FullWalletRequest paramFullWalletRequest, int paramInt)
  {
    Payments.loadFullWallet(paramGoogleApiClient, paramFullWalletRequest, paramInt);
  }
  
  @Deprecated
  public static void loadMaskedWallet(GoogleApiClient paramGoogleApiClient, MaskedWalletRequest paramMaskedWalletRequest, int paramInt)
  {
    Payments.loadMaskedWallet(paramGoogleApiClient, paramMaskedWalletRequest, paramInt);
  }
  
  @Deprecated
  public static void notifyTransactionStatus(GoogleApiClient paramGoogleApiClient, NotifyTransactionStatusRequest paramNotifyTransactionStatusRequest)
  {
    Payments.notifyTransactionStatus(paramGoogleApiClient, paramNotifyTransactionStatusRequest);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.Wallet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */