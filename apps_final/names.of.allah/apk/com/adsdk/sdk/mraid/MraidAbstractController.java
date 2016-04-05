package com.adsdk.sdk.mraid;

class MraidAbstractController
{
  private final MraidView mMraidView;
  
  MraidAbstractController(MraidView paramMraidView)
  {
    mMraidView = paramMraidView;
  }
  
  public MraidView getMraidView()
  {
    return mMraidView;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidAbstractController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */