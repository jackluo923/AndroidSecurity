package com.google.zxing.oned.rss.expanded;

import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;

final class ExpandedPair
{
  private final FinderPattern finderPattern;
  private final DataCharacter leftChar;
  private final boolean mayBeLast;
  private final DataCharacter rightChar;
  
  ExpandedPair(DataCharacter paramDataCharacter1, DataCharacter paramDataCharacter2, FinderPattern paramFinderPattern, boolean paramBoolean)
  {
    leftChar = paramDataCharacter1;
    rightChar = paramDataCharacter2;
    finderPattern = paramFinderPattern;
    mayBeLast = paramBoolean;
  }
  
  FinderPattern getFinderPattern()
  {
    return finderPattern;
  }
  
  DataCharacter getLeftChar()
  {
    return leftChar;
  }
  
  DataCharacter getRightChar()
  {
    return rightChar;
  }
  
  boolean mayBeLast()
  {
    return mayBeLast;
  }
  
  public boolean mustBeLast()
  {
    return rightChar == null;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.expanded.ExpandedPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */