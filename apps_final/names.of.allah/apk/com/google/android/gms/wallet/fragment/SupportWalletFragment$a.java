package com.google.android.gms.wallet.fragment;

import android.os.Bundle;
import com.google.android.gms.internal.lm.a;

class SupportWalletFragment$a
  extends lm.a
{
  private SupportWalletFragment.OnStateChangedListener akm;
  private final SupportWalletFragment akn;
  
  SupportWalletFragment$a(SupportWalletFragment paramSupportWalletFragment)
  {
    akn = paramSupportWalletFragment;
  }
  
  public void a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    if (akm != null) {
      akm.onStateChanged(akn, paramInt1, paramInt2, paramBundle);
    }
  }
  
  public void a(SupportWalletFragment.OnStateChangedListener paramOnStateChangedListener)
  {
    akm = paramOnStateChangedListener;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.SupportWalletFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */