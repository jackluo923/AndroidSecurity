package org.a.a.a.b;

public final class c
  extends g
{
  protected final int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte[paramInt] & 0xFF;
    if (i >= 161) {
      return (i - 161) * 94 + (paramArrayOfByte[(paramInt + 1)] & 0xFF) - 161;
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */