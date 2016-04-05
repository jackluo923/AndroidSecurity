package com.google.b.a.a;

import java.io.IOException;
import java.util.Arrays;

public abstract class h
{
  protected int cachedSize = -1;
  
  public static final <T extends h> T mergeFrom(T paramT, byte[] paramArrayOfByte)
  {
    return mergeFrom(paramT, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static final <T extends h> T mergeFrom(T paramT, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = a.a(paramArrayOfByte, paramInt1, paramInt2);
      paramT.mergeFrom(paramArrayOfByte);
      paramArrayOfByte.a(0);
      return paramT;
    }
    catch (g paramT)
    {
      throw paramT;
    }
    catch (IOException paramT)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
    }
  }
  
  public static final boolean messageNanoEquals(h paramh1, h paramh2)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramh1 == paramh2) {
      bool1 = true;
    }
    int i;
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (paramh1 == null);
          bool1 = bool2;
        } while (paramh2 == null);
        bool1 = bool2;
      } while (paramh1.getClass() != paramh2.getClass());
      i = paramh1.getSerializedSize();
      bool1 = bool2;
    } while (paramh2.getSerializedSize() != i);
    byte[] arrayOfByte1 = new byte[i];
    byte[] arrayOfByte2 = new byte[i];
    toByteArray(paramh1, arrayOfByte1, 0, i);
    toByteArray(paramh2, arrayOfByte2, 0, i);
    return Arrays.equals(arrayOfByte1, arrayOfByte2);
  }
  
  public static final void toByteArray(h paramh, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = b.a(paramArrayOfByte, paramInt1, paramInt2);
      paramh.writeTo(paramArrayOfByte);
      if (a - b != 0) {
        throw new IllegalStateException("Did not write as much data as expected.");
      }
    }
    catch (IOException paramh)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", paramh);
    }
  }
  
  public static final byte[] toByteArray(h paramh)
  {
    byte[] arrayOfByte = new byte[paramh.getSerializedSize()];
    toByteArray(paramh, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public int getCachedSize()
  {
    if (cachedSize < 0) {
      getSerializedSize();
    }
    return cachedSize;
  }
  
  public int getSerializedSize()
  {
    cachedSize = 0;
    return 0;
  }
  
  public abstract h mergeFrom(a parama);
  
  public String toString()
  {
    return i.a(this);
  }
  
  public abstract void writeTo(b paramb);
}

/* Location:
 * Qualified Name:     com.google.b.a.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */