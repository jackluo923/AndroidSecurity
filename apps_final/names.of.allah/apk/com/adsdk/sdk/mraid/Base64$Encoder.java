package com.adsdk.sdk.mraid;

class Base64$Encoder
  extends Base64.Coder
{
  private static final byte[] ENCODE;
  private static final byte[] ENCODE_WEBSAFE;
  public static final int LINE_GROUPS = 19;
  private final byte[] alphabet;
  private int count;
  public final boolean do_cr;
  public final boolean do_newline;
  public final boolean do_padding;
  private final byte[] tail;
  int tailLen;
  
  static
  {
    if (!Base64.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      ENCODE = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      ENCODE_WEBSAFE = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      return;
    }
  }
  
  public Base64$Encoder(int paramInt, byte[] paramArrayOfByte)
  {
    output = paramArrayOfByte;
    boolean bool1;
    if ((paramInt & 0x1) == 0)
    {
      bool1 = true;
      do_padding = bool1;
      if ((paramInt & 0x2) != 0) {
        break label101;
      }
      bool1 = true;
      label33:
      do_newline = bool1;
      if ((paramInt & 0x4) == 0) {
        break label106;
      }
      bool1 = bool2;
      label47:
      do_cr = bool1;
      if ((paramInt & 0x8) != 0) {
        break label111;
      }
      paramArrayOfByte = ENCODE;
      label63:
      alphabet = paramArrayOfByte;
      tail = new byte[2];
      tailLen = 0;
      if (!do_newline) {
        break label118;
      }
    }
    label101:
    label106:
    label111:
    label118:
    for (paramInt = 19;; paramInt = -1)
    {
      count = paramInt;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label33;
      bool1 = false;
      break label47;
      paramArrayOfByte = ENCODE_WEBSAFE;
      break label63;
    }
  }
  
  public int maxOutputSize(int paramInt)
  {
    return paramInt * 8 / 5 + 10;
  }
  
  public boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    byte[] arrayOfByte1 = alphabet;
    byte[] arrayOfByte2 = output;
    int i = 0;
    int j = count;
    int n = paramInt2 + paramInt1;
    int k;
    switch (tailLen)
    {
    default: 
      k = -1;
      paramInt2 = paramInt1;
      paramInt1 = k;
      label64:
      if (paramInt1 != -1)
      {
        arrayOfByte2[0] = arrayOfByte1[(paramInt1 >> 18 & 0x3F)];
        arrayOfByte2[1] = arrayOfByte1[(paramInt1 >> 12 & 0x3F)];
        arrayOfByte2[2] = arrayOfByte1[(paramInt1 >> 6 & 0x3F)];
        i = 4;
        arrayOfByte2[3] = arrayOfByte1[(paramInt1 & 0x3F)];
        j -= 1;
        if (j == 0)
        {
          paramInt1 = i;
          if (do_cr)
          {
            paramInt1 = 5;
            arrayOfByte2[4] = 13;
          }
          i = paramInt1 + 1;
          arrayOfByte2[paramInt1] = 10;
          j = 19;
          paramInt1 = i;
        }
      }
      break;
    }
    for (;;)
    {
      label218:
      int m;
      if (paramInt2 + 3 > n)
      {
        if (!paramBoolean) {
          break label1059;
        }
        if (paramInt2 - tailLen != n - 1) {
          break label704;
        }
        if (tailLen <= 0) {
          break label689;
        }
        paramArrayOfByte = tail;
        i = 1;
        k = paramArrayOfByte[0];
        k = (k & 0xFF) << 4;
        tailLen -= i;
        m = paramInt1 + 1;
        arrayOfByte2[paramInt1] = arrayOfByte1[(k >> 6 & 0x3F)];
        i = m + 1;
        arrayOfByte2[m] = arrayOfByte1[(k & 0x3F)];
        paramInt1 = i;
        if (do_padding)
        {
          k = i + 1;
          arrayOfByte2[i] = 61;
          paramInt1 = k + 1;
          arrayOfByte2[k] = 61;
        }
        i = paramInt1;
        k = paramInt2;
        if (!do_newline) {
          break label1190;
        }
        i = paramInt1;
        if (do_cr)
        {
          arrayOfByte2[paramInt1] = 13;
          i = paramInt1 + 1;
        }
        paramInt1 = i + 1;
        arrayOfByte2[i] = 10;
        i = paramInt1;
        k = paramInt2;
        if (($assertionsDisabled) || (tailLen == 0)) {
          break label1030;
        }
        throw new AssertionError();
        k = -1;
        paramInt2 = paramInt1;
        paramInt1 = k;
        break label64;
        if (paramInt1 + 2 > n) {
          break;
        }
        k = tail[0];
        paramInt2 = paramInt1 + 1;
        paramInt1 = paramArrayOfByte[paramInt1];
        m = paramArrayOfByte[paramInt2];
        tailLen = 0;
        paramInt1 = (k & 0xFF) << 16 | (paramInt1 & 0xFF) << 8 | m & 0xFF;
        paramInt2 += 1;
        break label64;
        if (paramInt1 + 1 > n) {
          break;
        }
        k = tail[0];
        m = tail[1];
        paramInt2 = paramInt1 + 1;
        paramInt1 = paramArrayOfByte[paramInt1];
        tailLen = 0;
        paramInt1 = (k & 0xFF) << 16 | (m & 0xFF) << 8 | paramInt1 & 0xFF;
        break label64;
      }
      i = (paramArrayOfByte[paramInt2] & 0xFF) << 16 | (paramArrayOfByte[(paramInt2 + 1)] & 0xFF) << 8 | paramArrayOfByte[(paramInt2 + 2)] & 0xFF;
      arrayOfByte2[paramInt1] = arrayOfByte1[(i >> 18 & 0x3F)];
      arrayOfByte2[(paramInt1 + 1)] = arrayOfByte1[(i >> 12 & 0x3F)];
      arrayOfByte2[(paramInt1 + 2)] = arrayOfByte1[(i >> 6 & 0x3F)];
      arrayOfByte2[(paramInt1 + 3)] = arrayOfByte1[(i & 0x3F)];
      paramInt2 += 3;
      paramInt1 += 4;
      j -= 1;
      if (j == 0)
      {
        if (do_cr)
        {
          i = paramInt1 + 1;
          arrayOfByte2[paramInt1] = 13;
          paramInt1 = i;
        }
        for (;;)
        {
          i = paramInt1 + 1;
          arrayOfByte2[paramInt1] = 10;
          j = 19;
          paramInt1 = i;
          break;
          label689:
          k = paramArrayOfByte[paramInt2];
          paramInt2 += 1;
          i = 0;
          break label218;
          label704:
          if (paramInt2 - tailLen == n - 2) {
            if (tailLen > 1)
            {
              byte[] arrayOfByte3 = tail;
              i = 1;
              k = arrayOfByte3[0];
              label740:
              if (tailLen <= 0) {
                break label944;
              }
              m = tail[i];
              i += 1;
              label762:
              k = (m & 0xFF) << 2 | (k & 0xFF) << 10;
              tailLen -= i;
              i = paramInt1 + 1;
              arrayOfByte2[paramInt1] = arrayOfByte1[(k >> 12 & 0x3F)];
              m = i + 1;
              arrayOfByte2[i] = arrayOfByte1[(k >> 6 & 0x3F)];
              paramInt1 = m + 1;
              arrayOfByte2[m] = arrayOfByte1[(k & 0x3F)];
              if (!do_padding) {
                break label1193;
              }
              i = paramInt1 + 1;
              arrayOfByte2[paramInt1] = 61;
              paramInt1 = i;
            }
          }
          label944:
          label1030:
          label1059:
          label1112:
          label1190:
          label1193:
          for (;;)
          {
            i = paramInt1;
            k = paramInt2;
            if (do_newline)
            {
              i = paramInt1;
              if (do_cr)
              {
                arrayOfByte2[paramInt1] = 13;
                i = paramInt1 + 1;
              }
              paramInt1 = i + 1;
              arrayOfByte2[i] = 10;
              k = paramInt2;
              i = paramInt1;
              break;
              k = paramArrayOfByte[paramInt2];
              paramInt2 += 1;
              i = 0;
              break label740;
              m = paramArrayOfByte[paramInt2];
              paramInt2 += 1;
              break label762;
              k = paramInt2;
              i = paramInt1;
              if (!do_newline) {
                break;
              }
              k = paramInt2;
              i = paramInt1;
              if (paramInt1 <= 0) {
                break;
              }
              k = paramInt2;
              i = paramInt1;
              if (j == 19) {
                break;
              }
              if (do_cr)
              {
                i = paramInt1 + 1;
                arrayOfByte2[paramInt1] = 13;
                paramInt1 = i;
              }
              for (;;)
              {
                i = paramInt1 + 1;
                arrayOfByte2[paramInt1] = 10;
                k = paramInt2;
                break;
                m = i;
                if (!$assertionsDisabled)
                {
                  m = i;
                  if (k != n)
                  {
                    throw new AssertionError();
                    if (paramInt2 != n - 1) {
                      break label1112;
                    }
                    arrayOfByte1 = tail;
                    i = tailLen;
                    tailLen = (i + 1);
                    arrayOfByte1[i] = paramArrayOfByte[paramInt2];
                    m = paramInt1;
                  }
                }
                for (;;)
                {
                  op = m;
                  count = j;
                  return true;
                  m = paramInt1;
                  if (paramInt2 == n - 2)
                  {
                    arrayOfByte1 = tail;
                    i = tailLen;
                    tailLen = (i + 1);
                    arrayOfByte1[i] = paramArrayOfByte[paramInt2];
                    arrayOfByte1 = tail;
                    i = tailLen;
                    tailLen = (i + 1);
                    arrayOfByte1[i] = paramArrayOfByte[(paramInt2 + 1)];
                    m = paramInt1;
                  }
                }
              }
            }
            break;
          }
        }
      }
      continue;
      paramInt1 = 4;
      continue;
      paramInt1 = i;
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.Base64.Encoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */