package com.google.b.a.a;

import java.io.UnsupportedEncodingException;

public final class b
{
  final int a;
  int b;
  private final byte[] c;
  
  private b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    c = paramArrayOfByte;
    b = paramInt1;
    a = (paramInt1 + paramInt2);
  }
  
  public static int a(long paramLong)
  {
    if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L) {
      return 1;
    }
    if ((0xFFFFFFFFFFFFC000 & paramLong) == 0L) {
      return 2;
    }
    if ((0xFFFFFFFFFFE00000 & paramLong) == 0L) {
      return 3;
    }
    if ((0xFFFFFFFFF0000000 & paramLong) == 0L) {
      return 4;
    }
    if ((0xFFFFFFF800000000 & paramLong) == 0L) {
      return 5;
    }
    if ((0xFFFFFC0000000000 & paramLong) == 0L) {
      return 6;
    }
    if ((0xFFFE000000000000 & paramLong) == 0L) {
      return 7;
    }
    if ((0xFF00000000000000 & paramLong) == 0L) {
      return 8;
    }
    if ((0x8000000000000000 & paramLong) == 0L) {
      return 9;
    }
    return 10;
  }
  
  public static b a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new b(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public static int b(int paramInt)
  {
    if (paramInt >= 0) {
      return f(paramInt);
    }
    return 10;
  }
  
  public static int b(int paramInt1, int paramInt2)
  {
    return d(paramInt1) + b(paramInt2);
  }
  
  public static int b(int paramInt, long paramLong)
  {
    return d(paramInt) + a(paramLong);
  }
  
  public static int b(int paramInt, h paramh)
  {
    paramInt = d(paramInt);
    int i = paramh.getSerializedSize();
    return paramInt + (i + f(i));
  }
  
  public static int b(int paramInt, String paramString)
  {
    return d(paramInt) + b(paramString);
  }
  
  public static int b(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      int i = f(paramString.length);
      int j = paramString.length;
      return j + i;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException("UTF-8 not supported.");
    }
  }
  
  public static int d(int paramInt)
  {
    return f(k.a(paramInt, 0));
  }
  
  public static int f(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0) {
      return 1;
    }
    if ((paramInt & 0xC000) == 0) {
      return 2;
    }
    if ((0xFFE00000 & paramInt) == 0) {
      return 3;
    }
    if ((0xF0000000 & paramInt) == 0) {
      return 4;
    }
    return 5;
  }
  
  public final void a(float paramFloat)
  {
    int i = Float.floatToIntBits(paramFloat);
    c(i & 0xFF);
    c(i >> 8 & 0xFF);
    c(i >> 16 & 0xFF);
    c(i >> 24 & 0xFF);
  }
  
  public final void a(int paramInt)
  {
    if (paramInt >= 0)
    {
      e(paramInt);
      return;
    }
    b(paramInt);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    c(paramInt1, 0);
    a(paramInt2);
  }
  
  public final void a(int paramInt, long paramLong)
  {
    c(paramInt, 0);
    b(paramLong);
  }
  
  public final void a(int paramInt, h paramh)
  {
    c(paramInt, 2);
    e(paramh.getCachedSize());
    paramh.writeTo(this);
  }
  
  public final void a(int paramInt, String paramString)
  {
    c(paramInt, 2);
    a(paramString);
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    c(paramInt, 0);
    a(paramBoolean);
  }
  
  public final void a(String paramString)
  {
    paramString = paramString.getBytes("UTF-8");
    e(paramString.length);
    a(paramString);
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      c(i);
      return;
    }
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    if (a - b >= i)
    {
      System.arraycopy(paramArrayOfByte, 0, c, b, i);
      b = (i + b);
      return;
    }
    throw new c(b, a);
  }
  
  public final void b(long paramLong)
  {
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        c((int)paramLong);
        return;
      }
      c((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }
  
  public final void c(int paramInt)
  {
    int i = (byte)paramInt;
    if (b == a) {
      throw new c(b, a);
    }
    byte[] arrayOfByte = c;
    paramInt = b;
    b = (paramInt + 1);
    arrayOfByte[paramInt] = i;
  }
  
  public final void c(int paramInt1, int paramInt2)
  {
    e(k.a(paramInt1, paramInt2));
  }
  
  public final void e(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        c(paramInt);
        return;
      }
      c(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.b.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */