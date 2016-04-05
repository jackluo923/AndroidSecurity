package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

public abstract class OneDimensionalCodeWriter
  implements Writer
{
  protected static int appendPattern(boolean[] paramArrayOfBoolean, int paramInt, int[] paramArrayOfInt, boolean paramBoolean)
  {
    int j = 0;
    int m = paramArrayOfInt.length;
    int i = 0;
    if (i < m)
    {
      int n = paramArrayOfInt[i];
      int k = 0;
      while (k < n)
      {
        paramArrayOfBoolean[paramInt] = paramBoolean;
        k += 1;
        paramInt += 1;
      }
      j += n;
      if (!paramBoolean) {}
      for (paramBoolean = true;; paramBoolean = false)
      {
        i += 1;
        break;
      }
    }
    return j;
  }
  
  private static BitMatrix renderResult(boolean[] paramArrayOfBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramArrayOfBoolean.length;
    int j = i + paramInt3;
    int k = Math.max(paramInt1, j);
    paramInt3 = Math.max(1, paramInt2);
    j = k / j;
    paramInt1 = (k - i * j) / 2;
    BitMatrix localBitMatrix = new BitMatrix(k, paramInt3);
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      if (paramArrayOfBoolean[paramInt2] != 0) {
        localBitMatrix.setRegion(paramInt1, 0, j, paramInt3);
      }
      paramInt2 += 1;
      paramInt1 += j;
    }
    return localBitMatrix;
  }
  
  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
    throws WriterException
  {
    return encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, null);
  }
  
  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map<EncodeHintType, ?> paramMap)
    throws WriterException
  {
    if (paramString.length() == 0) {
      throw new IllegalArgumentException("Found empty contents");
    }
    if ((paramInt1 < 0) || (paramInt2 < 0)) {
      throw new IllegalArgumentException("Negative size is not allowed. Input: " + paramInt1 + 'x' + paramInt2);
    }
    int j = getDefaultMargin();
    int i = j;
    if (paramMap != null)
    {
      paramBarcodeFormat = (Integer)paramMap.get(EncodeHintType.MARGIN);
      i = j;
      if (paramBarcodeFormat != null) {
        i = paramBarcodeFormat.intValue();
      }
    }
    return renderResult(encode(paramString), paramInt1, paramInt2, i);
  }
  
  public abstract boolean[] encode(String paramString);
  
  public int getDefaultMargin()
  {
    return 10;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.OneDimensionalCodeWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */