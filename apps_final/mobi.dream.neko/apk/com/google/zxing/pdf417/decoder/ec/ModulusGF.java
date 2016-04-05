package com.google.zxing.pdf417.decoder.ec;

public final class ModulusGF
{
  public static final ModulusGF PDF417_GF = new ModulusGF(929, 3);
  private final int[] expTable;
  private final int[] logTable;
  private final int modulus;
  private final ModulusPoly one;
  private final ModulusPoly zero;
  
  public ModulusGF(int paramInt1, int paramInt2)
  {
    modulus = paramInt1;
    expTable = new int[paramInt1];
    logTable = new int[paramInt1];
    int j = 1;
    int i = 0;
    while (i < paramInt1)
    {
      expTable[i] = j;
      j = j * paramInt2 % paramInt1;
      i += 1;
    }
    paramInt2 = 0;
    while (paramInt2 < paramInt1 - 1)
    {
      logTable[expTable[paramInt2]] = paramInt2;
      paramInt2 += 1;
    }
    zero = new ModulusPoly(this, new int[] { 0 });
    one = new ModulusPoly(this, new int[] { 1 });
  }
  
  int add(int paramInt1, int paramInt2)
  {
    return (paramInt1 + paramInt2) % modulus;
  }
  
  ModulusPoly buildMonomial(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IllegalArgumentException();
    }
    if (paramInt2 == 0) {
      return zero;
    }
    int[] arrayOfInt = new int[paramInt1 + 1];
    arrayOfInt[0] = paramInt2;
    return new ModulusPoly(this, arrayOfInt);
  }
  
  int exp(int paramInt)
  {
    return expTable[paramInt];
  }
  
  ModulusPoly getOne()
  {
    return one;
  }
  
  int getSize()
  {
    return modulus;
  }
  
  ModulusPoly getZero()
  {
    return zero;
  }
  
  int inverse(int paramInt)
  {
    if (paramInt == 0) {
      throw new ArithmeticException();
    }
    return expTable[(modulus - logTable[paramInt] - 1)];
  }
  
  int log(int paramInt)
  {
    if (paramInt == 0) {
      throw new IllegalArgumentException();
    }
    return logTable[paramInt];
  }
  
  int multiply(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) || (paramInt2 == 0)) {
      return 0;
    }
    return expTable[((logTable[paramInt1] + logTable[paramInt2]) % (modulus - 1))];
  }
  
  int subtract(int paramInt1, int paramInt2)
  {
    return (modulus + paramInt1 - paramInt2) % modulus;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.pdf417.decoder.ec.ModulusGF
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */