package org.codehaus.jackson.org.objectweb.asm;

class MethodWriter
  implements MethodVisitor
{
  private int A;
  private Handler B;
  private Handler C;
  private int D;
  private ByteVector E;
  private int F;
  private ByteVector G;
  private int H;
  private ByteVector I;
  private Attribute J;
  private boolean K;
  private int L;
  private final int M;
  private Label N;
  private Label O;
  private Label P;
  private int Q;
  private int R;
  private int S;
  MethodWriter a;
  final ClassWriter b;
  private int c;
  private final int d;
  private final int e;
  private final String f;
  String g;
  int h;
  int i;
  int j;
  int[] k;
  private ByteVector l;
  private AnnotationWriter m;
  private AnnotationWriter n;
  private AnnotationWriter[] o;
  private AnnotationWriter[] p;
  private Attribute q;
  private ByteVector r = new ByteVector();
  private int s;
  private int t;
  private int u;
  private ByteVector v;
  private int w;
  private int[] x;
  private int y;
  private int[] z;
  
  MethodWriter(ClassWriter paramClassWriter, int paramInt, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (A == null) {
      A = this;
    }
    int i1;
    for (;;)
    {
      B = this;
      b = paramClassWriter;
      c = paramInt;
      d = paramClassWriter.newUTF8(paramString1);
      e = paramClassWriter.newUTF8(paramString2);
      f = paramString2;
      g = paramString3;
      if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0)) {
        break;
      }
      j = paramArrayOfString.length;
      k = new int[j];
      i1 = 0;
      while (i1 < j)
      {
        k[i1] = paramClassWriter.newClass(paramArrayOfString[i1]);
        i1 += 1;
      }
      B.a = this;
    }
    if (paramBoolean2) {
      i1 = i2;
    }
    for (;;)
    {
      M = i1;
      if ((paramBoolean1) || (paramBoolean2))
      {
        if ((paramBoolean2) && ("<init>".equals(paramString1))) {
          c |= 0x40000;
        }
        i2 = Type.getArgumentsAndReturnSizes(f) >> 2;
        i1 = i2;
        if ((paramInt & 0x8) != 0) {
          i1 = i2 - 1;
        }
        t = i1;
        N = new Label();
        paramClassWriter = N;
        a |= 0x8;
        visitLabel(N);
      }
      return;
      if (paramBoolean1) {
        i1 = 1;
      } else {
        i1 = 2;
      }
    }
  }
  
  static int a(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[paramInt] & 0xFF) << 24 | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 16 | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8 | paramArrayOfByte[(paramInt + 3)] & 0xFF;
  }
  
  static int a(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt1, int paramInt2)
  {
    int i3 = paramInt2 - paramInt1;
    int i2 = 0;
    if (i2 < paramArrayOfInt1.length)
    {
      int i1;
      if ((paramInt1 < paramArrayOfInt1[i2]) && (paramArrayOfInt1[i2] <= paramInt2)) {
        i1 = i3 + paramArrayOfInt2[i2];
      }
      for (;;)
      {
        i2 += 1;
        i3 = i1;
        break;
        i1 = i3;
        if (paramInt2 < paramArrayOfInt1[i2])
        {
          i1 = i3;
          if (paramArrayOfInt1[i2] <= paramInt1) {
            i1 = i3 - paramArrayOfInt2[i2];
          }
        }
      }
    }
    return i3;
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
    {
      int i2 = z[paramInt1];
      int i1 = 0xF0000000 & i2;
      if (i1 == 0)
      {
        i1 = i2 & 0xFFFFF;
        switch (i2 & 0xFF00000)
        {
        default: 
          v.putByte(i1);
        }
        for (;;)
        {
          paramInt1 += 1;
          break;
          v.putByte(7).putShort(b.newClass(b.E[i1].g));
          continue;
          v.putByte(8).putShort(b.E[i1].c);
        }
      }
      StringBuffer localStringBuffer = new StringBuffer();
      i1 >>= 28;
      while (i1 > 0)
      {
        localStringBuffer.append('[');
        i1 -= 1;
      }
      if ((i2 & 0xFF00000) == 24117248)
      {
        localStringBuffer.append('L');
        localStringBuffer.append(b.E[(i2 & 0xFFFFF)].g);
        localStringBuffer.append(';');
      }
      for (;;)
      {
        v.putByte(7).putShort(b.newClass(localStringBuffer.toString()));
        break;
        switch (i2 & 0xF)
        {
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
        default: 
          localStringBuffer.append('J');
          break;
        case 1: 
          localStringBuffer.append('I');
          break;
        case 2: 
          localStringBuffer.append('F');
          break;
        case 3: 
          localStringBuffer.append('D');
          break;
        case 9: 
          localStringBuffer.append('Z');
          break;
        case 10: 
          localStringBuffer.append('B');
          break;
        case 11: 
          localStringBuffer.append('C');
          break;
        case 12: 
          localStringBuffer.append('S');
        }
      }
    }
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = paramInt2 + 3 + paramInt3;
    if ((z == null) || (z.length < i1)) {
      z = new int[i1];
    }
    z[0] = paramInt1;
    z[1] = paramInt2;
    z[2] = paramInt3;
    y = 3;
  }
  
  private void a(int paramInt, Label paramLabel)
  {
    Edge localEdge = new Edge();
    a = paramInt;
    b = paramLabel;
    c = P.j;
    P.j = localEdge;
  }
  
  private void a(Object paramObject)
  {
    if ((paramObject instanceof String))
    {
      v.putByte(7).putShort(b.newClass((String)paramObject));
      return;
    }
    if ((paramObject instanceof Integer))
    {
      v.putByte(((Integer)paramObject).intValue());
      return;
    }
    v.putByte(8).putShort(c);
  }
  
  private void a(Label paramLabel, Label[] paramArrayOfLabel)
  {
    int i1 = 0;
    if (P != null)
    {
      if (M == 0)
      {
        P.h.a(171, 0, null, null);
        a(0, paramLabel);
        paramLabel = paramLabel.a();
        a |= 0x10;
        i1 = 0;
        while (i1 < paramArrayOfLabel.length)
        {
          a(0, paramArrayOfLabel[i1]);
          paramLabel = paramArrayOfLabel[i1].a();
          a |= 0x10;
          i1 += 1;
        }
      }
      Q -= 1;
      a(Q, paramLabel);
      while (i1 < paramArrayOfLabel.length)
      {
        a(Q, paramArrayOfLabel[i1]);
        i1 += 1;
      }
      e();
    }
  }
  
  static void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[paramInt1] = ((byte)(paramInt2 >>> 8));
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)paramInt2);
  }
  
  static void a(int[] paramArrayOfInt1, int[] paramArrayOfInt2, Label paramLabel)
  {
    if ((a & 0x4) == 0)
    {
      c = a(paramArrayOfInt1, paramArrayOfInt2, 0, c);
      a |= 0x4;
    }
  }
  
  static short b(byte[] paramArrayOfByte, int paramInt)
  {
    return (short)((paramArrayOfByte[paramInt] & 0xFF) << 8 | paramArrayOfByte[(paramInt + 1)] & 0xFF);
  }
  
  private void b()
  {
    if (x != null)
    {
      if (v == null) {
        v = new ByteVector();
      }
      c();
      u += 1;
    }
    x = z;
    z = null;
  }
  
  private void b(Frame paramFrame)
  {
    int i5 = 0;
    int[] arrayOfInt2 = c;
    int[] arrayOfInt1 = d;
    int i2 = 0;
    int i1 = 0;
    int i3 = 0;
    int i6;
    int i4;
    if (i2 < arrayOfInt2.length)
    {
      i6 = arrayOfInt2[i2];
      if (i6 == 16777216) {
        i3 += 1;
      }
      for (;;)
      {
        if (i6 != 16777220)
        {
          i4 = i2;
          if (i6 != 16777219) {}
        }
        else
        {
          i4 = i2 + 1;
        }
        i2 = i4 + 1;
        break;
        i1 += i3 + 1;
        i3 = 0;
      }
    }
    i2 = 0;
    for (i3 = 0; i2 < arrayOfInt1.length; i3 = i4)
    {
      i6 = arrayOfInt1[i2];
      i4 = i3 + 1;
      if (i6 != 16777220)
      {
        i3 = i2;
        if (i6 != 16777219) {}
      }
      else
      {
        i3 = i2 + 1;
      }
      i2 = i3 + 1;
    }
    a(b.c, i1, i3);
    i2 = 0;
    i3 = i1;
    i1 = i2;
    for (;;)
    {
      i2 = i5;
      if (i3 <= 0) {
        break;
      }
      i4 = arrayOfInt2[i1];
      paramFrame = z;
      i2 = y;
      y = (i2 + 1);
      paramFrame[i2] = i4;
      if (i4 != 16777220)
      {
        i2 = i1;
        if (i4 != 16777219) {}
      }
      else
      {
        i2 = i1 + 1;
      }
      i1 = i2 + 1;
      i3 -= 1;
    }
    while (i2 < arrayOfInt1.length)
    {
      i3 = arrayOfInt1[i2];
      paramFrame = z;
      i1 = y;
      y = (i1 + 1);
      paramFrame[i1] = i3;
      if (i3 != 16777220)
      {
        i1 = i2;
        if (i3 != 16777219) {}
      }
      else
      {
        i1 = i2 + 1;
      }
      i2 = i1 + 1;
    }
    b();
  }
  
  static int c(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[paramInt] & 0xFF) << 8 | paramArrayOfByte[(paramInt + 1)] & 0xFF;
  }
  
  private void c()
  {
    int i1 = 64;
    int i5 = 0;
    int i8 = z[1];
    int i9 = z[2];
    if ((b.b & 0xFFFF) < 50)
    {
      v.putShort(z[0]).putShort(i8);
      a(3, i8 + 3);
      v.putShort(i9);
      a(i8 + 3, i8 + 3 + i9);
      return;
    }
    int i2 = x[1];
    int i4;
    label113:
    int i6;
    label172:
    int i3;
    if (u == 0)
    {
      i4 = z[0];
      if (i9 != 0) {
        break label392;
      }
      i6 = i8 - i2;
      switch (i6)
      {
      default: 
        i1 = 255;
        i3 = i2;
        i2 = i6;
      }
    }
    for (;;)
    {
      int i7 = i1;
      if (i1 != 255) {
        i6 = 3;
      }
      for (;;)
      {
        i7 = i1;
        if (i5 < i3)
        {
          if (z[i6] == x[i6]) {
            break label429;
          }
          i7 = 255;
        }
        switch (i7)
        {
        default: 
          v.putByte(255).putShort(i4).putShort(i8);
          a(3, i8 + 3);
          v.putShort(i9);
          a(i8 + 3, i8 + 3 + i9);
          return;
          i4 = z[0] - x[0] - 1;
          break label113;
          i1 = 248;
          i2 = i8;
          break label172;
          if (i4 < 64)
          {
            i1 = 0;
            break label172;
          }
          i1 = 251;
          break label172;
          i1 = 252;
          break label172;
          label392:
          if ((i8 != i2) || (i9 != 1)) {
            break label576;
          }
          if (i4 < 63) {}
          for (;;)
          {
            i6 = 0;
            i3 = i2;
            i2 = i6;
            break;
            i1 = 247;
          }
          label429:
          i6 += 1;
          i5 += 1;
        }
      }
      v.putByte(i4);
      return;
      v.putByte(i4 + 64);
      a(i8 + 3, i8 + 4);
      return;
      v.putByte(247).putShort(i4);
      a(i8 + 3, i8 + 4);
      return;
      v.putByte(251).putShort(i4);
      return;
      v.putByte(i2 + 251).putShort(i4);
      return;
      v.putByte(i2 + 251).putShort(i4);
      a(i3 + 3, i8 + 3);
      return;
      label576:
      i6 = 0;
      i1 = 255;
      i3 = i2;
      i2 = i6;
    }
  }
  
  private void d()
  {
    Object localObject6 = r.a;
    Object localObject2 = new int[0];
    Object localObject1 = new int[0];
    Object localObject5 = new boolean[r.b];
    int i1 = 3;
    int i2 = i1;
    if (i1 == 3) {
      i2 = 2;
    }
    int i4 = 0;
    int i3 = i2;
    label51:
    int i5;
    int i6;
    label174:
    Object localObject3;
    Object localObject4;
    if (i4 < localObject6.length)
    {
      i1 = localObject6[i4] & 0xFF;
      i5 = 0;
      i6 = 0;
      i2 = 0;
      switch (ClassWriter.a[i1])
      {
      case 15: 
      default: 
      case 0: 
      case 4: 
        for (i1 = i4 + 4;; i1 = i4 + 1)
        {
          i4 = i1;
          if (i2 == 0) {
            break;
          }
          localObject3 = new int[localObject2.length + 1];
          localObject4 = new int[localObject1.length + 1];
          System.arraycopy(localObject2, 0, localObject3, 0, localObject2.length);
          System.arraycopy(localObject1, 0, localObject4, 0, localObject1.length);
          localObject3[localObject2.length] = i1;
          localObject4[localObject1.length] = i2;
          if (i2 <= 0) {
            break label2032;
          }
          i3 = 3;
          localObject1 = localObject4;
          localObject2 = localObject3;
          i4 = i1;
          break;
        }
      case 8: 
        if (i1 > 201) {
          if (i1 < 218)
          {
            i1 -= 49;
            label282:
            i2 = c((byte[])localObject6, i4 + 1);
            i2 += i4;
            label300:
            i2 = a((int[])localObject2, (int[])localObject1, i4, i2);
            if (((i2 >= 32768) && (i2 <= 32767)) || (localObject5[i4] != 0)) {
              break label2044;
            }
            if ((i1 != 167) && (i1 != 168)) {
              break label404;
            }
            i1 = 2;
            label354:
            localObject5[i4] = 1;
          }
        }
        break;
      }
    }
    for (;;)
    {
      i4 += 3;
      i2 = i1;
      i1 = i4;
      break label174;
      i1 -= 20;
      break label282;
      i2 = b((byte[])localObject6, i4 + 1) + i4;
      break label300;
      label404:
      i1 = 5;
      break label354;
      i1 = i4 + 5;
      break label174;
      if (i3 == 1) {
        i2 = -(a((int[])localObject2, (int[])localObject1, 0, i4) & 0x3);
      }
      for (;;)
      {
        i1 = i4 + 4 - (i4 & 0x3);
        i1 += (a((byte[])localObject6, i1 + 8) - a((byte[])localObject6, i1 + 4) + 1) * 4 + 12;
        break;
        i2 = i5;
        if (localObject5[i4] == 0)
        {
          i2 = i4 & 0x3;
          localObject5[i4] = 1;
        }
      }
      if (i3 == 1) {
        i2 = -(a((int[])localObject2, (int[])localObject1, 0, i4) & 0x3);
      }
      for (;;)
      {
        i1 = i4 + 4 - (i4 & 0x3);
        i1 += a((byte[])localObject6, i1 + 4) * 8 + 8;
        break;
        i2 = i6;
        if (localObject5[i4] == 0)
        {
          i2 = i4 & 0x3;
          localObject5[i4] = 1;
        }
      }
      if ((localObject6[(i4 + 1)] & 0xFF) == 132)
      {
        i1 = i4 + 6;
        break label174;
      }
      i1 = i4 + 4;
      break label174;
      i1 = i4 + 2;
      break label174;
      i1 = i4 + 3;
      break label174;
      i1 = i4 + 5;
      break label174;
      i1 = i3;
      if (i3 < 3) {
        i1 = i3 - 1;
      }
      if (i1 == 0)
      {
        localObject4 = new ByteVector(r.b);
        i1 = 0;
        for (;;)
        {
          if (i1 < r.b)
          {
            i3 = localObject6[i1] & 0xFF;
            switch (ClassWriter.a[i3])
            {
            case 15: 
            default: 
              ((ByteVector)localObject4).putByteArray((byte[])localObject6, i1, 4);
              i1 += 4;
              break;
            case 0: 
            case 4: 
              ((ByteVector)localObject4).putByte(i3);
              i1 += 1;
              break;
            case 8: 
              if (i3 > 201) {
                if (i3 < 218)
                {
                  i2 = i3 - 49;
                  i3 = c((byte[])localObject6, i1 + 1);
                  i4 = i3 + i1;
                  i3 = i2;
                  i2 = i4;
                  i2 = a((int[])localObject2, (int[])localObject1, i1, i2);
                  if (localObject5[i1] == 0) {
                    break label1051;
                  }
                  if (i3 != 167) {
                    break label970;
                  }
                  ((ByteVector)localObject4).putByte(200);
                  ((ByteVector)localObject4).putInt(i2);
                }
              }
              for (;;)
              {
                i1 += 3;
                break;
                i2 = i3 - 20;
                break label864;
                i2 = b((byte[])localObject6, i1 + 1) + i1;
                break label890;
                if (i3 == 168)
                {
                  ((ByteVector)localObject4).putByte(201);
                  break label926;
                }
                if (i3 <= 166) {
                  i3 = (i3 + 1 ^ 0x1) - 1;
                }
                for (;;)
                {
                  ((ByteVector)localObject4).putByte(i3);
                  ((ByteVector)localObject4).putShort(8);
                  ((ByteVector)localObject4).putByte(200);
                  i2 -= 3;
                  break;
                  i3 ^= 0x1;
                }
                ((ByteVector)localObject4).putByte(i3);
                ((ByteVector)localObject4).putShort(i2);
              }
            case 9: 
              i2 = a((int[])localObject2, (int[])localObject1, i1, a((byte[])localObject6, i1 + 1) + i1);
              ((ByteVector)localObject4).putByte(i3);
              ((ByteVector)localObject4).putInt(i2);
              i1 += 5;
              break;
            case 13: 
              i3 = i1 + 4 - (i1 & 0x3);
              ((ByteVector)localObject4).putByte(170);
              ((ByteVector)localObject4).putByteArray(null, 0, (4 - b % 4) % 4);
              i2 = a((byte[])localObject6, i3);
              i3 += 4;
              ((ByteVector)localObject4).putInt(a((int[])localObject2, (int[])localObject1, i1, i2 + i1));
              i2 = a((byte[])localObject6, i3);
              i3 += 4;
              ((ByteVector)localObject4).putInt(i2);
              i4 = a((byte[])localObject6, i3);
              i3 += 4;
              ((ByteVector)localObject4).putInt(a((byte[])localObject6, i3 - 4));
              i4 = i4 - i2 + 1;
              for (;;)
              {
                i2 = i3;
                if (i4 <= 0) {
                  break;
                }
                ((ByteVector)localObject4).putInt(a((int[])localObject2, (int[])localObject1, i1, i1 + a((byte[])localObject6, i3)));
                i4 -= 1;
                i3 += 4;
              }
            case 14: 
              i3 = i1 + 4 - (i1 & 0x3);
              ((ByteVector)localObject4).putByte(171);
              ((ByteVector)localObject4).putByteArray(null, 0, (4 - b % 4) % 4);
              i2 = a((byte[])localObject6, i3);
              i3 += 4;
              ((ByteVector)localObject4).putInt(a((int[])localObject2, (int[])localObject1, i1, i2 + i1));
              i4 = a((byte[])localObject6, i3);
              ((ByteVector)localObject4).putInt(i4);
              i3 += 4;
              for (;;)
              {
                i2 = i3;
                if (i4 <= 0) {
                  break;
                }
                ((ByteVector)localObject4).putInt(a((byte[])localObject6, i3));
                i2 = i3 + 4;
                ((ByteVector)localObject4).putInt(a((int[])localObject2, (int[])localObject1, i1, i1 + a((byte[])localObject6, i2)));
                i4 -= 1;
                i3 = i2 + 4;
              }
            case 16: 
              if ((localObject6[(i1 + 1)] & 0xFF) == 132)
              {
                ((ByteVector)localObject4).putByteArray((byte[])localObject6, i1, 6);
                i1 += 6;
                continue;
              }
              ((ByteVector)localObject4).putByteArray((byte[])localObject6, i1, 4);
              i1 += 4;
              break;
            case 1: 
            case 3: 
            case 10: 
              ((ByteVector)localObject4).putByteArray((byte[])localObject6, i1, 2);
              i1 += 2;
              break;
            case 2: 
            case 5: 
            case 6: 
            case 11: 
            case 12: 
              ((ByteVector)localObject4).putByteArray((byte[])localObject6, i1, 3);
              i1 += 3;
              break;
            case 7: 
              label864:
              label890:
              label926:
              label970:
              label1051:
              ((ByteVector)localObject4).putByteArray((byte[])localObject6, i1, 5);
              i1 += 5;
              break;
            }
          }
          else
          {
            if (u > 0)
            {
              if (M == 0)
              {
                u = 0;
                v = null;
                x = null;
                z = null;
                localObject3 = new Frame();
                b = N;
                localObject6 = Type.getArgumentTypes(f);
                ((Frame)localObject3).a(b, c, (Type[])localObject6, t);
                b((Frame)localObject3);
                for (localObject3 = N; localObject3 != null; localObject3 = i)
                {
                  i1 = c - 3;
                  if (((a & 0x20) != 0) || ((i1 >= 0) && (localObject5[i1] != 0)))
                  {
                    a((int[])localObject2, (int[])localObject1, (Label)localObject3);
                    b(h);
                  }
                }
              }
              b.I = true;
            }
            for (localObject3 = B; localObject3 != null; localObject3 = f)
            {
              a((int[])localObject2, (int[])localObject1, a);
              a((int[])localObject2, (int[])localObject1, b);
              a((int[])localObject2, (int[])localObject1, c);
            }
            i1 = 0;
            while (i1 < 2)
            {
              if (i1 == 0) {}
              for (localObject3 = E; localObject3 != null; localObject3 = G)
              {
                localObject5 = a;
                i2 = 0;
                while (i2 < b)
                {
                  i3 = c((byte[])localObject5, i2);
                  i4 = a((int[])localObject2, (int[])localObject1, 0, i3);
                  a((byte[])localObject5, i2, i4);
                  a((byte[])localObject5, i2 + 2, a((int[])localObject2, (int[])localObject1, 0, i3 + c((byte[])localObject5, i2 + 2)) - i4);
                  i2 += 10;
                }
              }
              i1 += 1;
            }
            if (I != null)
            {
              localObject3 = I.a;
              i1 = 0;
              while (i1 < I.b)
              {
                a((byte[])localObject3, i1, a((int[])localObject2, (int[])localObject1, 0, c((byte[])localObject3, i1)));
                i1 += 4;
              }
            }
            for (localObject3 = J; localObject3 != null; localObject3 = a)
            {
              localObject5 = ((Attribute)localObject3).getLabels();
              if (localObject5 != null)
              {
                i1 = localObject5.length - 1;
                while (i1 >= 0)
                {
                  a((int[])localObject2, (int[])localObject1, localObject5[i1]);
                  i1 -= 1;
                }
              }
            }
            r = ((ByteVector)localObject4);
            return;
            i1 = i2;
          }
        }
      }
      break;
      label2032:
      localObject1 = localObject4;
      localObject2 = localObject3;
      i4 = i1;
      break label51;
      label2044:
      i1 = 0;
    }
  }
  
  private void e()
  {
    if (M == 0)
    {
      Label localLabel = new Label();
      h = new Frame();
      h.b = localLabel;
      localLabel.a(this, r.b, r.a);
      O.i = localLabel;
      O = localLabel;
    }
    for (;;)
    {
      P = null;
      return;
      P.g = R;
    }
  }
  
  final int a()
  {
    if (h != 0)
    {
      i1 = i + 6;
      return i1;
    }
    if (K) {
      d();
    }
    int i1 = 8;
    String str;
    if (r.b > 0)
    {
      b.newUTF8("Code");
      i2 = r.b + 18 + A * 8 + 8;
      i1 = i2;
      if (E != null)
      {
        b.newUTF8("LocalVariableTable");
        i1 = i2 + (E.b + 8);
      }
      i2 = i1;
      if (G != null)
      {
        b.newUTF8("LocalVariableTypeTable");
        i2 = i1 + (G.b + 8);
      }
      i1 = i2;
      if (I != null)
      {
        b.newUTF8("LineNumberTable");
        i1 = i2 + (I.b + 8);
      }
      if (v == null) {
        break label800;
      }
      if ((b.b & 0xFFFF) < 50) {
        break label639;
      }
      i2 = 1;
      ClassWriter localClassWriter = b;
      if (i2 == 0) {
        break label645;
      }
      str = "StackMapTable";
      label219:
      localClassWriter.newUTF8(str);
    }
    label600:
    label639:
    label645:
    label800:
    for (int i2 = i1 + (v.b + 8);; i2 = i1)
    {
      i1 = i2;
      if (J != null) {
        i1 = i2 + J.a(b, r.a, r.b, s, t);
      }
      i2 = i1;
      if (j > 0)
      {
        b.newUTF8("Exceptions");
        i2 = i1 + (j * 2 + 8);
      }
      i1 = i2;
      if ((c & 0x1000) != 0) {
        if ((b.b & 0xFFFF) >= 49)
        {
          i1 = i2;
          if ((c & 0x40000) == 0) {}
        }
        else
        {
          b.newUTF8("Synthetic");
          i1 = i2 + 6;
        }
      }
      i2 = i1;
      if ((c & 0x20000) != 0)
      {
        b.newUTF8("Deprecated");
        i2 = i1 + 6;
      }
      i1 = i2;
      if (g != null)
      {
        b.newUTF8("Signature");
        b.newUTF8(g);
        i1 = i2 + 8;
      }
      i2 = i1;
      if (l != null)
      {
        b.newUTF8("AnnotationDefault");
        i2 = i1 + (l.b + 6);
      }
      i1 = i2;
      if (m != null)
      {
        b.newUTF8("RuntimeVisibleAnnotations");
        i1 = i2 + (m.a() + 8);
      }
      i2 = i1;
      if (n != null)
      {
        b.newUTF8("RuntimeInvisibleAnnotations");
        i2 = i1 + (n.a() + 8);
      }
      if (o != null)
      {
        b.newUTF8("RuntimeVisibleParameterAnnotations");
        i1 = i2 + ((o.length - S) * 2 + 7);
        i3 = o.length - 1;
        i2 = i1;
        if (i3 >= S)
        {
          if (o[i3] == null) {}
          for (i2 = 0;; i2 = o[i3].a())
          {
            i1 += i2;
            i3 -= 1;
            break label600;
            i2 = 0;
            break;
            str = "StackMap";
            break label219;
          }
        }
      }
      int i3 = i2;
      if (p != null)
      {
        b.newUTF8("RuntimeInvisibleParameterAnnotations");
        i1 = i2 + ((p.length - S) * 2 + 7);
        i2 = p.length - 1;
        i3 = i1;
        if (i2 >= S)
        {
          if (p[i2] == null) {}
          for (i3 = 0;; i3 = p[i2].a())
          {
            i1 += i3;
            i2 -= 1;
            break;
          }
        }
      }
      i1 = i3;
      if (q == null) {
        break;
      }
      return i3 + q.a(b, null, 0, -1, -1);
    }
  }
  
  final void a(ByteVector paramByteVector)
  {
    int i3 = 1;
    paramByteVector.putShort(((0x60000 | (c & 0x40000) / 64) ^ 0xFFFFFFFF) & c).putShort(d).putShort(e);
    if (h != 0)
    {
      paramByteVector.putByteArray(b.J.b, h, i);
      return;
    }
    if (r.b > 0) {}
    for (int i2 = 1;; i2 = 0)
    {
      int i1 = i2;
      if (j > 0) {
        i1 = i2 + 1;
      }
      i2 = i1;
      if ((c & 0x1000) != 0) {
        if ((b.b & 0xFFFF) >= 49)
        {
          i2 = i1;
          if ((c & 0x40000) == 0) {}
        }
        else
        {
          i2 = i1 + 1;
        }
      }
      i1 = i2;
      if ((c & 0x20000) != 0) {
        i1 = i2 + 1;
      }
      i2 = i1;
      if (g != null) {
        i2 = i1 + 1;
      }
      i1 = i2;
      if (l != null) {
        i1 = i2 + 1;
      }
      i2 = i1;
      if (m != null) {
        i2 = i1 + 1;
      }
      i1 = i2;
      if (n != null) {
        i1 = i2 + 1;
      }
      i2 = i1;
      if (o != null) {
        i2 = i1 + 1;
      }
      i1 = i2;
      if (p != null) {
        i1 = i2 + 1;
      }
      i2 = i1;
      if (q != null) {
        i2 = i1 + q.a();
      }
      paramByteVector.putShort(i2);
      if (r.b > 0)
      {
        i2 = r.b + 12 + A * 8;
        i1 = i2;
        if (E != null) {
          i1 = i2 + (E.b + 8);
        }
        i2 = i1;
        if (G != null) {
          i2 = i1 + (G.b + 8);
        }
        i1 = i2;
        if (I != null) {
          i1 = i2 + (I.b + 8);
        }
        if (v == null) {
          break label1461;
        }
        i1 += v.b + 8;
      }
      label1111:
      label1117:
      label1124:
      label1461:
      for (;;)
      {
        i2 = i1;
        if (J != null) {
          i2 = i1 + J.a(b, r.a, r.b, s, t);
        }
        paramByteVector.putShort(b.newUTF8("Code")).putInt(i2);
        paramByteVector.putShort(s).putShort(t);
        paramByteVector.putInt(r.b).putByteArray(r.a, 0, r.b);
        paramByteVector.putShort(A);
        Object localObject;
        if (A > 0) {
          for (localObject = B; localObject != null; localObject = f) {
            paramByteVector.putShort(a.c).putShort(b.c).putShort(c.c).putShort(e);
          }
        }
        if (E != null) {}
        for (i2 = 1;; i2 = 0)
        {
          i1 = i2;
          if (G != null) {
            i1 = i2 + 1;
          }
          i2 = i1;
          if (I != null) {
            i2 = i1 + 1;
          }
          i1 = i2;
          if (v != null) {
            i1 = i2 + 1;
          }
          i2 = i1;
          if (J != null) {
            i2 = i1 + J.a();
          }
          paramByteVector.putShort(i2);
          if (E != null)
          {
            paramByteVector.putShort(b.newUTF8("LocalVariableTable"));
            paramByteVector.putInt(E.b + 2).putShort(D);
            paramByteVector.putByteArray(E.a, 0, E.b);
          }
          if (G != null)
          {
            paramByteVector.putShort(b.newUTF8("LocalVariableTypeTable"));
            paramByteVector.putInt(G.b + 2).putShort(F);
            paramByteVector.putByteArray(G.a, 0, G.b);
          }
          if (I != null)
          {
            paramByteVector.putShort(b.newUTF8("LineNumberTable"));
            paramByteVector.putInt(I.b + 2).putShort(H);
            paramByteVector.putByteArray(I.a, 0, I.b);
          }
          ClassWriter localClassWriter;
          if (v != null)
          {
            if ((b.b & 0xFFFF) < 50) {
              break label1111;
            }
            i1 = i3;
            localClassWriter = b;
            if (i1 == 0) {
              break label1117;
            }
          }
          for (localObject = "StackMapTable";; localObject = "StackMap")
          {
            paramByteVector.putShort(localClassWriter.newUTF8((String)localObject));
            paramByteVector.putInt(v.b + 2).putShort(u);
            paramByteVector.putByteArray(v.a, 0, v.b);
            if (J != null) {
              J.a(b, r.a, r.b, t, s, paramByteVector);
            }
            if (j <= 0) {
              break label1124;
            }
            paramByteVector.putShort(b.newUTF8("Exceptions")).putInt(j * 2 + 2);
            paramByteVector.putShort(j);
            i1 = 0;
            while (i1 < j)
            {
              paramByteVector.putShort(k[i1]);
              i1 += 1;
            }
            i1 = 0;
            break;
          }
          if (((c & 0x1000) != 0) && (((b.b & 0xFFFF) < 49) || ((c & 0x40000) != 0))) {
            paramByteVector.putShort(b.newUTF8("Synthetic")).putInt(0);
          }
          if ((c & 0x20000) != 0) {
            paramByteVector.putShort(b.newUTF8("Deprecated")).putInt(0);
          }
          if (g != null) {
            paramByteVector.putShort(b.newUTF8("Signature")).putInt(2).putShort(b.newUTF8(g));
          }
          if (l != null)
          {
            paramByteVector.putShort(b.newUTF8("AnnotationDefault"));
            paramByteVector.putInt(l.b);
            paramByteVector.putByteArray(l.a, 0, l.b);
          }
          if (m != null)
          {
            paramByteVector.putShort(b.newUTF8("RuntimeVisibleAnnotations"));
            m.a(paramByteVector);
          }
          if (n != null)
          {
            paramByteVector.putShort(b.newUTF8("RuntimeInvisibleAnnotations"));
            n.a(paramByteVector);
          }
          if (o != null)
          {
            paramByteVector.putShort(b.newUTF8("RuntimeVisibleParameterAnnotations"));
            AnnotationWriter.a(o, S, paramByteVector);
          }
          if (p != null)
          {
            paramByteVector.putShort(b.newUTF8("RuntimeInvisibleParameterAnnotations"));
            AnnotationWriter.a(p, S, paramByteVector);
          }
          if (q == null) {
            break;
          }
          q.a(b, null, 0, -1, -1, paramByteVector);
          return;
        }
      }
    }
  }
  
  public AnnotationVisitor visitAnnotation(String paramString, boolean paramBoolean)
  {
    ByteVector localByteVector = new ByteVector();
    localByteVector.putShort(b.newUTF8(paramString)).putShort(0);
    paramString = new AnnotationWriter(b, true, localByteVector, localByteVector, 2);
    if (paramBoolean)
    {
      g = m;
      m = paramString;
      return paramString;
    }
    g = n;
    n = paramString;
    return paramString;
  }
  
  public AnnotationVisitor visitAnnotationDefault()
  {
    l = new ByteVector();
    return new AnnotationWriter(b, false, l, null, 0);
  }
  
  public void visitAttribute(Attribute paramAttribute)
  {
    if (paramAttribute.isCodeAttribute())
    {
      a = J;
      J = paramAttribute;
      return;
    }
    a = q;
    q = paramAttribute;
  }
  
  public void visitCode() {}
  
  public void visitEnd() {}
  
  public void visitFieldInsn(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    int i2 = 1;
    int i1 = 1;
    int i3 = -2;
    paramString1 = b.a(paramString1, paramString2, paramString3);
    if (P != null)
    {
      if (M == 0) {
        P.h.a(paramInt, 0, b, paramString1);
      }
    }
    else
    {
      r.b(paramInt, a);
      return;
    }
    int i4 = paramString3.charAt(0);
    switch (paramInt)
    {
    default: 
      i2 = Q;
      if (i4 != 68)
      {
        i1 = i3;
        if (i4 != 74) {}
      }
      else
      {
        i1 = -3;
      }
      i1 = i2 + i1;
    case 178: 
      for (;;)
      {
        if (i1 > R) {
          R = i1;
        }
        Q = i1;
        break;
        i2 = Q;
        if ((i4 == 68) || (i4 == 74)) {
          i1 = 2;
        }
        i1 += i2;
      }
    case 179: 
      i2 = Q;
      if ((i4 == 68) || (i4 == 74)) {}
      for (i1 = -2;; i1 = -1)
      {
        i1 += i2;
        break;
      }
    }
    i3 = Q;
    i1 = i2;
    if (i4 != 68) {
      if (i4 != 74) {
        break label274;
      }
    }
    label274:
    for (i1 = i2;; i1 = 0)
    {
      i1 += i3;
      break;
    }
  }
  
  public void visitFrame(int paramInt1, int paramInt2, Object[] paramArrayOfObject1, int paramInt3, Object[] paramArrayOfObject2)
  {
    int i3 = 0;
    int i2 = 0;
    if (M == 0) {
      return;
    }
    int i1;
    if (paramInt1 == -1)
    {
      a(r.b, paramInt2, paramInt3);
      paramInt1 = 0;
      i1 = i2;
      if (paramInt1 < paramInt2)
      {
        int[] arrayOfInt;
        if ((paramArrayOfObject1[paramInt1] instanceof String))
        {
          arrayOfInt = z;
          i1 = y;
          y = (i1 + 1);
          arrayOfInt[i1] = (b.c((String)paramArrayOfObject1[paramInt1]) | 0x1700000);
        }
        for (;;)
        {
          paramInt1 += 1;
          break;
          if ((paramArrayOfObject1[paramInt1] instanceof Integer))
          {
            arrayOfInt = z;
            i1 = y;
            y = (i1 + 1);
            arrayOfInt[i1] = ((Integer)paramArrayOfObject1[paramInt1]).intValue();
          }
          else
          {
            arrayOfInt = z;
            i1 = y;
            y = (i1 + 1);
            arrayOfInt[i1] = (b.a("", c) | 0x1800000);
          }
        }
      }
      if (i1 < paramInt3)
      {
        if ((paramArrayOfObject2[i1] instanceof String))
        {
          paramArrayOfObject1 = z;
          paramInt1 = y;
          y = (paramInt1 + 1);
          paramArrayOfObject1[paramInt1] = (b.c((String)paramArrayOfObject2[i1]) | 0x1700000);
        }
        for (;;)
        {
          i1 += 1;
          break;
          if ((paramArrayOfObject2[i1] instanceof Integer))
          {
            paramArrayOfObject1 = z;
            paramInt1 = y;
            y = (paramInt1 + 1);
            paramArrayOfObject1[paramInt1] = ((Integer)paramArrayOfObject2[i1]).intValue();
          }
          else
          {
            paramArrayOfObject1 = z;
            paramInt1 = y;
            y = (paramInt1 + 1);
            paramArrayOfObject1[paramInt1] = (b.a("", c) | 0x1800000);
          }
        }
      }
      b();
      return;
    }
    if (v == null)
    {
      v = new ByteVector();
      i1 = r.b;
    }
    switch (paramInt1)
    {
    default: 
    case 0: 
    case 1: 
    case 2: 
    case 3: 
      for (;;)
      {
        label388:
        w = r.b;
        u += 1;
        return;
        i2 = r.b - w - 1;
        i1 = i2;
        if (i2 >= 0) {
          break label388;
        }
        if (paramInt1 == 3) {
          break;
        }
        throw new IllegalStateException();
        v.putByte(255).putShort(i1).putShort(paramInt2);
        paramInt1 = 0;
        while (paramInt1 < paramInt2)
        {
          a(paramArrayOfObject1[paramInt1]);
          paramInt1 += 1;
        }
        v.putShort(paramInt3);
        paramInt1 = i3;
        while (paramInt1 < paramInt3)
        {
          a(paramArrayOfObject2[paramInt1]);
          paramInt1 += 1;
        }
        v.putByte(paramInt2 + 251).putShort(i1);
        paramInt1 = 0;
        while (paramInt1 < paramInt2)
        {
          a(paramArrayOfObject1[paramInt1]);
          paramInt1 += 1;
        }
        v.putByte(251 - paramInt2).putShort(i1);
        continue;
        if (i1 < 64) {
          v.putByte(i1);
        } else {
          v.putByte(251).putShort(i1);
        }
      }
    }
    if (i1 < 64) {
      v.putByte(i1 + 64);
    }
    for (;;)
    {
      a(paramArrayOfObject2[0]);
      break;
      v.putByte(247).putShort(i1);
    }
  }
  
  public void visitIincInsn(int paramInt1, int paramInt2)
  {
    if ((P != null) && (M == 0)) {
      P.h.a(132, paramInt1, null, null);
    }
    if (M != 2)
    {
      int i1 = paramInt1 + 1;
      if (i1 > t) {
        t = i1;
      }
    }
    if ((paramInt1 > 255) || (paramInt2 > 127) || (paramInt2 < -128))
    {
      r.putByte(196).b(132, paramInt1).putShort(paramInt2);
      return;
    }
    r.putByte(132).a(paramInt1, paramInt2);
  }
  
  public void visitInsn(int paramInt)
  {
    r.putByte(paramInt);
    if (P != null)
    {
      if (M != 0) {
        break label63;
      }
      P.h.a(paramInt, 0, null, null);
    }
    for (;;)
    {
      if (((paramInt >= 172) && (paramInt <= 177)) || (paramInt == 191)) {
        e();
      }
      return;
      label63:
      int i1 = Q + Frame.a[paramInt];
      if (i1 > R) {
        R = i1;
      }
      Q = i1;
    }
  }
  
  public void visitIntInsn(int paramInt1, int paramInt2)
  {
    if (P != null)
    {
      if (M != 0) {
        break label45;
      }
      P.h.a(paramInt1, paramInt2, null, null);
    }
    while (paramInt1 == 17)
    {
      r.b(paramInt1, paramInt2);
      return;
      label45:
      if (paramInt1 != 188)
      {
        int i1 = Q + 1;
        if (i1 > R) {
          R = i1;
        }
        Q = i1;
      }
    }
    r.a(paramInt1, paramInt2);
  }
  
  public void visitJumpInsn(int paramInt, Label paramLabel)
  {
    ByteVector localByteVector = null;
    Object localObject = localByteVector;
    if (P != null)
    {
      if (M != 0) {
        break label166;
      }
      P.h.a(paramInt, 0, null, null);
      localObject = paramLabel.a();
      a |= 0x10;
      a(0, paramLabel);
      localObject = localByteVector;
      if (paramInt != 167) {
        localObject = new Label();
      }
    }
    if (((a & 0x2) != 0) && (c - r.b < 32768)) {
      if (paramInt == 167)
      {
        r.putByte(200);
        label119:
        paramLabel.a(this, r, r.b - 1, true);
      }
    }
    for (;;)
    {
      if (P != null)
      {
        if (localObject != null) {
          visitLabel((Label)localObject);
        }
        if (paramInt == 167) {
          e();
        }
      }
      return;
      label166:
      if (paramInt == 168)
      {
        if ((a & 0x200) == 0)
        {
          a |= 0x200;
          L += 1;
        }
        localObject = P;
        a |= 0x80;
        a(Q + 1, paramLabel);
        localObject = new Label();
        break;
      }
      Q += Frame.a[paramInt];
      a(Q, paramLabel);
      localObject = localByteVector;
      break;
      if (paramInt == 168)
      {
        r.putByte(201);
        break label119;
      }
      if (localObject != null) {
        a |= 0x10;
      }
      localByteVector = r;
      if (paramInt <= 166) {}
      for (int i1 = (paramInt + 1 ^ 0x1) - 1;; i1 = paramInt ^ 0x1)
      {
        localByteVector.putByte(i1);
        r.putShort(8);
        r.putByte(200);
        break;
      }
      r.putByte(paramInt);
      paramLabel.a(this, r, r.b - 1, false);
    }
  }
  
  public void visitLabel(Label paramLabel)
  {
    K |= paramLabel.a(this, r.b, r.a);
    if ((a & 0x1) != 0) {}
    do
    {
      return;
      if (M == 0)
      {
        Label localLabel;
        if (P != null)
        {
          if (c == P.c)
          {
            localLabel = P;
            a |= a & 0x10;
            h = P.h;
            return;
          }
          a(0, paramLabel);
        }
        P = paramLabel;
        if (h == null)
        {
          h = new Frame();
          h.b = paramLabel;
        }
        if (O != null)
        {
          if (c == O.c)
          {
            localLabel = O;
            a |= a & 0x10;
            h = O.h;
            P = O;
            return;
          }
          O.i = paramLabel;
        }
        O = paramLabel;
        return;
      }
    } while (M != 1);
    if (P != null)
    {
      P.g = R;
      a(Q, paramLabel);
    }
    P = paramLabel;
    Q = 0;
    R = 0;
    if (O != null) {
      O.i = paramLabel;
    }
    O = paramLabel;
  }
  
  public void visitLdcInsn(Object paramObject)
  {
    paramObject = b.a(paramObject);
    if (P != null)
    {
      if (M == 0) {
        P.h.a(18, 0, b, (Item)paramObject);
      }
    }
    else
    {
      i1 = a;
      if ((b != 5) && (b != 6)) {
        break label130;
      }
      r.b(20, i1);
      return;
    }
    if ((b == 5) || (b == 6)) {}
    for (int i1 = Q + 2;; i1 = Q + 1)
    {
      if (i1 > R) {
        R = i1;
      }
      Q = i1;
      break;
    }
    label130:
    if (i1 >= 256)
    {
      r.b(19, i1);
      return;
    }
    r.a(18, i1);
  }
  
  public void visitLineNumber(int paramInt, Label paramLabel)
  {
    if (I == null) {
      I = new ByteVector();
    }
    H += 1;
    I.putShort(c);
    I.putShort(paramInt);
  }
  
  public void visitLocalVariable(String paramString1, String paramString2, String paramString3, Label paramLabel1, Label paramLabel2, int paramInt)
  {
    int i2 = 2;
    if (paramString3 != null)
    {
      if (G == null) {
        G = new ByteVector();
      }
      F += 1;
      G.putShort(c).putShort(c - c).putShort(b.newUTF8(paramString1)).putShort(b.newUTF8(paramString3)).putShort(paramInt);
    }
    if (E == null) {
      E = new ByteVector();
    }
    D += 1;
    E.putShort(c).putShort(c - c).putShort(b.newUTF8(paramString1)).putShort(b.newUTF8(paramString2)).putShort(paramInt);
    if (M != 2)
    {
      int i3 = paramString2.charAt(0);
      i1 = i2;
      if (i3 != 74) {
        if (i3 != 68) {
          break label231;
        }
      }
    }
    label231:
    for (int i1 = i2;; i1 = 1)
    {
      paramInt = i1 + paramInt;
      if (paramInt > t) {
        t = paramInt;
      }
      return;
    }
  }
  
  public void visitLookupSwitchInsn(Label paramLabel, int[] paramArrayOfInt, Label[] paramArrayOfLabel)
  {
    int i1 = 0;
    int i2 = r.b;
    r.putByte(171);
    r.putByteArray(null, 0, (4 - r.b % 4) % 4);
    paramLabel.a(this, r, i2, true);
    r.putInt(paramArrayOfLabel.length);
    while (i1 < paramArrayOfLabel.length)
    {
      r.putInt(paramArrayOfInt[i1]);
      paramArrayOfLabel[i1].a(this, r, i2, true);
      i1 += 1;
    }
    a(paramLabel, paramArrayOfLabel);
  }
  
  public void visitMaxs(int paramInt1, int paramInt2)
  {
    Object localObject1;
    Object localObject3;
    Object localObject4;
    Object localObject5;
    Object localObject2;
    if (M == 0)
    {
      for (localObject1 = B; localObject1 != null; localObject1 = f)
      {
        localObject3 = a.a();
        localObject4 = c.a();
        localObject5 = b.a();
        if (d == null) {}
        for (localObject2 = "java/lang/Throwable";; localObject2 = d)
        {
          paramInt1 = b.c((String)localObject2);
          a |= 0x10;
          for (localObject2 = localObject3; localObject2 != localObject5; localObject2 = i)
          {
            localObject3 = new Edge();
            a = (0x1700000 | paramInt1);
            b = ((Label)localObject4);
            c = j;
            j = ((Edge)localObject3);
          }
        }
      }
      localObject1 = N.h;
      localObject2 = Type.getArgumentTypes(f);
      ((Frame)localObject1).a(b, c, (Type[])localObject2, t);
      b((Frame)localObject1);
      localObject1 = N;
      paramInt1 = 0;
      if (localObject1 != null)
      {
        localObject3 = k;
        k = null;
        localObject4 = h;
        if ((a & 0x10) != 0) {
          a |= 0x20;
        }
        a |= 0x40;
        paramInt2 = d.length + g;
        if (paramInt2 <= paramInt1) {
          break label1074;
        }
        paramInt1 = paramInt2;
      }
    }
    label286:
    label535:
    label953:
    label989:
    label1059:
    label1068:
    label1071:
    label1074:
    for (;;)
    {
      localObject2 = j;
      localObject1 = localObject3;
      if (localObject2 != null)
      {
        localObject3 = b.a();
        if ((!((Frame)localObject4).a(b, h, a)) || (k != null)) {
          break label1071;
        }
        k = ((Label)localObject1);
        localObject1 = localObject3;
      }
      for (;;)
      {
        localObject2 = c;
        break label286;
        break;
        localObject1 = N;
        int i1;
        while (localObject1 != null)
        {
          localObject2 = h;
          if ((a & 0x20) != 0) {
            b((Frame)localObject2);
          }
          paramInt2 = paramInt1;
          if ((a & 0x40) == 0)
          {
            localObject2 = i;
            i1 = c;
            if (localObject2 == null) {}
            int i2;
            for (paramInt2 = r.b;; paramInt2 = c)
            {
              i2 = paramInt2 - 1;
              paramInt2 = paramInt1;
              if (i2 < i1) {
                break label535;
              }
              paramInt2 = Math.max(paramInt1, 1);
              paramInt1 = i1;
              while (paramInt1 < i2)
              {
                r.a[paramInt1] = 0;
                paramInt1 += 1;
              }
            }
            r.a[i2] = -65;
            a(i1, 0, 1);
            localObject2 = z;
            paramInt1 = y;
            y = (paramInt1 + 1);
            localObject2[paramInt1] = (b.c("java/lang/Throwable") | 0x1700000);
            b();
          }
          localObject1 = i;
          paramInt1 = paramInt2;
        }
        s = paramInt1;
        return;
        if (M == 1)
        {
          for (localObject1 = B; localObject1 != null; localObject1 = f)
          {
            localObject2 = a;
            localObject3 = c;
            localObject4 = b;
            if (localObject2 != localObject4)
            {
              localObject5 = new Edge();
              a = Integer.MAX_VALUE;
              b = ((Label)localObject3);
              if ((a & 0x80) == 0)
              {
                c = j;
                j = ((Edge)localObject5);
              }
              for (;;)
              {
                localObject2 = i;
                break;
                c = j.c.c;
                j.c.c = ((Edge)localObject5);
              }
            }
          }
          if (L > 0)
          {
            N.b(null, 1L, L);
            localObject1 = N;
            for (paramInt1 = 0; localObject1 != null; paramInt1 = paramInt2)
            {
              paramInt2 = paramInt1;
              if ((a & 0x80) != 0)
              {
                localObject2 = j.c.b;
                paramInt2 = paramInt1;
                if ((a & 0x400) == 0)
                {
                  paramInt2 = paramInt1 + 1;
                  ((Label)localObject2).b(null, paramInt2 / 32L << 32 | 1L << paramInt2 % 32, L);
                }
              }
              localObject1 = i;
            }
            for (localObject1 = N; localObject1 != null; localObject1 = i) {
              if ((a & 0x80) != 0)
              {
                for (localObject2 = N; localObject2 != null; localObject2 = i) {
                  a &= 0xF7FF;
                }
                j.c.b.b((Label)localObject1, 0L, L);
              }
            }
          }
          localObject1 = N;
          paramInt1 = 0;
          if (localObject1 != null)
          {
            localObject3 = k;
            i1 = f;
            paramInt2 = g + i1;
            if (paramInt2 <= paramInt1) {
              break label1068;
            }
            paramInt1 = paramInt2;
          }
        }
        for (;;)
        {
          localObject2 = j;
          if ((a & 0x80) != 0)
          {
            localObject2 = c;
            localObject1 = localObject3;
          }
          for (;;)
          {
            if (localObject2 != null)
            {
              localObject3 = b;
              if ((a & 0x8) != 0) {
                break label1059;
              }
              if (a == Integer.MAX_VALUE)
              {
                paramInt2 = 1;
                f = paramInt2;
                a |= 0x8;
                k = ((Label)localObject1);
                localObject1 = localObject3;
              }
            }
            for (;;)
            {
              localObject2 = c;
              break label953;
              paramInt2 = a + i1;
              break label989;
              break;
              s = paramInt1;
              return;
              s = paramInt1;
              t = paramInt2;
              return;
            }
            localObject1 = localObject3;
          }
        }
      }
    }
  }
  
  public void visitMethodInsn(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    boolean bool;
    if (paramInt == 185)
    {
      bool = true;
      if (paramInt != 186) {
        break label126;
      }
    }
    int i2;
    int i1;
    label119:
    label126:
    for (paramString1 = b.a(paramString2, paramString3);; paramString1 = b.a(paramString1, paramString2, paramString3, bool))
    {
      i2 = c;
      i1 = i2;
      if (P != null)
      {
        if (M != 0) {
          break label143;
        }
        P.h.a(paramInt, 0, b, paramString1);
        i1 = i2;
      }
      if (!bool) {
        break label236;
      }
      paramInt = i1;
      if (i1 == 0)
      {
        paramInt = Type.getArgumentsAndReturnSizes(paramString3);
        c = paramInt;
      }
      r.b(185, a).a(paramInt >> 2, 0);
      return;
      bool = false;
      break;
    }
    label143:
    if (i2 == 0)
    {
      i1 = Type.getArgumentsAndReturnSizes(paramString3);
      c = i1;
    }
    for (;;)
    {
      if ((paramInt == 184) || (paramInt == 186)) {}
      for (i2 = Q - (i1 >> 2) + (i1 & 0x3) + 1;; i2 = Q - (i1 >> 2) + (i1 & 0x3))
      {
        if (i2 > R) {
          R = i2;
        }
        Q = i2;
        break;
      }
      label236:
      r.b(paramInt, a);
      if (paramInt != 186) {
        break label119;
      }
      r.putShort(0);
      return;
      i1 = i2;
    }
  }
  
  public void visitMultiANewArrayInsn(String paramString, int paramInt)
  {
    paramString = b.a(paramString);
    if (P != null)
    {
      if (M != 0) {
        break label62;
      }
      P.h.a(197, paramInt, b, paramString);
    }
    for (;;)
    {
      r.b(197, a).putByte(paramInt);
      return;
      label62:
      Q += 1 - paramInt;
    }
  }
  
  public AnnotationVisitor visitParameterAnnotation(int paramInt, String paramString, boolean paramBoolean)
  {
    ByteVector localByteVector = new ByteVector();
    if ("Ljava/lang/Synthetic;".equals(paramString))
    {
      S = Math.max(S, paramInt + 1);
      return new AnnotationWriter(b, false, localByteVector, null, 0);
    }
    localByteVector.putShort(b.newUTF8(paramString)).putShort(0);
    paramString = new AnnotationWriter(b, true, localByteVector, localByteVector, 2);
    if (paramBoolean)
    {
      if (o == null) {
        o = new AnnotationWriter[Type.getArgumentTypes(f).length];
      }
      g = o[paramInt];
      o[paramInt] = paramString;
      return paramString;
    }
    if (p == null) {
      p = new AnnotationWriter[Type.getArgumentTypes(f).length];
    }
    g = p[paramInt];
    p[paramInt] = paramString;
    return paramString;
  }
  
  public void visitTableSwitchInsn(int paramInt1, int paramInt2, Label paramLabel, Label[] paramArrayOfLabel)
  {
    int i1 = 0;
    int i2 = r.b;
    r.putByte(170);
    r.putByteArray(null, 0, (4 - r.b % 4) % 4);
    paramLabel.a(this, r, i2, true);
    r.putInt(paramInt1).putInt(paramInt2);
    paramInt1 = i1;
    while (paramInt1 < paramArrayOfLabel.length)
    {
      paramArrayOfLabel[paramInt1].a(this, r, i2, true);
      paramInt1 += 1;
    }
    a(paramLabel, paramArrayOfLabel);
  }
  
  public void visitTryCatchBlock(Label paramLabel1, Label paramLabel2, Label paramLabel3, String paramString)
  {
    A += 1;
    Handler localHandler = new Handler();
    a = paramLabel1;
    b = paramLabel2;
    c = paramLabel3;
    d = paramString;
    int i1;
    if (paramString != null)
    {
      i1 = b.newClass(paramString);
      e = i1;
      if (C != null) {
        break label93;
      }
      B = localHandler;
    }
    for (;;)
    {
      C = localHandler;
      return;
      i1 = 0;
      break;
      label93:
      C.f = localHandler;
    }
  }
  
  public void visitTypeInsn(int paramInt, String paramString)
  {
    paramString = b.a(paramString);
    if (P != null)
    {
      if (M != 0) {
        break label60;
      }
      P.h.a(paramInt, r.b, b, paramString);
    }
    for (;;)
    {
      r.b(paramInt, a);
      return;
      label60:
      if (paramInt == 187)
      {
        int i1 = Q + 1;
        if (i1 > R) {
          R = i1;
        }
        Q = i1;
      }
    }
  }
  
  public void visitVarInsn(int paramInt1, int paramInt2)
  {
    int i1;
    if (P != null)
    {
      if (M == 0) {
        P.h.a(paramInt1, paramInt2, null, null);
      }
    }
    else
    {
      if (M != 2)
      {
        if ((paramInt1 != 22) && (paramInt1 != 24) && (paramInt1 != 55) && (paramInt1 != 57)) {
          break label229;
        }
        i1 = paramInt2 + 2;
        label65:
        if (i1 > t) {
          t = i1;
        }
      }
      if ((paramInt2 >= 4) || (paramInt1 == 169)) {
        break label252;
      }
      if (paramInt1 >= 54) {
        break label237;
      }
      paramInt2 = (paramInt1 - 21 << 2) + 26 + paramInt2;
      label110:
      r.putByte(paramInt2);
    }
    for (;;)
    {
      if ((paramInt1 >= 54) && (M == 0) && (A > 0)) {
        visitLabel(new Label());
      }
      return;
      if (paramInt1 == 169)
      {
        Label localLabel = P;
        a |= 0x100;
        P.f = Q;
        e();
        break;
      }
      i1 = Q + Frame.a[paramInt1];
      if (i1 > R) {
        R = i1;
      }
      Q = i1;
      break;
      label229:
      i1 = paramInt2 + 1;
      break label65;
      label237:
      paramInt2 = (paramInt1 - 54 << 2) + 59 + paramInt2;
      break label110;
      label252:
      if (paramInt2 >= 256) {
        r.putByte(196).b(paramInt1, paramInt2);
      } else {
        r.a(paramInt1, paramInt2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.MethodWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */