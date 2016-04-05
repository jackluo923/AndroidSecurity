package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class Code128Reader
  extends OneDReader
{
  private static final int CODE_CODE_A = 101;
  private static final int CODE_CODE_B = 100;
  private static final int CODE_CODE_C = 99;
  private static final int CODE_FNC_1 = 102;
  private static final int CODE_FNC_2 = 97;
  private static final int CODE_FNC_3 = 96;
  private static final int CODE_FNC_4_A = 101;
  private static final int CODE_FNC_4_B = 100;
  static final int[][] CODE_PATTERNS;
  private static final int CODE_SHIFT = 98;
  private static final int CODE_START_A = 103;
  private static final int CODE_START_B = 104;
  private static final int CODE_START_C = 105;
  private static final int CODE_STOP = 106;
  private static final int MAX_AVG_VARIANCE = 64;
  private static final int MAX_INDIVIDUAL_VARIANCE = 179;
  
  static
  {
    int[] arrayOfInt1 = { 2, 2, 2, 1, 2, 2 };
    int[] arrayOfInt2 = { 2, 2, 2, 2, 2, 1 };
    int[] arrayOfInt3 = { 1, 3, 2, 2, 1, 2 };
    int[] arrayOfInt4 = { 2, 2, 1, 2, 1, 3 };
    int[] arrayOfInt5 = { 2, 2, 1, 3, 1, 2 };
    int[] arrayOfInt6 = { 2, 3, 1, 2, 1, 2 };
    int[] arrayOfInt7 = { 1, 1, 2, 2, 3, 2 };
    int[] arrayOfInt8 = { 1, 2, 2, 2, 3, 1 };
    int[] arrayOfInt9 = { 1, 1, 3, 2, 2, 2 };
    int[] arrayOfInt10 = { 1, 2, 3, 1, 2, 2 };
    int[] arrayOfInt11 = { 1, 2, 3, 2, 2, 1 };
    int[] arrayOfInt12 = { 2, 2, 1, 1, 3, 2 };
    int[] arrayOfInt13 = { 2, 2, 1, 2, 3, 1 };
    int[] arrayOfInt14 = { 2, 1, 3, 2, 1, 2 };
    int[] arrayOfInt15 = { 3, 1, 1, 2, 2, 2 };
    int[] arrayOfInt16 = { 3, 2, 1, 1, 2, 2 };
    int[] arrayOfInt17 = { 3, 2, 1, 2, 2, 1 };
    int[] arrayOfInt18 = { 3, 1, 2, 2, 1, 2 };
    int[] arrayOfInt19 = { 3, 2, 2, 1, 1, 2 };
    int[] arrayOfInt20 = { 3, 2, 2, 2, 1, 1 };
    int[] arrayOfInt21 = { 2, 1, 2, 1, 2, 3 };
    int[] arrayOfInt22 = { 2, 1, 2, 3, 2, 1 };
    int[] arrayOfInt23 = { 2, 3, 2, 1, 2, 1 };
    int[] arrayOfInt24 = { 1, 1, 1, 3, 2, 3 };
    int[] arrayOfInt25 = { 1, 3, 1, 1, 2, 3 };
    int[] arrayOfInt26 = { 1, 3, 2, 1, 1, 3 };
    int[] arrayOfInt27 = { 1, 3, 2, 3, 1, 1 };
    int[] arrayOfInt28 = { 2, 1, 1, 3, 1, 3 };
    int[] arrayOfInt29 = { 2, 3, 1, 3, 1, 1 };
    int[] arrayOfInt30 = { 1, 1, 2, 1, 3, 3 };
    int[] arrayOfInt31 = { 1, 1, 2, 3, 3, 1 };
    int[] arrayOfInt32 = { 1, 3, 2, 1, 3, 1 };
    int[] arrayOfInt33 = { 1, 1, 3, 1, 2, 3 };
    int[] arrayOfInt34 = { 1, 1, 3, 3, 2, 1 };
    int[] arrayOfInt35 = { 1, 3, 3, 1, 2, 1 };
    int[] arrayOfInt36 = { 3, 1, 3, 1, 2, 1 };
    int[] arrayOfInt37 = { 2, 1, 1, 3, 3, 1 };
    int[] arrayOfInt38 = { 2, 3, 1, 1, 3, 1 };
    int[] arrayOfInt39 = { 2, 1, 3, 1, 1, 3 };
    int[] arrayOfInt40 = { 2, 1, 3, 1, 3, 1 };
    int[] arrayOfInt41 = { 3, 1, 1, 1, 2, 3 };
    int[] arrayOfInt42 = { 3, 1, 1, 3, 2, 1 };
    int[] arrayOfInt43 = { 3, 3, 1, 1, 2, 1 };
    int[] arrayOfInt44 = { 3, 1, 2, 1, 1, 3 };
    int[] arrayOfInt45 = { 3, 1, 2, 3, 1, 1 };
    int[] arrayOfInt46 = { 3, 1, 4, 1, 1, 1 };
    int[] arrayOfInt47 = { 2, 2, 1, 4, 1, 1 };
    int[] arrayOfInt48 = { 4, 3, 1, 1, 1, 1 };
    int[] arrayOfInt49 = { 1, 1, 1, 2, 2, 4 };
    int[] arrayOfInt50 = { 1, 1, 1, 4, 2, 2 };
    int[] arrayOfInt51 = { 1, 2, 1, 1, 2, 4 };
    int[] arrayOfInt52 = { 1, 4, 1, 1, 2, 2 };
    int[] arrayOfInt53 = { 1, 4, 1, 2, 2, 1 };
    int[] arrayOfInt54 = { 1, 1, 2, 2, 1, 4 };
    int[] arrayOfInt55 = { 1, 1, 2, 4, 1, 2 };
    int[] arrayOfInt56 = { 1, 2, 2, 4, 1, 1 };
    int[] arrayOfInt57 = { 1, 4, 2, 1, 1, 2 };
    int[] arrayOfInt58 = { 1, 4, 2, 2, 1, 1 };
    int[] arrayOfInt59 = { 2, 4, 1, 2, 1, 1 };
    int[] arrayOfInt60 = { 2, 2, 1, 1, 1, 4 };
    int[] arrayOfInt61 = { 4, 1, 3, 1, 1, 1 };
    int[] arrayOfInt62 = { 1, 3, 4, 1, 1, 1 };
    int[] arrayOfInt63 = { 1, 2, 1, 1, 4, 2 };
    int[] arrayOfInt64 = { 1, 2, 4, 1, 1, 2 };
    int[] arrayOfInt65 = { 1, 2, 4, 2, 1, 1 };
    int[] arrayOfInt66 = { 4, 1, 1, 2, 1, 2 };
    int[] arrayOfInt67 = { 4, 2, 1, 2, 1, 1 };
    int[] arrayOfInt68 = { 2, 1, 2, 1, 4, 1 };
    int[] arrayOfInt69 = { 1, 1, 1, 1, 4, 3 };
    int[] arrayOfInt70 = { 1, 1, 1, 3, 4, 1 };
    int[] arrayOfInt71 = { 1, 3, 1, 1, 4, 1 };
    int[] arrayOfInt72 = { 1, 1, 4, 1, 1, 3 };
    int[] arrayOfInt73 = { 4, 1, 1, 1, 1, 3 };
    int[] arrayOfInt74 = { 1, 1, 3, 1, 4, 1 };
    int[] arrayOfInt75 = { 1, 1, 4, 1, 3, 1 };
    int[] arrayOfInt76 = { 4, 1, 1, 1, 3, 1 };
    int[] arrayOfInt77 = { 2, 1, 1, 4, 1, 2 };
    int[] arrayOfInt78 = { 2, 1, 1, 2, 1, 4 };
    int[] arrayOfInt79 = { 2, 1, 1, 2, 3, 2 };
    int[] arrayOfInt80 = { 2, 3, 3, 1, 1, 1, 2 };
    CODE_PATTERNS = new int[][] { { 2, 1, 2, 2, 2, 2 }, arrayOfInt1, arrayOfInt2, { 1, 2, 1, 2, 2, 3 }, { 1, 2, 1, 3, 2, 2 }, { 1, 3, 1, 2, 2, 2 }, { 1, 2, 2, 2, 1, 3 }, { 1, 2, 2, 3, 1, 2 }, arrayOfInt3, arrayOfInt4, arrayOfInt5, arrayOfInt6, arrayOfInt7, { 1, 2, 2, 1, 3, 2 }, arrayOfInt8, arrayOfInt9, arrayOfInt10, arrayOfInt11, { 2, 2, 3, 2, 1, 1 }, arrayOfInt12, arrayOfInt13, arrayOfInt14, { 2, 2, 3, 1, 1, 2 }, { 3, 1, 2, 1, 3, 1 }, arrayOfInt15, arrayOfInt16, arrayOfInt17, arrayOfInt18, arrayOfInt19, arrayOfInt20, arrayOfInt21, arrayOfInt22, arrayOfInt23, arrayOfInt24, arrayOfInt25, { 1, 3, 1, 3, 2, 1 }, { 1, 1, 2, 3, 1, 3 }, arrayOfInt26, arrayOfInt27, arrayOfInt28, { 2, 3, 1, 1, 1, 3 }, arrayOfInt29, arrayOfInt30, arrayOfInt31, arrayOfInt32, arrayOfInt33, arrayOfInt34, arrayOfInt35, arrayOfInt36, arrayOfInt37, arrayOfInt38, arrayOfInt39, { 2, 1, 3, 3, 1, 1 }, arrayOfInt40, arrayOfInt41, arrayOfInt42, arrayOfInt43, arrayOfInt44, arrayOfInt45, { 3, 3, 2, 1, 1, 1 }, arrayOfInt46, arrayOfInt47, arrayOfInt48, arrayOfInt49, arrayOfInt50, arrayOfInt51, { 1, 2, 1, 4, 2, 1 }, arrayOfInt52, arrayOfInt53, arrayOfInt54, arrayOfInt55, { 1, 2, 2, 1, 1, 4 }, arrayOfInt56, arrayOfInt57, arrayOfInt58, arrayOfInt59, arrayOfInt60, arrayOfInt61, { 2, 4, 1, 1, 1, 2 }, arrayOfInt62, { 1, 1, 1, 2, 4, 2 }, arrayOfInt63, { 1, 2, 1, 2, 4, 1 }, { 1, 1, 4, 2, 1, 2 }, arrayOfInt64, arrayOfInt65, arrayOfInt66, { 4, 2, 1, 1, 1, 2 }, arrayOfInt67, arrayOfInt68, { 2, 1, 4, 1, 2, 1 }, { 4, 1, 2, 1, 2, 1 }, arrayOfInt69, arrayOfInt70, arrayOfInt71, arrayOfInt72, { 1, 1, 4, 3, 1, 1 }, arrayOfInt73, { 4, 1, 1, 3, 1, 1 }, arrayOfInt74, arrayOfInt75, { 3, 1, 1, 1, 4, 1 }, arrayOfInt76, arrayOfInt77, arrayOfInt78, arrayOfInt79, arrayOfInt80 };
  }
  
  private static int decodeCode(BitArray paramBitArray, int[] paramArrayOfInt, int paramInt)
    throws NotFoundException
  {
    recordPattern(paramBitArray, paramInt, paramArrayOfInt);
    int i = 64;
    int k = -1;
    paramInt = 0;
    while (paramInt < CODE_PATTERNS.length)
    {
      int m = patternMatchVariance(paramArrayOfInt, CODE_PATTERNS[paramInt], 179);
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
  
  private static int[] findStartPattern(BitArray paramBitArray)
    throws NotFoundException
  {
    int i5 = paramBitArray.getSize();
    int m = paramBitArray.getNextSet(0);
    int n = 0;
    int[] arrayOfInt = new int[6];
    int i = m;
    int k = 0;
    int i6 = arrayOfInt.length;
    while (m < i5)
    {
      int j;
      if ((paramBitArray.get(m) ^ k))
      {
        arrayOfInt[n] += 1;
        j = n;
        m += 1;
        n = j;
      }
      else
      {
        if (n == i6 - 1)
        {
          int i1 = 64;
          int i3 = -1;
          j = 103;
          while (j <= 105)
          {
            int i4 = patternMatchVariance(arrayOfInt, CODE_PATTERNS[j], 179);
            int i2 = i1;
            if (i4 < i1)
            {
              i2 = i4;
              i3 = j;
            }
            j += 1;
            i1 = i2;
          }
          if ((i3 >= 0) && (paramBitArray.isRange(Math.max(0, i - (m - i) / 2), i, false))) {
            return new int[] { i, m, i3 };
          }
          i += arrayOfInt[0] + arrayOfInt[1];
          System.arraycopy(arrayOfInt, 2, arrayOfInt, 0, i6 - 2);
          arrayOfInt[(i6 - 2)] = 0;
          arrayOfInt[(i6 - 1)] = 0;
          j = n - 1;
          label227:
          arrayOfInt[j] = 1;
          if (k != 0) {
            break label250;
          }
        }
        label250:
        for (k = 1;; k = 0)
        {
          break;
          j = n + 1;
          break label227;
        }
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }
  
  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, FormatException, ChecksumException
  {
    Object localObject2 = findStartPattern(paramBitArray);
    int i14 = localObject2[2];
    int i7;
    int i3;
    int i12;
    int i1;
    int i13;
    int i4;
    int i11;
    int i2;
    switch (i14)
    {
    default: 
      throw FormatException.getFormatInstance();
    case 103: 
      i = 101;
      i7 = 0;
      i3 = 0;
      paramMap = new StringBuilder(20);
      localObject1 = new ArrayList(20);
      i12 = localObject2[0];
      i1 = localObject2[1];
      localObject3 = new int[6];
      i13 = 0;
      i4 = 0;
      i11 = 0;
      i2 = 1;
      n = i;
    }
    int i16;
    int i5;
    int i15;
    int i8;
    int i6;
    int i9;
    int k;
    int i10;
    int m;
    label320:
    do
    {
      i16 = i3;
      if (i7 != 0) {
        break label1086;
      }
      i3 = 0;
      i5 = i4;
      i15 = decodeCode(paramBitArray, (int[])localObject3, i1);
      ((List)localObject1).add(Byte.valueOf((byte)i15));
      j = i2;
      if (i15 != 106) {
        j = 1;
      }
      i8 = i14;
      i6 = i11;
      if (i15 != 106)
      {
        i6 = i11 + 1;
        i8 = i14 + i6 * i15;
      }
      i9 = i1;
      k = localObject3.length;
      i = 0;
      i10 = i1;
      for (;;)
      {
        if (i < k)
        {
          i10 += localObject3[i];
          i += 1;
          continue;
          i = 100;
          break;
          i = 99;
          break;
        }
      }
      switch (i15)
      {
      default: 
        switch (n)
        {
        default: 
          m = i3;
          k = i7;
          i = n;
          i14 = i8;
          i4 = i15;
          n = i;
          i7 = k;
          i3 = m;
          i2 = j;
          i13 = i5;
          i12 = i9;
          i11 = i6;
          i1 = i10;
        }
        break;
      }
    } while (i16 == 0);
    if (i == 101) {}
    for (int n = 100;; n = 101)
    {
      i14 = i8;
      i4 = i15;
      i7 = k;
      i3 = m;
      i2 = j;
      i13 = i5;
      i12 = i9;
      i11 = i6;
      i1 = i10;
      break;
      throw FormatException.getFormatInstance();
      if (i15 < 64)
      {
        paramMap.append((char)(i15 + 32));
        i = n;
        k = i7;
        m = i3;
        break label320;
      }
      if (i15 < 96)
      {
        paramMap.append((char)(i15 - 64));
        i = n;
        k = i7;
        m = i3;
        break label320;
      }
      i1 = j;
      if (i15 != 106) {
        i1 = 0;
      }
      i = n;
      k = i7;
      m = i3;
      j = i1;
      switch (i15)
      {
      case 96: 
      case 97: 
      case 101: 
      case 102: 
      case 103: 
      case 104: 
      case 105: 
      default: 
        i = n;
        k = i7;
        m = i3;
        j = i1;
        break;
      case 98: 
        m = 1;
        i = 100;
        k = i7;
        j = i1;
        break;
      case 100: 
        i = 100;
        k = i7;
        m = i3;
        j = i1;
        break;
      case 99: 
        i = 99;
        k = i7;
        m = i3;
        j = i1;
        break;
      case 106: 
        k = 1;
        i = n;
        m = i3;
        j = i1;
        break;
        if (i15 < 96)
        {
          paramMap.append((char)(i15 + 32));
          i = n;
          k = i7;
          m = i3;
          break;
        }
        i1 = j;
        if (i15 != 106) {
          i1 = 0;
        }
        i = n;
        k = i7;
        m = i3;
        j = i1;
        switch (i15)
        {
        case 96: 
        case 97: 
        case 100: 
        case 102: 
        case 103: 
        case 104: 
        case 105: 
        default: 
          i = n;
          k = i7;
          m = i3;
          j = i1;
          break;
        case 98: 
          m = 1;
          i = 101;
          k = i7;
          j = i1;
          break;
        case 101: 
          i = 101;
          k = i7;
          m = i3;
          j = i1;
          break;
        case 99: 
          i = 99;
          k = i7;
          m = i3;
          j = i1;
          break;
        case 106: 
          k = 1;
          i = n;
          m = i3;
          j = i1;
          break;
          if (i15 < 100)
          {
            if (i15 < 10) {
              paramMap.append('0');
            }
            paramMap.append(i15);
            i = n;
            k = i7;
            m = i3;
            break;
          }
          i1 = j;
          if (i15 != 106) {
            i1 = 0;
          }
          i = n;
          k = i7;
          m = i3;
          j = i1;
          switch (i15)
          {
          case 102: 
          case 103: 
          case 104: 
          case 105: 
          default: 
            i = n;
            k = i7;
            m = i3;
            j = i1;
            break;
          case 100: 
            i = 100;
            k = i7;
            m = i3;
            j = i1;
            break;
          case 101: 
            i = 101;
            k = i7;
            m = i3;
            j = i1;
            break;
          case 106: 
            k = 1;
            i = n;
            m = i3;
            j = i1;
            break;
          }
          break;
        }
        break;
      }
    }
    label1086:
    int i = paramBitArray.getNextUnset(i1);
    if (!paramBitArray.isRange(i, Math.min(paramBitArray.getSize(), (i - i12) / 2 + i), false)) {
      throw NotFoundException.getNotFoundInstance();
    }
    if ((i14 - i11 * i13) % 103 != i13) {
      throw ChecksumException.getChecksumInstance();
    }
    int j = paramMap.length();
    if (j == 0) {
      throw NotFoundException.getNotFoundInstance();
    }
    if ((j > 0) && (i2 != 0))
    {
      if (n != 99) {
        break label1264;
      }
      paramMap.delete(j - 2, j);
    }
    float f1;
    float f2;
    for (;;)
    {
      f1 = (localObject2[1] + localObject2[0]) / 2.0F;
      f2 = (i + i12) / 2.0F;
      j = ((List)localObject1).size();
      paramBitArray = new byte[j];
      i = 0;
      while (i < j)
      {
        paramBitArray[i] = ((Byte)((List)localObject1).get(i)).byteValue();
        i += 1;
      }
      label1264:
      paramMap.delete(j - 1, j);
    }
    paramMap = paramMap.toString();
    Object localObject1 = new ResultPoint(f1, paramInt);
    localObject2 = new ResultPoint(f2, paramInt);
    Object localObject3 = BarcodeFormat.CODE_128;
    return new Result(paramMap, paramBitArray, new ResultPoint[] { localObject1, localObject2 }, (BarcodeFormat)localObject3);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.Code128Reader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */