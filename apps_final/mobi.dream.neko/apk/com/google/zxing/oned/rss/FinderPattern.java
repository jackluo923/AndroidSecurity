package com.google.zxing.oned.rss;

import com.google.zxing.ResultPoint;

public final class FinderPattern
{
  private final ResultPoint[] resultPoints;
  private final int[] startEnd;
  private final int value;
  
  public FinderPattern(int paramInt1, int[] paramArrayOfInt, int paramInt2, int paramInt3, int paramInt4)
  {
    value = paramInt1;
    startEnd = paramArrayOfInt;
    resultPoints = new ResultPoint[] { new ResultPoint(paramInt2, paramInt4), new ResultPoint(paramInt3, paramInt4) };
  }
  
  public ResultPoint[] getResultPoints()
  {
    return resultPoints;
  }
  
  public int[] getStartEnd()
  {
    return startEnd;
  }
  
  public int getValue()
  {
    return value;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.FinderPattern
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */