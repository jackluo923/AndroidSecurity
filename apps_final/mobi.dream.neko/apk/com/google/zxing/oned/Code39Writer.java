package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

public final class Code39Writer
  extends OneDimensionalCodeWriter
{
  private static void toIntArray(int paramInt, int[] paramArrayOfInt)
  {
    int i = 0;
    if (i < 9)
    {
      if ((paramInt & 1 << i) == 0) {}
      for (int j = 1;; j = 2)
      {
        paramArrayOfInt[i] = j;
        i += 1;
        break;
      }
    }
  }
  
  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map<EncodeHintType, ?> paramMap)
    throws WriterException
  {
    if (paramBarcodeFormat != BarcodeFormat.CODE_39) {
      throw new IllegalArgumentException("Can only encode CODE_39, but got " + paramBarcodeFormat);
    }
    return super.encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, paramMap);
  }
  
  public boolean[] encode(String paramString)
  {
    int m = paramString.length();
    if (m > 80) {
      throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + m);
    }
    int[] arrayOfInt1 = new int[9];
    int j = m + 25;
    int i = 0;
    int k;
    while (i < m)
    {
      k = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(paramString.charAt(i));
      toIntArray(Code39Reader.CHARACTER_ENCODINGS[k], arrayOfInt1);
      int n = arrayOfInt1.length;
      k = 0;
      while (k < n)
      {
        j += arrayOfInt1[k];
        k += 1;
      }
      i += 1;
    }
    boolean[] arrayOfBoolean = new boolean[j];
    toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], arrayOfInt1);
    i = appendPattern(arrayOfBoolean, 0, arrayOfInt1, true);
    int[] arrayOfInt2 = new int[1];
    arrayOfInt2[0] = 1;
    j = i + appendPattern(arrayOfBoolean, i, arrayOfInt2, false);
    i = m - 1;
    while (i >= 0)
    {
      k = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(paramString.charAt(i));
      toIntArray(Code39Reader.CHARACTER_ENCODINGS[k], arrayOfInt1);
      j += appendPattern(arrayOfBoolean, j, arrayOfInt1, true);
      j += appendPattern(arrayOfBoolean, j, arrayOfInt2, false);
      i -= 1;
    }
    toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], arrayOfInt1);
    appendPattern(arrayOfBoolean, j, arrayOfInt1, true);
    return arrayOfBoolean;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.Code39Writer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */