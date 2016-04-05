package com.millennialmedia.android;

import android.view.ViewGroup.LayoutParams;

class MMAdView$BannerBounds
{
  DTOResizeParameters resizeParams;
  int translationX;
  int translationY;
  
  MMAdView$BannerBounds(MMAdView paramMMAdView, DTOResizeParameters paramDTOResizeParameters)
  {
    resizeParams = paramDTOResizeParameters;
    translationX = offsetX;
    translationY = offsetY;
  }
  
  private MMAdView.BannerBounds.BoundsResult calculateBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i;
    int j;
    if (paramInt1 + paramInt3 + paramInt2 > paramInt4)
    {
      paramInt2 += paramInt4 - paramInt3;
      if (paramInt2 < 0)
      {
        i = 0;
        j = paramInt4;
      }
    }
    for (;;)
    {
      MMAdView.BannerBounds.BoundsResult localBoundsResult = new MMAdView.BannerBounds.BoundsResult(this, null);
      translation = (i - paramInt1);
      size = j;
      return localBoundsResult;
      i = paramInt2;
      j = paramInt3;
      if (paramInt2 + paramInt3 > paramInt4)
      {
        i = paramInt4 - paramInt3;
        j = paramInt3;
        continue;
        i = paramInt2;
        j = paramInt3;
        if (paramInt2 <= 0)
        {
          i = paramInt1;
          j = paramInt3;
        }
      }
    }
  }
  
  private void calculateXBounds()
  {
    Object localObject = new int[2];
    this$0.getLocationInWindow((int[])localObject);
    localObject = calculateBounds(localObject[0], resizeParams.offsetX, resizeParams.width, resizeParams.xMax);
    resizeParams.width = size;
    translationX = translation;
  }
  
  private void calculateYBounds()
  {
    Object localObject = new int[2];
    this$0.getLocationInWindow((int[])localObject);
    localObject = calculateBounds(localObject[1], resizeParams.offsetY, resizeParams.height, resizeParams.yMax);
    resizeParams.height = size;
    translationY = translation;
  }
  
  void calculateOnScreenBounds()
  {
    calculateXBounds();
    calculateYBounds();
  }
  
  ViewGroup.LayoutParams modifyLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    width = resizeParams.width;
    height = resizeParams.height;
    return paramLayoutParams;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAdView.BannerBounds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */