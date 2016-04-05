package com.inmobi.monetization;

public abstract interface IMNativeListener
{
  public abstract void onNativeRequestFailed(IMErrorCode paramIMErrorCode);
  
  public abstract void onNativeRequestSucceeded(IMNative paramIMNative);
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMNativeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */