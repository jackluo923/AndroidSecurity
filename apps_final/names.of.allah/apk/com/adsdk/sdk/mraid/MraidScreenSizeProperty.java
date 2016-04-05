package com.adsdk.sdk.mraid;

class MraidScreenSizeProperty
  extends MraidProperty
{
  private final int mScreenHeight;
  private final int mScreenWidth;
  
  MraidScreenSizeProperty(int paramInt1, int paramInt2)
  {
    mScreenWidth = paramInt1;
    mScreenHeight = paramInt2;
  }
  
  public static MraidScreenSizeProperty createWithSize(int paramInt1, int paramInt2)
  {
    return new MraidScreenSizeProperty(paramInt1, paramInt2);
  }
  
  public String toJsonPair()
  {
    return "screenSize: { width: " + mScreenWidth + ", height: " + mScreenHeight + " }";
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidScreenSizeProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */