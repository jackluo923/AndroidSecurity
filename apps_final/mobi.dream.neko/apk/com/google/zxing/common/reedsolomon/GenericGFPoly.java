package com.google.zxing.common.reedsolomon;

final class GenericGFPoly
{
  private final int[] coefficients;
  private final GenericGF field;
  
  GenericGFPoly(GenericGF paramGenericGF, int[] paramArrayOfInt)
  {
    if (paramArrayOfInt.length == 0) {
      throw new IllegalArgumentException();
    }
    field = paramGenericGF;
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
  
  GenericGFPoly addOrSubtract(GenericGFPoly paramGenericGFPoly)
  {
    if (!field.equals(field)) {
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }
    if (isZero()) {
      return paramGenericGFPoly;
    }
    if (paramGenericGFPoly.isZero()) {
      return this;
    }
    int[] arrayOfInt1 = coefficients;
    int[] arrayOfInt3 = coefficients;
    int[] arrayOfInt2 = arrayOfInt3;
    paramGenericGFPoly = arrayOfInt1;
    if (arrayOfInt1.length > arrayOfInt3.length)
    {
      paramGenericGFPoly = arrayOfInt3;
      arrayOfInt2 = arrayOfInt1;
    }
    arrayOfInt1 = new int[arrayOfInt2.length];
    int j = arrayOfInt2.length - paramGenericGFPoly.length;
    System.arraycopy(arrayOfInt2, 0, arrayOfInt1, 0, j);
    int i = j;
    while (i < arrayOfInt2.length)
    {
      arrayOfInt1[i] = GenericGF.addOrSubtract(paramGenericGFPoly[(i - j)], arrayOfInt2[i]);
      i += 1;
    }
    return new GenericGFPoly(field, arrayOfInt1);
  }
  
  GenericGFPoly[] divide(GenericGFPoly paramGenericGFPoly)
  {
    if (!field.equals(field)) {
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }
    if (paramGenericGFPoly.isZero()) {
      throw new IllegalArgumentException("Divide by 0");
    }
    GenericGFPoly localGenericGFPoly2 = field.getZero();
    GenericGFPoly localGenericGFPoly1 = this;
    int i = paramGenericGFPoly.getCoefficient(paramGenericGFPoly.getDegree());
    i = field.inverse(i);
    while ((localGenericGFPoly1.getDegree() >= paramGenericGFPoly.getDegree()) && (!localGenericGFPoly1.isZero()))
    {
      int j = localGenericGFPoly1.getDegree() - paramGenericGFPoly.getDegree();
      int k = field.multiply(localGenericGFPoly1.getCoefficient(localGenericGFPoly1.getDegree()), i);
      GenericGFPoly localGenericGFPoly3 = paramGenericGFPoly.multiplyByMonomial(j, k);
      localGenericGFPoly2 = localGenericGFPoly2.addOrSubtract(field.buildMonomial(j, k));
      localGenericGFPoly1 = localGenericGFPoly1.addOrSubtract(localGenericGFPoly3);
    }
    return new GenericGFPoly[] { localGenericGFPoly2, localGenericGFPoly1 };
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
        paramInt = GenericGF.addOrSubtract(paramInt, arrayOfInt[j]);
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
      j = GenericGF.addOrSubtract(field.multiply(paramInt, j), coefficients[k]);
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
  
  GenericGFPoly multiply(int paramInt)
  {
    if (paramInt == 0) {
      localObject = field.getZero();
    }
    do
    {
      return (GenericGFPoly)localObject;
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
    return new GenericGFPoly(field, (int[])localObject);
  }
  
  GenericGFPoly multiply(GenericGFPoly paramGenericGFPoly)
  {
    if (!field.equals(field)) {
      throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }
    if ((isZero()) || (paramGenericGFPoly.isZero())) {
      return field.getZero();
    }
    int[] arrayOfInt1 = coefficients;
    int k = arrayOfInt1.length;
    paramGenericGFPoly = coefficients;
    int m = paramGenericGFPoly.length;
    int[] arrayOfInt2 = new int[k + m - 1];
    int i = 0;
    while (i < k)
    {
      int n = arrayOfInt1[i];
      int j = 0;
      while (j < m)
      {
        arrayOfInt2[(i + j)] = GenericGF.addOrSubtract(arrayOfInt2[(i + j)], field.multiply(n, paramGenericGFPoly[j]));
        j += 1;
      }
      i += 1;
    }
    return new GenericGFPoly(field, arrayOfInt2);
  }
  
  GenericGFPoly multiplyByMonomial(int paramInt1, int paramInt2)
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
    return new GenericGFPoly(field, arrayOfInt);
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
          break label104;
        }
        localStringBuilder.append(" - ");
        j = -k;
        label52:
        if ((i == 0) || (j != 1))
        {
          j = field.log(j);
          if (j != 0) {
            break label127;
          }
          localStringBuilder.append('1');
        }
        label81:
        if (i != 0)
        {
          if (i != 1) {
            break label158;
          }
          localStringBuilder.append('x');
        }
      }
      for (;;)
      {
        i -= 1;
        break;
        label104:
        j = k;
        if (localStringBuilder.length() <= 0) {
          break label52;
        }
        localStringBuilder.append(" + ");
        j = k;
        break label52;
        label127:
        if (j == 1)
        {
          localStringBuilder.append('a');
          break label81;
        }
        localStringBuilder.append("a^");
        localStringBuilder.append(j);
        break label81;
        label158:
        localStringBuilder.append("x^");
        localStringBuilder.append(i);
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.common.reedsolomon.GenericGFPoly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */