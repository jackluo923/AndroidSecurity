package org.a.a.a;

public abstract class b
{
  static boolean a(byte paramByte)
  {
    return (paramByte & 0x80) == 0;
  }
  
  static boolean b(byte paramByte)
  {
    paramByte &= 0xFF;
    return (paramByte < 65) || ((paramByte > 90) && (paramByte < 97)) || (paramByte > 122);
  }
  
  public abstract String a();
  
  public abstract c a(byte[] paramArrayOfByte, int paramInt);
  
  public abstract float b();
  
  public abstract c c();
  
  public abstract void d();
}

/* Location:
 * Qualified Name:     org.a.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */