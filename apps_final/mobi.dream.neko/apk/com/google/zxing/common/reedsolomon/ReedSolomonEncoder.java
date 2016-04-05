package com.google.zxing.common.reedsolomon;

import java.util.ArrayList;
import java.util.List;

public final class ReedSolomonEncoder
{
  private final List<GenericGFPoly> cachedGenerators;
  private final GenericGF field;
  
  public ReedSolomonEncoder(GenericGF paramGenericGF)
  {
    if (!GenericGF.QR_CODE_FIELD_256.equals(paramGenericGF)) {
      throw new IllegalArgumentException("Only QR Code is supported at this time");
    }
    field = paramGenericGF;
    cachedGenerators = new ArrayList();
    cachedGenerators.add(new GenericGFPoly(paramGenericGF, new int[] { 1 }));
  }
  
  private GenericGFPoly buildGenerator(int paramInt)
  {
    if (paramInt >= cachedGenerators.size())
    {
      GenericGFPoly localGenericGFPoly = (GenericGFPoly)cachedGenerators.get(cachedGenerators.size() - 1);
      int i = cachedGenerators.size();
      while (i <= paramInt)
      {
        localGenericGFPoly = localGenericGFPoly.multiply(new GenericGFPoly(field, new int[] { 1, field.exp(i - 1) }));
        cachedGenerators.add(localGenericGFPoly);
        i += 1;
      }
    }
    return (GenericGFPoly)cachedGenerators.get(paramInt);
  }
  
  public void encode(int[] paramArrayOfInt, int paramInt)
  {
    if (paramInt == 0) {
      throw new IllegalArgumentException("No error correction bytes");
    }
    int i = paramArrayOfInt.length - paramInt;
    if (i <= 0) {
      throw new IllegalArgumentException("No data bytes provided");
    }
    Object localObject = buildGenerator(paramInt);
    int[] arrayOfInt = new int[i];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, i);
    localObject = new GenericGFPoly(field, arrayOfInt).multiplyByMonomial(paramInt, 1).divide(localObject)[1].getCoefficients();
    int j = paramInt - localObject.length;
    paramInt = 0;
    while (paramInt < j)
    {
      paramArrayOfInt[(i + paramInt)] = 0;
      paramInt += 1;
    }
    System.arraycopy(localObject, 0, paramArrayOfInt, i + j, localObject.length);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.common.reedsolomon.ReedSolomonEncoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */