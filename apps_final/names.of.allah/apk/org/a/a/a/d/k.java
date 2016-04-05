package org.a.a.a.d;

public final class k
{
  private int a = 3;
  private int b = 7;
  private int c = 2;
  private int d = 15;
  private int[] e;
  
  public k(int[] paramArrayOfInt)
  {
    e = paramArrayOfInt;
  }
  
  public static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    return paramInt2 << 4 | paramInt1 | (paramInt4 << 4 | paramInt3) << 8 | ((paramInt8 << 4 | paramInt7) << 8 | paramInt6 << 4 | paramInt5) << 16;
  }
  
  public final int a(int paramInt)
  {
    return e[(paramInt >> a)] >> ((b & paramInt) << c) & d;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.d.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */