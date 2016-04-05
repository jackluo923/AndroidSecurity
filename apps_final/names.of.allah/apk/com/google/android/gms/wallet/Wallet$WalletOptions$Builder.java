package com.google.android.gms.wallet;

import java.util.Locale;

public final class Wallet$WalletOptions$Builder
{
  private int ajY = 0;
  private int mTheme = 0;
  
  public final Wallet.WalletOptions build()
  {
    return new Wallet.WalletOptions(this, null);
  }
  
  public final Builder setEnvironment(int paramInt)
  {
    if ((paramInt == 0) || (paramInt == 2) || (paramInt == 1))
    {
      ajY = paramInt;
      return this;
    }
    throw new IllegalArgumentException(String.format(Locale.US, "Invalid environment value %d", new Object[] { Integer.valueOf(paramInt) }));
  }
  
  public final Builder setTheme(int paramInt)
  {
    if ((paramInt == 0) || (paramInt == 1))
    {
      mTheme = paramInt;
      return this;
    }
    throw new IllegalArgumentException(String.format(Locale.US, "Invalid theme value %d", new Object[] { Integer.valueOf(paramInt) }));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.Wallet.WalletOptions.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */