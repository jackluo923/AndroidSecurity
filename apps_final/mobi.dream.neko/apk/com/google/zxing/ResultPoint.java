package com.google.zxing;

import com.google.zxing.common.detector.MathUtils;

public class ResultPoint
{
  private final float x;
  private final float y;
  
  public ResultPoint(float paramFloat1, float paramFloat2)
  {
    x = paramFloat1;
    y = paramFloat2;
  }
  
  private static float crossProductZ(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3)
  {
    float f1 = x;
    float f2 = y;
    return (x - f1) * (y - f2) - (y - f2) * (x - f1);
  }
  
  public static float distance(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2)
  {
    return MathUtils.distance(x, y, x, y);
  }
  
  public static void orderBestPatterns(ResultPoint[] paramArrayOfResultPoint)
  {
    float f1 = distance(paramArrayOfResultPoint[0], paramArrayOfResultPoint[1]);
    float f2 = distance(paramArrayOfResultPoint[1], paramArrayOfResultPoint[2]);
    float f3 = distance(paramArrayOfResultPoint[0], paramArrayOfResultPoint[2]);
    ResultPoint localResultPoint3;
    ResultPoint localResultPoint1;
    ResultPoint localResultPoint2;
    if ((f2 >= f1) && (f2 >= f3))
    {
      localResultPoint3 = paramArrayOfResultPoint[0];
      localResultPoint1 = paramArrayOfResultPoint[1];
      localResultPoint2 = paramArrayOfResultPoint[2];
    }
    for (;;)
    {
      ResultPoint localResultPoint5 = localResultPoint1;
      ResultPoint localResultPoint4 = localResultPoint2;
      if (crossProductZ(localResultPoint1, localResultPoint3, localResultPoint2) < 0.0F)
      {
        localResultPoint4 = localResultPoint1;
        localResultPoint5 = localResultPoint2;
      }
      paramArrayOfResultPoint[0] = localResultPoint5;
      paramArrayOfResultPoint[1] = localResultPoint3;
      paramArrayOfResultPoint[2] = localResultPoint4;
      return;
      if ((f3 >= f2) && (f3 >= f1))
      {
        localResultPoint3 = paramArrayOfResultPoint[1];
        localResultPoint1 = paramArrayOfResultPoint[0];
        localResultPoint2 = paramArrayOfResultPoint[2];
      }
      else
      {
        localResultPoint3 = paramArrayOfResultPoint[2];
        localResultPoint1 = paramArrayOfResultPoint[0];
        localResultPoint2 = paramArrayOfResultPoint[1];
      }
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof ResultPoint))
    {
      paramObject = (ResultPoint)paramObject;
      bool1 = bool2;
      if (x == x)
      {
        bool1 = bool2;
        if (y == y) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final float getX()
  {
    return x;
  }
  
  public final float getY()
  {
    return y;
  }
  
  public final int hashCode()
  {
    return Float.floatToIntBits(x) * 31 + Float.floatToIntBits(y);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(25);
    localStringBuilder.append('(');
    localStringBuilder.append(x);
    localStringBuilder.append(',');
    localStringBuilder.append(y);
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.ResultPoint
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */