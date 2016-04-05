package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

public abstract class UPCEANReader
  extends OneDReader
{
  static final int[][] L_AND_G_PATTERNS;
  static final int[][] L_PATTERNS;
  private static final int MAX_AVG_VARIANCE = 122;
  private static final int MAX_INDIVIDUAL_VARIANCE = 179;
  static final int[] MIDDLE_PATTERN;
  static final int[] START_END_PATTERN = { 1, 1, 1 };
  private final StringBuilder decodeRowStringBuffer = new StringBuilder(20);
  private final EANManufacturerOrgSupport eanManSupport = new EANManufacturerOrgSupport();
  private final UPCEANExtensionSupport extensionReader = new UPCEANExtensionSupport();
  
  static
  {
    MIDDLE_PATTERN = new int[] { 1, 1, 1, 1, 1 };
    int[] arrayOfInt1 = { 2, 2, 2, 1 };
    int[] arrayOfInt2 = { 1, 1, 3, 2 };
    int[] arrayOfInt3 = { 1, 2, 3, 1 };
    L_PATTERNS = new int[][] { { 3, 2, 1, 1 }, arrayOfInt1, { 2, 1, 2, 2 }, { 1, 4, 1, 1 }, arrayOfInt2, arrayOfInt3, { 1, 1, 1, 4 }, { 1, 3, 1, 2 }, { 1, 2, 1, 3 }, { 3, 1, 1, 2 } };
    L_AND_G_PATTERNS = new int[20][];
    System.arraycopy(L_PATTERNS, 0, L_AND_G_PATTERNS, 0, 10);
    int i = 10;
    while (i < 20)
    {
      arrayOfInt1 = L_PATTERNS[(i - 10)];
      arrayOfInt2 = new int[arrayOfInt1.length];
      int j = 0;
      while (j < arrayOfInt1.length)
      {
        arrayOfInt2[j] = arrayOfInt1[(arrayOfInt1.length - j - 1)];
        j += 1;
      }
      L_AND_G_PATTERNS[i] = arrayOfInt2;
      i += 1;
    }
  }
  
  static boolean checkStandardUPCEANChecksum(CharSequence paramCharSequence)
    throws FormatException
  {
    int k = paramCharSequence.length();
    if (k == 0) {}
    int j;
    do
    {
      return false;
      j = 0;
      int i = k - 2;
      while (i >= 0)
      {
        int m = paramCharSequence.charAt(i) - '0';
        if ((m < 0) || (m > 9)) {
          throw FormatException.getFormatInstance();
        }
        j += m;
        i -= 2;
      }
      j *= 3;
      i = k - 1;
      while (i >= 0)
      {
        k = paramCharSequence.charAt(i) - '0';
        if ((k < 0) || (k > 9)) {
          throw FormatException.getFormatInstance();
        }
        j += k;
        i -= 2;
      }
    } while (j % 10 != 0);
    return true;
  }
  
  static int decodeDigit(BitArray paramBitArray, int[] paramArrayOfInt, int paramInt, int[][] paramArrayOfInt1)
    throws NotFoundException
  {
    recordPattern(paramBitArray, paramInt, paramArrayOfInt);
    int i = 122;
    int k = -1;
    int n = paramArrayOfInt1.length;
    paramInt = 0;
    while (paramInt < n)
    {
      int m = patternMatchVariance(paramArrayOfInt, paramArrayOfInt1[paramInt], 179);
      int j = i;
      if (m < i)
      {
        j = m;
        k = paramInt;
      }
      paramInt += 1;
      i = j;
    }
    if (k >= 0) {
      return k;
    }
    throw NotFoundException.getNotFoundInstance();
  }
  
  static int[] findGuardPattern(BitArray paramBitArray, int paramInt, boolean paramBoolean, int[] paramArrayOfInt)
    throws NotFoundException
  {
    return findGuardPattern(paramBitArray, paramInt, paramBoolean, paramArrayOfInt, new int[paramArrayOfInt.length]);
  }
  
  private static int[] findGuardPattern(BitArray paramBitArray, int paramInt, boolean paramBoolean, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
    throws NotFoundException
  {
    int m = paramArrayOfInt1.length;
    int n = paramBitArray.getSize();
    boolean bool = paramBoolean;
    if (paramBoolean) {}
    int i;
    int j;
    for (paramInt = paramBitArray.getNextUnset(paramInt);; paramInt = paramBitArray.getNextSet(paramInt))
    {
      int k = 0;
      i = paramInt;
      j = paramInt;
      paramInt = i;
      i = k;
      for (;;)
      {
        if (j >= n) {
          break label207;
        }
        if (!(paramBitArray.get(j) ^ bool)) {
          break;
        }
        paramArrayOfInt2[i] += 1;
        paramBoolean = bool;
        j += 1;
        bool = paramBoolean;
      }
    }
    if (i == m - 1)
    {
      if (patternMatchVariance(paramArrayOfInt2, paramArrayOfInt1, 179) < 122) {
        return new int[] { paramInt, j };
      }
      paramInt += paramArrayOfInt2[0] + paramArrayOfInt2[1];
      System.arraycopy(paramArrayOfInt2, 2, paramArrayOfInt2, 0, m - 2);
      paramArrayOfInt2[(m - 2)] = 0;
      paramArrayOfInt2[(m - 1)] = 0;
      i -= 1;
      label177:
      paramArrayOfInt2[i] = 1;
      if (bool) {
        break label202;
      }
    }
    label202:
    for (paramBoolean = true;; paramBoolean = false)
    {
      break;
      i += 1;
      break label177;
    }
    label207:
    throw NotFoundException.getNotFoundInstance();
  }
  
  static int[] findStartGuardPattern(BitArray paramBitArray)
    throws NotFoundException
  {
    boolean bool = false;
    Object localObject = null;
    int i = 0;
    int[] arrayOfInt2 = new int[START_END_PATTERN.length];
    while (!bool)
    {
      Arrays.fill(arrayOfInt2, 0, START_END_PATTERN.length, 0);
      int[] arrayOfInt1 = findGuardPattern(paramBitArray, i, false, START_END_PATTERN, arrayOfInt2);
      int k = arrayOfInt1[0];
      int j = arrayOfInt1[1];
      int m = k - (j - k);
      i = j;
      localObject = arrayOfInt1;
      if (m >= 0)
      {
        bool = paramBitArray.isRange(m, k, false);
        i = j;
        localObject = arrayOfInt1;
      }
    }
    return (int[])localObject;
  }
  
  boolean checkChecksum(String paramString)
    throws ChecksumException, FormatException
  {
    return checkStandardUPCEANChecksum(paramString);
  }
  
  int[] decodeEnd(BitArray paramBitArray, int paramInt)
    throws NotFoundException
  {
    return findGuardPattern(paramBitArray, paramInt, false, START_END_PATTERN);
  }
  
  protected abstract int decodeMiddle(BitArray paramBitArray, int[] paramArrayOfInt, StringBuilder paramStringBuilder)
    throws NotFoundException;
  
  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    return decodeRow(paramInt, paramBitArray, findStartGuardPattern(paramBitArray), paramMap);
  }
  
  public Result decodeRow(int paramInt, BitArray paramBitArray, int[] paramArrayOfInt, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    if (paramMap == null) {}
    int[] arrayOfInt;
    for (paramMap = null;; paramMap = (ResultPointCallback)paramMap.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK))
    {
      if (paramMap != null) {
        paramMap.foundPossibleResultPoint(new ResultPoint((paramArrayOfInt[0] + paramArrayOfInt[1]) / 2.0F, paramInt));
      }
      localObject = decodeRowStringBuffer;
      ((StringBuilder)localObject).setLength(0);
      int i = decodeMiddle(paramBitArray, paramArrayOfInt, (StringBuilder)localObject);
      if (paramMap != null) {
        paramMap.foundPossibleResultPoint(new ResultPoint(i, paramInt));
      }
      arrayOfInt = decodeEnd(paramBitArray, i);
      if (paramMap != null) {
        paramMap.foundPossibleResultPoint(new ResultPoint((arrayOfInt[0] + arrayOfInt[1]) / 2.0F, paramInt));
      }
      i = arrayOfInt[1];
      int j = i + (i - arrayOfInt[0]);
      if ((j < paramBitArray.getSize()) && (paramBitArray.isRange(i, j, false))) {
        break;
      }
      throw NotFoundException.getNotFoundInstance();
    }
    paramMap = ((StringBuilder)localObject).toString();
    if (!checkChecksum(paramMap)) {
      throw ChecksumException.getChecksumInstance();
    }
    float f1 = (paramArrayOfInt[1] + paramArrayOfInt[0]) / 2.0F;
    float f2 = (arrayOfInt[1] + arrayOfInt[0]) / 2.0F;
    Object localObject = getBarcodeFormat();
    paramArrayOfInt = new Result(paramMap, null, new ResultPoint[] { new ResultPoint(f1, paramInt), new ResultPoint(f2, paramInt) }, (BarcodeFormat)localObject);
    try
    {
      paramBitArray = extensionReader.decodeRow(paramInt, paramBitArray, arrayOfInt[1]);
      paramArrayOfInt.putMetadata(ResultMetadataType.UPC_EAN_EXTENSION, paramBitArray.getText());
      paramArrayOfInt.putAllMetadata(paramBitArray.getResultMetadata());
      paramArrayOfInt.addResultPoints(paramBitArray.getResultPoints());
      if ((localObject == BarcodeFormat.EAN_13) || (localObject == BarcodeFormat.UPC_A))
      {
        paramBitArray = eanManSupport.lookupCountryIdentifier(paramMap);
        if (paramBitArray != null) {
          paramArrayOfInt.putMetadata(ResultMetadataType.POSSIBLE_COUNTRY, paramBitArray);
        }
      }
      return paramArrayOfInt;
    }
    catch (ReaderException paramBitArray)
    {
      for (;;) {}
    }
  }
  
  abstract BarcodeFormat getBarcodeFormat();
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.UPCEANReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */