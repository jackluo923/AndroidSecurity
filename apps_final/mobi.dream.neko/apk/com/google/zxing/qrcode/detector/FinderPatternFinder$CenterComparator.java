package com.google.zxing.qrcode.detector;

import java.io.Serializable;
import java.util.Comparator;

final class FinderPatternFinder$CenterComparator
  implements Comparator<FinderPattern>, Serializable
{
  private final float average;
  
  private FinderPatternFinder$CenterComparator(float paramFloat)
  {
    average = paramFloat;
  }
  
  public int compare(FinderPattern paramFinderPattern1, FinderPattern paramFinderPattern2)
  {
    if (paramFinderPattern2.getCount() == paramFinderPattern1.getCount())
    {
      float f1 = Math.abs(paramFinderPattern2.getEstimatedModuleSize() - average);
      float f2 = Math.abs(paramFinderPattern1.getEstimatedModuleSize() - average);
      if (f1 < f2) {
        return 1;
      }
      if (f1 == f2) {
        return 0;
      }
      return -1;
    }
    return paramFinderPattern2.getCount() - paramFinderPattern1.getCount();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.qrcode.detector.FinderPatternFinder.CenterComparator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */