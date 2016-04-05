package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class Code128Writer
  extends OneDimensionalCodeWriter
{
  private static final int CODE_CODE_B = 100;
  private static final int CODE_CODE_C = 99;
  private static final int CODE_FNC_1 = 102;
  private static final int CODE_FNC_2 = 97;
  private static final int CODE_FNC_3 = 96;
  private static final int CODE_FNC_4_B = 100;
  private static final int CODE_START_B = 104;
  private static final int CODE_START_C = 105;
  private static final int CODE_STOP = 106;
  private static final char ESCAPE_FNC_1 = 'ñ';
  private static final char ESCAPE_FNC_2 = 'ò';
  private static final char ESCAPE_FNC_3 = 'ó';
  private static final char ESCAPE_FNC_4 = 'ô';
  
  private static boolean isDigits(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    paramInt2 = paramInt1 + paramInt2;
    int j = paramCharSequence.length();
    if ((paramInt1 < paramInt2) && (paramInt1 < j))
    {
      k = paramCharSequence.charAt(paramInt1);
      if (k >= 48)
      {
        i = paramInt2;
        if (k <= 57) {}
      }
      else if (k == 241) {}
    }
    while (paramInt2 > j)
    {
      int k;
      return false;
      int i = paramInt2 + 1;
      paramInt1 += 1;
      paramInt2 = i;
      break;
    }
    return true;
  }
  
  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map<EncodeHintType, ?> paramMap)
    throws WriterException
  {
    if (paramBarcodeFormat != BarcodeFormat.CODE_128) {
      throw new IllegalArgumentException("Can only encode CODE_128, but got " + paramBarcodeFormat);
    }
    return super.encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, paramMap);
  }
  
  public boolean[] encode(String paramString)
  {
    int i3 = paramString.length();
    if ((i3 < 1) || (i3 > 80)) {
      throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got " + i3);
    }
    int i = 0;
    while (i < i3)
    {
      char c = paramString.charAt(i);
      if ((c < ' ') || (c > '~')) {
        switch (c)
        {
        default: 
          throw new IllegalArgumentException("Bad character in input: " + c);
        }
      }
      i += 1;
    }
    Object localObject = new ArrayList();
    int k = 0;
    int m = 1;
    int n = 0;
    int i1 = 0;
    label181:
    label196:
    int j;
    if (i1 < i3)
    {
      int i2;
      if (n == 99)
      {
        i = 2;
        if (!isDigits(paramString, i1, i)) {
          break label298;
        }
        i = 99;
        if (i != n) {
          break label436;
        }
        if (n != 100) {
          break label305;
        }
        i = paramString.charAt(i1) - ' ';
        j = i1 + 1;
        i2 = n;
      }
      for (;;)
      {
        ((Collection)localObject).add(Code128Reader.CODE_PATTERNS[i]);
        i = k + i * m;
        k = i;
        n = i2;
        i1 = j;
        if (j == 0) {
          break;
        }
        m += 1;
        k = i;
        n = i2;
        i1 = j;
        break;
        i = 4;
        break label181;
        label298:
        i = 100;
        break label196;
        label305:
        switch (paramString.charAt(i1))
        {
        default: 
          i = Integer.parseInt(paramString.substring(i1, i1 + 2));
          j = i1 + 2;
          i2 = n;
          break;
        case 'ñ': 
          i = 102;
          j = i1 + 1;
          i2 = n;
          break;
        case 'ò': 
          i = 97;
          j = i1 + 1;
          i2 = n;
          break;
        case 'ó': 
          i = 96;
          j = i1 + 1;
          i2 = n;
          break;
        case 'ô': 
          i = 100;
          j = i1 + 1;
          i2 = n;
        }
      }
      label436:
      if (n == 0) {
        if (i == 100) {
          j = 104;
        }
      }
      for (;;)
      {
        i2 = i;
        i = j;
        j = i1;
        break;
        j = 105;
        continue;
        j = i;
      }
    }
    ((Collection)localObject).add(Code128Reader.CODE_PATTERNS[(k % 103)]);
    ((Collection)localObject).add(Code128Reader.CODE_PATTERNS[106]);
    i = 0;
    paramString = ((Collection)localObject).iterator();
    if (paramString.hasNext())
    {
      int[] arrayOfInt = (int[])paramString.next();
      m = arrayOfInt.length;
      k = 0;
      j = i;
      for (;;)
      {
        i = j;
        if (k >= m) {
          break;
        }
        j += arrayOfInt[k];
        k += 1;
      }
    }
    paramString = new boolean[i];
    i = 0;
    localObject = ((Collection)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      i += appendPattern(paramString, i, (int[])((Iterator)localObject).next(), true);
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.Code128Writer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */