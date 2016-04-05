package com.inmobi.monetization.internal.abstraction;

import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.IMNative;

public abstract interface INativeAdListener
{
  public abstract void onNativeRequestFailed(IMErrorCode paramIMErrorCode);
  
  public abstract void onNativeRequestSucceeded(IMNative paramIMNative);
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.abstraction.INativeAdListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */