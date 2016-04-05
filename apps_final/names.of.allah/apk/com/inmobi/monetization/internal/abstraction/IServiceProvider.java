package com.inmobi.monetization.internal.abstraction;

import com.inmobi.monetization.internal.GetLtvpRulesRequest;
import com.inmobi.monetization.internal.NativeAdRequest;

public abstract interface IServiceProvider
{
  public abstract void getLtvpRule(GetLtvpRulesRequest paramGetLtvpRulesRequest, IGetLtvpRuleRequestListener paramIGetLtvpRuleRequestListener);
  
  public abstract void getNativeAd(NativeAdRequest paramNativeAdRequest, INativeAdController paramINativeAdController);
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.abstraction.IServiceProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */