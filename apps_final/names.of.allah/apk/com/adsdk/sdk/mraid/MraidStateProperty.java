package com.adsdk.sdk.mraid;

class MraidStateProperty
  extends MraidProperty
{
  private final MraidView.ViewState mViewState;
  
  MraidStateProperty(MraidView.ViewState paramViewState)
  {
    mViewState = paramViewState;
  }
  
  public static MraidStateProperty createWithViewState(MraidView.ViewState paramViewState)
  {
    return new MraidStateProperty(paramViewState);
  }
  
  public String toJsonPair()
  {
    return "state: '" + mViewState.toString().toLowerCase() + "'";
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidStateProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */