package org.a.a.a.a;

public final class d
  extends b
{
  protected final int a(byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramArrayOfByte[paramInt] & 0xFF) == 130)
    {
      paramInt = paramArrayOfByte[(paramInt + 1)] & 0xFF;
      if ((paramInt >= 159) && (paramInt <= 241)) {
        return paramInt - 159;
      }
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */