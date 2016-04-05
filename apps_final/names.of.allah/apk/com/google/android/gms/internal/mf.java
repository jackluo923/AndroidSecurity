package com.google.android.gms.internal;

import java.io.IOException;

public abstract class mf
{
  protected volatile int amY = -1;
  
  public static final <T extends mf> T a(T paramT, byte[] paramArrayOfByte)
  {
    return b(paramT, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static final void a(mf parammf, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = ma.b(paramArrayOfByte, paramInt1, paramInt2);
      parammf.a(paramArrayOfByte);
      paramArrayOfByte.nM();
      return;
    }
    catch (IOException parammf)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", parammf);
    }
  }
  
  public static final <T extends mf> T b(T paramT, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = lz.a(paramArrayOfByte, paramInt1, paramInt2);
      paramT.b(paramArrayOfByte);
      paramArrayOfByte.eu(0);
      return paramT;
    }
    catch (me paramT)
    {
      throw paramT;
    }
    catch (IOException paramT)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
    }
  }
  
  public static final byte[] d(mf parammf)
  {
    byte[] arrayOfByte = new byte[parammf.nV()];
    a(parammf, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public void a(ma paramma) {}
  
  public abstract mf b(lz paramlz);
  
  protected int c()
  {
    return 0;
  }
  
  public int nU()
  {
    if (amY < 0) {
      nV();
    }
    return amY;
  }
  
  public int nV()
  {
    int i = c();
    amY = i;
    return i;
  }
  
  public String toString()
  {
    return mg.e(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.mf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */