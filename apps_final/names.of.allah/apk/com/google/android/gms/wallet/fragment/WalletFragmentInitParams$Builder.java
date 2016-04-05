package com.google.android.gms.wallet.fragment;

import com.google.android.gms.internal.hn;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

public final class WalletFragmentInitParams$Builder
{
  private WalletFragmentInitParams$Builder(WalletFragmentInitParams paramWalletFragmentInitParams) {}
  
  public final WalletFragmentInitParams build()
  {
    boolean bool2 = true;
    if (((WalletFragmentInitParams.a(aky) != null) && (WalletFragmentInitParams.b(aky) == null)) || ((WalletFragmentInitParams.a(aky) == null) && (WalletFragmentInitParams.b(aky) != null)))
    {
      bool1 = true;
      hn.a(bool1, "Exactly one of MaskedWallet or MaskedWalletRequest is required");
      if (WalletFragmentInitParams.c(aky) < 0) {
        break label78;
      }
    }
    label78:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      hn.a(bool1, "masked wallet request code is required and must be non-negative");
      return aky;
      bool1 = false;
      break;
    }
  }
  
  public final Builder setAccountName(String paramString)
  {
    WalletFragmentInitParams.a(aky, paramString);
    return this;
  }
  
  public final Builder setMaskedWallet(MaskedWallet paramMaskedWallet)
  {
    WalletFragmentInitParams.a(aky, paramMaskedWallet);
    return this;
  }
  
  public final Builder setMaskedWalletRequest(MaskedWalletRequest paramMaskedWalletRequest)
  {
    WalletFragmentInitParams.a(aky, paramMaskedWalletRequest);
    return this;
  }
  
  public final Builder setMaskedWalletRequestCode(int paramInt)
  {
    WalletFragmentInitParams.a(aky, paramInt);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.WalletFragmentInitParams.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */