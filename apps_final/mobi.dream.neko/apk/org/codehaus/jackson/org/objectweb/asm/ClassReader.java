package org.codehaus.jackson.org.objectweb.asm;

import java.io.IOException;
import java.io.InputStream;

public class ClassReader
{
  public static final int EXPAND_FRAMES = 8;
  public static final int SKIP_CODE = 1;
  public static final int SKIP_DEBUG = 2;
  public static final int SKIP_FRAMES = 4;
  private final int[] a;
  public final byte[] b;
  private final String[] c;
  private final int d;
  public final int header;
  
  public ClassReader(InputStream paramInputStream)
    throws IOException
  {
    this(a(paramInputStream));
  }
  
  public ClassReader(String paramString)
    throws IOException
  {
    this(ClassLoader.getSystemResourceAsStream(paramString.replace('.', '/') + ".class"));
  }
  
  public ClassReader(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public ClassReader(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    b = paramArrayOfByte;
    a = new int[readUnsignedShort(paramInt1 + 8)];
    int i1 = a.length;
    c = new String[i1];
    int j = 0;
    paramInt2 = 1;
    int i = paramInt1 + 10;
    if (paramInt2 < i1)
    {
      a[paramInt2] = (i + 1);
      int k;
      int m;
      switch (paramArrayOfByte[i])
      {
      case 2: 
      case 7: 
      case 8: 
      default: 
        paramInt1 = 3;
        k = j;
        m = paramInt2;
      }
      for (;;)
      {
        paramInt2 = m + 1;
        i = paramInt1 + i;
        j = k;
        break;
        paramInt1 = 5;
        m = paramInt2;
        k = j;
        continue;
        paramInt1 = 9;
        m = paramInt2 + 1;
        k = j;
        continue;
        int n = readUnsignedShort(i + 1) + 3;
        paramInt1 = n;
        m = paramInt2;
        k = j;
        if (n > j)
        {
          k = n;
          paramInt1 = n;
          m = paramInt2;
        }
      }
    }
    d = j;
    header = i;
  }
  
  private int a(int paramInt, char[] paramArrayOfChar, String paramString, AnnotationVisitor paramAnnotationVisitor)
  {
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i = 0;
    if (paramAnnotationVisitor == null)
    {
      switch (b[paramInt] & 0xFF)
      {
      default: 
        return paramInt + 3;
      case 101: 
        return paramInt + 5;
      case 64: 
        return a(paramInt + 3, paramArrayOfChar, true, null);
      }
      return a(paramInt + 1, paramArrayOfChar, false, null);
    }
    byte[] arrayOfByte = b;
    int i4 = paramInt + 1;
    switch (arrayOfByte[paramInt] & 0xFF)
    {
    default: 
      return i4;
    case 68: 
    case 70: 
    case 73: 
    case 74: 
      paramAnnotationVisitor.visit(paramString, readConst(readUnsignedShort(i4), paramArrayOfChar));
      return i4 + 2;
    case 66: 
      paramAnnotationVisitor.visit(paramString, new Byte((byte)readInt(a[readUnsignedShort(i4)])));
      return i4 + 2;
    case 90: 
      if (readInt(a[readUnsignedShort(i4)]) == 0) {}
      for (paramArrayOfChar = Boolean.FALSE;; paramArrayOfChar = Boolean.TRUE)
      {
        paramAnnotationVisitor.visit(paramString, paramArrayOfChar);
        return i4 + 2;
      }
    case 83: 
      paramAnnotationVisitor.visit(paramString, new Short((short)readInt(a[readUnsignedShort(i4)])));
      return i4 + 2;
    case 67: 
      paramAnnotationVisitor.visit(paramString, new Character((char)readInt(a[readUnsignedShort(i4)])));
      return i4 + 2;
    case 115: 
      paramAnnotationVisitor.visit(paramString, readUTF8(i4, paramArrayOfChar));
      return i4 + 2;
    case 101: 
      paramAnnotationVisitor.visitEnum(paramString, readUTF8(i4, paramArrayOfChar), readUTF8(i4 + 2, paramArrayOfChar));
      return i4 + 4;
    case 99: 
      paramAnnotationVisitor.visit(paramString, Type.getType(readUTF8(i4, paramArrayOfChar)));
      return i4 + 2;
    case 64: 
      return a(i4 + 2, paramArrayOfChar, true, paramAnnotationVisitor.visitAnnotation(paramString, readUTF8(i4, paramArrayOfChar)));
    }
    int i3 = readUnsignedShort(i4);
    i4 += 2;
    if (i3 == 0) {
      return a(i4 - 2, paramArrayOfChar, false, paramAnnotationVisitor.visitArray(paramString));
    }
    arrayOfByte = b;
    paramInt = i4 + 1;
    switch (arrayOfByte[i4] & 0xFF)
    {
    default: 
      return a(paramInt - 3, paramArrayOfChar, false, paramAnnotationVisitor.visitArray(paramString));
    case 66: 
      paramArrayOfChar = new byte[i3];
      while (i < i3)
      {
        paramArrayOfChar[i] = ((byte)readInt(a[readUnsignedShort(paramInt)]));
        paramInt += 3;
        i += 1;
      }
      paramAnnotationVisitor.visit(paramString, paramArrayOfChar);
      return paramInt - 1;
    case 90: 
      paramArrayOfChar = new boolean[i3];
      j = 0;
      i = paramInt;
      paramInt = j;
      if (paramInt < i3)
      {
        if (readInt(a[readUnsignedShort(i)]) != 0) {}
        for (int i5 = 1;; i5 = 0)
        {
          paramArrayOfChar[paramInt] = i5;
          i += 3;
          paramInt += 1;
          break;
        }
      }
      paramAnnotationVisitor.visit(paramString, paramArrayOfChar);
      return i - 1;
    case 83: 
      paramArrayOfChar = new short[i3];
      i = j;
      while (i < i3)
      {
        paramArrayOfChar[i] = ((short)readInt(a[readUnsignedShort(paramInt)]));
        paramInt += 3;
        i += 1;
      }
      paramAnnotationVisitor.visit(paramString, paramArrayOfChar);
      return paramInt - 1;
    case 67: 
      paramArrayOfChar = new char[i3];
      i = k;
      while (i < i3)
      {
        paramArrayOfChar[i] = ((char)readInt(a[readUnsignedShort(paramInt)]));
        paramInt += 3;
        i += 1;
      }
      paramAnnotationVisitor.visit(paramString, paramArrayOfChar);
      return paramInt - 1;
    case 73: 
      paramArrayOfChar = new int[i3];
      i = m;
      while (i < i3)
      {
        paramArrayOfChar[i] = readInt(a[readUnsignedShort(paramInt)]);
        paramInt += 3;
        i += 1;
      }
      paramAnnotationVisitor.visit(paramString, paramArrayOfChar);
      return paramInt - 1;
    case 74: 
      paramArrayOfChar = new long[i3];
      i = n;
      while (i < i3)
      {
        paramArrayOfChar[i] = readLong(a[readUnsignedShort(paramInt)]);
        paramInt += 3;
        i += 1;
      }
      paramAnnotationVisitor.visit(paramString, paramArrayOfChar);
      return paramInt - 1;
    case 70: 
      paramArrayOfChar = new float[i3];
      i = i1;
      while (i < i3)
      {
        paramArrayOfChar[i] = Float.intBitsToFloat(readInt(a[readUnsignedShort(paramInt)]));
        paramInt += 3;
        i += 1;
      }
      paramAnnotationVisitor.visit(paramString, paramArrayOfChar);
      return paramInt - 1;
    }
    paramArrayOfChar = new double[i3];
    i = i2;
    while (i < i3)
    {
      paramArrayOfChar[i] = Double.longBitsToDouble(readLong(a[readUnsignedShort(paramInt)]));
      paramInt += 3;
      i += 1;
    }
    paramAnnotationVisitor.visit(paramString, paramArrayOfChar);
    return paramInt - 1;
  }
  
  private int a(int paramInt, char[] paramArrayOfChar, boolean paramBoolean, AnnotationVisitor paramAnnotationVisitor)
  {
    int i = readUnsignedShort(paramInt);
    paramInt += 2;
    int j;
    if (paramBoolean) {
      for (;;)
      {
        j = paramInt;
        if (i <= 0) {
          break;
        }
        paramInt = a(paramInt + 2, paramArrayOfChar, readUTF8(paramInt, paramArrayOfChar), paramAnnotationVisitor);
        i -= 1;
      }
    }
    for (;;)
    {
      j = paramInt;
      if (i > 0)
      {
        paramInt = a(paramInt, paramArrayOfChar, null, paramAnnotationVisitor);
        i -= 1;
      }
      else
      {
        if (paramAnnotationVisitor != null) {
          paramAnnotationVisitor.visitEnd();
        }
        return j;
      }
    }
  }
  
  private int a(Object[] paramArrayOfObject, int paramInt1, int paramInt2, char[] paramArrayOfChar, Label[] paramArrayOfLabel)
  {
    byte[] arrayOfByte = b;
    int i = paramInt2 + 1;
    switch (arrayOfByte[paramInt2] & 0xFF)
    {
    default: 
      paramArrayOfObject[paramInt1] = readLabel(readUnsignedShort(i), paramArrayOfLabel);
      return i + 2;
    case 0: 
      paramArrayOfObject[paramInt1] = Opcodes.TOP;
      return i;
    case 1: 
      paramArrayOfObject[paramInt1] = Opcodes.INTEGER;
      return i;
    case 2: 
      paramArrayOfObject[paramInt1] = Opcodes.FLOAT;
      return i;
    case 3: 
      paramArrayOfObject[paramInt1] = Opcodes.DOUBLE;
      return i;
    case 4: 
      paramArrayOfObject[paramInt1] = Opcodes.LONG;
      return i;
    case 5: 
      paramArrayOfObject[paramInt1] = Opcodes.NULL;
      return i;
    case 6: 
      paramArrayOfObject[paramInt1] = Opcodes.UNINITIALIZED_THIS;
      return i;
    }
    paramArrayOfObject[paramInt1] = readClass(i, paramArrayOfChar);
    return i + 2;
  }
  
  private String a(int paramInt1, int paramInt2, char[] paramArrayOfChar)
  {
    byte[] arrayOfByte = b;
    int k = 0;
    int m = 0;
    int i = 0;
    int j = paramInt1;
    int n = j;
    if (n < paramInt1 + paramInt2)
    {
      j = arrayOfByte[n];
      switch (m)
      {
      default: 
        j = m;
      }
      for (;;)
      {
        n += 1;
        m = j;
        j = n;
        break;
        j &= 0xFF;
        if (j < 128)
        {
          int i1 = i + 1;
          paramArrayOfChar[i] = ((char)j);
          j = m;
          i = i1;
        }
        else if ((j < 224) && (j > 191))
        {
          k = (char)(j & 0x1F);
          j = 1;
        }
        else
        {
          k = (char)(j & 0xF);
          j = 2;
          continue;
          paramArrayOfChar[i] = ((char)(j & 0x3F | k << 6));
          i += 1;
          j = 0;
          continue;
          k = (char)(k << 6 | j & 0x3F);
          j = 1;
        }
      }
    }
    return new String(paramArrayOfChar, 0, i);
  }
  
  private Attribute a(Attribute[] paramArrayOfAttribute, String paramString, int paramInt1, int paramInt2, char[] paramArrayOfChar, int paramInt3, Label[] paramArrayOfLabel)
  {
    int i = 0;
    while (i < paramArrayOfAttribute.length)
    {
      if (type.equals(paramString)) {
        return paramArrayOfAttribute[i].read(this, paramInt1, paramInt2, paramArrayOfChar, paramInt3, paramArrayOfLabel);
      }
      i += 1;
    }
    return new Attribute(paramString).read(this, paramInt1, paramInt2, null, -1, null);
  }
  
  private void a(int paramInt, String paramString, char[] paramArrayOfChar, boolean paramBoolean, MethodVisitor paramMethodVisitor)
  {
    byte[] arrayOfByte = b;
    int j = paramInt + 1;
    int k = arrayOfByte[paramInt] & 0xFF;
    int m = Type.getArgumentTypes(paramString).length - k;
    paramInt = 0;
    int i;
    while (paramInt < m)
    {
      paramString = paramMethodVisitor.visitParameterAnnotation(paramInt, "Ljava/lang/Synthetic;", false);
      if (paramString != null) {
        paramString.visitEnd();
      }
      paramInt += 1;
      continue;
      i += 1;
    }
    for (;;)
    {
      if (i < k + m)
      {
        j = readUnsignedShort(paramInt);
        paramInt += 2;
        while (j > 0)
        {
          paramInt = a(paramInt + 2, paramArrayOfChar, true, paramMethodVisitor.visitParameterAnnotation(i, readUTF8(paramInt, paramArrayOfChar), paramBoolean));
          j -= 1;
        }
        break;
      }
      return;
      i = paramInt;
      paramInt = j;
    }
  }
  
  private static byte[] a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null) {
      throw new IOException("Class not found");
    }
    Object localObject1 = new byte[paramInputStream.available()];
    int i = 0;
    for (;;)
    {
      int j = paramInputStream.read((byte[])localObject1, i, localObject1.length - i);
      if (j == -1)
      {
        localObject2 = localObject1;
        if (i < localObject1.length)
        {
          localObject2 = new byte[i];
          System.arraycopy(localObject1, 0, localObject2, 0, i);
        }
      }
      int k;
      do
      {
        return (byte[])localObject2;
        i = j + i;
        if (i != localObject1.length) {
          break;
        }
        k = paramInputStream.read();
        localObject2 = localObject1;
      } while (k < 0);
      Object localObject2 = new byte[localObject1.length + 1000];
      System.arraycopy(localObject1, 0, localObject2, 0, i);
      j = i + 1;
      localObject2[i] = ((byte)k);
      localObject1 = localObject2;
      i = j;
    }
  }
  
  void a(ClassWriter paramClassWriter)
  {
    char[] arrayOfChar = new char[d];
    int j = a.length;
    Item[] arrayOfItem = new Item[j];
    int i = 1;
    if (i < j)
    {
      int m = a[i];
      int k = b[(m - 1)];
      Item localItem = new Item(i);
      switch (k)
      {
      case 2: 
      case 7: 
      case 8: 
      default: 
        localItem.a(k, readUTF8(m, arrayOfChar), null, null);
      }
      for (;;)
      {
        k = j % arrayOfItem.length;
        k = arrayOfItem[k];
        arrayOfItem[k] = localItem;
        i += 1;
        break;
        int n = a[readUnsignedShort(m + 2)];
        localItem.a(k, readClass(m, arrayOfChar), readUTF8(n, arrayOfChar), readUTF8(n + 2, arrayOfChar));
        continue;
        localItem.a(readInt(m));
        continue;
        localItem.a(Float.intBitsToFloat(readInt(m)));
        continue;
        localItem.a(k, readUTF8(m, arrayOfChar), readUTF8(m + 2, arrayOfChar), null);
        continue;
        localItem.a(readLong(m));
        i += 1;
        continue;
        localItem.a(Double.longBitsToDouble(readLong(m)));
        i += 1;
        continue;
        Object localObject2 = c[i];
        Object localObject1 = localObject2;
        if (localObject2 == null)
        {
          m = a[i];
          localObject2 = c;
          localObject1 = a(m + 2, readUnsignedShort(m), arrayOfChar);
          localObject2[i] = localObject1;
        }
        localItem.a(k, (String)localObject1, null, null);
      }
    }
    i = a[1] - 1;
    d.putByteArray(b, i, header - i);
    e = arrayOfItem;
    f = ((int)(0.75D * j));
    c = j;
  }
  
  public void accept(ClassVisitor paramClassVisitor, int paramInt)
  {
    accept(paramClassVisitor, new Attribute[0], paramInt);
  }
  
  public void accept(ClassVisitor paramClassVisitor, Attribute[] paramArrayOfAttribute, int paramInt)
  {
    byte[] arrayOfByte = b;
    char[] arrayOfChar = new char[d];
    int i5 = 0;
    int i3 = 0;
    Object localObject1 = null;
    int j = header;
    int m = readUnsignedShort(j);
    String str = readClass(j + 2, arrayOfChar);
    int i = a[readUnsignedShort(j + 4)];
    if (i == 0) {}
    String[] arrayOfString;
    int i4;
    int n;
    for (Object localObject7 = null;; localObject7 = readUTF8(i, arrayOfChar))
    {
      arrayOfString = new String[readUnsignedShort(j + 6)];
      i4 = 0;
      i = 0;
      n = j + 8;
      while (i < arrayOfString.length)
      {
        arrayOfString[i] = readClass(n, arrayOfChar);
        i += 1;
        n += 2;
      }
    }
    int i7;
    int i8;
    label166:
    int i9;
    if ((paramInt & 0x1) != 0)
    {
      i7 = 1;
      if ((paramInt & 0x2) == 0) {
        break label249;
      }
      i8 = 1;
      if ((paramInt & 0x8) == 0) {
        break label255;
      }
      i9 = 1;
      label176:
      j = readUnsignedShort(n);
      i = n + 2;
    }
    for (;;)
    {
      if (j <= 0) {
        break label270;
      }
      k = readUnsignedShort(i + 6);
      i += 8;
      for (;;)
      {
        if (k > 0)
        {
          i += readInt(i + 2) + 6;
          k -= 1;
          continue;
          i7 = 0;
          break;
          label249:
          i8 = 0;
          break label166;
          label255:
          i9 = 0;
          break label176;
        }
      }
      j -= 1;
    }
    label270:
    j = readUnsignedShort(i);
    i += 2;
    while (j > 0)
    {
      k = readUnsignedShort(i + 6);
      i += 8;
      while (k > 0)
      {
        i += readInt(i + 2) + 6;
        k -= 1;
      }
      j -= 1;
    }
    Object localObject8 = null;
    Object localObject4 = null;
    Object localObject5 = null;
    Object localObject6 = null;
    Object localObject3 = null;
    Object localObject2 = null;
    int i2 = readUnsignedShort(i);
    int i1 = i + 2;
    j = i5;
    i = i3;
    int k = i4;
    Object localObject9;
    Object localObject10;
    if (i2 > 0)
    {
      localObject9 = readUTF8(i1, arrayOfChar);
      if ("SourceFile".equals(localObject9))
      {
        localObject10 = readUTF8(i1 + 6, arrayOfChar);
        localObject9 = localObject3;
        localObject3 = localObject6;
        localObject4 = localObject5;
        localObject5 = localObject10;
        i3 = k;
        localObject6 = localObject1;
        localObject1 = localObject2;
        k = j;
        j = i;
        i = i3;
        localObject2 = localObject9;
      }
      for (;;)
      {
        i3 = readInt(i1 + 2);
        localObject9 = localObject5;
        i2 -= 1;
        i3 = i1 + (i3 + 6);
        localObject10 = localObject6;
        i1 = k;
        localObject5 = localObject2;
        localObject6 = localObject3;
        localObject2 = localObject1;
        localObject3 = localObject5;
        localObject5 = localObject4;
        localObject4 = localObject9;
        k = i;
        localObject1 = localObject10;
        i = j;
        j = i1;
        i1 = i3;
        break;
        if (!"InnerClasses".equals(localObject9)) {
          break label623;
        }
        localObject9 = localObject4;
        i3 = i1 + 6;
        localObject10 = localObject1;
        localObject1 = localObject2;
        k = j;
        j = i;
        localObject2 = localObject3;
        localObject3 = localObject6;
        localObject4 = localObject5;
        localObject5 = localObject9;
        i = i3;
        localObject6 = localObject10;
      }
      label623:
      if ("EnclosingMethod".equals(localObject9))
      {
        localObject10 = readClass(i1 + 6, arrayOfChar);
        i3 = readUnsignedShort(i1 + 8);
        if (i3 == 0) {
          break label7976;
        }
        localObject2 = readUTF8(a[i3], arrayOfChar);
        localObject3 = readUTF8(a[i3] + 2, arrayOfChar);
      }
    }
    for (;;)
    {
      localObject6 = localObject4;
      i4 = k;
      localObject9 = localObject1;
      k = i;
      i3 = j;
      localObject1 = localObject3;
      localObject3 = localObject10;
      localObject4 = localObject5;
      localObject5 = localObject6;
      i = i4;
      localObject6 = localObject9;
      j = k;
      k = i3;
      break;
      if ("Signature".equals(localObject9))
      {
        localObject10 = readUTF8(i1 + 6, arrayOfChar);
        localObject8 = localObject4;
        i4 = k;
        localObject9 = localObject1;
        k = i;
        i3 = j;
        localObject1 = localObject2;
        localObject2 = localObject3;
        localObject3 = localObject6;
        localObject4 = localObject5;
        localObject5 = localObject8;
        i = i4;
        localObject6 = localObject9;
        localObject8 = localObject10;
        j = k;
        k = i3;
        break;
      }
      if ("RuntimeVisibleAnnotations".equals(localObject9))
      {
        localObject9 = localObject4;
        localObject10 = localObject1;
        i3 = i1 + 6;
        localObject1 = localObject2;
        j = i;
        localObject2 = localObject3;
        localObject3 = localObject6;
        localObject4 = localObject5;
        localObject5 = localObject9;
        i = k;
        localObject6 = localObject10;
        k = i3;
        break;
      }
      if ("Deprecated".equals(localObject9))
      {
        i4 = m | 0x20000;
        localObject9 = localObject4;
        m = k;
        localObject10 = localObject1;
        k = i;
        i3 = j;
        localObject1 = localObject2;
        localObject2 = localObject3;
        localObject3 = localObject6;
        localObject4 = localObject5;
        localObject5 = localObject9;
        i = m;
        localObject6 = localObject10;
        m = i4;
        j = k;
        k = i3;
        break;
      }
      if ("Synthetic".equals(localObject9))
      {
        i4 = m | 0x41000;
        localObject9 = localObject4;
        m = k;
        localObject10 = localObject1;
        k = i;
        i3 = j;
        localObject1 = localObject2;
        localObject2 = localObject3;
        localObject3 = localObject6;
        localObject4 = localObject5;
        localObject5 = localObject9;
        i = m;
        localObject6 = localObject10;
        m = i4;
        j = k;
        k = i3;
        break;
      }
      if ("SourceDebugExtension".equals(localObject9))
      {
        i3 = readInt(i1 + 2);
        localObject5 = a(i1 + 6, i3, new char[i3]);
        localObject9 = localObject4;
        i3 = k;
        localObject10 = localObject1;
        localObject1 = localObject2;
        k = j;
        j = i;
        localObject2 = localObject3;
        localObject3 = localObject6;
        localObject4 = localObject5;
        localObject5 = localObject9;
        i = i3;
        localObject6 = localObject10;
        break;
      }
      if ("RuntimeInvisibleAnnotations".equals(localObject9))
      {
        localObject9 = localObject4;
        i = k;
        localObject10 = localObject1;
        k = j;
        localObject1 = localObject2;
        j = i1 + 6;
        localObject2 = localObject3;
        localObject3 = localObject6;
        localObject4 = localObject5;
        localObject5 = localObject9;
        localObject6 = localObject10;
        break;
      }
      localObject10 = a(paramArrayOfAttribute, (String)localObject9, i1 + 6, readInt(i1 + 2), arrayOfChar, -1, null);
      if (localObject10 != null)
      {
        a = ((Attribute)localObject1);
        localObject9 = localObject4;
        i3 = k;
        localObject1 = localObject2;
        k = j;
        j = i;
        localObject2 = localObject3;
        localObject3 = localObject6;
        localObject4 = localObject5;
        localObject5 = localObject9;
        i = i3;
        localObject6 = localObject10;
        break;
        paramClassVisitor.visit(readInt(4), m, str, (String)localObject8, (String)localObject7, arrayOfString);
        if ((i8 == 0) && ((localObject4 != null) || (localObject5 != null))) {
          paramClassVisitor.visitSource((String)localObject4, (String)localObject5);
        }
        if (localObject6 != null) {
          paramClassVisitor.visitOuterClass((String)localObject6, (String)localObject3, (String)localObject2);
        }
        m = 1;
        label1408:
        boolean bool;
        for (;;)
        {
          localObject2 = localObject1;
          if (m < 0) {
            break;
          }
          if (m == 0)
          {
            i1 = i;
            if (i1 == 0) {
              break label1476;
            }
            i3 = readUnsignedShort(i1);
            i2 = i1 + 2;
            i1 = i3;
            if (i1 <= 0) {
              break label1476;
            }
            localObject2 = readUTF8(i2, arrayOfChar);
            if (m == 0) {
              break label1470;
            }
          }
          label1470:
          for (bool = true;; bool = false)
          {
            i2 = a(i2 + 2, arrayOfChar, true, paramClassVisitor.visitAnnotation((String)localObject2, bool));
            i1 -= 1;
            break label1408;
            i1 = j;
            break;
          }
          label1476:
          m -= 1;
        }
        while (localObject2 != null)
        {
          localObject1 = a;
          a = null;
          paramClassVisitor.visitAttribute((Attribute)localObject2);
          localObject2 = localObject1;
        }
        if (k != 0)
        {
          j = readUnsignedShort(k);
          i = k + 2;
          if (j > 0)
          {
            if (readUnsignedShort(i) == 0)
            {
              localObject1 = null;
              label1554:
              if (readUnsignedShort(i + 2) != 0) {
                break label1632;
              }
              localObject2 = null;
              label1568:
              if (readUnsignedShort(i + 4) != 0) {
                break label1647;
              }
            }
            label1632:
            label1647:
            for (localObject3 = null;; localObject3 = readUTF8(i + 4, arrayOfChar))
            {
              paramClassVisitor.visitInnerClass((String)localObject1, (String)localObject2, (String)localObject3, readUnsignedShort(i + 6));
              j -= 1;
              i += 8;
              break;
              localObject1 = readClass(i, arrayOfChar);
              break label1554;
              localObject2 = readClass(i + 2, arrayOfChar);
              break label1568;
            }
          }
        }
        i1 = readUnsignedShort(n);
        n += 2;
        if (i1 > 0)
        {
          m = readUnsignedShort(n);
          localObject4 = readUTF8(n + 2, arrayOfChar);
          localObject5 = readUTF8(n + 4, arrayOfChar);
          k = 0;
          localObject2 = null;
          i = 0;
          j = 0;
          localObject1 = null;
          i2 = readUnsignedShort(n + 6);
          n += 8;
          label1746:
          if (i2 > 0)
          {
            localObject3 = readUTF8(n, arrayOfChar);
            if ("ConstantValue".equals(localObject3))
            {
              i4 = readUnsignedShort(n + 6);
              i3 = m;
              m = i;
              k = j;
              j = i3;
              i = i4;
            }
          }
        }
        for (;;)
        {
          i4 = readInt(n + 2);
          i3 = i2 - 1;
          i4 = n + (i4 + 6);
          n = k;
          i2 = m;
          k = i;
          m = j;
          j = n;
          i = i2;
          i2 = i3;
          n = i4;
          break label1746;
          if ("Signature".equals(localObject3))
          {
            localObject2 = readUTF8(n + 6, arrayOfChar);
            i3 = j;
            i4 = i;
            i = k;
            j = m;
            k = i3;
            m = i4;
          }
          else if ("Deprecated".equals(localObject3))
          {
            i4 = 0x20000 | m;
            m = j;
            i3 = i;
            i = k;
            j = i4;
            k = m;
            m = i3;
          }
          else if ("Synthetic".equals(localObject3))
          {
            i4 = 0x41000 | m;
            m = j;
            i3 = i;
            i = k;
            j = i4;
            k = m;
            m = i3;
          }
          else if ("RuntimeVisibleAnnotations".equals(localObject3))
          {
            i3 = j;
            i4 = n + 6;
            i = k;
            j = m;
            k = i3;
            m = i4;
          }
          else if ("RuntimeInvisibleAnnotations".equals(localObject3))
          {
            j = m;
            i3 = n + 6;
            m = i;
            i = k;
            k = i3;
          }
          else
          {
            localObject3 = a(paramArrayOfAttribute, (String)localObject3, n + 6, readInt(n + 2), arrayOfChar, -1, null);
            if (localObject3 != null)
            {
              a = ((Attribute)localObject1);
              localObject1 = localObject3;
              i3 = j;
              i4 = i;
              i = k;
              j = m;
              k = i3;
              m = i4;
              continue;
              if (k == 0)
              {
                localObject3 = null;
                localObject3 = paramClassVisitor.visitField(m, (String)localObject4, (String)localObject5, (String)localObject2, localObject3);
                if (localObject3 != null) {
                  k = 1;
                }
              }
              else
              {
                for (;;)
                {
                  localObject2 = localObject1;
                  if (k < 0) {
                    break label2320;
                  }
                  if (k == 0)
                  {
                    m = j;
                    label2206:
                    if (m == 0) {
                      break label2311;
                    }
                    i3 = readUnsignedShort(m);
                    i2 = m + 2;
                    m = i3;
                    label2229:
                    if (m <= 0) {
                      break label2311;
                    }
                    localObject2 = readUTF8(i2, arrayOfChar);
                    if (k == 0) {
                      break label2305;
                    }
                  }
                  label2305:
                  for (bool = true;; bool = false)
                  {
                    i2 = a(i2 + 2, arrayOfChar, true, ((FieldVisitor)localObject3).visitAnnotation((String)localObject2, bool));
                    m -= 1;
                    break label2229;
                    localObject3 = readConst(k, arrayOfChar);
                    break;
                    m = i;
                    break label2206;
                  }
                  label2311:
                  k -= 1;
                }
                label2320:
                while (localObject2 != null)
                {
                  localObject1 = a;
                  a = null;
                  ((FieldVisitor)localObject3).visitAttribute((Attribute)localObject2);
                  localObject2 = localObject1;
                }
                ((FieldVisitor)localObject3).visitEnd();
              }
              i1 -= 1;
              break;
              int i10 = readUnsignedShort(n);
              i5 = n + 2;
              int i14;
              int i6;
              label2473:
              int i15;
              int i11;
              int i12;
              if (i10 > 0)
              {
                i14 = i5 + 6;
                i3 = readUnsignedShort(i5);
                localObject4 = readUTF8(i5 + 2, arrayOfChar);
                localObject6 = readUTF8(i5 + 4, arrayOfChar);
                localObject2 = null;
                i = 0;
                j = 0;
                i2 = 0;
                i1 = 0;
                n = 0;
                localObject1 = null;
                m = 0;
                k = 0;
                i6 = readUnsignedShort(i5 + 6);
                i5 += 8;
                if (i6 > 0)
                {
                  localObject3 = readUTF8(i5, arrayOfChar);
                  i15 = readInt(i5 + 2);
                  i4 = i5 + 6;
                  if ("Code".equals(localObject3))
                  {
                    if (i7 != 0) {
                      break label7839;
                    }
                    i5 = n;
                    i11 = i1;
                    i12 = i2;
                    n = i4;
                    i1 = i3;
                    i3 = i;
                    i2 = j;
                    m = k;
                    k = i12;
                    j = i11;
                    i = i5;
                  }
                }
              }
              for (;;)
              {
                i12 = i6 - 1;
                i5 = n;
                i6 = i1;
                int i13 = i15 + i4;
                i4 = i2;
                i11 = i3;
                i2 = k;
                k = m;
                n = i;
                i1 = j;
                m = i5;
                i3 = i6;
                j = i4;
                i = i11;
                i6 = i12;
                i5 = i13;
                break label2473;
                if ("Exceptions".equals(localObject3))
                {
                  k = n;
                  i11 = i1;
                  i12 = i2;
                  n = i4;
                  i1 = m;
                  i2 = j;
                  i5 = i;
                  i = k;
                  j = i11;
                  k = i12;
                  m = n;
                  n = i1;
                  i1 = i3;
                  i3 = i5;
                }
                else if ("Signature".equals(localObject3))
                {
                  localObject2 = readUTF8(i4, arrayOfChar);
                  i5 = k;
                  i11 = m;
                  i12 = j;
                  i13 = i;
                  i = n;
                  j = i1;
                  k = i2;
                  m = i5;
                  n = i11;
                  i1 = i3;
                  i2 = i12;
                  i3 = i13;
                }
                else if ("Deprecated".equals(localObject3))
                {
                  i5 = k;
                  i11 = m;
                  i13 = 0x20000 | i3;
                  i3 = j;
                  i12 = i;
                  i = n;
                  j = i1;
                  k = i2;
                  m = i5;
                  n = i11;
                  i1 = i13;
                  i2 = i3;
                  i3 = i12;
                }
                else if ("RuntimeVisibleAnnotations".equals(localObject3))
                {
                  i = n;
                  n = k;
                  i5 = m;
                  i11 = i3;
                  i12 = j;
                  i3 = i4;
                  j = i1;
                  k = i2;
                  m = n;
                  n = i5;
                  i1 = i11;
                  i2 = i12;
                }
                else if ("AnnotationDefault".equals(localObject3))
                {
                  i12 = n;
                  i13 = i1;
                  n = i4;
                  i1 = k;
                  i2 = m;
                  i5 = i;
                  i11 = j;
                  i = i12;
                  j = i13;
                  k = n;
                  m = i1;
                  n = i2;
                  i1 = i3;
                  i2 = i11;
                  i3 = i5;
                }
                else if ("Synthetic".equals(localObject3))
                {
                  i5 = k;
                  i11 = m;
                  i13 = 0x41000 | i3;
                  i3 = j;
                  i12 = i;
                  i = n;
                  j = i1;
                  k = i2;
                  m = i5;
                  n = i11;
                  i1 = i13;
                  i2 = i3;
                  i3 = i12;
                }
                else if ("RuntimeInvisibleAnnotations".equals(localObject3))
                {
                  j = i1;
                  i1 = i2;
                  i5 = k;
                  i11 = m;
                  i12 = i3;
                  i2 = i4;
                  i3 = i;
                  i = n;
                  k = i1;
                  m = i5;
                  n = i11;
                  i1 = i12;
                }
                else if ("RuntimeVisibleParameterAnnotations".equals(localObject3))
                {
                  i12 = n;
                  n = i4;
                  i1 = i2;
                  i5 = k;
                  i11 = m;
                  i2 = j;
                  i13 = i3;
                  i3 = i;
                  i = i12;
                  j = n;
                  k = i1;
                  m = i5;
                  n = i11;
                  i1 = i13;
                }
                else if ("RuntimeInvisibleParameterAnnotations".equals(localObject3))
                {
                  n = i4;
                  i5 = k;
                  i11 = m;
                  i12 = j;
                  i13 = i;
                  i = n;
                  j = i1;
                  k = i2;
                  m = i5;
                  n = i11;
                  i1 = i3;
                  i2 = i12;
                  i3 = i13;
                }
                else
                {
                  localObject3 = a(paramArrayOfAttribute, (String)localObject3, i4, i15, arrayOfChar, -1, null);
                  if (localObject3 != null)
                  {
                    a = ((Attribute)localObject1);
                    i5 = k;
                    i11 = m;
                    i12 = j;
                    i13 = i;
                    localObject1 = localObject3;
                    i = n;
                    j = i1;
                    k = i2;
                    m = i5;
                    n = i11;
                    i1 = i3;
                    i2 = i12;
                    i3 = i13;
                    continue;
                    if (k == 0) {
                      localObject3 = null;
                    }
                    for (;;)
                    {
                      localObject5 = paramClassVisitor.visitMethod(i3, (String)localObject4, (String)localObject6, (String)localObject2, (String[])localObject3);
                      if (localObject5 != null) {
                        if ((localObject5 instanceof MethodWriter))
                        {
                          localObject7 = (MethodWriter)localObject5;
                          if ((b.J == this) && (localObject2 == g))
                          {
                            i4 = 0;
                            if (localObject3 == null) {
                              if (j == 0) {
                                k = 1;
                              }
                            }
                          }
                        }
                      }
                      for (;;)
                      {
                        if (k != 0)
                        {
                          h = i14;
                          i = (i5 - i14);
                          i10 -= 1;
                          break;
                          localObject3 = new String[readUnsignedShort(k)];
                          k += 2;
                          i4 = 0;
                          while (i4 < localObject3.length)
                          {
                            localObject3[i4] = readClass(k, arrayOfChar);
                            k += 2;
                            i4 += 1;
                          }
                          k = 0;
                          continue;
                          if (localObject3.length != j) {
                            break label7829;
                          }
                          i11 = 1;
                          i4 = localObject3.length;
                          i4 -= 1;
                          i6 = k;
                          k = i4;
                          for (;;)
                          {
                            i4 = i11;
                            if (k < 0) {
                              break label7829;
                            }
                            i6 -= 2;
                            if (k[k] != readUnsignedShort(i6))
                            {
                              k = 0;
                              break;
                            }
                            k -= 1;
                          }
                        }
                        if (i2 != 0)
                        {
                          localObject2 = ((MethodVisitor)localObject5).visitAnnotationDefault();
                          a(i2, arrayOfChar, null, (AnnotationVisitor)localObject2);
                          if (localObject2 != null) {
                            ((AnnotationVisitor)localObject2).visitEnd();
                          }
                        }
                        k = 1;
                        while (k >= 0)
                        {
                          if (k == 0)
                          {
                            i2 = j;
                            if (i2 == 0) {
                              break label3744;
                            }
                            i6 = readUnsignedShort(i2);
                            i4 = i2 + 2;
                            i2 = i6;
                            label3675:
                            if (i2 <= 0) {
                              break label3744;
                            }
                            localObject2 = readUTF8(i4, arrayOfChar);
                            if (k == 0) {
                              break label3738;
                            }
                          }
                          label3738:
                          for (bool = true;; bool = false)
                          {
                            i4 = a(i4 + 2, arrayOfChar, true, ((MethodVisitor)localObject5).visitAnnotation((String)localObject2, bool));
                            i2 -= 1;
                            break label3675;
                            i2 = i;
                            break;
                          }
                          label3744:
                          k -= 1;
                        }
                        if (i1 != 0) {
                          a(i1, (String)localObject6, arrayOfChar, true, (MethodVisitor)localObject5);
                        }
                        localObject2 = localObject1;
                        if (n != 0) {
                          a(n, (String)localObject6, arrayOfChar, false, (MethodVisitor)localObject5);
                        }
                        for (localObject2 = localObject1; localObject2 != null; localObject2 = localObject1)
                        {
                          localObject1 = a;
                          a = null;
                          ((MethodVisitor)localObject5).visitAttribute((Attribute)localObject2);
                        }
                        int i16;
                        int i17;
                        int i18;
                        if ((localObject5 != null) && (m != 0))
                        {
                          i16 = readUnsignedShort(m);
                          i17 = readUnsignedShort(m + 2);
                          i15 = readInt(m + 4);
                          i11 = m + 8;
                          i18 = i11 + i15;
                          ((MethodVisitor)localObject5).visitCode();
                          localObject7 = new Label[i15 + 2];
                          readLabel(i15 + 1, (Label[])localObject7);
                          i = i11;
                          if (i < i18)
                          {
                            m = i - i11;
                            j = arrayOfByte[i];
                            switch (ClassWriter.a[(j & 0xFF)])
                            {
                            case 15: 
                            default: 
                              i += 4;
                            }
                            for (;;)
                            {
                              break;
                              i += 1;
                              continue;
                              readLabel(readShort(i + 1) + m, (Label[])localObject7);
                              i += 3;
                              continue;
                              readLabel(readInt(i + 1) + m, (Label[])localObject7);
                              i += 5;
                              continue;
                              if ((arrayOfByte[(i + 1)] & 0xFF) == 132)
                              {
                                i += 6;
                              }
                              else
                              {
                                i += 4;
                                continue;
                                j = i + 4 - (m & 0x3);
                                readLabel(readInt(j) + m, (Label[])localObject7);
                                i = readInt(j + 8);
                                k = readInt(j + 4);
                                j += 12;
                                k = i - k + 1;
                                for (;;)
                                {
                                  i = j;
                                  if (k <= 0) {
                                    break;
                                  }
                                  readLabel(readInt(j) + m, (Label[])localObject7);
                                  k -= 1;
                                  j += 4;
                                }
                                i = i + 4 - (m & 0x3);
                                readLabel(readInt(i) + m, (Label[])localObject7);
                                k = readInt(i + 4);
                                j = i + 8;
                                for (;;)
                                {
                                  i = j;
                                  if (k <= 0) {
                                    break;
                                  }
                                  readLabel(readInt(j + 4) + m, (Label[])localObject7);
                                  k -= 1;
                                  j += 8;
                                }
                                i += 2;
                                continue;
                                i += 3;
                                continue;
                                i += 5;
                              }
                            }
                          }
                          j = readUnsignedShort(i);
                          i += 2;
                          if (j > 0)
                          {
                            localObject1 = readLabel(readUnsignedShort(i), (Label[])localObject7);
                            localObject2 = readLabel(readUnsignedShort(i + 2), (Label[])localObject7);
                            localObject3 = readLabel(readUnsignedShort(i + 4), (Label[])localObject7);
                            k = readUnsignedShort(i + 6);
                            if (k == 0) {
                              ((MethodVisitor)localObject5).visitTryCatchBlock((Label)localObject1, (Label)localObject2, (Label)localObject3, null);
                            }
                            for (;;)
                            {
                              i += 8;
                              j -= 1;
                              break;
                              ((MethodVisitor)localObject5).visitTryCatchBlock((Label)localObject1, (Label)localObject2, (Label)localObject3, readUTF8(a[k], arrayOfChar));
                            }
                          }
                          m = 0;
                          n = 0;
                          j = 0;
                          i4 = 0;
                          i2 = 0;
                          i14 = 0;
                          i1 = 1;
                          localObject1 = null;
                          i12 = readUnsignedShort(i);
                          i6 = i + 2;
                          i = j;
                          label4536:
                          if (i12 > 0)
                          {
                            localObject3 = readUTF8(i6, arrayOfChar);
                            if ("LocalVariableTable".equals(localObject3))
                            {
                              if (i8 != 0) {
                                break label7734;
                              }
                              j = readUnsignedShort(i6 + 6);
                              k = i6 + 8;
                              while (j > 0)
                              {
                                m = readUnsignedShort(k);
                                if (localObject7[m] == null)
                                {
                                  localObject2 = readLabel(m, (Label[])localObject7);
                                  a |= 0x1;
                                }
                                m += readUnsignedShort(k + 2);
                                if (localObject7[m] == null)
                                {
                                  localObject2 = readLabel(m, (Label[])localObject7);
                                  a |= 0x1;
                                }
                                k += 10;
                                j -= 1;
                              }
                            }
                            if ("LocalVariableTypeTable".equals(localObject3))
                            {
                              k = i4;
                              n = i6 + 6;
                              j = i1;
                              i1 = m;
                              m = i;
                              i = i2;
                            }
                          }
                        }
                        for (;;)
                        {
                          label4725:
                          i2 = readInt(i6 + 2);
                          i13 = i1;
                          i12 -= 1;
                          i6 += i2 + 6;
                          i2 = i;
                          i4 = k;
                          i = m;
                          i1 = j;
                          m = i13;
                          break label4536;
                          if ("LineNumberTable".equals(localObject3))
                          {
                            if (i8 == 0)
                            {
                              j = readUnsignedShort(i6 + 6);
                              k = i6 + 8;
                              while (j > 0)
                              {
                                i13 = readUnsignedShort(k);
                                if (localObject7[i13] == null)
                                {
                                  localObject2 = readLabel(i13, (Label[])localObject7);
                                  a |= 0x1;
                                }
                                b = readUnsignedShort(k + 2);
                                k += 4;
                                j -= 1;
                              }
                            }
                          }
                          else if ("StackMapTable".equals(localObject3))
                          {
                            if ((paramInt & 0x4) == 0)
                            {
                              k = readInt(i6 + 2);
                              i = readUnsignedShort(i6 + 6);
                              i4 = i6 + 8;
                              i2 = m;
                              j = i1;
                              m = i4;
                              i1 = i2;
                            }
                          }
                          else if ("StackMap".equals(localObject3))
                          {
                            if ((paramInt & 0x4) == 0)
                            {
                              i2 = i6 + 8;
                              k = readInt(i6 + 2);
                              i = readUnsignedShort(i6 + 6);
                              j = 0;
                              i1 = m;
                              m = i2;
                            }
                          }
                          else
                          {
                            j = 0;
                            label5012:
                            if (j >= paramArrayOfAttribute.length) {
                              break label7798;
                            }
                            if (!type.equals(localObject3)) {
                              break label7795;
                            }
                            localObject2 = paramArrayOfAttribute[j].read(this, i6 + 6, readInt(i6 + 2), arrayOfChar, i11 - 8, (Label[])localObject7);
                            if (localObject2 == null) {
                              break label7795;
                            }
                            a = ((Attribute)localObject1);
                            localObject1 = localObject2;
                          }
                          label5144:
                          label5264:
                          label5697:
                          label5741:
                          label5772:
                          label5865:
                          label5884:
                          label6283:
                          label7092:
                          label7190:
                          label7208:
                          label7734:
                          label7795:
                          for (;;)
                          {
                            j += 1;
                            break label5012;
                            if (i != 0)
                            {
                              localObject2 = new Object[i17];
                              localObject3 = new Object[i16];
                              if (i9 != 0) {
                                if ((i3 & 0x8) == 0)
                                {
                                  if ("<init>".equals(localObject4))
                                  {
                                    j = 1;
                                    localObject2[0] = Opcodes.UNINITIALIZED_THIS;
                                    k = 1;
                                  }
                                  for (;;)
                                  {
                                    i12 = k;
                                    k = i12 + 1;
                                    i3 = k;
                                    i6 = k;
                                    switch (((String)localObject6).charAt(i12))
                                    {
                                    default: 
                                      i3 = -1;
                                      k = i;
                                      while (k < i + i4 - 2)
                                      {
                                        if (arrayOfByte[k] == 8)
                                        {
                                          i6 = readUnsignedShort(k + 1);
                                          if ((i6 >= 0) && (i6 < i15) && ((arrayOfByte[(i11 + i6)] & 0xFF) == 187)) {
                                            readLabel(i6, (Label[])localObject7);
                                          }
                                        }
                                        k += 1;
                                      }
                                      j = 1;
                                      localObject2[0] = readClass(header + 2, arrayOfChar);
                                      break;
                                    case 'B': 
                                    case 'C': 
                                    case 'I': 
                                    case 'S': 
                                    case 'Z': 
                                      localObject2[j] = Opcodes.INTEGER;
                                      j += 1;
                                      break;
                                    case 'F': 
                                      localObject2[j] = Opcodes.FLOAT;
                                      j += 1;
                                      break;
                                    case 'J': 
                                      localObject2[j] = Opcodes.LONG;
                                      j += 1;
                                      break;
                                    case 'D': 
                                      localObject2[j] = Opcodes.DOUBLE;
                                      j += 1;
                                      break;
                                    case '[': 
                                      while (((String)localObject6).charAt(i3) == '[') {
                                        i3 += 1;
                                      }
                                      k = i3;
                                      if (((String)localObject6).charAt(i3) == 'L')
                                      {
                                        k = i3 + 1;
                                        while (((String)localObject6).charAt(k) != ';') {
                                          k += 1;
                                        }
                                      }
                                      k += 1;
                                      localObject2[j] = ((String)localObject6).substring(i12, k);
                                      j += 1;
                                      break;
                                    case 'L': 
                                      while (((String)localObject6).charAt(i6) != ';') {
                                        i6 += 1;
                                      }
                                      k = i6 + 1;
                                      localObject2[j] = ((String)localObject6).substring(i12 + 1, i6);
                                      j += 1;
                                    }
                                  }
                                  k = j;
                                  j = i3;
                                }
                              }
                            }
                            for (;;)
                            {
                              i14 = 0;
                              i13 = 0;
                              i4 = k;
                              k = j;
                              i3 = 0;
                              i6 = i2;
                              i12 = i11;
                              i2 = i14;
                              j = i;
                              i = i6;
                              int i19;
                              if (i12 < i18)
                              {
                                i19 = i12 - i11;
                                localObject4 = localObject7[i19];
                                if (localObject4 != null)
                                {
                                  ((MethodVisitor)localObject5).visitLabel((Label)localObject4);
                                  if ((i8 == 0) && (b > 0)) {
                                    ((MethodVisitor)localObject5).visitLineNumber(b, (Label)localObject4);
                                  }
                                }
                                i6 = i;
                                if ((localObject2 != null) && ((k == i19) || (k == -1))) {
                                  if ((i1 == 0) || (i9 != 0))
                                  {
                                    ((MethodVisitor)localObject5).visitFrame(-1, i4, (Object[])localObject2, i2, (Object[])localObject3);
                                    if (i6 <= 0) {
                                      break label6283;
                                    }
                                    if (i1 == 0) {
                                      break label5865;
                                    }
                                    i2 = j + 1;
                                    j = arrayOfByte[j] & 0xFF;
                                    i13 = k;
                                    i3 = 0;
                                    if (j >= 64) {
                                      break label5884;
                                    }
                                    i14 = 3;
                                    i = 0;
                                    k = j;
                                    j = i14;
                                  }
                                }
                              }
                              for (;;)
                              {
                                k = k + 1 + i13;
                                readLabel(k, (Label[])localObject7);
                                i13 = i3;
                                i3 = j;
                                i6 -= 1;
                                j = i2;
                                i2 = i;
                                break label5697;
                                if (k == -1) {
                                  break label5741;
                                }
                                ((MethodVisitor)localObject5).visitFrame(i3, i13, (Object[])localObject2, i2, (Object[])localObject3);
                                break label5741;
                                i = 255;
                                i13 = -1;
                                i2 = j;
                                j = i;
                                break label5772;
                                if (j < 128)
                                {
                                  k = j - 64;
                                  i2 = a((Object[])localObject3, 0, i2, arrayOfChar, (Label[])localObject7);
                                  j = 4;
                                  i = 1;
                                }
                                else
                                {
                                  i = readUnsignedShort(i2);
                                  i2 += 2;
                                  if (j == 247)
                                  {
                                    i2 = a((Object[])localObject3, 0, i2, arrayOfChar, (Label[])localObject7);
                                    j = 4;
                                    i14 = 1;
                                    k = i;
                                    i = i14;
                                  }
                                  else if ((j >= 248) && (j < 251))
                                  {
                                    i3 = 251 - j;
                                    i4 -= i3;
                                    j = 2;
                                    i14 = 0;
                                    k = i;
                                    i = i14;
                                  }
                                  else if (j == 251)
                                  {
                                    j = 3;
                                    i14 = 0;
                                    k = i;
                                    i = i14;
                                  }
                                  else if (j < 255)
                                  {
                                    if (i9 != 0) {}
                                    for (k = i4;; k = 0)
                                    {
                                      i3 = k;
                                      i14 = j - 251;
                                      k = i2;
                                      i2 = i3;
                                      i3 = i14;
                                      while (i3 > 0)
                                      {
                                        k = a((Object[])localObject2, i2, k, arrayOfChar, (Label[])localObject7);
                                        i3 -= 1;
                                        i2 += 1;
                                      }
                                    }
                                    i3 = j - 251;
                                    i4 += i3;
                                    j = 1;
                                    i2 = k;
                                    i14 = 0;
                                    k = i;
                                    i = i14;
                                  }
                                  else
                                  {
                                    j = readUnsignedShort(i2);
                                    i2 += 2;
                                    k = 0;
                                    i3 = j;
                                    while (i3 > 0)
                                    {
                                      i2 = a((Object[])localObject2, k, i2, arrayOfChar, (Label[])localObject7);
                                      i3 -= 1;
                                      k += 1;
                                    }
                                    k = readUnsignedShort(i2);
                                    i2 += 2;
                                    i3 = 0;
                                    i4 = k;
                                    for (;;)
                                    {
                                      if (i4 > 0)
                                      {
                                        i2 = a((Object[])localObject3, i3, i2, arrayOfChar, (Label[])localObject7);
                                        i4 -= 1;
                                        i3 += 1;
                                        continue;
                                        localObject2 = null;
                                        break label5697;
                                        i14 = arrayOfByte[i12] & 0xFF;
                                        switch (ClassWriter.a[i14])
                                        {
                                        case 15: 
                                        default: 
                                          ((MethodVisitor)localObject5).visitMultiANewArrayInsn(readClass(i12 + 1, arrayOfChar), arrayOfByte[(i12 + 3)] & 0xFF);
                                          i = i12 + 4;
                                        }
                                        for (;;)
                                        {
                                          i12 = i;
                                          i = i6;
                                          break;
                                          ((MethodVisitor)localObject5).visitInsn(i14);
                                          i = i12 + 1;
                                          continue;
                                          if (i14 > 54)
                                          {
                                            i = i14 - 59;
                                            ((MethodVisitor)localObject5).visitVarInsn((i >> 2) + 54, i & 0x3);
                                          }
                                          for (;;)
                                          {
                                            i = i12 + 1;
                                            break;
                                            i = i14 - 26;
                                            ((MethodVisitor)localObject5).visitVarInsn((i >> 2) + 21, i & 0x3);
                                          }
                                          ((MethodVisitor)localObject5).visitJumpInsn(i14, localObject7[(readShort(i12 + 1) + i19)]);
                                          i = i12 + 3;
                                          continue;
                                          ((MethodVisitor)localObject5).visitJumpInsn(i14 - 33, localObject7[(readInt(i12 + 1) + i19)]);
                                          i = i12 + 5;
                                          continue;
                                          i = arrayOfByte[(i12 + 1)] & 0xFF;
                                          if (i == 132)
                                          {
                                            ((MethodVisitor)localObject5).visitIincInsn(readUnsignedShort(i12 + 2), readShort(i12 + 4));
                                            i = i12 + 6;
                                          }
                                          else
                                          {
                                            ((MethodVisitor)localObject5).visitVarInsn(i, readUnsignedShort(i12 + 2));
                                            i = i12 + 4;
                                            continue;
                                            i = i12 + 4 - (i19 & 0x3);
                                            i14 = readInt(i);
                                            i15 = readInt(i + 4);
                                            int i20 = readInt(i + 8);
                                            i += 12;
                                            localObject4 = new Label[i20 - i15 + 1];
                                            i12 = 0;
                                            while (i12 < localObject4.length)
                                            {
                                              localObject4[i12] = localObject7[(readInt(i) + i19)];
                                              i += 4;
                                              i12 += 1;
                                            }
                                            ((MethodVisitor)localObject5).visitTableSwitchInsn(i15, i20, localObject7[(i19 + i14)], (Label[])localObject4);
                                            continue;
                                            i = i12 + 4 - (i19 & 0x3);
                                            i14 = readInt(i);
                                            i12 = readInt(i + 4);
                                            i += 8;
                                            localObject4 = new int[i12];
                                            localObject6 = new Label[i12];
                                            i12 = 0;
                                            while (i12 < localObject4.length)
                                            {
                                              localObject4[i12] = readInt(i);
                                              localObject6[i12] = localObject7[(readInt(i + 4) + i19)];
                                              i += 8;
                                              i12 += 1;
                                            }
                                            ((MethodVisitor)localObject5).visitLookupSwitchInsn(localObject7[(i19 + i14)], (int[])localObject4, (Label[])localObject6);
                                            continue;
                                            ((MethodVisitor)localObject5).visitVarInsn(i14, arrayOfByte[(i12 + 1)] & 0xFF);
                                            i = i12 + 2;
                                            continue;
                                            ((MethodVisitor)localObject5).visitIntInsn(i14, arrayOfByte[(i12 + 1)]);
                                            i = i12 + 2;
                                            continue;
                                            ((MethodVisitor)localObject5).visitIntInsn(i14, readShort(i12 + 1));
                                            i = i12 + 3;
                                            continue;
                                            ((MethodVisitor)localObject5).visitLdcInsn(readConst(arrayOfByte[(i12 + 1)] & 0xFF, arrayOfChar));
                                            i = i12 + 2;
                                            continue;
                                            ((MethodVisitor)localObject5).visitLdcInsn(readConst(readUnsignedShort(i12 + 1), arrayOfChar));
                                            i = i12 + 3;
                                            continue;
                                            i = a[readUnsignedShort(i12 + 1)];
                                            if (i14 == 186)
                                            {
                                              localObject4 = "java/lang/dyn/Dynamic";
                                              localObject6 = readUTF8(i, arrayOfChar);
                                              localObject8 = readUTF8(i + 2, arrayOfChar);
                                              if (i14 >= 182) {
                                                break label7190;
                                              }
                                              ((MethodVisitor)localObject5).visitFieldInsn(i14, (String)localObject4, (String)localObject6, (String)localObject8);
                                            }
                                            for (;;)
                                            {
                                              if ((i14 != 185) && (i14 != 186)) {
                                                break label7208;
                                              }
                                              i = i12 + 5;
                                              break;
                                              localObject4 = readClass(i, arrayOfChar);
                                              i = a[readUnsignedShort(i + 2)];
                                              break label7092;
                                              ((MethodVisitor)localObject5).visitMethodInsn(i14, (String)localObject4, (String)localObject6, (String)localObject8);
                                            }
                                            i = i12 + 3;
                                            continue;
                                            ((MethodVisitor)localObject5).visitTypeInsn(i14, readClass(i12 + 1, arrayOfChar));
                                            i = i12 + 3;
                                            continue;
                                            ((MethodVisitor)localObject5).visitIincInsn(arrayOfByte[(i12 + 1)] & 0xFF, arrayOfByte[(i12 + 2)]);
                                            i = i12 + 3;
                                          }
                                        }
                                        localObject2 = localObject7[(i18 - i11)];
                                        if (localObject2 != null) {
                                          ((MethodVisitor)localObject5).visitLabel((Label)localObject2);
                                        }
                                        localObject3 = localObject1;
                                        if (i8 == 0)
                                        {
                                          localObject3 = localObject1;
                                          if (m != 0)
                                          {
                                            localObject2 = null;
                                            if (n != 0)
                                            {
                                              j = readUnsignedShort(n) * 3;
                                              i = n + 2;
                                              localObject3 = new int[j];
                                              for (;;)
                                              {
                                                localObject2 = localObject3;
                                                if (j <= 0) {
                                                  break;
                                                }
                                                j -= 1;
                                                localObject3[j] = (i + 6);
                                                j -= 1;
                                                localObject3[j] = readUnsignedShort(i + 8);
                                                j -= 1;
                                                localObject3[j] = readUnsignedShort(i);
                                                i += 10;
                                              }
                                            }
                                            i = readUnsignedShort(m);
                                            j = m + 2;
                                            localObject3 = localObject1;
                                            if (i > 0)
                                            {
                                              m = readUnsignedShort(j);
                                              n = readUnsignedShort(j + 2);
                                              i1 = readUnsignedShort(j + 8);
                                              localObject4 = null;
                                              localObject3 = localObject4;
                                              if (localObject2 != null) {
                                                k = 0;
                                              }
                                              for (;;)
                                              {
                                                localObject3 = localObject4;
                                                if (k < localObject2.length)
                                                {
                                                  if ((localObject2[k] == m) && (localObject2[(k + 1)] == i1)) {
                                                    localObject3 = readUTF8(localObject2[(k + 2)], arrayOfChar);
                                                  }
                                                }
                                                else
                                                {
                                                  ((MethodVisitor)localObject5).visitLocalVariable(readUTF8(j + 4, arrayOfChar), readUTF8(j + 6, arrayOfChar), (String)localObject3, localObject7[m], localObject7[(m + n)], i1);
                                                  j += 10;
                                                  i -= 1;
                                                  break;
                                                }
                                                k += 3;
                                              }
                                            }
                                          }
                                        }
                                        while (localObject3 != null)
                                        {
                                          localObject1 = a;
                                          a = null;
                                          ((MethodVisitor)localObject5).visitAttribute((Attribute)localObject3);
                                          localObject3 = localObject1;
                                        }
                                        ((MethodVisitor)localObject5).visitMaxs(i16, i17);
                                        if (localObject5 == null) {
                                          break;
                                        }
                                        ((MethodVisitor)localObject5).visitEnd();
                                        break;
                                        paramClassVisitor.visitEnd();
                                        return;
                                      }
                                    }
                                    i14 = k;
                                    i3 = j;
                                    i15 = 0;
                                    i4 = j;
                                    k = i;
                                    i = i14;
                                    j = i15;
                                  }
                                }
                              }
                              j = 0;
                              break label5144;
                              j = 0;
                              break label5264;
                              localObject3 = null;
                              localObject2 = null;
                              j = 0;
                              k = i14;
                            }
                            j = i1;
                            k = i4;
                            i1 = i;
                            i4 = m;
                            i = i2;
                            m = i1;
                            i1 = i4;
                            break label4725;
                            k = i4;
                            m = i;
                            i4 = i6 + 6;
                            j = i1;
                            i = i2;
                            i1 = i4;
                            break label4725;
                          }
                          label7798:
                          j = i1;
                          k = i4;
                          i4 = i2;
                          i2 = i;
                          i1 = m;
                          i = i4;
                          m = i2;
                        }
                        label7829:
                        k = i4;
                      }
                    }
                  }
                  else
                  {
                    label7839:
                    i5 = k;
                    i11 = m;
                    i12 = j;
                    i13 = i;
                    i = n;
                    j = i1;
                    k = i2;
                    m = i5;
                    n = i11;
                    i1 = i3;
                    i2 = i12;
                    i3 = i13;
                  }
                }
              }
            }
            i3 = j;
            i4 = i;
            i = k;
            j = m;
            k = i3;
            m = i4;
          }
        }
      }
      localObject9 = localObject4;
      i4 = k;
      localObject10 = localObject1;
      k = i;
      i3 = j;
      localObject1 = localObject2;
      localObject2 = localObject3;
      localObject3 = localObject6;
      localObject4 = localObject5;
      localObject5 = localObject9;
      i = i4;
      localObject6 = localObject10;
      j = k;
      k = i3;
      break;
      label7976:
      localObject6 = localObject3;
      localObject3 = localObject2;
      localObject2 = localObject6;
    }
  }
  
  public int getAccess()
  {
    return readUnsignedShort(header);
  }
  
  public String getClassName()
  {
    return readClass(header + 2, new char[d]);
  }
  
  public String[] getInterfaces()
  {
    int j = header + 6;
    int k = readUnsignedShort(j);
    String[] arrayOfString = new String[k];
    if (k > 0)
    {
      char[] arrayOfChar = new char[d];
      int i = 0;
      while (i < k)
      {
        j += 2;
        arrayOfString[i] = readClass(j, arrayOfChar);
        i += 1;
      }
    }
    return arrayOfString;
  }
  
  public int getItem(int paramInt)
  {
    return a[paramInt];
  }
  
  public String getSuperName()
  {
    int i = a[readUnsignedShort(header + 4)];
    if (i == 0) {
      return null;
    }
    return readUTF8(i, new char[d]);
  }
  
  public int readByte(int paramInt)
  {
    return b[paramInt] & 0xFF;
  }
  
  public String readClass(int paramInt, char[] paramArrayOfChar)
  {
    return readUTF8(a[readUnsignedShort(paramInt)], paramArrayOfChar);
  }
  
  public Object readConst(int paramInt, char[] paramArrayOfChar)
  {
    paramInt = a[paramInt];
    switch (b[(paramInt - 1)])
    {
    default: 
      return readUTF8(paramInt, paramArrayOfChar);
    case 3: 
      return new Integer(readInt(paramInt));
    case 4: 
      return new Float(Float.intBitsToFloat(readInt(paramInt)));
    case 5: 
      return new Long(readLong(paramInt));
    case 6: 
      return new Double(Double.longBitsToDouble(readLong(paramInt)));
    }
    return Type.getObjectType(readUTF8(paramInt, paramArrayOfChar));
  }
  
  public int readInt(int paramInt)
  {
    byte[] arrayOfByte = b;
    int i = arrayOfByte[paramInt];
    int j = arrayOfByte[(paramInt + 1)];
    int k = arrayOfByte[(paramInt + 2)];
    return arrayOfByte[(paramInt + 3)] & 0xFF | (i & 0xFF) << 24 | (j & 0xFF) << 16 | (k & 0xFF) << 8;
  }
  
  protected Label readLabel(int paramInt, Label[] paramArrayOfLabel)
  {
    if (paramArrayOfLabel[paramInt] == null) {
      paramArrayOfLabel[paramInt] = new Label();
    }
    return paramArrayOfLabel[paramInt];
  }
  
  public long readLong(int paramInt)
  {
    return readInt(paramInt) << 32 | readInt(paramInt + 4) & 0xFFFFFFFF;
  }
  
  public short readShort(int paramInt)
  {
    byte[] arrayOfByte = b;
    int i = arrayOfByte[paramInt];
    return (short)(arrayOfByte[(paramInt + 1)] & 0xFF | (i & 0xFF) << 8);
  }
  
  public String readUTF8(int paramInt, char[] paramArrayOfChar)
  {
    paramInt = readUnsignedShort(paramInt);
    Object localObject = c[paramInt];
    if (localObject != null) {
      return (String)localObject;
    }
    int i = a[paramInt];
    localObject = c;
    paramArrayOfChar = a(i + 2, readUnsignedShort(i), paramArrayOfChar);
    localObject[paramInt] = paramArrayOfChar;
    return paramArrayOfChar;
  }
  
  public int readUnsignedShort(int paramInt)
  {
    byte[] arrayOfByte = b;
    int i = arrayOfByte[paramInt];
    return arrayOfByte[(paramInt + 1)] & 0xFF | (i & 0xFF) << 8;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.ClassReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */