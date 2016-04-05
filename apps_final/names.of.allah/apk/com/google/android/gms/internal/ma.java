package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;

public final class ma
{
  private final int amT;
  private final byte[] buffer;
  private int position;
  
  private ma(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    buffer = paramArrayOfByte;
    position = paramInt1;
    amT = (paramInt1 + paramInt2);
  }
  
  public static int D(long paramLong)
  {
    return G(paramLong);
  }
  
  public static int E(long paramLong)
  {
    return G(I(paramLong));
  }
  
  public static int G(long paramLong)
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
  
  public static long I(long paramLong)
  {
    return paramLong << 1 ^ paramLong >> 63;
  }
  
  public static int J(boolean paramBoolean)
  {
    return 1;
  }
  
  public static int b(int paramInt, double paramDouble)
  {
    return eH(paramInt) + f(paramDouble);
  }
  
  public static int b(int paramInt, mf parammf)
  {
    return eH(paramInt) + c(parammf);
  }
  
  public static int b(int paramInt, boolean paramBoolean)
  {
    return eH(paramInt) + J(paramBoolean);
  }
  
  public static int b(int paramInt, byte[] paramArrayOfByte)
  {
    return eH(paramInt) + s(paramArrayOfByte);
  }
  
  public static ma b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new ma(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public static int c(int paramInt, float paramFloat)
  {
    return eH(paramInt) + e(paramFloat);
  }
  
  public static int c(mf parammf)
  {
    int i = parammf.nV();
    return i + eJ(i);
  }
  
  public static int cz(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      int i = eJ(paramString.length);
      int j = paramString.length;
      return j + i;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException("UTF-8 not supported.");
    }
  }
  
  public static int d(int paramInt, long paramLong)
  {
    return eH(paramInt) + D(paramLong);
  }
  
  public static int e(float paramFloat)
  {
    return 4;
  }
  
  public static int e(int paramInt, long paramLong)
  {
    return eH(paramInt) + E(paramLong);
  }
  
  public static int eE(int paramInt)
  {
    if (paramInt >= 0) {
      return eJ(paramInt);
    }
    return 10;
  }
  
  public static int eF(int paramInt)
  {
    return eJ(eL(paramInt));
  }
  
  public static int eH(int paramInt)
  {
    return eJ(mi.u(paramInt, 0));
  }
  
  public static int eJ(int paramInt)
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
  
  public static int eL(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }
  
  public static int f(double paramDouble)
  {
    return 8;
  }
  
  public static int h(int paramInt, String paramString)
  {
    return eH(paramInt) + cz(paramString);
  }
  
  public static ma q(byte[] paramArrayOfByte)
  {
    return b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static int r(int paramInt1, int paramInt2)
  {
    return eH(paramInt1) + eE(paramInt2);
  }
  
  public static int s(int paramInt1, int paramInt2)
  {
    return eH(paramInt1) + eF(paramInt2);
  }
  
  public static int s(byte[] paramArrayOfByte)
  {
    return eJ(paramArrayOfByte.length) + paramArrayOfByte.length;
  }
  
  public final void B(long paramLong)
  {
    F(paramLong);
  }
  
  public final void C(long paramLong)
  {
    F(I(paramLong));
  }
  
  public final void F(long paramLong)
  {
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        b((byte)(int)paramLong);
        return;
      }
      b((byte)((int)paramLong & 0x7F | 0x80));
      paramLong >>>= 7;
    }
  }
  
  public final void H(long paramLong)
  {
    b((byte)((int)paramLong & 0xFF));
    b((byte)((int)(paramLong >> 8) & 0xFF));
    b((byte)((int)(paramLong >> 16) & 0xFF));
    b((byte)((int)(paramLong >> 24) & 0xFF));
    b((byte)((int)(paramLong >> 32) & 0xFF));
    b((byte)((int)(paramLong >> 40) & 0xFF));
    b((byte)((int)(paramLong >> 48) & 0xFF));
    b((byte)((int)(paramLong >> 56) & 0xFF));
  }
  
  public final void I(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      b((byte)i);
      return;
    }
  }
  
  public final void a(int paramInt, double paramDouble)
  {
    t(paramInt, 1);
    e(paramDouble);
  }
  
  public final void a(int paramInt, mf parammf)
  {
    t(paramInt, 2);
    b(parammf);
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    t(paramInt, 0);
    I(paramBoolean);
  }
  
  public final void a(int paramInt, byte[] paramArrayOfByte)
  {
    t(paramInt, 2);
    r(paramArrayOfByte);
  }
  
  public final void b(byte paramByte)
  {
    if (position == amT) {
      throw new ma.a(position, amT);
    }
    byte[] arrayOfByte = buffer;
    int i = position;
    position = (i + 1);
    arrayOfByte[i] = paramByte;
  }
  
  public final void b(int paramInt, float paramFloat)
  {
    t(paramInt, 5);
    d(paramFloat);
  }
  
  public final void b(int paramInt, long paramLong)
  {
    t(paramInt, 0);
    F(paramLong);
  }
  
  public final void b(int paramInt, String paramString)
  {
    t(paramInt, 2);
    cy(paramString);
  }
  
  public final void b(mf parammf)
  {
    eI(parammf.nU());
    parammf.a(this);
  }
  
  public final void c(int paramInt, long paramLong)
  {
    t(paramInt, 0);
    C(paramLong);
  }
  
  public final void c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (amT - position >= paramInt2)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, buffer, position, paramInt2);
      position += paramInt2;
      return;
    }
    throw new ma.a(position, amT);
  }
  
  public final void cy(String paramString)
  {
    paramString = paramString.getBytes("UTF-8");
    eI(paramString.length);
    t(paramString);
  }
  
  public final void d(float paramFloat)
  {
    eK(Float.floatToIntBits(paramFloat));
  }
  
  public final void e(double paramDouble)
  {
    H(Double.doubleToLongBits(paramDouble));
  }
  
  public final void eC(int paramInt)
  {
    if (paramInt >= 0)
    {
      eI(paramInt);
      return;
    }
    F(paramInt);
  }
  
  public final void eD(int paramInt)
  {
    eI(eL(paramInt));
  }
  
  public final void eG(int paramInt)
  {
    b((byte)paramInt);
  }
  
  public final void eI(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        b((byte)paramInt);
        return;
      }
      b((byte)(paramInt & 0x7F | 0x80));
      paramInt >>>= 7;
    }
  }
  
  public final void eK(int paramInt)
  {
    b((byte)(paramInt & 0xFF));
    b((byte)(paramInt >> 8 & 0xFF));
    b((byte)(paramInt >> 16 & 0xFF));
    b((byte)(paramInt >> 24 & 0xFF));
  }
  
  public final int nL()
  {
    return amT - position;
  }
  
  public final void nM()
  {
    if (nL() != 0) {
      throw new IllegalStateException("Did not write as much data as expected.");
    }
  }
  
  public final void p(int paramInt1, int paramInt2)
  {
    t(paramInt1, 0);
    eC(paramInt2);
  }
  
  public final void q(int paramInt1, int paramInt2)
  {
    t(paramInt1, 0);
    eD(paramInt2);
  }
  
  public final void r(byte[] paramArrayOfByte)
  {
    eI(paramArrayOfByte.length);
    t(paramArrayOfByte);
  }
  
  public final void t(int paramInt1, int paramInt2)
  {
    eI(mi.u(paramInt1, paramInt2));
  }
  
  public final void t(byte[] paramArrayOfByte)
  {
    c(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ma
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */