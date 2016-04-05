package com.google.zxing.oned.rss.expanded;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.rss.AbstractRSSReader;
import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;
import com.google.zxing.oned.rss.RSSUtils;
import com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class RSSExpandedReader
  extends AbstractRSSReader
{
  private static final int[] EVEN_TOTAL_SUBSET;
  private static final int[][] FINDER_PATTERNS;
  private static final int[][] FINDER_PATTERN_SEQUENCES;
  private static final int FINDER_PAT_A = 0;
  private static final int FINDER_PAT_B = 1;
  private static final int FINDER_PAT_C = 2;
  private static final int FINDER_PAT_D = 3;
  private static final int FINDER_PAT_E = 4;
  private static final int FINDER_PAT_F = 5;
  private static final int[] GSUM;
  private static final int LONGEST_SEQUENCE_SIZE = FINDER_PATTERN_SEQUENCES[(FINDER_PATTERN_SEQUENCES.length - 1)].length;
  private static final int MAX_PAIRS = 11;
  private static final int[] SYMBOL_WIDEST = { 7, 5, 4, 3, 1 };
  private static final int[][] WEIGHTS;
  private final int[] currentSequence = new int[LONGEST_SEQUENCE_SIZE];
  private final List<ExpandedPair> pairs = new ArrayList(11);
  private final int[] startEnd = new int[2];
  
  static
  {
    EVEN_TOTAL_SUBSET = new int[] { 4, 20, 52, 104, 204 };
    GSUM = new int[] { 0, 348, 1388, 2948, 3988 };
    int[] arrayOfInt1 = { 3, 6, 4, 1 };
    int[] arrayOfInt2 = { 3, 4, 6, 1 };
    int[] arrayOfInt3 = { 2, 6, 5, 1 };
    int[] arrayOfInt4 = { 2, 2, 9, 1 };
    FINDER_PATTERNS = new int[][] { { 1, 8, 4, 1 }, arrayOfInt1, arrayOfInt2, { 3, 2, 8, 1 }, arrayOfInt3, arrayOfInt4 };
    arrayOfInt1 = new int[] { 185, 133, 188, 142, 4, 12, 36, 108 };
    WEIGHTS = new int[][] { { 1, 3, 9, 27, 81, 32, 96, 77 }, { 20, 60, 180, 118, 143, 7, 21, 63 }, { 189, 145, 13, 39, 117, 140, 209, 205 }, { 193, 157, 49, 147, 19, 57, 171, 91 }, { 62, 186, 136, 197, 169, 85, 44, 132 }, arrayOfInt1, { 113, 128, 173, 97, 80, 29, 87, 50 }, { 150, 28, 84, 41, 123, 158, 52, 156 }, { 46, 138, 203, 187, 139, 206, 196, 166 }, { 76, 17, 51, 153, 37, 111, 122, 155 }, { 43, 129, 176, 106, 107, 110, 119, 146 }, { 16, 48, 144, 10, 30, 90, 59, 177 }, { 109, 116, 137, 200, 178, 112, 125, 164 }, { 70, 210, 208, 202, 184, 130, 179, 115 }, { 134, 191, 151, 31, 93, 68, 204, 190 }, { 148, 22, 66, 198, 172, 94, 71, 2 }, { 6, 18, 54, 162, 64, 192, 154, 40 }, { 120, 149, 25, 75, 14, 42, 126, 167 }, { 79, 26, 78, 23, 69, 207, 199, 175 }, { 103, 98, 83, 38, 114, 131, 182, 124 }, { 161, 61, 183, 127, 170, 88, 53, 159 }, { 55, 165, 73, 8, 24, 72, 5, 15 }, { 45, 135, 194, 160, 58, 174, 100, 89 } };
    arrayOfInt1 = new int[] { 0, 2, 1, 3 };
    arrayOfInt2 = new int[] { 0, 0, 1, 1, 2, 2, 3, 3 };
    arrayOfInt3 = new int[] { 0, 0, 1, 1, 2, 2, 3, 4, 4 };
    FINDER_PATTERN_SEQUENCES = new int[][] { { 0, 0 }, { 0, 1, 1 }, arrayOfInt1, { 0, 4, 1, 3, 2 }, { 0, 4, 1, 3, 3, 5 }, { 0, 4, 1, 3, 4, 5, 5 }, arrayOfInt2, arrayOfInt3, { 0, 0, 1, 1, 2, 2, 3, 4, 5, 5 }, { 0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5 } };
  }
  
  private void adjustOddEvenCounts(int paramInt)
    throws NotFoundException
  {
    int m = 0;
    int i2 = count(getOddCounts());
    int i3 = count(getEvenCounts());
    int i4 = i2 + i3 - paramInt;
    int n;
    int j;
    int i;
    label64:
    int k;
    int i1;
    if ((i2 & 0x1) == 1)
    {
      n = 1;
      if ((i3 & 0x1) == 0) {
        m = 1;
      }
      paramInt = 0;
      j = 0;
      if (i2 <= 13) {
        break label105;
      }
      i = 1;
      k = 0;
      i1 = 0;
      if (i3 <= 13) {
        break label120;
      }
      j = 1;
    }
    for (;;)
    {
      if (i4 == 1) {
        if (n != 0)
        {
          if (m != 0)
          {
            throw NotFoundException.getNotFoundInstance();
            n = 0;
            break;
            label105:
            i = j;
            if (i2 >= 4) {
              break label64;
            }
            paramInt = 1;
            i = j;
            break label64;
            label120:
            j = i1;
            if (i3 >= 4) {
              continue;
            }
            k = 1;
            j = i1;
            continue;
          }
          i = 1;
        }
      }
    }
    while (paramInt != 0) {
      if (i != 0)
      {
        throw NotFoundException.getNotFoundInstance();
        if (m == 0) {
          throw NotFoundException.getNotFoundInstance();
        }
        j = 1;
        continue;
        if (i4 == -1)
        {
          if (n != 0)
          {
            if (m != 0) {
              throw NotFoundException.getNotFoundInstance();
            }
            paramInt = 1;
          }
          else
          {
            if (m == 0) {
              throw NotFoundException.getNotFoundInstance();
            }
            k = 1;
          }
        }
        else if (i4 == 0)
        {
          if (n != 0)
          {
            if (m == 0) {
              throw NotFoundException.getNotFoundInstance();
            }
            if (i2 < i3)
            {
              paramInt = 1;
              j = 1;
            }
            else
            {
              i = 1;
              k = 1;
            }
          }
          else if (m != 0)
          {
            throw NotFoundException.getNotFoundInstance();
          }
        }
        else {
          throw NotFoundException.getNotFoundInstance();
        }
      }
      else
      {
        increment(getOddCounts(), getOddRoundingErrors());
      }
    }
    if (i != 0) {
      decrement(getOddCounts(), getOddRoundingErrors());
    }
    if (k != 0)
    {
      if (j != 0) {
        throw NotFoundException.getNotFoundInstance();
      }
      increment(getEvenCounts(), getOddRoundingErrors());
    }
    if (j != 0) {
      decrement(getEvenCounts(), getEvenRoundingErrors());
    }
  }
  
  private boolean checkChecksum()
  {
    boolean bool = false;
    Object localObject = (ExpandedPair)pairs.get(0);
    DataCharacter localDataCharacter = ((ExpandedPair)localObject).getLeftChar();
    int j = ((ExpandedPair)localObject).getRightChar().getChecksumPortion();
    int i = 2;
    int k = 1;
    while (k < pairs.size())
    {
      localObject = (ExpandedPair)pairs.get(k);
      int m = j + ((ExpandedPair)localObject).getLeftChar().getChecksumPortion();
      int n = i + 1;
      localObject = ((ExpandedPair)localObject).getRightChar();
      j = m;
      i = n;
      if (localObject != null)
      {
        j = m + ((DataCharacter)localObject).getChecksumPortion();
        i = n + 1;
      }
      k += 1;
    }
    if ((i - 4) * 211 + j % 211 == localDataCharacter.getValue()) {
      bool = true;
    }
    return bool;
  }
  
  private boolean checkPairSequence(List<ExpandedPair> paramList, FinderPattern paramFinderPattern)
    throws NotFoundException
  {
    int n = paramList.size() + 1;
    if (n > currentSequence.length) {
      throw NotFoundException.getNotFoundInstance();
    }
    int i = 0;
    while (i < paramList.size())
    {
      currentSequence[i] = ((ExpandedPair)paramList.get(i)).getFinderPattern().getValue();
      i += 1;
    }
    currentSequence[(n - 1)] = paramFinderPattern.getValue();
    paramList = FINDER_PATTERN_SEQUENCES;
    int i1 = paramList.length;
    i = 0;
    while (i < i1)
    {
      paramFinderPattern = paramList[i];
      if (paramFinderPattern.length >= n)
      {
        int m = 1;
        int j = 0;
        for (;;)
        {
          int k = m;
          if (j < n)
          {
            if (currentSequence[j] != paramFinderPattern[j]) {
              k = 0;
            }
          }
          else
          {
            if (k == 0) {
              break label164;
            }
            if (n != paramFinderPattern.length) {
              break;
            }
            return true;
          }
          j += 1;
        }
        return false;
      }
      label164:
      i += 1;
    }
    throw NotFoundException.getNotFoundInstance();
  }
  
  private static Result constructResult(List<ExpandedPair> paramList)
    throws NotFoundException
  {
    String str = AbstractExpandedDecoder.createDecoder(BitArrayBuilder.buildBitArray(paramList)).parseInformation();
    Object localObject1 = ((ExpandedPair)paramList.get(0)).getFinderPattern().getResultPoints();
    Object localObject3 = ((ExpandedPair)paramList.get(paramList.size() - 1)).getFinderPattern().getResultPoints();
    paramList = localObject1[0];
    localObject1 = localObject1[1];
    Object localObject2 = localObject3[0];
    localObject3 = localObject3[1];
    BarcodeFormat localBarcodeFormat = BarcodeFormat.RSS_EXPANDED;
    return new Result(str, null, new ResultPoint[] { paramList, localObject1, localObject2, localObject3 }, localBarcodeFormat);
  }
  
  private void findNextPair(BitArray paramBitArray, List<ExpandedPair> paramList, int paramInt)
    throws NotFoundException
  {
    int[] arrayOfInt = getDecodeFinderCounters();
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int i1 = paramBitArray.getSize();
    int k;
    label50:
    int i;
    if (paramInt >= 0)
    {
      if (paramList.size() % 2 == 0) {
        break label178;
      }
      k = 1;
      i = 0;
    }
    int m;
    for (;;)
    {
      if (paramInt < i1) {
        if (paramBitArray.get(paramInt)) {
          break label184;
        }
      }
      label178:
      label184:
      for (i = 1;; i = 0)
      {
        if (i != 0) {
          break label190;
        }
        int n = 0;
        j = paramInt;
        m = paramInt;
        paramInt = j;
        j = i;
        i = n;
        for (;;)
        {
          if (m >= i1) {
            break label323;
          }
          if (!(paramBitArray.get(m) ^ j)) {
            break;
          }
          arrayOfInt[i] += 1;
          m += 1;
        }
        if (paramList.isEmpty())
        {
          paramInt = 0;
          break;
        }
        paramInt = ((ExpandedPair)paramList.get(paramList.size() - 1)).getFinderPattern().getStartEnd()[1];
        break;
        k = 0;
        break label50;
      }
      label190:
      paramInt += 1;
    }
    if (i == 3)
    {
      if (k != 0) {
        reverseCounters(arrayOfInt);
      }
      if (isFinderPattern(arrayOfInt))
      {
        startEnd[0] = paramInt;
        startEnd[1] = m;
        return;
      }
      if (k != 0) {
        reverseCounters(arrayOfInt);
      }
      paramInt += arrayOfInt[0] + arrayOfInt[1];
      arrayOfInt[0] = arrayOfInt[2];
      arrayOfInt[1] = arrayOfInt[3];
      arrayOfInt[2] = 0;
      arrayOfInt[3] = 0;
      i -= 1;
      label291:
      arrayOfInt[i] = 1;
      if (j != 0) {
        break label317;
      }
    }
    label317:
    for (int j = 1;; j = 0)
    {
      break;
      i += 1;
      break label291;
    }
    label323:
    throw NotFoundException.getNotFoundInstance();
  }
  
  private static int getNextSecondBar(BitArray paramBitArray, int paramInt)
  {
    if (paramBitArray.get(paramInt)) {
      return paramBitArray.getNextSet(paramBitArray.getNextUnset(paramInt));
    }
    return paramBitArray.getNextUnset(paramBitArray.getNextSet(paramInt));
  }
  
  private static boolean isNotA1left(FinderPattern paramFinderPattern, boolean paramBoolean1, boolean paramBoolean2)
  {
    return (paramFinderPattern.getValue() != 0) || (!paramBoolean1) || (!paramBoolean2);
  }
  
  private FinderPattern parseFoundFinderPattern(BitArray paramBitArray, int paramInt, boolean paramBoolean)
  {
    int i;
    int k;
    int j;
    if (paramBoolean)
    {
      i = startEnd[0] - 1;
      while ((i >= 0) && (!paramBitArray.get(i))) {
        i -= 1;
      }
      i += 1;
      k = startEnd[0] - i;
      j = startEnd[1];
    }
    for (;;)
    {
      paramBitArray = getDecodeFinderCounters();
      System.arraycopy(paramBitArray, 0, paramBitArray, 1, paramBitArray.length - 1);
      paramBitArray[0] = k;
      try
      {
        k = parseFinderValue(paramBitArray, FINDER_PATTERNS);
        return new FinderPattern(k, new int[] { i, j }, i, j, paramInt);
      }
      catch (NotFoundException paramBitArray) {}
      i = startEnd[0];
      j = paramBitArray.getNextUnset(startEnd[1] + 1);
      k = j - startEnd[1];
    }
    return null;
  }
  
  private static void reverseCounters(int[] paramArrayOfInt)
  {
    int j = paramArrayOfInt.length;
    int i = 0;
    while (i < j / 2)
    {
      int k = paramArrayOfInt[i];
      paramArrayOfInt[i] = paramArrayOfInt[(j - i - 1)];
      paramArrayOfInt[(j - i - 1)] = k;
      i += 1;
    }
  }
  
  DataCharacter decodeDataCharacter(BitArray paramBitArray, FinderPattern paramFinderPattern, boolean paramBoolean1, boolean paramBoolean2)
    throws NotFoundException
  {
    int[] arrayOfInt1 = getDataCharacterCounters();
    arrayOfInt1[0] = 0;
    arrayOfInt1[1] = 0;
    arrayOfInt1[2] = 0;
    arrayOfInt1[3] = 0;
    arrayOfInt1[4] = 0;
    arrayOfInt1[5] = 0;
    arrayOfInt1[6] = 0;
    arrayOfInt1[7] = 0;
    int[] arrayOfInt2;
    float[] arrayOfFloat2;
    label103:
    float f2;
    int i;
    if (paramBoolean2)
    {
      recordPatternInReverse(paramBitArray, paramFinderPattern.getStartEnd()[0], arrayOfInt1);
      float f1 = count(arrayOfInt1) / 17;
      paramBitArray = getOddCounts();
      arrayOfInt2 = getEvenCounts();
      float[] arrayOfFloat1 = getOddRoundingErrors();
      arrayOfFloat2 = getEvenRoundingErrors();
      j = 0;
      if (j >= arrayOfInt1.length) {
        break label289;
      }
      f2 = 1.0F * arrayOfInt1[j] / f1;
      k = (int)(0.5F + f2);
      if (k >= 1) {
        break label250;
      }
      i = 1;
      label141:
      k = j >> 1;
      if ((j & 0x1) != 0) {
        break label268;
      }
      paramBitArray[k] = i;
      arrayOfFloat1[k] = (f2 - i);
    }
    for (;;)
    {
      j += 1;
      break label103;
      recordPattern(paramBitArray, paramFinderPattern.getStartEnd()[1] + 1, arrayOfInt1);
      j = 0;
      i = arrayOfInt1.length - 1;
      while (j < i)
      {
        k = arrayOfInt1[j];
        arrayOfInt1[j] = arrayOfInt1[i];
        arrayOfInt1[i] = k;
        j += 1;
        i -= 1;
      }
      break;
      label250:
      i = k;
      if (k <= 8) {
        break label141;
      }
      i = 8;
      break label141;
      label268:
      arrayOfInt2[k] = i;
      arrayOfFloat2[k] = (f2 - i);
    }
    label289:
    adjustOddEvenCounts(17);
    int k = paramFinderPattern.getValue();
    if (paramBoolean1)
    {
      i = 0;
      if (!paramBoolean2) {
        break label414;
      }
    }
    int i2;
    label414:
    for (int j = 0;; j = 1)
    {
      i2 = j + (k * 4 + i) - 1;
      j = 0;
      i = 0;
      k = paramBitArray.length - 1;
      while (k >= 0)
      {
        m = i;
        if (isNotA1left(paramFinderPattern, paramBoolean1, paramBoolean2))
        {
          m = WEIGHTS[i2][(k * 2)];
          m = i + paramBitArray[k] * m;
        }
        j += paramBitArray[k];
        k -= 1;
        i = m;
      }
      i = 2;
      break;
    }
    k = 0;
    int n = 0;
    int m = arrayOfInt2.length - 1;
    while (m >= 0)
    {
      int i1 = k;
      if (isNotA1left(paramFinderPattern, paramBoolean1, paramBoolean2))
      {
        i1 = WEIGHTS[i2][(m * 2 + 1)];
        i1 = k + arrayOfInt2[m] * i1;
      }
      n += arrayOfInt2[m];
      m -= 1;
      k = i1;
    }
    if (((j & 0x1) != 0) || (j > 13) || (j < 4)) {
      throw NotFoundException.getNotFoundInstance();
    }
    j = (13 - j) / 2;
    n = SYMBOL_WIDEST[j];
    m = RSSUtils.getRSSvalue(paramBitArray, n, true);
    n = RSSUtils.getRSSvalue(arrayOfInt2, 9 - n, false);
    return new DataCharacter(m * EVEN_TOTAL_SUBSET[j] + n + GSUM[j], i + k);
  }
  
  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    reset();
    decodeRow2pairs(paramInt, paramBitArray);
    return constructResult(pairs);
  }
  
  List<ExpandedPair> decodeRow2pairs(int paramInt, BitArray paramBitArray)
    throws NotFoundException
  {
    ExpandedPair localExpandedPair;
    do
    {
      do
      {
        localExpandedPair = retrieveNextPair(paramBitArray, pairs, paramInt);
        pairs.add(localExpandedPair);
      } while (!localExpandedPair.mayBeLast());
      if (checkChecksum()) {
        return pairs;
      }
    } while (!localExpandedPair.mustBeLast());
    throw NotFoundException.getNotFoundInstance();
  }
  
  public void reset()
  {
    pairs.clear();
  }
  
  ExpandedPair retrieveNextPair(BitArray paramBitArray, List<ExpandedPair> paramList, int paramInt)
    throws NotFoundException
  {
    boolean bool1;
    if (paramList.size() % 2 == 0) {
      bool1 = true;
    }
    for (;;)
    {
      int i = 1;
      int k = -1;
      FinderPattern localFinderPattern;
      int j;
      do
      {
        findNextPair(paramBitArray, paramList, k);
        localFinderPattern = parseFoundFinderPattern(paramBitArray, paramInt, bool1);
        if (localFinderPattern != null) {
          break;
        }
        k = getNextSecondBar(paramBitArray, startEnd[0]);
        j = i;
        i = j;
      } while (j != 0);
      boolean bool2 = checkPairSequence(paramList, localFinderPattern);
      paramList = decodeDataCharacter(paramBitArray, localFinderPattern, bool1, true);
      try
      {
        paramBitArray = decodeDataCharacter(paramBitArray, localFinderPattern, bool1, false);
        return new ExpandedPair(paramList, paramBitArray, localFinderPattern, bool2);
        bool1 = false;
        continue;
        j = 0;
      }
      catch (NotFoundException paramBitArray)
      {
        while (bool2) {
          paramBitArray = null;
        }
        throw paramBitArray;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.expanded.RSSExpandedReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */