package com.google.android.gms.internal;

public class ly
{
  private final byte[] amH = new byte['Ā'];
  private int amI;
  private int amJ;
  
  public ly(byte[] paramArrayOfByte)
  {
    int j = 0;
    while (j < 256)
    {
      amH[j] = ((byte)j);
      j += 1;
    }
    int k = 0;
    j = 0;
    while (j < 256)
    {
      k = k + amH[j] + paramArrayOfByte[(j % paramArrayOfByte.length)] & 0xFF;
      int i = amH[j];
      amH[j] = amH[k];
      amH[k] = i;
      j += 1;
    }
    amI = 0;
    amJ = 0;
  }
  
  public void o(byte[] paramArrayOfByte)
  {
    int m = amI;
    int k = amJ;
    int j = 0;
    while (j < paramArrayOfByte.length)
    {
      m = m + 1 & 0xFF;
      k = k + amH[m] & 0xFF;
      int i = amH[m];
      amH[m] = amH[k];
      amH[k] = i;
      paramArrayOfByte[j] = ((byte)(paramArrayOfByte[j] ^ amH[(amH[m] + amH[k] & 0xFF)]));
      j += 1;
    }
    amI = m;
    amJ = k;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */