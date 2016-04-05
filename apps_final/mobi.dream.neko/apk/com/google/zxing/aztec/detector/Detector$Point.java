package com.google.zxing.aztec.detector;

import com.google.zxing.ResultPoint;

final class Detector$Point
{
  public final int x;
  public final int y;
  
  private Detector$Point(int paramInt1, int paramInt2)
  {
    x = paramInt1;
    y = paramInt2;
  }
  
  public ResultPoint toResultPoint()
  {
    return new ResultPoint(x, y);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.aztec.detector.Detector.Point
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */