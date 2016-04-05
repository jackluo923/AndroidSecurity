package com.google.android.gms.internal;

public final class lz
{
  private int amK;
  private int amL;
  private int amM;
  private int amN;
  private int amO;
  private int amP = Integer.MAX_VALUE;
  private int amQ;
  private int amR = 64;
  private int amS = 67108864;
  private final byte[] buffer;
  
  private lz(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    buffer = paramArrayOfByte;
    amK = paramInt1;
    amL = (paramInt1 + paramInt2);
    amN = paramInt1;
  }
  
  public static long A(long paramLong)
  {
    return paramLong >>> 1 ^ -(1L & paramLong);
  }
  
  public static lz a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new lz(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public static int ew(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }
  
  private void nH()
  {
    amL += amM;
    int i = amL;
    if (i > amP)
    {
      amM = (i - amP);
      amL -= amM;
      return;
    }
    amM = 0;
  }
  
  public static lz p(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public final void a(mf parammf)
  {
    int i = nD();
    if (amQ >= amR) {
      throw me.nT();
    }
    i = ex(i);
    amQ += 1;
    parammf.b(this);
    eu(0);
    amQ -= 1;
    ey(i);
  }
  
  public final void a(mf parammf, int paramInt)
  {
    if (amQ >= amR) {
      throw me.nT();
    }
    amQ += 1;
    parammf.b(this);
    eu(mi.u(paramInt, 4));
    amQ -= 1;
  }
  
  public final byte[] eA(int paramInt)
  {
    if (paramInt < 0) {
      throw me.nO();
    }
    if (amN + paramInt > amP)
    {
      eB(amP - amN);
      throw me.nN();
    }
    if (paramInt <= amL - amN)
    {
      byte[] arrayOfByte = new byte[paramInt];
      System.arraycopy(buffer, amN, arrayOfByte, 0, paramInt);
      amN += paramInt;
      return arrayOfByte;
    }
    throw me.nN();
  }
  
  public final void eB(int paramInt)
  {
    if (paramInt < 0) {
      throw me.nO();
    }
    if (amN + paramInt > amP)
    {
      eB(amP - amN);
      throw me.nN();
    }
    if (paramInt <= amL - amN)
    {
      amN += paramInt;
      return;
    }
    throw me.nN();
  }
  
  public final void eu(int paramInt)
  {
    if (amO != paramInt) {
      throw me.nR();
    }
  }
  
  public final boolean ev(int paramInt)
  {
    switch (mi.eN(paramInt))
    {
    default: 
      throw me.nS();
    case 0: 
      nz();
      return true;
    case 1: 
      nG();
      return true;
    case 2: 
      eB(nD());
      return true;
    case 3: 
      nx();
      eu(mi.u(mi.eO(paramInt), 4));
      return true;
    case 4: 
      return false;
    }
    nF();
    return true;
  }
  
  public final int ex(int paramInt)
  {
    if (paramInt < 0) {
      throw me.nO();
    }
    paramInt = amN + paramInt;
    int i = amP;
    if (paramInt > i) {
      throw me.nN();
    }
    amP = paramInt;
    nH();
    return i;
  }
  
  public final void ey(int paramInt)
  {
    amP = paramInt;
    nH();
  }
  
  public final void ez(int paramInt)
  {
    if (paramInt > amN - amK) {
      throw new IllegalArgumentException("Position " + paramInt + " is beyond current " + (amN - amK));
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("Bad position " + paramInt);
    }
    amN = (amK + paramInt);
  }
  
  public final int getPosition()
  {
    return amN - amK;
  }
  
  public final boolean nA()
  {
    return nD() != 0;
  }
  
  public final int nB()
  {
    return ew(nD());
  }
  
  public final long nC()
  {
    return A(nE());
  }
  
  public final int nD()
  {
    int i = nK();
    if (i >= 0) {}
    int k;
    do
    {
      return i;
      i &= 0x7F;
      j = nK();
      if (j >= 0) {
        return i | j << 7;
      }
      i |= (j & 0x7F) << 7;
      j = nK();
      if (j >= 0) {
        return i | j << 14;
      }
      i |= (j & 0x7F) << 14;
      k = nK();
      if (k >= 0) {
        return i | k << 21;
      }
      j = nK();
      k = i | (k & 0x7F) << 21 | j << 28;
      i = k;
    } while (j >= 0);
    int j = 0;
    for (;;)
    {
      if (j >= 5) {
        break label133;
      }
      i = k;
      if (nK() >= 0) {
        break;
      }
      j += 1;
    }
    label133:
    throw me.nP();
  }
  
  public final long nE()
  {
    int i = 0;
    long l = 0L;
    while (i < 64)
    {
      int j = nK();
      l |= (j & 0x7F) << i;
      if ((j & 0x80) == 0) {
        return l;
      }
      i += 7;
    }
    throw me.nP();
  }
  
  public final int nF()
  {
    return nK() & 0xFF | (nK() & 0xFF) << 8 | (nK() & 0xFF) << 16 | (nK() & 0xFF) << 24;
  }
  
  public final long nG()
  {
    int i = nK();
    int j = nK();
    int k = nK();
    int m = nK();
    int n = nK();
    int i1 = nK();
    int i2 = nK();
    int i3 = nK();
    long l = i;
    return (j & 0xFF) << 8 | l & 0xFF | (k & 0xFF) << 16 | (m & 0xFF) << 24 | (n & 0xFF) << 32 | (i1 & 0xFF) << 40 | (i2 & 0xFF) << 48 | (i3 & 0xFF) << 56;
  }
  
  public final int nI()
  {
    if (amP == Integer.MAX_VALUE) {
      return -1;
    }
    int i = amN;
    return amP - i;
  }
  
  public final boolean nJ()
  {
    return amN == amL;
  }
  
  public final byte nK()
  {
    if (amN == amL) {
      throw me.nN();
    }
    byte[] arrayOfByte = buffer;
    int i = amN;
    amN = (i + 1);
    return arrayOfByte[i];
  }
  
  public final int nw()
  {
    if (nJ())
    {
      amO = 0;
      return 0;
    }
    amO = nD();
    if (amO == 0) {
      throw me.nQ();
    }
    return amO;
  }
  
  public final void nx()
  {
    int i;
    do
    {
      i = nw();
    } while ((i != 0) && (ev(i)));
  }
  
  public final long ny()
  {
    return nE();
  }
  
  public final int nz()
  {
    return nD();
  }
  
  public final byte[] o(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return mi.anh;
    }
    byte[] arrayOfByte = new byte[paramInt2];
    int i = amK;
    System.arraycopy(buffer, i + paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }
  
  public final byte[] readBytes()
  {
    int i = nD();
    if ((i <= amL - amN) && (i > 0))
    {
      byte[] arrayOfByte = new byte[i];
      System.arraycopy(buffer, amN, arrayOfByte, 0, i);
      amN = (i + amN);
      return arrayOfByte;
    }
    return eA(i);
  }
  
  public final double readDouble()
  {
    return Double.longBitsToDouble(nG());
  }
  
  public final float readFloat()
  {
    return Float.intBitsToFloat(nF());
  }
  
  public final String readString()
  {
    int i = nD();
    if ((i <= amL - amN) && (i > 0))
    {
      String str = new String(buffer, amN, i, "UTF-8");
      amN = (i + amN);
      return str;
    }
    return new String(eA(i), "UTF-8");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */