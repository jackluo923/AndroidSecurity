package com.google.android.gms.wallet;

import com.google.android.gms.common.api.Api.ApiOptions.HasOptions;

public final class Wallet$WalletOptions
  implements Api.ApiOptions.HasOptions
{
  public final int environment;
  public final int theme;
  
  private Wallet$WalletOptions()
  {
    this(new Wallet.WalletOptions.Builder());
  }
  
  private Wallet$WalletOptions(Wallet.WalletOptions.Builder paramBuilder)
  {
    environment = Wallet.WalletOptions.Builder.a(paramBuilder);
    theme = Wallet.WalletOptions.Builder.b(paramBuilder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.Wallet.WalletOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */