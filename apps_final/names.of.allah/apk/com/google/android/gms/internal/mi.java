package com.google.android.gms.internal;

public final class mi
{
  public static final int[] ana = new int[0];
  public static final long[] anb = new long[0];
  public static final float[] anc = new float[0];
  public static final double[] and = new double[0];
  public static final boolean[] ane = new boolean[0];
  public static final String[] anf = new String[0];
  public static final byte[][] ang = new byte[0][];
  public static final byte[] anh = new byte[0];
  
  public static final int b(lz paramlz, int paramInt)
  {
    int i = 1;
    int j = paramlz.getPosition();
    paramlz.ev(paramInt);
    while ((paramlz.nI() > 0) && (paramlz.nw() == paramInt))
    {
      paramlz.ev(paramInt);
      i += 1;
    }
    paramlz.ez(j);
    return i;
  }
  
  static int eN(int paramInt)
  {
    return paramInt & 0x7;
  }
  
  public static int eO(int paramInt)
  {
    return paramInt >>> 3;
  }
  
  static int u(int paramInt1, int paramInt2)
  {
    return paramInt1 << 3 | paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.mi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */