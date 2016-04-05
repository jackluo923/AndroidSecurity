package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.qrcode.detector.FinderPattern;
import java.io.Serializable;
import java.util.Comparator;

final class MultiFinderPatternFinder$ModuleSizeComparator
  implements Comparator<FinderPattern>, Serializable
{
  public int compare(FinderPattern paramFinderPattern1, FinderPattern paramFinderPattern2)
  {
    float f = paramFinderPattern2.getEstimatedModuleSize() - paramFinderPattern1.getEstimatedModuleSize();
    if (f < 0.0D) {
      return -1;
    }
    if (f > 0.0D) {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder.ModuleSizeComparator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */