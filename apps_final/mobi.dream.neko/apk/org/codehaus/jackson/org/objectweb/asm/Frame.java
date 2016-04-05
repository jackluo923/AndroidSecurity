package org.codehaus.jackson.org.objectweb.asm;

final class Frame
{
  static final int[] a;
  Label b;
  int[] c;
  int[] d;
  private int[] e;
  private int[] f;
  private int g;
  private int h;
  private int[] i;
  
  static
  {
    int[] arrayOfInt = new int['Ê'];
    int j = 0;
    while (j < arrayOfInt.length)
    {
      arrayOfInt[j] = ("EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE".charAt(j) - 'E');
      j += 1;
    }
    a = arrayOfInt;
  }
  
  private int a()
  {
    if (g > 0)
    {
      localObject = f;
      j = g - 1;
      g = j;
      return localObject[j];
    }
    Object localObject = b;
    int j = f - 1;
    f = j;
    return 0x3000000 | -j;
  }
  
  private int a(int paramInt)
  {
    if ((e == null) || (paramInt >= e.length)) {
      j = 0x2000000 | paramInt;
    }
    int k;
    do
    {
      return j;
      k = e[paramInt];
      j = k;
    } while (k != 0);
    int[] arrayOfInt = e;
    int j = 0x2000000 | paramInt;
    arrayOfInt[paramInt] = j;
    return j;
  }
  
  private int a(ClassWriter paramClassWriter, int paramInt)
  {
    int j;
    int m;
    if (paramInt == 16777222)
    {
      j = paramClassWriter.c(F) | 0x1700000;
      m = 0;
    }
    for (;;)
    {
      int k = paramInt;
      int n;
      int i1;
      int i2;
      if (m < h)
      {
        n = i[m];
        i1 = 0xF0000000 & n;
        i2 = 0xF000000 & n;
        if (i2 != 33554432) {
          break label125;
        }
        k = c[(n & 0x7FFFFF)] + i1;
      }
      for (;;)
      {
        if (paramInt != k) {
          break label160;
        }
        k = j;
        do
        {
          return k;
          k = paramInt;
        } while ((0xFFF00000 & paramInt) != 25165824);
        j = paramClassWriter.c(E[(0xFFFFF & paramInt)].g) | 0x1700000;
        break;
        label125:
        k = n;
        if (i2 == 50331648) {
          k = d[(d.length - (n & 0x7FFFFF))] + i1;
        }
      }
      label160:
      m += 1;
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (e == null) {
      e = new int[10];
    }
    int j = e.length;
    if (paramInt1 >= j)
    {
      int[] arrayOfInt = new int[Math.max(paramInt1 + 1, j * 2)];
      System.arraycopy(e, 0, arrayOfInt, 0, j);
      e = arrayOfInt;
    }
    e[paramInt1] = paramInt2;
  }
  
  private void a(String paramString)
  {
    int j = paramString.charAt(0);
    if (j == 40)
    {
      c((Type.getArgumentsAndReturnSizes(paramString) >> 2) - 1);
      return;
    }
    if ((j == 74) || (j == 68))
    {
      c(2);
      return;
    }
    c(1);
  }
  
  private void a(ClassWriter paramClassWriter, String paramString)
  {
    int j = b(paramClassWriter, paramString);
    if (j != 0)
    {
      b(j);
      if ((j == 16777220) || (j == 16777219)) {
        b(16777216);
      }
    }
  }
  
  private static boolean a(ClassWriter paramClassWriter, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    int k = paramArrayOfInt[paramInt2];
    if (k == paramInt1) {
      return false;
    }
    if ((0xFFFFFFF & paramInt1) == 16777221) {
      if (k == 16777221) {
        return false;
      }
    }
    for (int j = 16777221;; j = paramInt1)
    {
      if (k == 0)
      {
        paramArrayOfInt[paramInt2] = j;
        return true;
      }
      if (((k & 0xFF00000) == 24117248) || ((k & 0xF0000000) != 0))
      {
        if (j == 16777221) {
          return false;
        }
        if ((0xFFF00000 & j) == (0xFFF00000 & k)) {
          if ((k & 0xFF00000) == 24117248) {
            paramInt1 = paramClassWriter.a(j & 0xFFFFF, 0xFFFFF & k) | j & 0xF0000000 | 0x1700000;
          }
        }
      }
      while (k != paramInt1)
      {
        paramArrayOfInt[paramInt2] = paramInt1;
        return true;
        paramInt1 = paramClassWriter.c("java/lang/Object") | 0x1700000;
        continue;
        if (((j & 0xFF00000) == 24117248) || ((j & 0xF0000000) != 0))
        {
          paramInt1 = paramClassWriter.c("java/lang/Object") | 0x1700000;
        }
        else
        {
          paramInt1 = 16777216;
          continue;
          if (k == 16777221)
          {
            paramInt1 = j;
            if ((j & 0xFF00000) != 24117248)
            {
              paramInt1 = j;
              if ((j & 0xF0000000) == 0) {
                paramInt1 = 16777216;
              }
            }
          }
          else
          {
            paramInt1 = 16777216;
          }
        }
      }
      return false;
    }
  }
  
  private static int b(ClassWriter paramClassWriter, String paramString)
  {
    int n = 16777217;
    int j = 0;
    if (paramString.charAt(0) == '(') {}
    int m;
    for (int k = paramString.indexOf(')') + 1;; k = 0) {
      switch (paramString.charAt(k))
      {
      default: 
        m = k + 1;
        while (paramString.charAt(m) == '[') {
          m += 1;
        }
      }
    }
    j = 16777217;
    return j;
    return 16777218;
    return 16777220;
    return 16777219;
    return 0x1700000 | paramClassWriter.c(paramString.substring(k + 1, paramString.length() - 1));
    j = n;
    switch (paramString.charAt(m))
    {
    default: 
      j = paramClassWriter.c(paramString.substring(m + 1, paramString.length() - 1)) | 0x1700000;
    }
    for (;;)
    {
      return m - k << 28 | j;
      j = 16777225;
      continue;
      j = 16777227;
      continue;
      j = 16777226;
      continue;
      j = 16777228;
      continue;
      j = 16777218;
      continue;
      j = 16777220;
      continue;
      j = 16777219;
    }
  }
  
  private void b(int paramInt)
  {
    if (f == null) {
      f = new int[10];
    }
    int j = f.length;
    if (g >= j)
    {
      arrayOfInt = new int[Math.max(g + 1, j * 2)];
      System.arraycopy(f, 0, arrayOfInt, 0, j);
      f = arrayOfInt;
    }
    int[] arrayOfInt = f;
    j = g;
    g = (j + 1);
    arrayOfInt[j] = paramInt;
    paramInt = b.f + g;
    if (paramInt > b.g) {
      b.g = paramInt;
    }
  }
  
  private void c(int paramInt)
  {
    if (g >= paramInt)
    {
      g -= paramInt;
      return;
    }
    Label localLabel = b;
    f -= paramInt - g;
    g = 0;
  }
  
  private void d(int paramInt)
  {
    if (i == null) {
      i = new int[2];
    }
    int j = i.length;
    if (h >= j)
    {
      arrayOfInt = new int[Math.max(h + 1, j * 2)];
      System.arraycopy(i, 0, arrayOfInt, 0, j);
      i = arrayOfInt;
    }
    int[] arrayOfInt = i;
    j = h;
    h = (j + 1);
    arrayOfInt[j] = paramInt;
  }
  
  void a(int paramInt1, int paramInt2, ClassWriter paramClassWriter, Item paramItem)
  {
    int j;
    switch (paramInt1)
    {
    case 19: 
    case 20: 
    case 26: 
    case 27: 
    case 28: 
    case 29: 
    case 30: 
    case 31: 
    case 32: 
    case 33: 
    case 34: 
    case 35: 
    case 36: 
    case 37: 
    case 38: 
    case 39: 
    case 40: 
    case 41: 
    case 42: 
    case 43: 
    case 44: 
    case 45: 
    case 59: 
    case 60: 
    case 61: 
    case 62: 
    case 63: 
    case 64: 
    case 65: 
    case 66: 
    case 67: 
    case 68: 
    case 69: 
    case 70: 
    case 71: 
    case 72: 
    case 73: 
    case 74: 
    case 75: 
    case 76: 
    case 77: 
    case 78: 
    case 196: 
    case 197: 
    default: 
      c(paramInt2);
      a(paramClassWriter, g);
    case 0: 
    case 116: 
    case 117: 
    case 118: 
    case 119: 
    case 145: 
    case 146: 
    case 147: 
    case 167: 
    case 177: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 16: 
    case 17: 
    case 21: 
    case 9: 
    case 10: 
    case 22: 
    case 11: 
    case 12: 
    case 13: 
    case 23: 
    case 14: 
    case 15: 
    case 24: 
    case 18: 
    case 25: 
    case 46: 
    case 51: 
    case 52: 
    case 53: 
    case 47: 
    case 143: 
    case 48: 
    case 49: 
    case 138: 
    case 50: 
    case 54: 
    case 56: 
    case 58: 
    case 55: 
    case 57: 
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              b(16777221);
              return;
              b(16777217);
              return;
              b(16777220);
              b(16777216);
              return;
              b(16777218);
              return;
              b(16777219);
              b(16777216);
              return;
              switch (b)
              {
              default: 
                b(0x1700000 | paramClassWriter.c("java/lang/String"));
                return;
              case 3: 
                b(16777217);
                return;
              case 5: 
                b(16777220);
                b(16777216);
                return;
              case 4: 
                b(16777218);
                return;
              case 6: 
                b(16777219);
                b(16777216);
                return;
              }
              b(0x1700000 | paramClassWriter.c("java/lang/Class"));
              return;
              b(a(paramInt2));
              return;
              c(2);
              b(16777217);
              return;
              c(2);
              b(16777220);
              b(16777216);
              return;
              c(2);
              b(16777218);
              return;
              c(2);
              b(16777219);
              b(16777216);
              return;
              c(1);
              b(a() - 268435456);
              return;
              a(paramInt2, a());
            } while (paramInt2 <= 0);
            paramInt1 = a(paramInt2 - 1);
            if ((paramInt1 == 16777220) || (paramInt1 == 16777219))
            {
              a(paramInt2 - 1, 16777216);
              return;
            }
          } while ((0xF000000 & paramInt1) == 16777216);
          a(paramInt2 - 1, paramInt1 | 0x800000);
          return;
          c(1);
          a(paramInt2, a());
          a(paramInt2 + 1, 16777216);
        } while (paramInt2 <= 0);
        paramInt1 = a(paramInt2 - 1);
        if ((paramInt1 == 16777220) || (paramInt1 == 16777219))
        {
          a(paramInt2 - 1, 16777216);
          return;
        }
      } while ((0xF000000 & paramInt1) == 16777216);
      a(paramInt2 - 1, paramInt1 | 0x800000);
      return;
    case 79: 
    case 81: 
    case 83: 
    case 84: 
    case 85: 
    case 86: 
      c(3);
      return;
    case 80: 
    case 82: 
      c(4);
      return;
    case 87: 
    case 153: 
    case 154: 
    case 155: 
    case 156: 
    case 157: 
    case 158: 
    case 170: 
    case 171: 
    case 172: 
    case 174: 
    case 176: 
    case 191: 
    case 194: 
    case 195: 
    case 198: 
    case 199: 
      c(1);
      return;
    case 88: 
    case 159: 
    case 160: 
    case 161: 
    case 162: 
    case 163: 
    case 164: 
    case 165: 
    case 166: 
    case 173: 
    case 175: 
      c(2);
      return;
    case 89: 
      paramInt1 = a();
      b(paramInt1);
      b(paramInt1);
      return;
    case 90: 
      paramInt1 = a();
      paramInt2 = a();
      b(paramInt1);
      b(paramInt2);
      b(paramInt1);
      return;
    case 91: 
      paramInt1 = a();
      paramInt2 = a();
      j = a();
      b(paramInt1);
      b(j);
      b(paramInt2);
      b(paramInt1);
      return;
    case 92: 
      paramInt1 = a();
      paramInt2 = a();
      b(paramInt2);
      b(paramInt1);
      b(paramInt2);
      b(paramInt1);
      return;
    case 93: 
      paramInt1 = a();
      paramInt2 = a();
      j = a();
      b(paramInt2);
      b(paramInt1);
      b(j);
      b(paramInt2);
      b(paramInt1);
      return;
    case 94: 
      paramInt1 = a();
      paramInt2 = a();
      j = a();
      int k = a();
      b(paramInt2);
      b(paramInt1);
      b(k);
      b(j);
      b(paramInt2);
      b(paramInt1);
      return;
    case 95: 
      paramInt1 = a();
      paramInt2 = a();
      b(paramInt1);
      b(paramInt2);
      return;
    case 96: 
    case 100: 
    case 104: 
    case 108: 
    case 112: 
    case 120: 
    case 122: 
    case 124: 
    case 126: 
    case 128: 
    case 130: 
    case 136: 
    case 142: 
    case 149: 
    case 150: 
      c(2);
      b(16777217);
      return;
    case 97: 
    case 101: 
    case 105: 
    case 109: 
    case 113: 
    case 127: 
    case 129: 
    case 131: 
      c(4);
      b(16777220);
      b(16777216);
      return;
    case 98: 
    case 102: 
    case 106: 
    case 110: 
    case 114: 
    case 137: 
    case 144: 
      c(2);
      b(16777218);
      return;
    case 99: 
    case 103: 
    case 107: 
    case 111: 
    case 115: 
      c(4);
      b(16777219);
      b(16777216);
      return;
    case 121: 
    case 123: 
    case 125: 
      c(3);
      b(16777220);
      b(16777216);
      return;
    case 132: 
      a(paramInt2, 16777217);
      return;
    case 133: 
    case 140: 
      c(1);
      b(16777220);
      b(16777216);
      return;
    case 134: 
      c(1);
      b(16777218);
      return;
    case 135: 
    case 141: 
      c(1);
      b(16777219);
      b(16777216);
      return;
    case 139: 
    case 190: 
    case 193: 
      c(1);
      b(16777217);
      return;
    case 148: 
    case 151: 
    case 152: 
      c(4);
      b(16777217);
      return;
    case 168: 
    case 169: 
      throw new RuntimeException("JSR/RET are not supported with computeFrames option");
    case 178: 
      a(paramClassWriter, i);
      return;
    case 179: 
      a(i);
      return;
    case 180: 
      c(1);
      a(paramClassWriter, i);
      return;
    case 181: 
      a(i);
      a();
      return;
    case 182: 
    case 183: 
    case 184: 
    case 185: 
      a(i);
      if (paramInt1 != 184)
      {
        paramInt2 = a();
        if ((paramInt1 == 183) && (h.charAt(0) == '<')) {
          d(paramInt2);
        }
      }
      a(paramClassWriter, i);
      return;
    case 186: 
      a(h);
      a(paramClassWriter, h);
      return;
    case 187: 
      b(0x1800000 | paramClassWriter.a(g, paramInt2));
      return;
    case 188: 
      a();
      switch (paramInt2)
      {
      default: 
        b(285212676);
        return;
      case 4: 
        b(285212681);
        return;
      case 5: 
        b(285212683);
        return;
      case 8: 
        b(285212682);
        return;
      case 9: 
        b(285212684);
        return;
      case 10: 
        b(285212673);
        return;
      case 6: 
        b(285212674);
        return;
      }
      b(285212675);
      return;
    case 189: 
      paramItem = g;
      a();
      if (paramItem.charAt(0) == '[')
      {
        a(paramClassWriter, '[' + paramItem);
        return;
      }
      b(paramClassWriter.c(paramItem) | 0x11700000);
      return;
    }
    paramItem = g;
    a();
    if (paramItem.charAt(0) == '[')
    {
      a(paramClassWriter, paramItem);
      return;
    }
    b(paramClassWriter.c(paramItem) | 0x1700000);
  }
  
  void a(ClassWriter paramClassWriter, int paramInt1, Type[] paramArrayOfType, int paramInt2)
  {
    int k = 1;
    int j = 0;
    c = new int[paramInt2];
    d = new int[0];
    if ((paramInt1 & 0x8) == 0) {
      if ((0x40000 & paramInt1) == 0)
      {
        c[0] = (0x1700000 | paramClassWriter.c(F));
        paramInt1 = k;
      }
    }
    for (;;)
    {
      k = paramInt1;
      if (j < paramArrayOfType.length)
      {
        int m = b(paramClassWriter, paramArrayOfType[j].getDescriptor());
        int[] arrayOfInt = c;
        k = paramInt1 + 1;
        arrayOfInt[paramInt1] = m;
        if ((m != 16777220) && (m != 16777219)) {
          break label176;
        }
        arrayOfInt = c;
        paramInt1 = k + 1;
        arrayOfInt[k] = 16777216;
      }
      for (;;)
      {
        j += 1;
        break;
        c[0] = 16777222;
        paramInt1 = k;
        break;
        while (k < paramInt2)
        {
          c[k] = 16777216;
          k += 1;
        }
        return;
        label176:
        paramInt1 = k;
      }
      paramInt1 = 0;
    }
  }
  
  boolean a(ClassWriter paramClassWriter, Frame paramFrame, int paramInt)
  {
    boolean bool1 = false;
    int i1 = c.length;
    int n = d.length;
    if (c == null)
    {
      c = new int[i1];
      bool1 = true;
    }
    int k = 0;
    int m;
    int j;
    if (k < i1) {
      if ((e != null) && (k < e.length))
      {
        m = e[k];
        if (m == 0) {
          j = c[k];
        }
      }
    }
    for (;;)
    {
      m = j;
      if (i != null) {
        m = a(paramClassWriter, j);
      }
      bool1 |= a(paramClassWriter, m, c, k);
      k += 1;
      break;
      int i2 = 0xF0000000 & m;
      int i3 = 0xF000000 & m;
      j = m;
      if (i3 != 16777216)
      {
        if (i3 == 33554432) {
          j = i2 + c[(0x7FFFFF & m)];
        }
        for (;;)
        {
          if (((m & 0x800000) != 0) && ((j == 16777220) || (j == 16777219)))
          {
            j = 16777216;
            break;
            j = i2 + d[(n - (0x7FFFFF & m))];
            continue;
            j = c[k];
            break;
            boolean bool2;
            if (paramInt > 0)
            {
              j = 0;
              while (j < i1)
              {
                bool2 = a(paramClassWriter, c[j], c, j);
                j += 1;
                bool1 = bool2 | bool1;
              }
              if (d == null)
              {
                d = new int[1];
                bool1 = true;
              }
              bool2 = a(paramClassWriter, paramInt, d, 0) | bool1;
              return bool2;
            }
            m = d.length + b.f;
            if (d == null)
            {
              d = new int[g + m];
              bool1 = true;
            }
            for (;;)
            {
              paramInt = 0;
              while (paramInt < m)
              {
                k = d[paramInt];
                j = k;
                if (i != null) {
                  j = a(paramClassWriter, k);
                }
                bool1 |= a(paramClassWriter, j, d, paramInt);
                paramInt += 1;
              }
              j = 0;
              bool2 = bool1;
              if (j >= g) {
                break;
              }
              k = f[j];
              paramInt = 0xF0000000 & k;
              i1 = 0xF000000 & k;
              if (i1 == 16777216) {
                paramInt = k;
              }
              label581:
              for (;;)
              {
                k = paramInt;
                if (i != null) {
                  k = a(paramClassWriter, paramInt);
                }
                bool1 |= a(paramClassWriter, k, d, m + j);
                j += 1;
                break;
                if (i1 == 33554432) {
                  paramInt += c[(0x7FFFFF & k)];
                }
                for (;;)
                {
                  if (((k & 0x800000) == 0) || ((paramInt != 16777220) && (paramInt != 16777219))) {
                    break label581;
                  }
                  paramInt = 16777216;
                  break;
                  paramInt += d[(n - (0x7FFFFF & k))];
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.Frame
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */