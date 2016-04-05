package org.codehaus.jackson.sym;

public final class Name2
  extends Name
{
  final int mQuad1;
  final int mQuad2;
  
  Name2(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramString, paramInt1);
    mQuad1 = paramInt2;
    mQuad2 = paramInt3;
  }
  
  public boolean equals(int paramInt)
  {
    return false;
  }
  
  public boolean equals(int paramInt1, int paramInt2)
  {
    return (paramInt1 == mQuad1) && (paramInt2 == mQuad2);
  }
  
  public boolean equals(int[] paramArrayOfInt, int paramInt)
  {
    return (paramInt == 2) && (paramArrayOfInt[0] == mQuad1) && (paramArrayOfInt[1] == mQuad2);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.sym.Name2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */