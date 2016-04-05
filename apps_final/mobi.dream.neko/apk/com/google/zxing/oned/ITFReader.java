package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;

public final class ITFReader
  extends OneDReader
{
  private static final int[] DEFAULT_ALLOWED_LENGTHS = { 44, 24, 20, 18, 16, 14, 12, 10, 8, 6 };
  private static final int[] END_PATTERN_REVERSED;
  private static final int MAX_AVG_VARIANCE = 107;
  private static final int MAX_INDIVIDUAL_VARIANCE = 204;
  private static final int N = 1;
  static final int[][] PATTERNS;
  private static final int[] START_PATTERN = { 1, 1, 1, 1 };
  private static final int W = 3;
  private int narrowLineWidth = -1;
  
  static
  {
    END_PATTERN_REVERSED = new int[] { 1, 1, 3 };
    int[] arrayOfInt1 = { 3, 1, 1, 1, 3 };
    int[] arrayOfInt2 = { 1, 3, 1, 1, 3 };
    int[] arrayOfInt3 = { 1, 3, 3, 1, 1 };
    int[] arrayOfInt4 = { 1, 1, 1, 3, 3 };
    int[] arrayOfInt5 = { 1, 3, 1, 3, 1 };
    PATTERNS = new int[][] { { 1, 1, 3, 3, 1 }, arrayOfInt1, arrayOfInt2, { 3, 3, 1, 1, 1 }, { 1, 1, 3, 1, 3 }, { 3, 1, 3, 1, 1 }, arrayOfInt3, arrayOfInt4, { 3, 1, 1, 3, 1 }, arrayOfInt5 };
  }
  
  private static int decodeDigit(int[] paramArrayOfInt)
    throws NotFoundException
  {
    int j = 107;
    int m = -1;
    int i1 = PATTERNS.length;
    int i = 0;
    while (i < i1)
    {
      int n = patternMatchVariance(paramArrayOfInt, PATTERNS[i], 204);
      int k = j;
      if (n < j)
      {
        k = n;
        m = i;
      }
      i += 1;
      j = k;
    }
    if (m >= 0) {
      return m;
    }
    throw NotFoundException.getNotFoundInstance();
  }
  
  private static void decodeMiddle(BitArray paramBitArray, int paramInt1, int paramInt2, StringBuilder paramStringBuilder)
    throws NotFoundException
  {
    int[] arrayOfInt1 = new int[10];
    int[] arrayOfInt2 = new int[5];
    int[] arrayOfInt3 = new int[5];
    if (paramInt1 < paramInt2)
    {
      recordPattern(paramBitArray, paramInt1, arrayOfInt1);
      int i = 0;
      while (i < 5)
      {
        j = i << 1;
        arrayOfInt2[i] = arrayOfInt1[j];
        arrayOfInt3[i] = arrayOfInt1[(j + 1)];
        i += 1;
      }
      paramStringBuilder.append((char)(decodeDigit(arrayOfInt2) + 48));
      paramStringBuilder.append((char)(decodeDigit(arrayOfInt3) + 48));
      int k = arrayOfInt1.length;
      i = 0;
      int j = paramInt1;
      for (;;)
      {
        paramInt1 = j;
        if (i >= k) {
          break;
        }
        j += arrayOfInt1[i];
        i += 1;
      }
    }
  }
  
  private static int[] findGuardPattern(BitArray paramBitArray, int paramInt, int[] paramArrayOfInt)
    throws NotFoundException
  {
    int n = paramArrayOfInt.length;
    int[] arrayOfInt = new int[n];
    int i1 = paramBitArray.getSize();
    int j = 0;
    int m = 0;
    int i = paramInt;
    int k = paramInt;
    paramInt = i;
    i = m;
    while (k < i1) {
      if ((paramBitArray.get(k) ^ j))
      {
        arrayOfInt[i] += 1;
        k += 1;
      }
      else
      {
        if (i == n - 1)
        {
          if (patternMatchVariance(arrayOfInt, paramArrayOfInt, 204) < 107) {
            return new int[] { paramInt, k };
          }
          paramInt += arrayOfInt[0] + arrayOfInt[1];
          System.arraycopy(arrayOfInt, 2, arrayOfInt, 0, n - 2);
          arrayOfInt[(n - 2)] = 0;
          arrayOfInt[(n - 1)] = 0;
          i -= 1;
          label148:
          arrayOfInt[i] = 1;
          if (j != 0) {
            break label173;
          }
        }
        label173:
        for (j = 1;; j = 0)
        {
          break;
          i += 1;
          break label148;
        }
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }
  
  private static int skipWhiteSpace(BitArray paramBitArray)
    throws NotFoundException
  {
    int i = paramBitArray.getSize();
    int j = paramBitArray.getNextSet(0);
    if (j == i) {
      throw NotFoundException.getNotFoundInstance();
    }
    return j;
  }
  
  private void validateQuietZone(BitArray paramBitArray, int paramInt)
    throws NotFoundException
  {
    int i = narrowLineWidth * 10;
    paramInt -= 1;
    for (;;)
    {
      if ((i <= 0) || (paramInt < 0) || (paramBitArray.get(paramInt)))
      {
        if (i == 0) {
          break;
        }
        throw NotFoundException.getNotFoundInstance();
      }
      i -= 1;
      paramInt -= 1;
    }
  }
  
  int[] decodeEnd(BitArray paramBitArray)
    throws NotFoundException
  {
    paramBitArray.reverse();
    try
    {
      int[] arrayOfInt = findGuardPattern(paramBitArray, skipWhiteSpace(paramBitArray), END_PATTERN_REVERSED);
      validateQuietZone(paramBitArray, arrayOfInt[0]);
      int i = arrayOfInt[0];
      arrayOfInt[0] = (paramBitArray.getSize() - arrayOfInt[1]);
      arrayOfInt[1] = (paramBitArray.getSize() - i);
      return arrayOfInt;
    }
    finally
    {
      paramBitArray.reverse();
    }
  }
  
  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws FormatException, NotFoundException
  {
    int[] arrayOfInt = decodeStart(paramBitArray);
    Object localObject1 = decodeEnd(paramBitArray);
    Object localObject2 = new StringBuilder(20);
    decodeMiddle(paramBitArray, arrayOfInt[1], localObject1[0], (StringBuilder)localObject2);
    localObject2 = ((StringBuilder)localObject2).toString();
    paramBitArray = null;
    if (paramMap != null) {
      paramBitArray = (int[])paramMap.get(DecodeHintType.ALLOWED_LENGTHS);
    }
    paramMap = paramBitArray;
    if (paramBitArray == null) {
      paramMap = DEFAULT_ALLOWED_LENGTHS;
    }
    int m = ((String)localObject2).length();
    int k = 0;
    int n = paramMap.length;
    int i = 0;
    for (;;)
    {
      int j = k;
      if (i < n)
      {
        if (m == paramMap[i]) {
          j = 1;
        }
      }
      else
      {
        if (j != 0) {
          break;
        }
        throw FormatException.getFormatInstance();
      }
      i += 1;
    }
    paramBitArray = new ResultPoint(arrayOfInt[1], paramInt);
    paramMap = new ResultPoint(localObject1[0], paramInt);
    localObject1 = BarcodeFormat.ITF;
    return new Result((String)localObject2, null, new ResultPoint[] { paramBitArray, paramMap }, (BarcodeFormat)localObject1);
  }
  
  int[] decodeStart(BitArray paramBitArray)
    throws NotFoundException
  {
    int[] arrayOfInt = findGuardPattern(paramBitArray, skipWhiteSpace(paramBitArray), START_PATTERN);
    narrowLineWidth = (arrayOfInt[1] - arrayOfInt[0] >> 2);
    validateQuietZone(paramBitArray, arrayOfInt[0]);
    return arrayOfInt;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.ITFReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */