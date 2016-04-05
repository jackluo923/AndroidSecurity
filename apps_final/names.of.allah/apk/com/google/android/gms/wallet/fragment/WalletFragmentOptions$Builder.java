package com.google.android.gms.wallet.fragment;

public final class WalletFragmentOptions$Builder
{
  private WalletFragmentOptions$Builder(WalletFragmentOptions paramWalletFragmentOptions) {}
  
  public final WalletFragmentOptions build()
  {
    return akA;
  }
  
  public final Builder setEnvironment(int paramInt)
  {
    WalletFragmentOptions.a(akA, paramInt);
    return this;
  }
  
  public final Builder setFragmentStyle(int paramInt)
  {
    WalletFragmentOptions.a(akA, new WalletFragmentStyle().setStyleResourceId(paramInt));
    return this;
  }
  
  public final Builder setFragmentStyle(WalletFragmentStyle paramWalletFragmentStyle)
  {
    WalletFragmentOptions.a(akA, paramWalletFragmentStyle);
    return this;
  }
  
  public final Builder setMode(int paramInt)
  {
    WalletFragmentOptions.c(akA, paramInt);
    return this;
  }
  
  public final Builder setTheme(int paramInt)
  {
    WalletFragmentOptions.b(akA, paramInt);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.WalletFragmentOptions.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */