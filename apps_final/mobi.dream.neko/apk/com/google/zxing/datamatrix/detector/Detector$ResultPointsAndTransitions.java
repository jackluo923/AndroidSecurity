package com.google.zxing.datamatrix.detector;

import com.google.zxing.ResultPoint;

final class Detector$ResultPointsAndTransitions
{
  private final ResultPoint from;
  private final ResultPoint to;
  private final int transitions;
  
  private Detector$ResultPointsAndTransitions(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, int paramInt)
  {
    from = paramResultPoint1;
    to = paramResultPoint2;
    transitions = paramInt;
  }
  
  ResultPoint getFrom()
  {
    return from;
  }
  
  ResultPoint getTo()
  {
    return to;
  }
  
  public int getTransitions()
  {
    return transitions;
  }
  
  public String toString()
  {
    return from + "/" + to + '/' + transitions;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.datamatrix.detector.Detector.ResultPointsAndTransitions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */