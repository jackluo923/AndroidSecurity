package org.a.a.a.b;

public final class h
  extends g
{
  protected final int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte[paramInt] & 0xFF;
    if ((i >= 129) && (i <= 159)) {}
    for (i = (i - 129) * 188;; i = (i - 224 + 31) * 188)
    {
      int j = paramArrayOfByte[(paramInt + 1)] & 0xFF;
      i += j - 64;
      paramInt = i;
      if (j >= 128) {
        paramInt = i - 1;
      }
      return paramInt;
      if ((i < 224) || (i > 239)) {
        break;
      }
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.b.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */