package com.google.zxing.datamatrix.detector;

import java.io.Serializable;
import java.util.Comparator;

final class Detector$ResultPointsAndTransitionsComparator
  implements Comparator<Detector.ResultPointsAndTransitions>, Serializable
{
  public int compare(Detector.ResultPointsAndTransitions paramResultPointsAndTransitions1, Detector.ResultPointsAndTransitions paramResultPointsAndTransitions2)
  {
    return paramResultPointsAndTransitions1.getTransitions() - paramResultPointsAndTransitions2.getTransitions();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.datamatrix.detector.Detector.ResultPointsAndTransitionsComparator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */