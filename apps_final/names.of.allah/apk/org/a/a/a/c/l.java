package org.a.a.a.c;

public abstract class l
{
  protected short[] a;
  protected byte[] b;
  protected float c;
  protected boolean d;
  protected String e;
  
  public l(short[] paramArrayOfShort, byte[] paramArrayOfByte, float paramFloat, String paramString)
  {
    a = paramArrayOfShort;
    b = paramArrayOfByte;
    c = paramFloat;
    d = false;
    e = paramString;
  }
  
  public final byte a(int paramInt)
  {
    return b[paramInt];
  }
  
  public final float a()
  {
    return c;
  }
  
  public final short a(byte paramByte)
  {
    return a[(paramByte & 0xFF)];
  }
  
  public final String b()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     org.a.a.a.c.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */