package com.google.zxing.common.reedsolomon;

public final class ReedSolomonDecoder
{
  private final GenericGF field;
  
  public ReedSolomonDecoder(GenericGF paramGenericGF)
  {
    field = paramGenericGF;
  }
  
  private int[] findErrorLocations(GenericGFPoly paramGenericGFPoly)
    throws ReedSolomonException
  {
    int m = paramGenericGFPoly.getDegree();
    int[] arrayOfInt;
    if (m == 1)
    {
      arrayOfInt = new int[1];
      arrayOfInt[0] = paramGenericGFPoly.getCoefficient(1);
      paramGenericGFPoly = arrayOfInt;
    }
    int j;
    do
    {
      return paramGenericGFPoly;
      arrayOfInt = new int[m];
      j = 0;
      int i = 1;
      while ((i < field.getSize()) && (j < m))
      {
        int k = j;
        if (paramGenericGFPoly.evaluateAt(i) == 0)
        {
          arrayOfInt[j] = field.inverse(i);
          k = j + 1;
        }
        i += 1;
        j = k;
      }
      paramGenericGFPoly = arrayOfInt;
    } while (j == m);
    throw new ReedSolomonException("Error locator degree does not match number of roots");
  }
  
  private int[] findErrorMagnitudes(GenericGFPoly paramGenericGFPoly, int[] paramArrayOfInt, boolean paramBoolean)
  {
    int n = paramArrayOfInt.length;
    int[] arrayOfInt = new int[n];
    int i = 0;
    while (i < n)
    {
      int i1 = field.inverse(paramArrayOfInt[i]);
      int k = 1;
      int j = 0;
      if (j < n)
      {
        int m = k;
        if (i != j)
        {
          m = field.multiply(paramArrayOfInt[j], i1);
          if ((m & 0x1) != 0) {
            break label111;
          }
          m |= 0x1;
        }
        for (;;)
        {
          m = field.multiply(k, m);
          j += 1;
          k = m;
          break;
          label111:
          m &= 0xFFFFFFFE;
        }
      }
      arrayOfInt[i] = field.multiply(paramGenericGFPoly.evaluateAt(i1), field.inverse(k));
      if (paramBoolean) {
        arrayOfInt[i] = field.multiply(arrayOfInt[i], i1);
      }
      i += 1;
    }
    return arrayOfInt;
  }
  
  private GenericGFPoly[] runEuclideanAlgorithm(GenericGFPoly paramGenericGFPoly1, GenericGFPoly paramGenericGFPoly2, int paramInt)
    throws ReedSolomonException
  {
    GenericGFPoly localGenericGFPoly2 = paramGenericGFPoly1;
    GenericGFPoly localGenericGFPoly1 = paramGenericGFPoly2;
    if (paramGenericGFPoly1.getDegree() < paramGenericGFPoly2.getDegree())
    {
      localGenericGFPoly1 = paramGenericGFPoly1;
      localGenericGFPoly2 = paramGenericGFPoly2;
    }
    paramGenericGFPoly2 = localGenericGFPoly2;
    GenericGFPoly localGenericGFPoly3 = localGenericGFPoly1;
    localGenericGFPoly2 = field.getZero();
    paramGenericGFPoly1 = field.getOne();
    localGenericGFPoly1 = paramGenericGFPoly2;
    paramGenericGFPoly2 = localGenericGFPoly3;
    for (;;)
    {
      GenericGFPoly localGenericGFPoly4 = localGenericGFPoly2;
      localGenericGFPoly3 = localGenericGFPoly1;
      if (paramGenericGFPoly2.getDegree() < paramInt / 2) {
        break;
      }
      localGenericGFPoly1 = paramGenericGFPoly2;
      localGenericGFPoly2 = paramGenericGFPoly1;
      if (localGenericGFPoly1.isZero()) {
        throw new ReedSolomonException("r_{i-1} was zero");
      }
      paramGenericGFPoly2 = localGenericGFPoly3;
      paramGenericGFPoly1 = field.getZero();
      int i = localGenericGFPoly1.getCoefficient(localGenericGFPoly1.getDegree());
      i = field.inverse(i);
      while ((paramGenericGFPoly2.getDegree() >= localGenericGFPoly1.getDegree()) && (!paramGenericGFPoly2.isZero()))
      {
        int j = paramGenericGFPoly2.getDegree() - localGenericGFPoly1.getDegree();
        int k = field.multiply(paramGenericGFPoly2.getCoefficient(paramGenericGFPoly2.getDegree()), i);
        paramGenericGFPoly1 = paramGenericGFPoly1.addOrSubtract(field.buildMonomial(j, k));
        paramGenericGFPoly2 = paramGenericGFPoly2.addOrSubtract(localGenericGFPoly1.multiplyByMonomial(j, k));
      }
      paramGenericGFPoly1 = paramGenericGFPoly1.multiply(localGenericGFPoly2).addOrSubtract(localGenericGFPoly4);
    }
    paramInt = paramGenericGFPoly1.getCoefficient(0);
    if (paramInt == 0) {
      throw new ReedSolomonException("sigmaTilde(0) was zero");
    }
    paramInt = field.inverse(paramInt);
    return new GenericGFPoly[] { paramGenericGFPoly1.multiply(paramInt), paramGenericGFPoly2.multiply(paramInt) };
  }
  
  public void decode(int[] paramArrayOfInt, int paramInt)
    throws ReedSolomonException
  {
    Object localObject1 = new GenericGFPoly(field, paramArrayOfInt);
    Object localObject2 = new int[paramInt];
    boolean bool = field.equals(GenericGF.DATA_MATRIX_FIELD_256);
    int j = 1;
    int i = 0;
    if (i < paramInt)
    {
      GenericGF localGenericGF = field;
      if (bool) {}
      for (int k = i + 1;; k = i)
      {
        k = ((GenericGFPoly)localObject1).evaluateAt(localGenericGF.exp(k));
        localObject2[(localObject2.length - 1 - i)] = k;
        if (k != 0) {
          j = 0;
        }
        i += 1;
        break;
      }
    }
    if (j != 0) {}
    for (;;)
    {
      return;
      localObject1 = new GenericGFPoly(field, (int[])localObject2);
      localObject2 = runEuclideanAlgorithm(field.buildMonomial(paramInt, 1), (GenericGFPoly)localObject1, paramInt);
      localObject1 = localObject2[0];
      localObject2 = localObject2[1];
      localObject1 = findErrorLocations((GenericGFPoly)localObject1);
      localObject2 = findErrorMagnitudes((GenericGFPoly)localObject2, (int[])localObject1, bool);
      paramInt = 0;
      while (paramInt < localObject1.length)
      {
        i = paramArrayOfInt.length - 1 - field.log(localObject1[paramInt]);
        if (i < 0) {
          throw new ReedSolomonException("Bad error location");
        }
        paramArrayOfInt[i] = GenericGF.addOrSubtract(paramArrayOfInt[i], localObject2[paramInt]);
        paramInt += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.common.reedsolomon.ReedSolomonDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */