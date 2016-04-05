package com.inmobi.monetization.internal.abstraction;

import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.internal.NativeAdRequest;
import com.inmobi.monetization.internal.NativeAdResponse;

public abstract interface INativeAdController
{
  public abstract void onAdRequestFailed(NativeAdRequest paramNativeAdRequest, IMErrorCode paramIMErrorCode);
  
  public abstract void onAdRequestSucceded(NativeAdRequest paramNativeAdRequest, NativeAdResponse paramNativeAdResponse);
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.abstraction.INativeAdController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */