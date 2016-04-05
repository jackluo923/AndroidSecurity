package com.google.zxing.qrcode.detector;

public final class FinderPatternInfo
{
  private final FinderPattern bottomLeft = paramArrayOfFinderPattern[0];
  private final FinderPattern topLeft = paramArrayOfFinderPattern[1];
  private final FinderPattern topRight = paramArrayOfFinderPattern[2];
  
  public FinderPatternInfo(FinderPattern[] paramArrayOfFinderPattern) {}
  
  public FinderPattern getBottomLeft()
  {
    return bottomLeft;
  }
  
  public FinderPattern getTopLeft()
  {
    return topLeft;
  }
  
  public FinderPattern getTopRight()
  {
    return topRight;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.qrcode.detector.FinderPatternInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */