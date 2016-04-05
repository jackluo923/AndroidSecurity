package com.adsdk.sdk.nativeads;

public class BaseAdapterUtil
{
  private int adPositionInterval;
  private int firstAdPosition;
  
  public BaseAdapterUtil(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("First ad position cannot be negative!");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("Number of rows of original content between ads cannot be lower than 1.");
    }
    firstAdPosition = paramInt1;
    adPositionInterval = (paramInt2 + 1);
  }
  
  private int adsAlreadyShown(int paramInt)
  {
    if (paramInt <= firstAdPosition) {
      return 0;
    }
    return (int)Math.floor((paramInt - firstAdPosition) / adPositionInterval) + 1;
  }
  
  private int countAdsWithinContent(int paramInt)
  {
    if (paramInt <= firstAdPosition) {
      return 0;
    }
    int i = adPositionInterval - 1;
    if ((paramInt - firstAdPosition) % i == 0) {
      return (paramInt - firstAdPosition) / i;
    }
    return (int)Math.floor((paramInt - firstAdPosition) / i) + 1;
  }
  
  public int calculateShiftedCount(int paramInt)
  {
    return countAdsWithinContent(paramInt) + paramInt;
  }
  
  public int calculateShiftedPosition(int paramInt)
  {
    return paramInt - adsAlreadyShown(paramInt);
  }
  
  public boolean isAdPosition(int paramInt)
  {
    if (paramInt < firstAdPosition) {}
    while ((paramInt - firstAdPosition) % adPositionInterval != 0) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.BaseAdapterUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */