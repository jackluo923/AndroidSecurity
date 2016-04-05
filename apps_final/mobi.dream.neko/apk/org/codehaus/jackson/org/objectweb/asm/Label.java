package org.codehaus.jackson.org.objectweb.asm;

public class Label
{
  int a;
  int b;
  int c;
  private int d;
  private int[] e;
  int f;
  int g;
  Frame h;
  Label i;
  public Object info;
  Edge j;
  Label k;
  
  private void a(int paramInt1, int paramInt2)
  {
    if (e == null) {
      e = new int[6];
    }
    if (d >= e.length)
    {
      arrayOfInt = new int[e.length + 6];
      System.arraycopy(e, 0, arrayOfInt, 0, e.length);
      e = arrayOfInt;
    }
    int[] arrayOfInt = e;
    int m = d;
    d = (m + 1);
    arrayOfInt[m] = paramInt1;
    arrayOfInt = e;
    paramInt1 = d;
    d = (paramInt1 + 1);
    arrayOfInt[paramInt1] = paramInt2;
  }
  
  Label a()
  {
    if (h == null) {
      return this;
    }
    return h.b;
  }
  
  void a(long paramLong, int paramInt)
  {
    if ((a & 0x400) == 0)
    {
      a |= 0x400;
      e = new int[(paramInt - 1) / 32 + 1];
    }
    int[] arrayOfInt = e;
    paramInt = (int)(paramLong >>> 32);
    arrayOfInt[paramInt] |= (int)paramLong;
  }
  
  void a(MethodWriter paramMethodWriter, ByteVector paramByteVector, int paramInt, boolean paramBoolean)
  {
    if ((a & 0x2) == 0)
    {
      if (paramBoolean)
      {
        a(-1 - paramInt, b);
        paramByteVector.putInt(-1);
        return;
      }
      a(paramInt, b);
      paramByteVector.putShort(-1);
      return;
    }
    if (paramBoolean)
    {
      paramByteVector.putInt(c - paramInt);
      return;
    }
    paramByteVector.putShort(c - paramInt);
  }
  
  boolean a(long paramLong)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((a & 0x400) != 0)
    {
      bool1 = bool2;
      if ((e[((int)(paramLong >>> 32))] & (int)paramLong) != 0) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  boolean a(Label paramLabel)
  {
    if (((a & 0x400) == 0) || ((a & 0x400) == 0)) {}
    for (;;)
    {
      return false;
      int m = 0;
      while (m < e.length)
      {
        if ((e[m] & e[m]) != 0) {
          return true;
        }
        m += 1;
      }
    }
  }
  
  boolean a(MethodWriter paramMethodWriter, int paramInt, byte[] paramArrayOfByte)
  {
    int m = 0;
    a |= 0x2;
    c = paramInt;
    boolean bool = false;
    while (m < d)
    {
      paramMethodWriter = e;
      int n = m + 1;
      int i1 = paramMethodWriter[m];
      paramMethodWriter = e;
      m = n + 1;
      n = paramMethodWriter[n];
      if (i1 >= 0)
      {
        i1 = paramInt - i1;
        if ((i1 < 32768) || (i1 > 32767))
        {
          i2 = paramArrayOfByte[(n - 1)] & 0xFF;
          if (i2 > 168) {
            break label148;
          }
          paramArrayOfByte[(n - 1)] = ((byte)(i2 + 49));
        }
        for (;;)
        {
          bool = true;
          paramArrayOfByte[n] = ((byte)(i1 >>> 8));
          paramArrayOfByte[(n + 1)] = ((byte)i1);
          break;
          label148:
          paramArrayOfByte[(n - 1)] = ((byte)(i2 + 20));
        }
      }
      i1 = i1 + paramInt + 1;
      int i2 = n + 1;
      paramArrayOfByte[n] = ((byte)(i1 >>> 24));
      n = i2 + 1;
      paramArrayOfByte[i2] = ((byte)(i1 >>> 16));
      paramArrayOfByte[n] = ((byte)(i1 >>> 8));
      paramArrayOfByte[(n + 1)] = ((byte)i1);
    }
    return bool;
  }
  
  void b(Label paramLabel, long paramLong, int paramInt)
  {
    Object localObject1 = this;
    while (localObject1 != null)
    {
      Object localObject2 = k;
      k = null;
      Edge localEdge;
      if (paramLabel != null)
      {
        if ((a & 0x800) != 0)
        {
          localObject1 = localObject2;
          continue;
        }
        a |= 0x800;
        if (((a & 0x100) != 0) && (!((Label)localObject1).a(paramLabel)))
        {
          localEdge = new Edge();
          a = f;
          b = j.b;
          c = j;
          j = localEdge;
        }
      }
      for (;;)
      {
        localEdge = j;
        while (localEdge != null)
        {
          Object localObject3;
          if ((a & 0x80) != 0)
          {
            localObject3 = localObject2;
            if (localEdge == j.c) {}
          }
          else
          {
            localObject3 = localObject2;
            if (b.k == null)
            {
              b.k = ((Label)localObject2);
              localObject3 = b;
            }
          }
          localEdge = c;
          localObject2 = localObject3;
        }
        if (((Label)localObject1).a(paramLong))
        {
          localObject1 = localObject2;
          break;
        }
        ((Label)localObject1).a(paramLong, paramInt);
      }
      localObject1 = localObject2;
    }
  }
  
  public int getOffset()
  {
    if ((a & 0x2) == 0) {
      throw new IllegalStateException("Label offset position has not been resolved yet");
    }
    return c;
  }
  
  public String toString()
  {
    return "L" + System.identityHashCode(this);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.Label
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */