package com.google.zxing.common;

import com.google.zxing.ResultPoint;

public class DetectorResult
{
  private final BitMatrix bits;
  private final ResultPoint[] points;
  
  public DetectorResult(BitMatrix paramBitMatrix, ResultPoint[] paramArrayOfResultPoint)
  {
    bits = paramBitMatrix;
    points = paramArrayOfResultPoint;
  }
  
  public final BitMatrix getBits()
  {
    return bits;
  }
  
  public final ResultPoint[] getPoints()
  {
    return points;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.common.DetectorResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */