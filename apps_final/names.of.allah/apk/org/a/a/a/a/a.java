package org.a.a.a.a;

public final class a
  extends b
{
  protected final int a(byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramArrayOfByte[paramInt] & 0xFF) == 164)
    {
      paramInt = paramArrayOfByte[(paramInt + 1)] & 0xFF;
      if ((paramInt >= 161) && (paramInt <= 243)) {
        return paramInt - 161;
      }
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */