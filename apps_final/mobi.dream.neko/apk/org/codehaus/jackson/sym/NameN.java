package org.codehaus.jackson.sym;

public final class NameN
  extends Name
{
  final int mQuadLen;
  final int[] mQuads;
  
  NameN(String paramString, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    super(paramString, paramInt1);
    if (paramInt2 < 3) {
      throw new IllegalArgumentException("Qlen must >= 3");
    }
    mQuads = paramArrayOfInt;
    mQuadLen = paramInt2;
  }
  
  public boolean equals(int paramInt)
  {
    return false;
  }
  
  public boolean equals(int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public boolean equals(int[] paramArrayOfInt, int paramInt)
  {
    if (paramInt != mQuadLen) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramInt) {
        break label36;
      }
      if (paramArrayOfInt[i] != mQuads[i]) {
        break;
      }
      i += 1;
    }
    label36:
    return true;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.sym.NameN
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */