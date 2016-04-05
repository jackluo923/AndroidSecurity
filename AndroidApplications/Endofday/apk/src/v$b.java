public final class v$b
  extends v.a
{
  static final boolean g = false;
  private static final byte[] h;
  private static final byte[] i;
  public int c;
  public final boolean d;
  public final boolean e;
  public final boolean f;
  private final byte[] j;
  private int k;
  private final byte[] l;
  
  static
  {
    int n = 64;
    Class localClass = v.class;
    boolean bool = localClass.desiredAssertionStatus();
    if (!bool) {}
    int m;
    for (bool = true;; m = 0)
    {
      g = bool;
      byte[] arrayOfByte = new byte[n];
      h = arrayOfByte;
      arrayOfByte = new byte[n];
      i = arrayOfByte;
      return;
    }
  }
  
  public v$b()
  {
    byte[] arrayOfByte1 = null;
    a = arrayOfByte1;
    d = i1;
    e = i1;
    f = i1;
    arrayOfByte1 = i;
    l = arrayOfByte1;
    int m = 2;
    byte[] arrayOfByte2 = new byte[m];
    j = arrayOfByte2;
    c = i1;
    boolean bool = e;
    if (bool) {}
    for (int n = 19;; n = -1)
    {
      k = n;
      return;
    }
  }
  
  public final boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte1 = l;
    byte[] arrayOfByte4 = a;
    byte[] arrayOfByte5 = 0;
    int i3 = k;
    byte[] arrayOfByte11 = 0;
    int i5 = paramInt + 0;
    byte[] arrayOfByte12 = -1;
    int i6 = c;
    byte[] arrayOfByte25;
    label80:
    int i8;
    byte[] arrayOfByte10;
    switch (i6)
    {
    default: 
      arrayOfByte25 = arrayOfByte12;
      arrayOfByte12 = arrayOfByte11;
      arrayOfByte11 = arrayOfByte25;
      i6 = -1;
      if (arrayOfByte11 != i6)
      {
        i6 = 0;
        arrayOfByte5 += 1;
        i8 = arrayOfByte11 >> 18;
        i8 &= 0x3F;
        i8 = arrayOfByte1[i8];
        arrayOfByte4[i6] = i8;
        i6 = 1;
        arrayOfByte5 += 1;
        i8 = arrayOfByte11 >> 12;
        i8 &= 0x3F;
        i8 = arrayOfByte1[i8];
        arrayOfByte4[i6] = i8;
        i6 = 2;
        arrayOfByte5 += 1;
        i8 = arrayOfByte11 >> 6;
        i8 &= 0x3F;
        i8 = arrayOfByte1[i8];
        arrayOfByte4[i6] = i8;
        i6 = 3;
        arrayOfByte5 += 1;
        arrayOfByte11 &= 0x3F;
        arrayOfByte11 = arrayOfByte1[arrayOfByte11];
        arrayOfByte4[i6] = arrayOfByte11;
        i3 += -1;
        if (i3 == 0)
        {
          boolean bool9 = f;
          if (bool9)
          {
            arrayOfByte10 = 4;
            arrayOfByte5 += 1;
            arrayOfByte11 = 13;
            arrayOfByte4[arrayOfByte10] = arrayOfByte11;
          }
          arrayOfByte10 = arrayOfByte5 + 1;
          arrayOfByte11 = 10;
          arrayOfByte4[arrayOfByte5] = arrayOfByte11;
          arrayOfByte5 = 19;
          arrayOfByte11 = arrayOfByte10;
          arrayOfByte10 = arrayOfByte5;
          arrayOfByte5 = arrayOfByte12;
        }
      }
      break;
    }
    for (;;)
    {
      label302:
      arrayOfByte12 = arrayOfByte5 + 3;
      int i4;
      if (arrayOfByte12 <= i5)
      {
        arrayOfByte12 = paramArrayOfByte[arrayOfByte5];
        arrayOfByte12 += 255;
        arrayOfByte12 <<= 16;
        i6 = arrayOfByte5 + 1;
        i6 = paramArrayOfByte[i6];
        i6 += 255;
        i6 <<= 8;
        arrayOfByte12 |= i6;
        i6 = arrayOfByte5 + 2;
        i6 = paramArrayOfByte[i6];
        i6 += 255;
        arrayOfByte12 |= i6;
        i6 = arrayOfByte12 >> 18;
        i6 &= 0x3F;
        i6 = arrayOfByte1[i6];
        arrayOfByte4[arrayOfByte11] = i6;
        i6 = arrayOfByte11 + 1;
        i8 = arrayOfByte12 >> 12;
        i8 &= 0x3F;
        i8 = arrayOfByte1[i8];
        arrayOfByte4[i6] = i8;
        i6 = arrayOfByte11 + 2;
        i8 = arrayOfByte12 >> 6;
        i8 &= 0x3F;
        i8 = arrayOfByte1[i8];
        arrayOfByte4[i6] = i8;
        i6 = arrayOfByte11 + 3;
        arrayOfByte12 &= 0x3F;
        arrayOfByte12 = arrayOfByte1[arrayOfByte12];
        arrayOfByte4[i6] = arrayOfByte12;
        arrayOfByte5 += 3;
        arrayOfByte11 += 4;
        arrayOfByte10 += -1;
        if (arrayOfByte10 != 0) {
          continue;
        }
        boolean bool10 = f;
        if (!bool10) {
          break label1748;
        }
        i4 = arrayOfByte11 + 1;
        arrayOfByte12 = 13;
        arrayOfByte4[arrayOfByte11] = arrayOfByte12;
      }
      byte[] arrayOfByte16;
      for (;;)
      {
        arrayOfByte11 = i4 + 1;
        arrayOfByte12 = 10;
        arrayOfByte4[i4] = arrayOfByte12;
        i4 = 19;
        break label302;
        arrayOfByte25 = arrayOfByte12;
        arrayOfByte12 = arrayOfByte11;
        arrayOfByte11 = arrayOfByte25;
        break label80;
        i6 = 2;
        if (i6 > i5) {
          break;
        }
        byte[] arrayOfByte13 = j;
        i6 = 0;
        byte[] arrayOfByte14 = arrayOfByte13[i6];
        arrayOfByte14 += 255;
        arrayOfByte14 <<= 16;
        i6 = 0;
        arrayOfByte11 += 1;
        i6 = paramArrayOfByte[i6];
        i6 += 255;
        i6 <<= 8;
        arrayOfByte14 |= i6;
        i6 = 1;
        arrayOfByte11 += 1;
        i6 = paramArrayOfByte[i6];
        i6 += 255;
        arrayOfByte14 |= i6;
        i6 = 0;
        c = i6;
        arrayOfByte25 = arrayOfByte14;
        arrayOfByte14 = arrayOfByte11;
        arrayOfByte11 = arrayOfByte25;
        break label80;
        if (i5 <= 0) {
          break;
        }
        byte[] arrayOfByte15 = j;
        i6 = 0;
        arrayOfByte16 = arrayOfByte15[i6];
        arrayOfByte16 += 255;
        arrayOfByte16 <<= 16;
        byte[] arrayOfByte17 = j;
        i8 = 1;
        int i7 = arrayOfByte17[i8];
        i7 += 255;
        i7 <<= 8;
        arrayOfByte16 |= i7;
        i7 = 0;
        arrayOfByte11 += 1;
        i7 = paramArrayOfByte[i7];
        i7 += 255;
        arrayOfByte16 |= i7;
        i7 = 0;
        c = i7;
        break;
        arrayOfByte16 = c;
        arrayOfByte16 = arrayOfByte5 - arrayOfByte16;
        i7 = 1;
        i7 = i5 - i7;
        byte[] arrayOfByte19;
        if (arrayOfByte16 == i7)
        {
          arrayOfByte16 = 0;
          i7 = c;
          if (i7 > 0)
          {
            byte[] arrayOfByte18 = j;
            i8 = 0;
            arrayOfByte16 += 1;
            arrayOfByte19 = arrayOfByte18[i8];
            arrayOfByte25 = arrayOfByte19;
            arrayOfByte19 = arrayOfByte16;
            arrayOfByte16 = arrayOfByte5;
            arrayOfByte5 = arrayOfByte25;
            arrayOfByte5 += 255;
            arrayOfByte5 <<= 4;
            i8 = c;
            arrayOfByte19 = i8 - arrayOfByte19;
            c = arrayOfByte19;
            arrayOfByte19 = arrayOfByte11 + 1;
            i8 = arrayOfByte5 >> 6;
            i8 &= 0x3F;
            i8 = arrayOfByte1[i8];
            arrayOfByte4[arrayOfByte11] = i8;
            arrayOfByte11 = arrayOfByte19 + 1;
            arrayOfByte5 &= 0x3F;
            int m = arrayOfByte1[arrayOfByte5];
            arrayOfByte4[arrayOfByte19] = m;
            boolean bool1 = d;
            if (!bool1) {
              break label1742;
            }
            arrayOfByte2 = arrayOfByte11 + 1;
            arrayOfByte5 = 61;
            arrayOfByte4[arrayOfByte11] = arrayOfByte5;
            arrayOfByte5 = arrayOfByte2 + 1;
            arrayOfByte11 = 61;
            arrayOfByte4[arrayOfByte2] = arrayOfByte11;
          }
        }
        label1278:
        label1339:
        label1588:
        boolean bool5;
        label1730:
        label1736:
        label1742:
        for (byte[] arrayOfByte2 = arrayOfByte5;; bool5 = arrayOfByte11)
        {
          boolean bool6 = e;
          if (bool6)
          {
            bool6 = f;
            if (bool6)
            {
              arrayOfByte6 = arrayOfByte2 + 1;
              arrayOfByte11 = 13;
              arrayOfByte4[arrayOfByte2] = arrayOfByte11;
              arrayOfByte2 = arrayOfByte6;
            }
            byte[] arrayOfByte6 = arrayOfByte2 + 1;
            arrayOfByte11 = 10;
            arrayOfByte4[arrayOfByte2] = arrayOfByte11;
            arrayOfByte2 = arrayOfByte6;
          }
          arrayOfByte4 = arrayOfByte2;
          arrayOfByte2 = arrayOfByte16;
          boolean bool7 = g;
          byte[] arrayOfByte21;
          byte[] arrayOfByte23;
          byte[] arrayOfByte3;
          if (!bool7)
          {
            byte[] arrayOfByte7 = c;
            if (arrayOfByte7 != 0)
            {
              AssertionError localAssertionError1 = new java/lang/AssertionError;
              localAssertionError1.<init>();
              throw localAssertionError1;
              arrayOfByte19 = arrayOfByte7 + 1;
              arrayOfByte7 = paramArrayOfByte[arrayOfByte7];
              arrayOfByte25 = arrayOfByte19;
              arrayOfByte19 = arrayOfByte16;
              arrayOfByte16 = arrayOfByte25;
              break;
              arrayOfByte16 = c;
              arrayOfByte16 = arrayOfByte7 - arrayOfByte16;
              arrayOfByte19 = 2;
              arrayOfByte19 = i5 - arrayOfByte19;
              if (arrayOfByte16 == arrayOfByte19)
              {
                arrayOfByte16 = 0;
                arrayOfByte19 = c;
                i8 = 1;
                if (arrayOfByte19 > i8)
                {
                  byte[] arrayOfByte20 = j;
                  i8 = 0;
                  arrayOfByte16 += 1;
                  arrayOfByte21 = arrayOfByte20[i8];
                  arrayOfByte25 = arrayOfByte21;
                  arrayOfByte21 = arrayOfByte16;
                  arrayOfByte16 = arrayOfByte7;
                  arrayOfByte7 = arrayOfByte25;
                  arrayOfByte7 += 255;
                  arrayOfByte7 <<= 10;
                  i8 = c;
                  if (i8 <= 0) {
                    break label1588;
                  }
                  byte[] arrayOfByte22 = j;
                  byte[] arrayOfByte24 = arrayOfByte21 + 1;
                  arrayOfByte21 = arrayOfByte22[arrayOfByte21];
                  arrayOfByte22 = arrayOfByte24;
                  arrayOfByte25 = arrayOfByte16;
                  arrayOfByte16 = arrayOfByte21;
                  arrayOfByte21 = arrayOfByte25;
                  arrayOfByte16 += 255;
                  arrayOfByte16 <<= 2;
                  arrayOfByte7 |= arrayOfByte16;
                  arrayOfByte16 = c;
                  arrayOfByte16 -= arrayOfByte22;
                  c = arrayOfByte16;
                  arrayOfByte16 = arrayOfByte11 + 1;
                  arrayOfByte23 = arrayOfByte7 >> 12;
                  arrayOfByte23 &= 0x3F;
                  arrayOfByte23 = localAssertionError1[arrayOfByte23];
                  arrayOfByte4[arrayOfByte11] = arrayOfByte23;
                  arrayOfByte11 = arrayOfByte16 + 1;
                  arrayOfByte23 = arrayOfByte7 >> 6;
                  arrayOfByte23 &= 0x3F;
                  arrayOfByte23 = localAssertionError1[arrayOfByte23];
                  arrayOfByte4[arrayOfByte16] = arrayOfByte23;
                  arrayOfByte16 = arrayOfByte11 + 1;
                  arrayOfByte7 &= 0x3F;
                  int n = localAssertionError1[arrayOfByte7];
                  arrayOfByte4[arrayOfByte11] = n;
                  boolean bool2 = d;
                  if (!bool2) {
                    break label1736;
                  }
                  arrayOfByte3 = arrayOfByte16 + 1;
                  arrayOfByte7 = 61;
                  arrayOfByte4[arrayOfByte16] = arrayOfByte7;
                }
              }
            }
          }
          for (;;)
          {
            boolean bool8 = e;
            if (bool8)
            {
              bool8 = f;
              if (bool8)
              {
                arrayOfByte8 = arrayOfByte3 + 1;
                arrayOfByte11 = 13;
                arrayOfByte4[arrayOfByte3] = arrayOfByte11;
                arrayOfByte3 = arrayOfByte8;
              }
              arrayOfByte8 = arrayOfByte3 + 1;
              arrayOfByte11 = 10;
              arrayOfByte4[arrayOfByte3] = arrayOfByte11;
              arrayOfByte3 = arrayOfByte8;
            }
            arrayOfByte4 = arrayOfByte3;
            arrayOfByte3 = arrayOfByte21;
            break;
            arrayOfByte21 = arrayOfByte8 + 1;
            byte[] arrayOfByte8 = paramArrayOfByte[arrayOfByte8];
            arrayOfByte25 = arrayOfByte21;
            arrayOfByte21 = arrayOfByte16;
            arrayOfByte16 = arrayOfByte25;
            break label1278;
            arrayOfByte23 = arrayOfByte16 + 1;
            arrayOfByte16 = paramArrayOfByte[arrayOfByte16];
            arrayOfByte25 = arrayOfByte23;
            arrayOfByte23 = arrayOfByte21;
            arrayOfByte21 = arrayOfByte25;
            break label1339;
            boolean bool3 = e;
            int i2;
            if ((bool3) && (arrayOfByte11 > 0))
            {
              int i1 = 19;
              if (i4 != i1)
              {
                boolean bool4 = f;
                if (!bool4) {
                  break label1730;
                }
                i2 = arrayOfByte11 + 1;
                arrayOfByte16 = 13;
                arrayOfByte4[arrayOfByte11] = arrayOfByte16;
              }
            }
            for (;;)
            {
              arrayOfByte11 = i2 + 1;
              arrayOfByte16 = 10;
              arrayOfByte4[i2] = arrayOfByte16;
              i2 = arrayOfByte8;
              arrayOfByte4 = arrayOfByte11;
              break;
              arrayOfByte9 = g;
              if ((arrayOfByte9 == 0) && (i2 != i5))
              {
                AssertionError localAssertionError2 = new java/lang/AssertionError;
                localAssertionError2.<init>();
                throw localAssertionError2;
              }
              b = arrayOfByte4;
              k = i4;
              bool5 = true;
              return bool5;
              bool5 = arrayOfByte11;
            }
            bool5 = arrayOfByte16;
          }
        }
        label1748:
        i4 = arrayOfByte11;
      }
      arrayOfByte11 = arrayOfByte9;
      byte[] arrayOfByte9 = arrayOfByte16;
    }
  }
}

/* Location:
 * Qualified Name:     v.b
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */