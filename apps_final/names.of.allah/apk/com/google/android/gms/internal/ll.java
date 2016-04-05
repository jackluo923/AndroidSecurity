package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.fragment.WalletFragmentInitParams;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

public abstract interface ll
  extends IInterface
{
  public abstract void a(d paramd, WalletFragmentOptions paramWalletFragmentOptions, Bundle paramBundle);
  
  public abstract int getState();
  
  public abstract void initialize(WalletFragmentInitParams paramWalletFragmentInitParams);
  
  public abstract void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent);
  
  public abstract void onCreate(Bundle paramBundle);
  
  public abstract d onCreateView(d paramd1, d paramd2, Bundle paramBundle);
  
  public abstract void onPause();
  
  public abstract void onResume();
  
  public abstract void onSaveInstanceState(Bundle paramBundle);
  
  public abstract void onStart();
  
  public abstract void onStop();
  
  public abstract void setEnabled(boolean paramBoolean);
  
  public abstract void updateMaskedWallet(MaskedWallet paramMaskedWallet);
  
  public abstract void updateMaskedWalletRequest(MaskedWalletRequest paramMaskedWalletRequest);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ll
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */