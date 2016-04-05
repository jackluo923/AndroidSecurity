package org.codehaus.jackson.smile;

public class SmileUtil
{
  public static int zigzagDecode(int paramInt)
  {
    if ((paramInt & 0x1) == 0) {
      return paramInt >>> 1;
    }
    return paramInt >>> 1 ^ 0xFFFFFFFF;
  }
  
  public static long zigzagDecode(long paramLong)
  {
    if ((1L & paramLong) == 0L) {
      return paramLong >>> 1;
    }
    return paramLong >>> 1 ^ 0xFFFFFFFFFFFFFFFF;
  }
  
  public static int zigzagEncode(int paramInt)
  {
    if (paramInt < 0) {
      return paramInt << 1 ^ 0xFFFFFFFF;
    }
    return paramInt << 1;
  }
  
  public static long zigzagEncode(long paramLong)
  {
    if (paramLong < 0L) {
      return paramLong << 1 ^ 0xFFFFFFFFFFFFFFFF;
    }
    return paramLong << 1;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.smile.SmileUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */