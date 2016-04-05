package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

public final class WhiteRectangleDetector
{
  private static final int CORR = 1;
  private static final int INIT_SIZE = 30;
  private final int downInit;
  private final int height;
  private final BitMatrix image;
  private final int leftInit;
  private final int rightInit;
  private final int upInit;
  private final int width;
  
  public WhiteRectangleDetector(BitMatrix paramBitMatrix)
    throws NotFoundException
  {
    image = paramBitMatrix;
    height = paramBitMatrix.getHeight();
    width = paramBitMatrix.getWidth();
    leftInit = (width - 30 >> 1);
    rightInit = (width + 30 >> 1);
    upInit = (height - 30 >> 1);
    downInit = (height + 30 >> 1);
    if ((upInit < 0) || (leftInit < 0) || (downInit >= height) || (rightInit >= width)) {
      throw NotFoundException.getNotFoundInstance();
    }
  }
  
  public WhiteRectangleDetector(BitMatrix paramBitMatrix, int paramInt1, int paramInt2, int paramInt3)
    throws NotFoundException
  {
    image = paramBitMatrix;
    height = paramBitMatrix.getHeight();
    width = paramBitMatrix.getWidth();
    paramInt1 >>= 1;
    leftInit = (paramInt2 - paramInt1);
    rightInit = (paramInt2 + paramInt1);
    upInit = (paramInt3 - paramInt1);
    downInit = (paramInt3 + paramInt1);
    if ((upInit < 0) || (leftInit < 0) || (downInit >= height) || (rightInit >= width)) {
      throw NotFoundException.getNotFoundInstance();
    }
  }
  
  private ResultPoint[] centerEdges(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4)
  {
    float f1 = paramResultPoint1.getX();
    float f2 = paramResultPoint1.getY();
    float f3 = paramResultPoint2.getX();
    float f4 = paramResultPoint2.getY();
    float f5 = paramResultPoint3.getX();
    float f6 = paramResultPoint3.getY();
    float f7 = paramResultPoint4.getX();
    float f8 = paramResultPoint4.getY();
    if (f1 < width / 2) {
      return new ResultPoint[] { new ResultPoint(f7 - 1.0F, 1.0F + f8), new ResultPoint(1.0F + f3, 1.0F + f4), new ResultPoint(f5 - 1.0F, f6 - 1.0F), new ResultPoint(1.0F + f1, f2 - 1.0F) };
    }
    return new ResultPoint[] { new ResultPoint(1.0F + f7, 1.0F + f8), new ResultPoint(1.0F + f3, f4 - 1.0F), new ResultPoint(f5 - 1.0F, 1.0F + f6), new ResultPoint(f1 - 1.0F, f2 - 1.0F) };
  }
  
  private boolean containsBlackPoint(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if (paramBoolean) {
      while (paramInt1 <= paramInt2)
      {
        if (image.get(paramInt1, paramInt3)) {
          return true;
        }
        paramInt1 += 1;
      }
    }
    for (;;)
    {
      if (paramInt1 > paramInt2) {
        break label55;
      }
      if (image.get(paramInt3, paramInt1)) {
        break;
      }
      paramInt1 += 1;
    }
    label55:
    return false;
  }
  
  private ResultPoint getBlackPointOnSegment(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int j = MathUtils.round(MathUtils.distance(paramFloat1, paramFloat2, paramFloat3, paramFloat4));
    paramFloat3 = (paramFloat3 - paramFloat1) / j;
    paramFloat4 = (paramFloat4 - paramFloat2) / j;
    int i = 0;
    while (i < j)
    {
      int k = MathUtils.round(i * paramFloat3 + paramFloat1);
      int m = MathUtils.round(i * paramFloat4 + paramFloat2);
      if (image.get(k, m)) {
        return new ResultPoint(k, m);
      }
      i += 1;
    }
    return null;
  }
  
  public ResultPoint[] detect()
    throws NotFoundException
  {
    int m = leftInit;
    int i1 = rightInit;
    int j = upInit;
    int n = downInit;
    int i7 = 0;
    int i6 = 1;
    int i5 = 0;
    int i4 = n;
    int i2 = m;
    int k = i1;
    int i = i7;
    int i3 = j;
    int i8;
    boolean bool;
    if (i6 != 0)
    {
      i = 0;
      i8 = 1;
      k = i1;
      i1 = i;
      while ((i8 != 0) && (k < width))
      {
        bool = containsBlackPoint(j, n, k, false);
        i8 = bool;
        if (bool)
        {
          k += 1;
          i1 = 1;
          i8 = bool;
        }
      }
      if (k >= width)
      {
        i = 1;
        i3 = j;
        i2 = m;
        i4 = n;
      }
    }
    else
    {
      label148:
      if ((i != 0) || (i5 == 0)) {
        break label711;
      }
      j = k - i2;
      localResultPoint1 = null;
      i = 1;
    }
    ResultPoint localResultPoint2;
    for (;;)
    {
      localResultPoint2 = localResultPoint1;
      if (i < j)
      {
        localResultPoint1 = getBlackPointOnSegment(i2, i4 - i, i2 + i, i4);
        if (localResultPoint1 != null) {
          localResultPoint2 = localResultPoint1;
        }
      }
      else
      {
        if (localResultPoint2 != null) {
          break label522;
        }
        throw NotFoundException.getNotFoundInstance();
        i8 = 1;
        i = n;
        while ((i8 != 0) && (i < height))
        {
          bool = containsBlackPoint(m, k, i, true);
          i8 = bool;
          if (bool)
          {
            i += 1;
            i1 = 1;
            i8 = bool;
          }
        }
        if (i >= height)
        {
          n = 1;
          i4 = i;
          i2 = m;
          i = n;
          i3 = j;
          break label148;
        }
        i8 = 1;
        i2 = m;
        while ((i8 != 0) && (i2 >= 0))
        {
          bool = containsBlackPoint(j, i, i2, false);
          i8 = bool;
          if (bool)
          {
            i2 -= 1;
            i1 = 1;
            i8 = bool;
          }
        }
        if (i2 < 0)
        {
          m = 1;
          i4 = i;
          i = m;
          i3 = j;
          break label148;
        }
        i8 = 1;
        i3 = j;
        i4 = i1;
        while ((i8 != 0) && (i3 >= 0))
        {
          bool = containsBlackPoint(i2, k, i3, true);
          i8 = bool;
          if (bool)
          {
            i3 -= 1;
            i4 = 1;
            i8 = bool;
          }
        }
        if (i3 < 0)
        {
          j = 1;
          i4 = i;
          i = j;
          break label148;
        }
        i6 = i4;
        n = i;
        m = i2;
        i1 = k;
        j = i3;
        if (i4 == 0) {
          break;
        }
        i5 = 1;
        i6 = i4;
        n = i;
        m = i2;
        i1 = k;
        j = i3;
        break;
      }
      i += 1;
    }
    label522:
    ResultPoint localResultPoint1 = null;
    i = 1;
    ResultPoint localResultPoint3;
    for (;;)
    {
      localResultPoint3 = localResultPoint1;
      if (i < j)
      {
        localResultPoint1 = getBlackPointOnSegment(i2, i3 + i, i2 + i, i3);
        if (localResultPoint1 != null) {
          localResultPoint3 = localResultPoint1;
        }
      }
      else
      {
        if (localResultPoint3 != null) {
          break;
        }
        throw NotFoundException.getNotFoundInstance();
      }
      i += 1;
    }
    localResultPoint1 = null;
    i = 1;
    ResultPoint localResultPoint4;
    for (;;)
    {
      localResultPoint4 = localResultPoint1;
      if (i < j)
      {
        localResultPoint1 = getBlackPointOnSegment(k, i3 + i, k - i, i3);
        if (localResultPoint1 != null) {
          localResultPoint4 = localResultPoint1;
        }
      }
      else
      {
        if (localResultPoint4 != null) {
          break;
        }
        throw NotFoundException.getNotFoundInstance();
      }
      i += 1;
    }
    localResultPoint1 = null;
    i = 1;
    for (;;)
    {
      if (i < j)
      {
        localResultPoint1 = getBlackPointOnSegment(k, i4 - i, k - i, i4);
        if (localResultPoint1 == null) {}
      }
      else
      {
        if (localResultPoint1 != null) {
          break;
        }
        throw NotFoundException.getNotFoundInstance();
      }
      i += 1;
    }
    return centerEdges(localResultPoint1, localResultPoint2, localResultPoint4, localResultPoint3);
    label711:
    throw NotFoundException.getNotFoundInstance();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.common.detector.WhiteRectangleDetector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */