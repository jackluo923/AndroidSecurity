package org.codehaus.jackson.sym;

public final class Name3
  extends Name
{
  final int mQuad1;
  final int mQuad2;
  final int mQuad3;
  
  Name3(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramString, paramInt1);
    mQuad1 = paramInt2;
    mQuad2 = paramInt3;
    mQuad3 = paramInt4;
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
    return (paramInt == 3) && (paramArrayOfInt[0] == mQuad1) && (paramArrayOfInt[1] == mQuad2) && (paramArrayOfInt[2] == mQuad3);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.sym.Name3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */