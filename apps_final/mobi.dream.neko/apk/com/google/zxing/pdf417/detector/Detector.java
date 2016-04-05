package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import java.util.Arrays;
import java.util.Map;

public final class Detector
{
  private static final int INTEGER_MATH_SHIFT = 8;
  private static final int MAX_AVG_VARIANCE = 107;
  private static final int MAX_INDIVIDUAL_VARIANCE = 204;
  private static final int PATTERN_MATCH_RESULT_SCALE_FACTOR = 256;
  private static final int SKEW_THRESHOLD = 3;
  private static final int[] START_PATTERN = { 8, 1, 1, 1, 1, 1, 1, 3 };
  private static final int[] START_PATTERN_REVERSE = { 3, 1, 1, 1, 1, 1, 1, 8 };
  private static final int[] STOP_PATTERN = { 7, 1, 1, 3, 1, 1, 1, 2, 1 };
  private static final int[] STOP_PATTERN_REVERSE = { 1, 2, 1, 1, 1, 3, 1, 1, 7 };
  private final BinaryBitmap image;
  
  public Detector(BinaryBitmap paramBinaryBitmap)
  {
    image = paramBinaryBitmap;
  }
  
  private static int computeDimension(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, float paramFloat)
  {
    return ((MathUtils.round(ResultPoint.distance(paramResultPoint1, paramResultPoint2) / paramFloat) + MathUtils.round(ResultPoint.distance(paramResultPoint3, paramResultPoint4) / paramFloat) >> 1) + 8) / 17 * 17;
  }
  
  private static float computeModuleWidth(ResultPoint[] paramArrayOfResultPoint)
  {
    return ((ResultPoint.distance(paramArrayOfResultPoint[0], paramArrayOfResultPoint[4]) + ResultPoint.distance(paramArrayOfResultPoint[1], paramArrayOfResultPoint[5])) / 34.0F + (ResultPoint.distance(paramArrayOfResultPoint[6], paramArrayOfResultPoint[2]) + ResultPoint.distance(paramArrayOfResultPoint[7], paramArrayOfResultPoint[3])) / 36.0F) / 2.0F;
  }
  
  private static int computeYDimension(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, float paramFloat)
  {
    return MathUtils.round(ResultPoint.distance(paramResultPoint1, paramResultPoint3) / paramFloat) + MathUtils.round(ResultPoint.distance(paramResultPoint2, paramResultPoint4) / paramFloat) >> 1;
  }
  
  private static void correctCodeWordVertices(ResultPoint[] paramArrayOfResultPoint, boolean paramBoolean)
  {
    float f3 = paramArrayOfResultPoint[0].getX();
    float f4 = paramArrayOfResultPoint[0].getY();
    float f5 = paramArrayOfResultPoint[2].getX();
    float f6 = paramArrayOfResultPoint[2].getY();
    float f7 = paramArrayOfResultPoint[4].getX();
    float f9 = paramArrayOfResultPoint[4].getY();
    float f8 = paramArrayOfResultPoint[6].getX();
    float f10 = paramArrayOfResultPoint[6].getY();
    float f2 = f9 - f10;
    float f1 = f2;
    if (paramBoolean) {
      f1 = -f2;
    }
    if (f1 > 3.0F)
    {
      f1 = f8 - f3;
      f2 = f10 - f4;
      f5 = (f7 - f3) * f1 / (f1 * f1 + f2 * f2);
    }
    do
    {
      paramArrayOfResultPoint[4] = new ResultPoint(f5 * f1 + f3, f5 * f2 + f4);
      for (;;)
      {
        f3 = paramArrayOfResultPoint[1].getX();
        f4 = paramArrayOfResultPoint[1].getY();
        f5 = paramArrayOfResultPoint[3].getX();
        f6 = paramArrayOfResultPoint[3].getY();
        f7 = paramArrayOfResultPoint[5].getX();
        f9 = paramArrayOfResultPoint[5].getY();
        f8 = paramArrayOfResultPoint[7].getX();
        f10 = paramArrayOfResultPoint[7].getY();
        f2 = f10 - f9;
        f1 = f2;
        if (paramBoolean) {
          f1 = -f2;
        }
        if (f1 <= 3.0F) {
          break;
        }
        f1 = f8 - f3;
        f2 = f10 - f4;
        f5 = (f7 - f3) * f1 / (f1 * f1 + f2 * f2);
        paramArrayOfResultPoint[5] = new ResultPoint(f5 * f1 + f3, f5 * f2 + f4);
        return;
        if (-f1 > 3.0F)
        {
          f1 = f5 - f7;
          f2 = f6 - f9;
          f3 = (f5 - f8) * f1 / (f1 * f1 + f2 * f2);
          paramArrayOfResultPoint[6] = new ResultPoint(f5 - f3 * f1, f6 - f3 * f2);
        }
      }
    } while (-f1 <= 3.0F);
    f1 = f5 - f7;
    f2 = f6 - f9;
    f3 = (f5 - f8) * f1 / (f1 * f1 + f2 * f2);
    paramArrayOfResultPoint[7] = new ResultPoint(f5 - f3 * f1, f6 - f3 * f2);
  }
  
  private static int[] findGuardPattern(BitMatrix paramBitMatrix, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    Arrays.fill(paramArrayOfInt2, 0, paramArrayOfInt2.length, 0);
    int m = paramArrayOfInt1.length;
    int j = 0;
    int i = paramInt1;
    int k = paramInt1;
    while (k < paramInt1 + paramInt3) {
      if ((paramBitMatrix.get(k, paramInt2) ^ paramBoolean))
      {
        paramArrayOfInt2[j] += 1;
        k += 1;
      }
      else
      {
        if (j == m - 1)
        {
          if (patternMatchVariance(paramArrayOfInt2, paramArrayOfInt1, 204) < 107) {
            return new int[] { i, k };
          }
          i += paramArrayOfInt2[0] + paramArrayOfInt2[1];
          System.arraycopy(paramArrayOfInt2, 2, paramArrayOfInt2, 0, m - 2);
          paramArrayOfInt2[(m - 2)] = 0;
          paramArrayOfInt2[(m - 1)] = 0;
          j -= 1;
          label153:
          paramArrayOfInt2[j] = 1;
          if (paramBoolean) {
            break label179;
          }
        }
        label179:
        for (paramBoolean = true;; paramBoolean = false)
        {
          break;
          j += 1;
          break label153;
        }
      }
    }
    return null;
  }
  
  private static ResultPoint[] findVertices(BitMatrix paramBitMatrix, boolean paramBoolean)
  {
    int n = paramBitMatrix.getHeight();
    int m = paramBitMatrix.getWidth();
    ResultPoint[] arrayOfResultPoint = new ResultPoint[8];
    int k = 0;
    int[] arrayOfInt1 = new int[START_PATTERN.length];
    int i;
    int i1;
    label50:
    int j;
    int[] arrayOfInt2;
    if (paramBoolean)
    {
      i = 9;
      i1 = Math.max(1, n >> i);
      i = 0;
      j = k;
      if (i < n)
      {
        arrayOfInt2 = findGuardPattern(paramBitMatrix, 0, i, m, false, START_PATTERN, arrayOfInt1);
        if (arrayOfInt2 == null) {
          break label404;
        }
        arrayOfResultPoint[0] = new ResultPoint(arrayOfInt2[0], i);
        arrayOfResultPoint[4] = new ResultPoint(arrayOfInt2[1], i);
        j = 1;
      }
      i = j;
      if (j != 0)
      {
        k = 0;
        j = n - 1;
        label139:
        i = k;
        if (j > 0)
        {
          arrayOfInt2 = findGuardPattern(paramBitMatrix, 0, j, m, false, START_PATTERN, arrayOfInt1);
          if (arrayOfInt2 == null) {
            break label414;
          }
          arrayOfResultPoint[1] = new ResultPoint(arrayOfInt2[0], j);
          arrayOfResultPoint[5] = new ResultPoint(arrayOfInt2[1], j);
          i = 1;
        }
      }
      arrayOfInt1 = new int[STOP_PATTERN.length];
      j = i;
      if (i != 0)
      {
        k = 0;
        i = 0;
        label230:
        j = k;
        if (i < n)
        {
          arrayOfInt2 = findGuardPattern(paramBitMatrix, 0, i, m, false, STOP_PATTERN, arrayOfInt1);
          if (arrayOfInt2 == null) {
            break label424;
          }
          arrayOfResultPoint[2] = new ResultPoint(arrayOfInt2[1], i);
          arrayOfResultPoint[6] = new ResultPoint(arrayOfInt2[0], i);
          j = 1;
        }
      }
      i = j;
      if (j != 0)
      {
        k = 0;
        j = n - 1;
      }
    }
    for (;;)
    {
      i = k;
      if (j > 0)
      {
        arrayOfInt2 = findGuardPattern(paramBitMatrix, 0, j, m, false, STOP_PATTERN, arrayOfInt1);
        if (arrayOfInt2 != null)
        {
          arrayOfResultPoint[3] = new ResultPoint(arrayOfInt2[1], j);
          arrayOfResultPoint[7] = new ResultPoint(arrayOfInt2[0], j);
          i = 1;
        }
      }
      else
      {
        if (i == 0) {
          break label444;
        }
        return arrayOfResultPoint;
        i = 7;
        break;
        label404:
        i += i1;
        break label50;
        label414:
        j -= i1;
        break label139;
        label424:
        i += i1;
        break label230;
      }
      j -= i1;
    }
    label444:
    return null;
  }
  
  private static ResultPoint[] findVertices180(BitMatrix paramBitMatrix, boolean paramBoolean)
  {
    int m = paramBitMatrix.getHeight();
    int n = paramBitMatrix.getWidth() >> 1;
    ResultPoint[] arrayOfResultPoint = new ResultPoint[8];
    int k = 0;
    int[] arrayOfInt1 = new int[START_PATTERN_REVERSE.length];
    int i;
    int i1;
    label55:
    int j;
    int[] arrayOfInt2;
    if (paramBoolean)
    {
      i = 9;
      i1 = Math.max(1, m >> i);
      i = m - 1;
      j = k;
      if (i > 0)
      {
        arrayOfInt2 = findGuardPattern(paramBitMatrix, n, i, n, true, START_PATTERN_REVERSE, arrayOfInt1);
        if (arrayOfInt2 == null) {
          break label408;
        }
        arrayOfResultPoint[0] = new ResultPoint(arrayOfInt2[1], i);
        arrayOfResultPoint[4] = new ResultPoint(arrayOfInt2[0], i);
        j = 1;
      }
      i = j;
      if (j != 0)
      {
        k = 0;
        j = 0;
        label140:
        i = k;
        if (j < m)
        {
          arrayOfInt2 = findGuardPattern(paramBitMatrix, n, j, n, true, START_PATTERN_REVERSE, arrayOfInt1);
          if (arrayOfInt2 == null) {
            break label418;
          }
          arrayOfResultPoint[1] = new ResultPoint(arrayOfInt2[1], j);
          arrayOfResultPoint[5] = new ResultPoint(arrayOfInt2[0], j);
          i = 1;
        }
      }
      arrayOfInt1 = new int[STOP_PATTERN_REVERSE.length];
      j = i;
      if (i != 0)
      {
        k = 0;
        i = m - 1;
        label237:
        j = k;
        if (i > 0)
        {
          arrayOfInt2 = findGuardPattern(paramBitMatrix, 0, i, n, false, STOP_PATTERN_REVERSE, arrayOfInt1);
          if (arrayOfInt2 == null) {
            break label428;
          }
          arrayOfResultPoint[2] = new ResultPoint(arrayOfInt2[0], i);
          arrayOfResultPoint[6] = new ResultPoint(arrayOfInt2[1], i);
          j = 1;
        }
      }
      i = j;
      if (j != 0)
      {
        k = 0;
        j = 0;
      }
    }
    for (;;)
    {
      i = k;
      if (j < m)
      {
        arrayOfInt2 = findGuardPattern(paramBitMatrix, 0, j, n, false, STOP_PATTERN_REVERSE, arrayOfInt1);
        if (arrayOfInt2 != null)
        {
          arrayOfResultPoint[3] = new ResultPoint(arrayOfInt2[0], j);
          arrayOfResultPoint[7] = new ResultPoint(arrayOfInt2[1], j);
          i = 1;
        }
      }
      else
      {
        if (i == 0) {
          break label448;
        }
        return arrayOfResultPoint;
        i = 7;
        break;
        label408:
        i -= i1;
        break label55;
        label418:
        j += i1;
        break label140;
        label428:
        i -= i1;
        break label237;
      }
      j += i1;
    }
    label448:
    return null;
  }
  
  private static int patternMatchVariance(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    int n = paramArrayOfInt1.length;
    int i = 0;
    int k = 0;
    int j = 0;
    while (j < n)
    {
      i += paramArrayOfInt1[j];
      k += paramArrayOfInt2[j];
      j += 1;
    }
    if (i < k) {}
    label143:
    for (;;)
    {
      return Integer.MAX_VALUE;
      int i1 = (i << 8) / k;
      k = 0;
      j = 0;
      if (j >= n) {
        break;
      }
      int m = paramArrayOfInt1[j] << 8;
      int i2 = paramArrayOfInt2[j] * i1;
      if (m > i2) {
        m -= i2;
      }
      for (;;)
      {
        if (m > paramInt * i1 >> 8) {
          break label143;
        }
        k += m;
        j += 1;
        break;
        m = i2 - m;
      }
    }
    return k / i;
  }
  
  private static BitMatrix sampleGrid(BitMatrix paramBitMatrix, ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, int paramInt1, int paramInt2)
    throws NotFoundException
  {
    return GridSampler.getInstance().sampleGrid(paramBitMatrix, paramInt1, paramInt2, 0.0F, 0.0F, paramInt1, 0.0F, paramInt1, paramInt2, 0.0F, paramInt2, paramResultPoint1.getX(), paramResultPoint1.getY(), paramResultPoint3.getX(), paramResultPoint3.getY(), paramResultPoint4.getX(), paramResultPoint4.getY(), paramResultPoint2.getX(), paramResultPoint2.getY());
  }
  
  public DetectorResult detect()
    throws NotFoundException
  {
    return detect(null);
  }
  
  public DetectorResult detect(Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    BitMatrix localBitMatrix = image.getBlackMatrix();
    boolean bool;
    if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.TRY_HARDER)))
    {
      bool = true;
      paramMap = findVertices(localBitMatrix, bool);
      if (paramMap != null) {
        break label75;
      }
      ResultPoint[] arrayOfResultPoint = findVertices180(localBitMatrix, bool);
      paramMap = arrayOfResultPoint;
      if (arrayOfResultPoint != null)
      {
        correctCodeWordVertices(arrayOfResultPoint, true);
        paramMap = arrayOfResultPoint;
      }
    }
    for (;;)
    {
      if (paramMap != null) {
        break label83;
      }
      throw NotFoundException.getNotFoundInstance();
      bool = false;
      break;
      label75:
      correctCodeWordVertices(paramMap, false);
    }
    label83:
    float f = computeModuleWidth(paramMap);
    if (f < 1.0F) {
      throw NotFoundException.getNotFoundInstance();
    }
    int j = computeDimension(paramMap[4], paramMap[6], paramMap[5], paramMap[7], f);
    if (j < 1) {
      throw NotFoundException.getNotFoundInstance();
    }
    int i = computeYDimension(paramMap[4], paramMap[6], paramMap[5], paramMap[7], f);
    if (i > j) {}
    for (;;)
    {
      return new DetectorResult(sampleGrid(localBitMatrix, paramMap[4], paramMap[5], paramMap[6], paramMap[7], j, i), new ResultPoint[] { paramMap[5], paramMap[4], paramMap[6], paramMap[7] });
      i = j;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.pdf417.detector.Detector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */