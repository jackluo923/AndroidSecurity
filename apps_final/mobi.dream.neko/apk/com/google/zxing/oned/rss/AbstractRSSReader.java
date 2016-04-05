package com.google.zxing.oned.rss;

import com.google.zxing.NotFoundException;
import com.google.zxing.oned.OneDReader;

public abstract class AbstractRSSReader
  extends OneDReader
{
  private static final int MAX_AVG_VARIANCE = 51;
  private static final float MAX_FINDER_PATTERN_RATIO = 0.89285713F;
  private static final int MAX_INDIVIDUAL_VARIANCE = 102;
  private static final float MIN_FINDER_PATTERN_RATIO = 0.7916667F;
  private final int[] dataCharacterCounters = new int[8];
  private final int[] decodeFinderCounters = new int[4];
  private final int[] evenCounts = new int[dataCharacterCounters.length / 2];
  private final float[] evenRoundingErrors = new float[4];
  private final int[] oddCounts = new int[dataCharacterCounters.length / 2];
  private final float[] oddRoundingErrors = new float[4];
  
  protected static int count(int[] paramArrayOfInt)
  {
    int j = 0;
    int k = paramArrayOfInt.length;
    int i = 0;
    while (i < k)
    {
      j += paramArrayOfInt[i];
      i += 1;
    }
    return j;
  }
  
  protected static void decrement(int[] paramArrayOfInt, float[] paramArrayOfFloat)
  {
    int j = 0;
    float f1 = paramArrayOfFloat[0];
    int i = 1;
    while (i < paramArrayOfInt.length)
    {
      float f2 = f1;
      if (paramArrayOfFloat[i] < f1)
      {
        f2 = paramArrayOfFloat[i];
        j = i;
      }
      i += 1;
      f1 = f2;
    }
    paramArrayOfInt[j] -= 1;
  }
  
  protected static void increment(int[] paramArrayOfInt, float[] paramArrayOfFloat)
  {
    int j = 0;
    float f1 = paramArrayOfFloat[0];
    int i = 1;
    while (i < paramArrayOfInt.length)
    {
      float f2 = f1;
      if (paramArrayOfFloat[i] > f1)
      {
        f2 = paramArrayOfFloat[i];
        j = i;
      }
      i += 1;
      f1 = f2;
    }
    paramArrayOfInt[j] += 1;
  }
  
  protected static boolean isFinderPattern(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt[0] + paramArrayOfInt[1];
    int j = paramArrayOfInt[2];
    int k = paramArrayOfInt[3];
    float f = i / (j + i + k);
    if ((f >= 0.7916667F) && (f <= 0.89285713F))
    {
      i = Integer.MAX_VALUE;
      int m = Integer.MIN_VALUE;
      int i2 = paramArrayOfInt.length;
      j = 0;
      while (j < i2)
      {
        int n = paramArrayOfInt[j];
        k = m;
        if (n > m) {
          k = n;
        }
        int i1 = i;
        if (n < i) {
          i1 = n;
        }
        j += 1;
        m = k;
        i = i1;
      }
      return m < i * 10;
    }
    return false;
  }
  
  protected static int parseFinderValue(int[] paramArrayOfInt, int[][] paramArrayOfInt1)
    throws NotFoundException
  {
    int i = 0;
    while (i < paramArrayOfInt1.length)
    {
      if (patternMatchVariance(paramArrayOfInt, paramArrayOfInt1[i], 102) < 51) {
        return i;
      }
      i += 1;
    }
    throw NotFoundException.getNotFoundInstance();
  }
  
  protected final int[] getDataCharacterCounters()
  {
    return dataCharacterCounters;
  }
  
  protected final int[] getDecodeFinderCounters()
  {
    return decodeFinderCounters;
  }
  
  protected final int[] getEvenCounts()
  {
    return evenCounts;
  }
  
  protected final float[] getEvenRoundingErrors()
  {
    return evenRoundingErrors;
  }
  
  protected final int[] getOddCounts()
  {
    return oddCounts;
  }
  
  protected final float[] getOddRoundingErrors()
  {
    return oddRoundingErrors;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.AbstractRSSReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */