package com.google.android.gms.tagmanager;

import java.util.Arrays;

class v$b
{
  final String JI;
  final byte[] afp;
  
  v$b(String paramString, byte[] paramArrayOfByte)
  {
    JI = paramString;
    afp = paramArrayOfByte;
  }
  
  public String toString()
  {
    return "KeyAndSerialized: key = " + JI + " serialized hash = " + Arrays.hashCode(afp);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.v.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */