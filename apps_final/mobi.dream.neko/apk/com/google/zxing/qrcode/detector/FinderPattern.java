package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPoint;

public final class FinderPattern
  extends ResultPoint
{
  private int count;
  private final float estimatedModuleSize;
  
  FinderPattern(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(paramFloat1, paramFloat2, paramFloat3, 1);
  }
  
  private FinderPattern(float paramFloat1, float paramFloat2, float paramFloat3, int paramInt)
  {
    super(paramFloat1, paramFloat2);
    estimatedModuleSize = paramFloat3;
    count = paramInt;
  }
  
  boolean aboutEquals(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (Math.abs(paramFloat2 - getY()) <= paramFloat1)
    {
      bool1 = bool2;
      if (Math.abs(paramFloat3 - getX()) <= paramFloat1)
      {
        paramFloat1 = Math.abs(paramFloat1 - estimatedModuleSize);
        if (paramFloat1 > 1.0F)
        {
          bool1 = bool2;
          if (paramFloat1 > estimatedModuleSize) {}
        }
        else
        {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  FinderPattern combineEstimate(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int i = count + 1;
    return new FinderPattern((count * getX() + paramFloat2) / i, (count * getY() + paramFloat1) / i, (count * estimatedModuleSize + paramFloat3) / i, i);
  }
  
  int getCount()
  {
    return count;
  }
  
  public float getEstimatedModuleSize()
  {
    return estimatedModuleSize;
  }
  
  void incrementCount()
  {
    count += 1;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.qrcode.detector.FinderPattern
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */