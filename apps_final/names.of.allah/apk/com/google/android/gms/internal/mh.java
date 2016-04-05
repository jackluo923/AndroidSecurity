package com.google.android.gms.internal;

import java.util.Arrays;

public final class mh
{
  final byte[] amZ;
  final int tag;
  
  mh(int paramInt, byte[] paramArrayOfByte)
  {
    tag = paramInt;
    amZ = paramArrayOfByte;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof mh)) {
        return false;
      }
      paramObject = (mh)paramObject;
    } while ((tag == tag) && (Arrays.equals(amZ, amZ)));
    return false;
  }
  
  public final int hashCode()
  {
    return (tag + 527) * 31 + Arrays.hashCode(amZ);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.mh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */