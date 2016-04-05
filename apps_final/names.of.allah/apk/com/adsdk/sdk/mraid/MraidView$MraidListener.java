package com.adsdk.sdk.mraid;

public abstract interface MraidView$MraidListener
{
  public abstract void onClose(MraidView paramMraidView, MraidView.ViewState paramViewState);
  
  public abstract void onExpand(MraidView paramMraidView);
  
  public abstract void onFailure(MraidView paramMraidView);
  
  public abstract void onReady(MraidView paramMraidView);
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidView.MraidListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */