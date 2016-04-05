package com.google.zxing.oned.rss;

final class Pair
  extends DataCharacter
{
  private int count;
  private final FinderPattern finderPattern;
  
  Pair(int paramInt1, int paramInt2, FinderPattern paramFinderPattern)
  {
    super(paramInt1, paramInt2);
    finderPattern = paramFinderPattern;
  }
  
  int getCount()
  {
    return count;
  }
  
  FinderPattern getFinderPattern()
  {
    return finderPattern;
  }
  
  void incrementCount()
  {
    count += 1;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.Pair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */