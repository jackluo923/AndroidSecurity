package com.google.zxing.pdf417.encoder;

import com.google.zxing.WriterException;
import java.math.BigInteger;
import java.util.Arrays;

final class PDF417HighLevelEncoder
{
  private static final int BYTE_COMPACTION = 1;
  private static final int LATCH_TO_BYTE = 924;
  private static final int LATCH_TO_BYTE_PADDED = 901;
  private static final int LATCH_TO_NUMERIC = 902;
  private static final int LATCH_TO_TEXT = 900;
  private static final byte[] MIXED;
  private static final int NUMERIC_COMPACTION = 2;
  private static final byte[] PUNCTUATION;
  private static final int SHIFT_TO_BYTE = 913;
  private static final int SUBMODE_ALPHA = 0;
  private static final int SUBMODE_LOWER = 1;
  private static final int SUBMODE_MIXED = 2;
  private static final int SUBMODE_PUNCTUATION = 3;
  private static final int TEXT_COMPACTION = 0;
  private static final byte[] TEXT_MIXED_RAW = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0 };
  private static final byte[] TEXT_PUNCTUATION_RAW = { 59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0 };
  
  static
  {
    MIXED = new byte[''];
    PUNCTUATION = new byte[''];
    Arrays.fill(MIXED, (byte)-1);
    int j;
    for (int i = 0; i < TEXT_MIXED_RAW.length; i = (byte)(i + 1))
    {
      j = TEXT_MIXED_RAW[i];
      if (j > 0) {
        MIXED[j] = i;
      }
    }
    Arrays.fill(PUNCTUATION, (byte)-1);
    for (i = 0; i < TEXT_PUNCTUATION_RAW.length; i = (byte)(i + 1))
    {
      j = TEXT_PUNCTUATION_RAW[i];
      if (j > 0) {
        PUNCTUATION[j] = i;
      }
    }
  }
  
  private static int determineConsecutiveBinaryCount(CharSequence paramCharSequence, byte[] paramArrayOfByte, int paramInt)
    throws WriterException
  {
    int m = paramCharSequence.length();
    int j = paramInt;
    while (j < m)
    {
      char c = paramCharSequence.charAt(j);
      int i = 0;
      int k;
      for (;;)
      {
        k = i;
        if (i < 13)
        {
          k = i;
          if (isDigit(c))
          {
            i += 1;
            k = j + i;
            if (k < m) {
              break label88;
            }
            k = i;
          }
        }
        if (k < 13) {
          break;
        }
        return j - paramInt;
        label88:
        c = paramCharSequence.charAt(k);
      }
      i = 0;
      for (;;)
      {
        k = i;
        if (i < 5)
        {
          k = i;
          if (isText(c))
          {
            i += 1;
            k = j + i;
            if (k < m) {
              break label159;
            }
            k = i;
          }
        }
        if (k < 5) {
          break;
        }
        return j - paramInt;
        label159:
        c = paramCharSequence.charAt(k);
      }
      c = paramCharSequence.charAt(j);
      if ((paramArrayOfByte[j] == 63) && (c != '?')) {
        throw new WriterException("Non-encodable character detected: " + c + " (Unicode: " + c + ')');
      }
      j += 1;
    }
    return j - paramInt;
  }
  
  private static int determineConsecutiveDigitCount(CharSequence paramCharSequence, int paramInt)
  {
    int j = 0;
    int k = 0;
    int m = paramCharSequence.length();
    if (paramInt < m)
    {
      char c = paramCharSequence.charAt(paramInt);
      int i = paramInt;
      paramInt = k;
      for (;;)
      {
        j = paramInt;
        if (!isDigit(c)) {
          break;
        }
        j = paramInt;
        if (i >= m) {
          break;
        }
        j = paramInt + 1;
        k = i + 1;
        paramInt = j;
        i = k;
        if (k < m)
        {
          c = paramCharSequence.charAt(k);
          paramInt = j;
          i = k;
        }
      }
    }
    return j;
  }
  
  private static int determineConsecutiveTextCount(CharSequence paramCharSequence, int paramInt)
  {
    int n = paramCharSequence.length();
    int i = paramInt;
    for (;;)
    {
      int j = i;
      if (i < n)
      {
        char c = paramCharSequence.charAt(i);
        int k = 0;
        j = i;
        while ((k < 13) && (isDigit(c)) && (j < n))
        {
          i = k + 1;
          int m = j + 1;
          j = m;
          k = i;
          if (m < n)
          {
            c = paramCharSequence.charAt(m);
            j = m;
            k = i;
          }
        }
        if (k >= 13) {
          return j - paramInt - k;
        }
        i = j;
        if (k > 0) {
          continue;
        }
        if (isText(paramCharSequence.charAt(j))) {}
      }
      else
      {
        return j - paramInt;
      }
      i = j + 1;
    }
  }
  
  private static void encodeBinary(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, StringBuilder paramStringBuilder)
  {
    if ((paramInt2 == 1) && (paramInt3 == 0)) {
      paramStringBuilder.append('Α');
    }
    paramInt3 = paramInt1;
    int i = paramInt3;
    if (paramInt2 >= 6)
    {
      paramStringBuilder.append('Μ');
      char[] arrayOfChar = new char[5];
      for (;;)
      {
        i = paramInt3;
        if (paramInt1 + paramInt2 - paramInt3 < 6) {
          break;
        }
        long l = 0L;
        i = 0;
        while (i < 6)
        {
          l = (l << 8) + (paramArrayOfByte[(paramInt3 + i)] & 0xFF);
          i += 1;
        }
        i = 0;
        while (i < 5)
        {
          arrayOfChar[i] = ((char)(int)(l % 900L));
          l /= 900L;
          i += 1;
        }
        i = arrayOfChar.length - 1;
        while (i >= 0)
        {
          paramStringBuilder.append(arrayOfChar[i]);
          i -= 1;
        }
        paramInt3 += 6;
      }
    }
    if (i < paramInt1 + paramInt2) {
      paramStringBuilder.append('΅');
    }
    while (i < paramInt1 + paramInt2)
    {
      paramStringBuilder.append((char)(paramArrayOfByte[i] & 0xFF));
      i += 1;
    }
  }
  
  static String encodeHighLevel(String paramString, Compaction paramCompaction)
    throws WriterException
  {
    Object localObject = null;
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    int i1 = paramString.length();
    int j = 0;
    int i = 0;
    if (paramCompaction == Compaction.TEXT) {
      encodeText(paramString, 0, i1, localStringBuilder, 0);
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if (paramCompaction == Compaction.BYTE)
      {
        paramString = getBytesForMessage(paramString);
        encodeBinary(paramString, 0, paramString.length, 1, localStringBuilder);
      }
      else
      {
        if (paramCompaction != Compaction.NUMERIC) {
          break;
        }
        localStringBuilder.append('Ά');
        encodeNumeric(paramString, 0, i1, localStringBuilder);
      }
    }
    int k = 0;
    paramCompaction = (Compaction)localObject;
    label103:
    int m;
    while (j < i1)
    {
      m = determineConsecutiveDigitCount(paramString, j);
      if (m >= 13)
      {
        localStringBuilder.append('Ά');
        k = 2;
        i = 0;
        encodeNumeric(paramString, j, m, localStringBuilder);
        j += m;
      }
      else
      {
        int n = determineConsecutiveTextCount(paramString, j);
        if ((n >= 5) || (m == i1))
        {
          m = k;
          if (k != 0)
          {
            localStringBuilder.append('΄');
            m = 0;
            i = 0;
          }
          i = encodeText(paramString, j, n, localStringBuilder, i);
          j += n;
          k = m;
        }
        else
        {
          localObject = paramCompaction;
          if (paramCompaction == null) {
            localObject = getBytesForMessage(paramString);
          }
          n = determineConsecutiveBinaryCount(paramString, (byte[])localObject, j);
          m = n;
          if (n == 0) {
            m = 1;
          }
          if ((m != 1) || (k != 0)) {
            break label293;
          }
          encodeBinary((byte[])localObject, j, 1, 0, localStringBuilder);
        }
      }
    }
    for (;;)
    {
      j += m;
      paramCompaction = (Compaction)localObject;
      break label103;
      break;
      label293:
      encodeBinary((byte[])localObject, j, m, k, localStringBuilder);
      k = 1;
      i = 0;
    }
  }
  
  private static void encodeNumeric(String paramString, int paramInt1, int paramInt2, StringBuilder paramStringBuilder)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder(paramInt2 / 3 + 1);
    BigInteger localBigInteger2 = BigInteger.valueOf(900L);
    BigInteger localBigInteger3 = BigInteger.valueOf(0L);
    while (i < paramInt2 - 1)
    {
      localStringBuilder.setLength(0);
      int k = Math.min(44, paramInt2 - i);
      Object localObject = new BigInteger('1' + paramString.substring(paramInt1 + i, paramInt1 + i + k));
      BigInteger localBigInteger1;
      do
      {
        localStringBuilder.append((char)((BigInteger)localObject).mod(localBigInteger2).intValue());
        localBigInteger1 = ((BigInteger)localObject).divide(localBigInteger2);
        localObject = localBigInteger1;
      } while (!localBigInteger1.equals(localBigInteger3));
      int j = localStringBuilder.length() - 1;
      while (j >= 0)
      {
        paramStringBuilder.append(localStringBuilder.charAt(j));
        j -= 1;
      }
      i += k;
    }
  }
  
  private static int encodeText(CharSequence paramCharSequence, int paramInt1, int paramInt2, StringBuilder paramStringBuilder, int paramInt3)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramInt2);
    int j = 0;
    int i;
    label73:
    do
    {
      i = paramCharSequence.charAt(paramInt1 + j);
      switch (paramInt3)
      {
      default: 
        if (!isPunctuation(i)) {
          break label512;
        }
        localStringBuilder.append((char)PUNCTUATION[i]);
        k = j + 1;
        j = k;
      }
    } while (k < paramInt2);
    paramInt2 = 0;
    int k = localStringBuilder.length();
    paramInt1 = 0;
    label100:
    if (paramInt1 < k)
    {
      if (paramInt1 % 2 != 0)
      {
        j = 1;
        label115:
        if (j == 0) {
          break label532;
        }
        i = (char)(paramInt2 * 30 + localStringBuilder.charAt(paramInt1));
        paramStringBuilder.append(i);
      }
      label512:
      label532:
      for (paramInt2 = i;; paramInt2 = localStringBuilder.charAt(paramInt1))
      {
        paramInt1 += 1;
        break label100;
        if (isAlphaUpper(i))
        {
          if (i == 32)
          {
            localStringBuilder.append('\032');
            break label73;
          }
          localStringBuilder.append((char)(i - 65));
          break label73;
        }
        if (isAlphaLower(i))
        {
          paramInt3 = 1;
          localStringBuilder.append('\033');
          break;
        }
        if (isMixed(i))
        {
          paramInt3 = 2;
          localStringBuilder.append('\034');
          break;
        }
        localStringBuilder.append('\035');
        localStringBuilder.append((char)PUNCTUATION[i]);
        break label73;
        if (isAlphaLower(i))
        {
          if (i == 32)
          {
            localStringBuilder.append('\032');
            break label73;
          }
          localStringBuilder.append((char)(i - 97));
          break label73;
        }
        if (isAlphaUpper(i))
        {
          localStringBuilder.append('\033');
          localStringBuilder.append((char)(i - 65));
          break label73;
        }
        if (isMixed(i))
        {
          paramInt3 = 2;
          localStringBuilder.append('\034');
          break;
        }
        localStringBuilder.append('\035');
        localStringBuilder.append((char)PUNCTUATION[i]);
        break label73;
        if (isMixed(i))
        {
          localStringBuilder.append((char)MIXED[i]);
          break label73;
        }
        if (isAlphaUpper(i))
        {
          paramInt3 = 0;
          localStringBuilder.append('\034');
          break;
        }
        if (isAlphaLower(i))
        {
          paramInt3 = 1;
          localStringBuilder.append('\033');
          break;
        }
        if ((paramInt1 + j + 1 < paramInt2) && (isPunctuation(paramCharSequence.charAt(paramInt1 + j + 1))))
        {
          paramInt3 = 3;
          localStringBuilder.append('\031');
          break;
        }
        localStringBuilder.append('\035');
        localStringBuilder.append((char)PUNCTUATION[i]);
        break label73;
        paramInt3 = 0;
        localStringBuilder.append('\035');
        break;
        j = 0;
        break label115;
      }
    }
    if (k % 2 != 0) {
      paramStringBuilder.append((char)(paramInt2 * 30 + 29));
    }
    return paramInt3;
  }
  
  private static byte[] getBytesForMessage(String paramString)
  {
    return paramString.getBytes();
  }
  
  private static boolean isAlphaLower(char paramChar)
  {
    return (paramChar == ' ') || ((paramChar >= 'a') && (paramChar <= 'z'));
  }
  
  private static boolean isAlphaUpper(char paramChar)
  {
    return (paramChar == ' ') || ((paramChar >= 'A') && (paramChar <= 'Z'));
  }
  
  private static boolean isDigit(char paramChar)
  {
    return (paramChar >= '0') && (paramChar <= '9');
  }
  
  private static boolean isMixed(char paramChar)
  {
    return MIXED[paramChar] != -1;
  }
  
  private static boolean isPunctuation(char paramChar)
  {
    return PUNCTUATION[paramChar] != -1;
  }
  
  private static boolean isText(char paramChar)
  {
    return (paramChar == '\t') || (paramChar == '\n') || (paramChar == '\r') || ((paramChar >= ' ') && (paramChar <= '~'));
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */