package com.google.android.gms.wallet.fragment;

import android.os.Bundle;
import com.google.android.gms.internal.lm.a;

class WalletFragment$a
  extends lm.a
{
  private WalletFragment.OnStateChangedListener aku;
  private final WalletFragment akv;
  
  WalletFragment$a(WalletFragment paramWalletFragment)
  {
    akv = paramWalletFragment;
  }
  
  public void a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    if (aku != null) {
      aku.onStateChanged(akv, paramInt1, paramInt2, paramBundle);
    }
  }
  
  public void a(WalletFragment.OnStateChangedListener paramOnStateChangedListener)
  {
    aku = paramOnStateChangedListener;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.WalletFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */