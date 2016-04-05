package com.millennialmedia.android;

import android.content.Context;

class MMInterstitial$MMInterstitialAdImpl
  extends MMAdImpl
{
  public MMInterstitial$MMInterstitialAdImpl(MMInterstitial paramMMInterstitial, Context paramContext)
  {
    super(paramContext);
    adProperties = new AdProperties(getContext());
  }
  
  MMInterstitial getCallingAd()
  {
    return this$0;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMInterstitial.MMInterstitialAdImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */