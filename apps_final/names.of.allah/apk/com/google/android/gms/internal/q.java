package com.google.android.gms.internal;

import java.io.IOException;

class q
  implements o
{
  private ma kl;
  private byte[] km;
  private final int kn;
  
  public q(int paramInt)
  {
    kn = paramInt;
    reset();
  }
  
  public void b(int paramInt, long paramLong)
  {
    kl.b(paramInt, paramLong);
  }
  
  public void b(int paramInt, String paramString)
  {
    kl.b(paramInt, paramString);
  }
  
  public void reset()
  {
    km = new byte[kn];
    kl = ma.q(km);
  }
  
  public byte[] z()
  {
    int i = kl.nL();
    if (i < 0) {
      throw new IOException();
    }
    if (i == 0) {
      return km;
    }
    byte[] arrayOfByte = new byte[km.length - i];
    System.arraycopy(km, 0, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */