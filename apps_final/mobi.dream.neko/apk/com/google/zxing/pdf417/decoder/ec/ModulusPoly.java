package com.google.zxing.pdf417.decoder.ec;

final class ModulusPoly
{
  private final int[] coefficients;
  private final ModulusGF field;
  
  ModulusPoly(ModulusGF paramModulusGF, int[] paramArrayOfInt)
  {
    if (paramArrayOfInt.length == 0) {
      throw new IllegalArgumentException();
    }
    field = paramModulusGF;
    int j = paramArrayOfInt.length;
    if ((j > 1) && (paramArrayOfInt[0] == 0))
    {
      int i = 1;
      while ((i < j) && (paramArrayOfInt[i] == 0)) {
        i += 1;
      }
      if (i == j)
      {
        coefficients = getZerocoefficients;
        return;
      }
      coefficients = new int[j - i];
      System.arraycopy(paramArrayOfInt, i, coefficients, 0, coefficients.length);
      return;
    }
    coefficients = paramArrayOfInt;
  }
  
  ModulusPoly add(ModulusPoly paramModulusPoly)
  {
    if (!field.equals(field)) {
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }
    if (isZero()) {
      return paramModulusPoly;
    }
    if (paramModulusPoly.isZero()) {
      return this;
    }
    int[] arrayOfInt1 = coefficients;
    int[] arrayOfInt3 = coefficients;
    int[] arrayOfInt2 = arrayOfInt3;
    paramModulusPoly = arrayOfInt1;
    if (arrayOfInt1.length > arrayOfInt3.length)
    {
      paramModulusPoly = arrayOfInt3;
      arrayOfInt2 = arrayOfInt1;
    }
    arrayOfInt1 = new int[arrayOfInt2.length];
    int j = arrayOfInt2.length - paramModulusPoly.length;
    System.arraycopy(arrayOfInt2, 0, arrayOfInt1, 0, j);
    int i = j;
    while (i < arrayOfInt2.length)
    {
      arrayOfInt1[i] = field.add(paramModulusPoly[(i - j)], arrayOfInt2[i]);
      i += 1;
    }
    return new ModulusPoly(field, arrayOfInt1);
  }
  
  ModulusPoly[] divide(ModulusPoly paramModulusPoly)
  {
    if (!field.equals(field)) {
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }
    if (paramModulusPoly.isZero()) {
      throw new IllegalArgumentException("Divide by 0");
    }
    ModulusPoly localModulusPoly2 = field.getZero();
    ModulusPoly localModulusPoly1 = this;
    int i = paramModulusPoly.getCoefficient(paramModulusPoly.getDegree());
    i = field.inverse(i);
    while ((localModulusPoly1.getDegree() >= paramModulusPoly.getDegree()) && (!localModulusPoly1.isZero()))
    {
      int j = localModulusPoly1.getDegree() - paramModulusPoly.getDegree();
      int k = field.multiply(localModulusPoly1.getCoefficient(localModulusPoly1.getDegree()), i);
      ModulusPoly localModulusPoly3 = paramModulusPoly.multiplyByMonomial(j, k);
      localModulusPoly2 = localModulusPoly2.add(field.buildMonomial(j, k));
      localModulusPoly1 = localModulusPoly1.subtract(localModulusPoly3);
    }
    return new ModulusPoly[] { localModulusPoly2, localModulusPoly1 };
  }
  
  int evaluateAt(int paramInt)
  {
    int i;
    if (paramInt == 0)
    {
      i = getCoefficient(0);
      return i;
    }
    int m = coefficients.length;
    if (paramInt == 1)
    {
      paramInt = 0;
      int[] arrayOfInt = coefficients;
      k = arrayOfInt.length;
      j = 0;
      for (;;)
      {
        i = paramInt;
        if (j >= k) {
          break;
        }
        i = arrayOfInt[j];
        paramInt = field.add(paramInt, i);
        j += 1;
      }
    }
    int j = coefficients[0];
    int k = 1;
    for (;;)
    {
      i = j;
      if (k >= m) {
        break;
      }
      j = field.add(field.multiply(paramInt, j), coefficients[k]);
      k += 1;
    }
  }
  
  int getCoefficient(int paramInt)
  {
    return coefficients[(coefficients.length - 1 - paramInt)];
  }
  
  int[] getCoefficients()
  {
    return coefficients;
  }
  
  int getDegree()
  {
    return coefficients.length - 1;
  }
  
  boolean isZero()
  {
    boolean bool = false;
    if (coefficients[0] == 0) {
      bool = true;
    }
    return bool;
  }
  
  ModulusPoly multiply(int paramInt)
  {
    if (paramInt == 0) {
      localObject = field.getZero();
    }
    do
    {
      return (ModulusPoly)localObject;
      localObject = this;
    } while (paramInt == 1);
    int j = coefficients.length;
    Object localObject = new int[j];
    int i = 0;
    while (i < j)
    {
      localObject[i] = field.multiply(coefficients[i], paramInt);
      i += 1;
    }
    return new ModulusPoly(field, (int[])localObject);
  }
  
  ModulusPoly multiply(ModulusPoly paramModulusPoly)
  {
    if (!field.equals(field)) {
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }
    if ((isZero()) || (paramModulusPoly.isZero())) {
      return field.getZero();
    }
    int[] arrayOfInt1 = coefficients;
    int k = arrayOfInt1.length;
    paramModulusPoly = coefficients;
    int m = paramModulusPoly.length;
    int[] arrayOfInt2 = new int[k + m - 1];
    int i = 0;
    while (i < k)
    {
      int n = arrayOfInt1[i];
      int j = 0;
      while (j < m)
      {
        arrayOfInt2[(i + j)] = field.add(arrayOfInt2[(i + j)], field.multiply(n, paramModulusPoly[j]));
        j += 1;
      }
      i += 1;
    }
    return new ModulusPoly(field, arrayOfInt2);
  }
  
  ModulusPoly multiplyByMonomial(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IllegalArgumentException();
    }
    if (paramInt2 == 0) {
      return field.getZero();
    }
    int i = coefficients.length;
    int[] arrayOfInt = new int[i + paramInt1];
    paramInt1 = 0;
    while (paramInt1 < i)
    {
      arrayOfInt[paramInt1] = field.multiply(coefficients[paramInt1], paramInt2);
      paramInt1 += 1;
    }
    return new ModulusPoly(field, arrayOfInt);
  }
  
  ModulusPoly negative()
  {
    int j = coefficients.length;
    int[] arrayOfInt = new int[j];
    int i = 0;
    while (i < j)
    {
      arrayOfInt[i] = field.subtract(0, coefficients[i]);
      i += 1;
    }
    return new ModulusPoly(field, arrayOfInt);
  }
  
  ModulusPoly subtract(ModulusPoly paramModulusPoly)
  {
    if (!field.equals(field)) {
      throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }
    if (paramModulusPoly.isZero()) {
      return this;
    }
    return add(paramModulusPoly.negative());
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(getDegree() * 8);
    int i = getDegree();
    if (i >= 0)
    {
      int k = getCoefficient(i);
      int j;
      if (k != 0)
      {
        if (k >= 0) {
          break label90;
        }
        localStringBuilder.append(" - ");
        j = -k;
        label52:
        if ((i == 0) || (j != 1)) {
          localStringBuilder.append(j);
        }
        if (i != 0)
        {
          if (i != 1) {
            break label113;
          }
          localStringBuilder.append('x');
        }
      }
      for (;;)
      {
        i -= 1;
        break;
        label90:
        j = k;
        if (localStringBuilder.length() <= 0) {
          break label52;
        }
        localStringBuilder.append(" + ");
        j = k;
        break label52;
        label113:
        localStringBuilder.append("x^");
        localStringBuilder.append(i);
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.pdf417.decoder.ec.ModulusPoly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */