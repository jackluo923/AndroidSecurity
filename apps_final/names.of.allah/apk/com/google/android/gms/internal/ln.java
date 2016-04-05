package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.d;

public abstract interface ln
  extends IInterface
{
  public abstract void a(Bundle paramBundle, lq paramlq);
  
  public abstract void a(lh paramlh, Bundle paramBundle, lq paramlq);
  
  public abstract void a(FullWalletRequest paramFullWalletRequest, Bundle paramBundle, lq paramlq);
  
  public abstract void a(MaskedWalletRequest paramMaskedWalletRequest, Bundle paramBundle, lp paramlp);
  
  public abstract void a(MaskedWalletRequest paramMaskedWalletRequest, Bundle paramBundle, lq paramlq);
  
  public abstract void a(NotifyTransactionStatusRequest paramNotifyTransactionStatusRequest, Bundle paramBundle);
  
  public abstract void a(d paramd, Bundle paramBundle, lq paramlq);
  
  public abstract void a(String paramString1, String paramString2, Bundle paramBundle, lq paramlq);
  
  public abstract void o(Bundle paramBundle);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ln
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */