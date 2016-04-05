package com.adsdk.sdk.mraid;

class Base64$Decoder
  extends Base64.Coder
{
  private static final int[] DECODE;
  private static final int[] DECODE_WEBSAFE;
  private static final int EQUALS = -2;
  private static final int SKIP = -1;
  private final int[] alphabet;
  private int state;
  private int value;
  
  static
  {
    int[] arrayOfInt = new int['Ā'];
    arrayOfInt[0] = -1;
    arrayOfInt[1] = -1;
    arrayOfInt[2] = -1;
    arrayOfInt[3] = -1;
    arrayOfInt[4] = -1;
    arrayOfInt[5] = -1;
    arrayOfInt[6] = -1;
    arrayOfInt[7] = -1;
    arrayOfInt[8] = -1;
    arrayOfInt[9] = -1;
    arrayOfInt[10] = -1;
    arrayOfInt[11] = -1;
    arrayOfInt[12] = -1;
    arrayOfInt[13] = -1;
    arrayOfInt[14] = -1;
    arrayOfInt[15] = -1;
    arrayOfInt[16] = -1;
    arrayOfInt[17] = -1;
    arrayOfInt[18] = -1;
    arrayOfInt[19] = -1;
    arrayOfInt[20] = -1;
    arrayOfInt[21] = -1;
    arrayOfInt[22] = -1;
    arrayOfInt[23] = -1;
    arrayOfInt[24] = -1;
    arrayOfInt[25] = -1;
    arrayOfInt[26] = -1;
    arrayOfInt[27] = -1;
    arrayOfInt[28] = -1;
    arrayOfInt[29] = -1;
    arrayOfInt[30] = -1;
    arrayOfInt[31] = -1;
    arrayOfInt[32] = -1;
    arrayOfInt[33] = -1;
    arrayOfInt[34] = -1;
    arrayOfInt[35] = -1;
    arrayOfInt[36] = -1;
    arrayOfInt[37] = -1;
    arrayOfInt[38] = -1;
    arrayOfInt[39] = -1;
    arrayOfInt[40] = -1;
    arrayOfInt[41] = -1;
    arrayOfInt[42] = -1;
    arrayOfInt[43] = 62;
    arrayOfInt[44] = -1;
    arrayOfInt[45] = -1;
    arrayOfInt[46] = -1;
    arrayOfInt[47] = 63;
    arrayOfInt[48] = 52;
    arrayOfInt[49] = 53;
    arrayOfInt[50] = 54;
    arrayOfInt[51] = 55;
    arrayOfInt[52] = 56;
    arrayOfInt[53] = 57;
    arrayOfInt[54] = 58;
    arrayOfInt[55] = 59;
    arrayOfInt[56] = 60;
    arrayOfInt[57] = 61;
    arrayOfInt[58] = -1;
    arrayOfInt[59] = -1;
    arrayOfInt[60] = -1;
    arrayOfInt[61] = -2;
    arrayOfInt[62] = -1;
    arrayOfInt[63] = -1;
    arrayOfInt[64] = -1;
    arrayOfInt[66] = 1;
    arrayOfInt[67] = 2;
    arrayOfInt[68] = 3;
    arrayOfInt[69] = 4;
    arrayOfInt[70] = 5;
    arrayOfInt[71] = 6;
    arrayOfInt[72] = 7;
    arrayOfInt[73] = 8;
    arrayOfInt[74] = 9;
    arrayOfInt[75] = 10;
    arrayOfInt[76] = 11;
    arrayOfInt[77] = 12;
    arrayOfInt[78] = 13;
    arrayOfInt[79] = 14;
    arrayOfInt[80] = 15;
    arrayOfInt[81] = 16;
    arrayOfInt[82] = 17;
    arrayOfInt[83] = 18;
    arrayOfInt[84] = 19;
    arrayOfInt[85] = 20;
    arrayOfInt[86] = 21;
    arrayOfInt[87] = 22;
    arrayOfInt[88] = 23;
    arrayOfInt[89] = 24;
    arrayOfInt[90] = 25;
    arrayOfInt[91] = -1;
    arrayOfInt[92] = -1;
    arrayOfInt[93] = -1;
    arrayOfInt[94] = -1;
    arrayOfInt[95] = -1;
    arrayOfInt[96] = -1;
    arrayOfInt[97] = 26;
    arrayOfInt[98] = 27;
    arrayOfInt[99] = 28;
    arrayOfInt[100] = 29;
    arrayOfInt[101] = 30;
    arrayOfInt[102] = 31;
    arrayOfInt[103] = 32;
    arrayOfInt[104] = 33;
    arrayOfInt[105] = 34;
    arrayOfInt[106] = 35;
    arrayOfInt[107] = 36;
    arrayOfInt[108] = 37;
    arrayOfInt[109] = 38;
    arrayOfInt[110] = 39;
    arrayOfInt[111] = 40;
    arrayOfInt[112] = 41;
    arrayOfInt[113] = 42;
    arrayOfInt[114] = 43;
    arrayOfInt[115] = 44;
    arrayOfInt[116] = 45;
    arrayOfInt[117] = 46;
    arrayOfInt[118] = 47;
    arrayOfInt[119] = 48;
    arrayOfInt[120] = 49;
    arrayOfInt[121] = 50;
    arrayOfInt[122] = 51;
    arrayOfInt[123] = -1;
    arrayOfInt[124] = -1;
    arrayOfInt[125] = -1;
    arrayOfInt[126] = -1;
    arrayOfInt[127] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[' '] = -1;
    arrayOfInt['¡'] = -1;
    arrayOfInt['¢'] = -1;
    arrayOfInt['£'] = -1;
    arrayOfInt['¤'] = -1;
    arrayOfInt['¥'] = -1;
    arrayOfInt['¦'] = -1;
    arrayOfInt['§'] = -1;
    arrayOfInt['¨'] = -1;
    arrayOfInt['©'] = -1;
    arrayOfInt['ª'] = -1;
    arrayOfInt['«'] = -1;
    arrayOfInt['¬'] = -1;
    arrayOfInt['­'] = -1;
    arrayOfInt['®'] = -1;
    arrayOfInt['¯'] = -1;
    arrayOfInt['°'] = -1;
    arrayOfInt['±'] = -1;
    arrayOfInt['²'] = -1;
    arrayOfInt['³'] = -1;
    arrayOfInt['´'] = -1;
    arrayOfInt['µ'] = -1;
    arrayOfInt['¶'] = -1;
    arrayOfInt['·'] = -1;
    arrayOfInt['¸'] = -1;
    arrayOfInt['¹'] = -1;
    arrayOfInt['º'] = -1;
    arrayOfInt['»'] = -1;
    arrayOfInt['¼'] = -1;
    arrayOfInt['½'] = -1;
    arrayOfInt['¾'] = -1;
    arrayOfInt['¿'] = -1;
    arrayOfInt['À'] = -1;
    arrayOfInt['Á'] = -1;
    arrayOfInt['Â'] = -1;
    arrayOfInt['Ã'] = -1;
    arrayOfInt['Ä'] = -1;
    arrayOfInt['Å'] = -1;
    arrayOfInt['Æ'] = -1;
    arrayOfInt['Ç'] = -1;
    arrayOfInt['È'] = -1;
    arrayOfInt['É'] = -1;
    arrayOfInt['Ê'] = -1;
    arrayOfInt['Ë'] = -1;
    arrayOfInt['Ì'] = -1;
    arrayOfInt['Í'] = -1;
    arrayOfInt['Î'] = -1;
    arrayOfInt['Ï'] = -1;
    arrayOfInt['Ð'] = -1;
    arrayOfInt['Ñ'] = -1;
    arrayOfInt['Ò'] = -1;
    arrayOfInt['Ó'] = -1;
    arrayOfInt['Ô'] = -1;
    arrayOfInt['Õ'] = -1;
    arrayOfInt['Ö'] = -1;
    arrayOfInt['×'] = -1;
    arrayOfInt['Ø'] = -1;
    arrayOfInt['Ù'] = -1;
    arrayOfInt['Ú'] = -1;
    arrayOfInt['Û'] = -1;
    arrayOfInt['Ü'] = -1;
    arrayOfInt['Ý'] = -1;
    arrayOfInt['Þ'] = -1;
    arrayOfInt['ß'] = -1;
    arrayOfInt['à'] = -1;
    arrayOfInt['á'] = -1;
    arrayOfInt['â'] = -1;
    arrayOfInt['ã'] = -1;
    arrayOfInt['ä'] = -1;
    arrayOfInt['å'] = -1;
    arrayOfInt['æ'] = -1;
    arrayOfInt['ç'] = -1;
    arrayOfInt['è'] = -1;
    arrayOfInt['é'] = -1;
    arrayOfInt['ê'] = -1;
    arrayOfInt['ë'] = -1;
    arrayOfInt['ì'] = -1;
    arrayOfInt['í'] = -1;
    arrayOfInt['î'] = -1;
    arrayOfInt['ï'] = -1;
    arrayOfInt['ð'] = -1;
    arrayOfInt['ñ'] = -1;
    arrayOfInt['ò'] = -1;
    arrayOfInt['ó'] = -1;
    arrayOfInt['ô'] = -1;
    arrayOfInt['õ'] = -1;
    arrayOfInt['ö'] = -1;
    arrayOfInt['÷'] = -1;
    arrayOfInt['ø'] = -1;
    arrayOfInt['ù'] = -1;
    arrayOfInt['ú'] = -1;
    arrayOfInt['û'] = -1;
    arrayOfInt['ü'] = -1;
    arrayOfInt['ý'] = -1;
    arrayOfInt['þ'] = -1;
    arrayOfInt['ÿ'] = -1;
    DECODE = arrayOfInt;
    arrayOfInt = new int['Ā'];
    arrayOfInt[0] = -1;
    arrayOfInt[1] = -1;
    arrayOfInt[2] = -1;
    arrayOfInt[3] = -1;
    arrayOfInt[4] = -1;
    arrayOfInt[5] = -1;
    arrayOfInt[6] = -1;
    arrayOfInt[7] = -1;
    arrayOfInt[8] = -1;
    arrayOfInt[9] = -1;
    arrayOfInt[10] = -1;
    arrayOfInt[11] = -1;
    arrayOfInt[12] = -1;
    arrayOfInt[13] = -1;
    arrayOfInt[14] = -1;
    arrayOfInt[15] = -1;
    arrayOfInt[16] = -1;
    arrayOfInt[17] = -1;
    arrayOfInt[18] = -1;
    arrayOfInt[19] = -1;
    arrayOfInt[20] = -1;
    arrayOfInt[21] = -1;
    arrayOfInt[22] = -1;
    arrayOfInt[23] = -1;
    arrayOfInt[24] = -1;
    arrayOfInt[25] = -1;
    arrayOfInt[26] = -1;
    arrayOfInt[27] = -1;
    arrayOfInt[28] = -1;
    arrayOfInt[29] = -1;
    arrayOfInt[30] = -1;
    arrayOfInt[31] = -1;
    arrayOfInt[32] = -1;
    arrayOfInt[33] = -1;
    arrayOfInt[34] = -1;
    arrayOfInt[35] = -1;
    arrayOfInt[36] = -1;
    arrayOfInt[37] = -1;
    arrayOfInt[38] = -1;
    arrayOfInt[39] = -1;
    arrayOfInt[40] = -1;
    arrayOfInt[41] = -1;
    arrayOfInt[42] = -1;
    arrayOfInt[43] = -1;
    arrayOfInt[44] = -1;
    arrayOfInt[45] = 62;
    arrayOfInt[46] = -1;
    arrayOfInt[47] = -1;
    arrayOfInt[48] = 52;
    arrayOfInt[49] = 53;
    arrayOfInt[50] = 54;
    arrayOfInt[51] = 55;
    arrayOfInt[52] = 56;
    arrayOfInt[53] = 57;
    arrayOfInt[54] = 58;
    arrayOfInt[55] = 59;
    arrayOfInt[56] = 60;
    arrayOfInt[57] = 61;
    arrayOfInt[58] = -1;
    arrayOfInt[59] = -1;
    arrayOfInt[60] = -1;
    arrayOfInt[61] = -2;
    arrayOfInt[62] = -1;
    arrayOfInt[63] = -1;
    arrayOfInt[64] = -1;
    arrayOfInt[66] = 1;
    arrayOfInt[67] = 2;
    arrayOfInt[68] = 3;
    arrayOfInt[69] = 4;
    arrayOfInt[70] = 5;
    arrayOfInt[71] = 6;
    arrayOfInt[72] = 7;
    arrayOfInt[73] = 8;
    arrayOfInt[74] = 9;
    arrayOfInt[75] = 10;
    arrayOfInt[76] = 11;
    arrayOfInt[77] = 12;
    arrayOfInt[78] = 13;
    arrayOfInt[79] = 14;
    arrayOfInt[80] = 15;
    arrayOfInt[81] = 16;
    arrayOfInt[82] = 17;
    arrayOfInt[83] = 18;
    arrayOfInt[84] = 19;
    arrayOfInt[85] = 20;
    arrayOfInt[86] = 21;
    arrayOfInt[87] = 22;
    arrayOfInt[88] = 23;
    arrayOfInt[89] = 24;
    arrayOfInt[90] = 25;
    arrayOfInt[91] = -1;
    arrayOfInt[92] = -1;
    arrayOfInt[93] = -1;
    arrayOfInt[94] = -1;
    arrayOfInt[95] = 63;
    arrayOfInt[96] = -1;
    arrayOfInt[97] = 26;
    arrayOfInt[98] = 27;
    arrayOfInt[99] = 28;
    arrayOfInt[100] = 29;
    arrayOfInt[101] = 30;
    arrayOfInt[102] = 31;
    arrayOfInt[103] = 32;
    arrayOfInt[104] = 33;
    arrayOfInt[105] = 34;
    arrayOfInt[106] = 35;
    arrayOfInt[107] = 36;
    arrayOfInt[108] = 37;
    arrayOfInt[109] = 38;
    arrayOfInt[110] = 39;
    arrayOfInt[111] = 40;
    arrayOfInt[112] = 41;
    arrayOfInt[113] = 42;
    arrayOfInt[114] = 43;
    arrayOfInt[115] = 44;
    arrayOfInt[116] = 45;
    arrayOfInt[117] = 46;
    arrayOfInt[118] = 47;
    arrayOfInt[119] = 48;
    arrayOfInt[120] = 49;
    arrayOfInt[121] = 50;
    arrayOfInt[122] = 51;
    arrayOfInt[123] = -1;
    arrayOfInt[124] = -1;
    arrayOfInt[125] = -1;
    arrayOfInt[126] = -1;
    arrayOfInt[127] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[''] = -1;
    arrayOfInt[' '] = -1;
    arrayOfInt['¡'] = -1;
    arrayOfInt['¢'] = -1;
    arrayOfInt['£'] = -1;
    arrayOfInt['¤'] = -1;
    arrayOfInt['¥'] = -1;
    arrayOfInt['¦'] = -1;
    arrayOfInt['§'] = -1;
    arrayOfInt['¨'] = -1;
    arrayOfInt['©'] = -1;
    arrayOfInt['ª'] = -1;
    arrayOfInt['«'] = -1;
    arrayOfInt['¬'] = -1;
    arrayOfInt['­'] = -1;
    arrayOfInt['®'] = -1;
    arrayOfInt['¯'] = -1;
    arrayOfInt['°'] = -1;
    arrayOfInt['±'] = -1;
    arrayOfInt['²'] = -1;
    arrayOfInt['³'] = -1;
    arrayOfInt['´'] = -1;
    arrayOfInt['µ'] = -1;
    arrayOfInt['¶'] = -1;
    arrayOfInt['·'] = -1;
    arrayOfInt['¸'] = -1;
    arrayOfInt['¹'] = -1;
    arrayOfInt['º'] = -1;
    arrayOfInt['»'] = -1;
    arrayOfInt['¼'] = -1;
    arrayOfInt['½'] = -1;
    arrayOfInt['¾'] = -1;
    arrayOfInt['¿'] = -1;
    arrayOfInt['À'] = -1;
    arrayOfInt['Á'] = -1;
    arrayOfInt['Â'] = -1;
    arrayOfInt['Ã'] = -1;
    arrayOfInt['Ä'] = -1;
    arrayOfInt['Å'] = -1;
    arrayOfInt['Æ'] = -1;
    arrayOfInt['Ç'] = -1;
    arrayOfInt['È'] = -1;
    arrayOfInt['É'] = -1;
    arrayOfInt['Ê'] = -1;
    arrayOfInt['Ë'] = -1;
    arrayOfInt['Ì'] = -1;
    arrayOfInt['Í'] = -1;
    arrayOfInt['Î'] = -1;
    arrayOfInt['Ï'] = -1;
    arrayOfInt['Ð'] = -1;
    arrayOfInt['Ñ'] = -1;
    arrayOfInt['Ò'] = -1;
    arrayOfInt['Ó'] = -1;
    arrayOfInt['Ô'] = -1;
    arrayOfInt['Õ'] = -1;
    arrayOfInt['Ö'] = -1;
    arrayOfInt['×'] = -1;
    arrayOfInt['Ø'] = -1;
    arrayOfInt['Ù'] = -1;
    arrayOfInt['Ú'] = -1;
    arrayOfInt['Û'] = -1;
    arrayOfInt['Ü'] = -1;
    arrayOfInt['Ý'] = -1;
    arrayOfInt['Þ'] = -1;
    arrayOfInt['ß'] = -1;
    arrayOfInt['à'] = -1;
    arrayOfInt['á'] = -1;
    arrayOfInt['â'] = -1;
    arrayOfInt['ã'] = -1;
    arrayOfInt['ä'] = -1;
    arrayOfInt['å'] = -1;
    arrayOfInt['æ'] = -1;
    arrayOfInt['ç'] = -1;
    arrayOfInt['è'] = -1;
    arrayOfInt['é'] = -1;
    arrayOfInt['ê'] = -1;
    arrayOfInt['ë'] = -1;
    arrayOfInt['ì'] = -1;
    arrayOfInt['í'] = -1;
    arrayOfInt['î'] = -1;
    arrayOfInt['ï'] = -1;
    arrayOfInt['ð'] = -1;
    arrayOfInt['ñ'] = -1;
    arrayOfInt['ò'] = -1;
    arrayOfInt['ó'] = -1;
    arrayOfInt['ô'] = -1;
    arrayOfInt['õ'] = -1;
    arrayOfInt['ö'] = -1;
    arrayOfInt['÷'] = -1;
    arrayOfInt['ø'] = -1;
    arrayOfInt['ù'] = -1;
    arrayOfInt['ú'] = -1;
    arrayOfInt['û'] = -1;
    arrayOfInt['ü'] = -1;
    arrayOfInt['ý'] = -1;
    arrayOfInt['þ'] = -1;
    arrayOfInt['ÿ'] = -1;
    DECODE_WEBSAFE = arrayOfInt;
  }
  
  public Base64$Decoder(int paramInt, byte[] paramArrayOfByte)
  {
    output = paramArrayOfByte;
    if ((paramInt & 0x8) == 0) {}
    for (paramArrayOfByte = DECODE;; paramArrayOfByte = DECODE_WEBSAFE)
    {
      alphabet = paramArrayOfByte;
      state = 0;
      value = 0;
      return;
    }
  }
  
  public int maxOutputSize(int paramInt)
  {
    return paramInt * 3 / 4 + 10;
  }
  
  public boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (state == 6) {
      return false;
    }
    int i1 = paramInt2 + paramInt1;
    paramInt2 = state;
    int i = value;
    int j = 0;
    byte[] arrayOfByte = output;
    int[] arrayOfInt = alphabet;
    int m;
    if (paramInt1 >= i1)
    {
      m = i;
      i = j;
    }
    while (!paramBoolean)
    {
      state = paramInt2;
      value = m;
      op = i;
      return true;
      int k = j;
      m = i;
      int n = paramInt1;
      if (paramInt2 == 0)
      {
        k = paramInt1;
        paramInt1 = i;
        label101:
        if (k + 4 <= i1)
        {
          paramInt1 = arrayOfInt[(paramArrayOfByte[k] & 0xFF)] << 18 | arrayOfInt[(paramArrayOfByte[(k + 1)] & 0xFF)] << 12 | arrayOfInt[(paramArrayOfByte[(k + 2)] & 0xFF)] << 6 | arrayOfInt[(paramArrayOfByte[(k + 3)] & 0xFF)];
          if (paramInt1 >= 0) {}
        }
        else
        {
          i = j;
          m = paramInt1;
          if (k >= i1) {
            continue;
          }
          n = k;
          m = paramInt1;
          k = j;
        }
      }
      else
      {
        paramInt1 = n + 1;
        i = arrayOfInt[(paramArrayOfByte[n] & 0xFF)];
        switch (paramInt2)
        {
        }
      }
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  j = k;
                  i = m;
                  break;
                  arrayOfByte[(j + 2)] = ((byte)paramInt1);
                  arrayOfByte[(j + 1)] = ((byte)(paramInt1 >> 8));
                  arrayOfByte[j] = ((byte)(paramInt1 >> 16));
                  j += 3;
                  k += 4;
                  break label101;
                  if (i >= 0)
                  {
                    paramInt2 += 1;
                    j = k;
                    break;
                  }
                } while (i == -1);
                state = 6;
                return false;
                if (i >= 0)
                {
                  i = m << 6 | i;
                  paramInt2 += 1;
                  j = k;
                  break;
                }
              } while (i == -1);
              state = 6;
              return false;
              if (i >= 0)
              {
                i = m << 6 | i;
                paramInt2 += 1;
                j = k;
                break;
              }
              if (i == -2)
              {
                arrayOfByte[k] = ((byte)(m >> 4));
                paramInt2 = 4;
                j = k + 1;
                i = m;
                break;
              }
            } while (i == -1);
            state = 6;
            return false;
            if (i >= 0)
            {
              i = m << 6 | i;
              arrayOfByte[(k + 2)] = ((byte)i);
              arrayOfByte[(k + 1)] = ((byte)(i >> 8));
              arrayOfByte[k] = ((byte)(i >> 16));
              j = k + 3;
              paramInt2 = 0;
              break;
            }
            if (i == -2)
            {
              arrayOfByte[(k + 1)] = ((byte)(m >> 2));
              arrayOfByte[k] = ((byte)(m >> 10));
              j = k + 2;
              paramInt2 = 5;
              i = m;
              break;
            }
          } while (i == -1);
          state = 6;
          return false;
          if (i == -2)
          {
            paramInt2 += 1;
            j = k;
            i = m;
            break;
          }
        } while (i == -1);
        state = 6;
        return false;
      } while (i == -1);
      state = 6;
      return false;
    }
    paramInt1 = i;
    switch (paramInt2)
    {
    default: 
      paramInt1 = i;
    case 0: 
    case 1: 
    case 2: 
    case 3: 
      for (;;)
      {
        state = paramInt2;
        op = paramInt1;
        return true;
        state = 6;
        return false;
        arrayOfByte[i] = ((byte)(m >> 4));
        paramInt1 = i + 1;
        continue;
        j = i + 1;
        arrayOfByte[i] = ((byte)(m >> 10));
        paramInt1 = j + 1;
        arrayOfByte[j] = ((byte)(m >> 2));
      }
    }
    state = 6;
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.Base64.Decoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */