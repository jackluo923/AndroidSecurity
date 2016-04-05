package com.adsdk.sdk.mraid;

class MraidViewableProperty
  extends MraidProperty
{
  private final boolean mViewable;
  
  MraidViewableProperty(boolean paramBoolean)
  {
    mViewable = paramBoolean;
  }
  
  public static MraidViewableProperty createWithViewable(boolean paramBoolean)
  {
    return new MraidViewableProperty(paramBoolean);
  }
  
  public String toJsonPair()
  {
    StringBuilder localStringBuilder = new StringBuilder("viewable: ");
    if (mViewable) {}
    for (String str = "true";; str = "false") {
      return str;
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidViewableProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */