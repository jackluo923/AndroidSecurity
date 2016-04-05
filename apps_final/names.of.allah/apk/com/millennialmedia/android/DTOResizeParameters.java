package com.millennialmedia.android;

class DTOResizeParameters
{
  boolean allowOffScreen;
  String customClosePosition;
  int height;
  int offsetX;
  int offsetY;
  int width;
  int xMax;
  int yMax;
  
  DTOResizeParameters(float paramFloat, int paramInt1, int paramInt2, String paramString, int paramInt3, int paramInt4, boolean paramBoolean, int paramInt5, int paramInt6)
  {
    width = ((int)(paramInt1 * paramFloat));
    height = ((int)(paramInt2 * paramFloat));
    customClosePosition = paramString;
    offsetX = ((int)(paramInt3 * paramFloat));
    offsetY = ((int)(paramInt4 * paramFloat));
    allowOffScreen = paramBoolean;
    xMax = paramInt5;
    yMax = paramInt6;
  }
  
  public String toString()
  {
    return String.format("width[%d] height[%d] offsetX[%d] offsetY[%d] allowOffScreen[%b] customClosePosition[%s] maxX[%d] maxY[%d]", new Object[] { Integer.valueOf(width), Integer.valueOf(height), Integer.valueOf(offsetX), Integer.valueOf(offsetY), Boolean.valueOf(allowOffScreen), customClosePosition, Integer.valueOf(xMax), Integer.valueOf(yMax) });
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.DTOResizeParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */