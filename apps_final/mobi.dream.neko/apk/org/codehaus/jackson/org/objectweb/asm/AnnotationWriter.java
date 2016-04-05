package org.codehaus.jackson.org.objectweb.asm;

final class AnnotationWriter
  implements AnnotationVisitor
{
  private final ClassWriter a;
  private int b;
  private final boolean c;
  private final ByteVector d;
  private final ByteVector e;
  private final int f;
  AnnotationWriter g;
  AnnotationWriter h;
  
  AnnotationWriter(ClassWriter paramClassWriter, boolean paramBoolean, ByteVector paramByteVector1, ByteVector paramByteVector2, int paramInt)
  {
    a = paramClassWriter;
    c = paramBoolean;
    d = paramByteVector1;
    e = paramByteVector2;
    f = paramInt;
  }
  
  static void a(AnnotationWriter[] paramArrayOfAnnotationWriter, int paramInt, ByteVector paramByteVector)
  {
    int j = (paramArrayOfAnnotationWriter.length - paramInt) * 2 + 1;
    int i = paramInt;
    if (i < paramArrayOfAnnotationWriter.length)
    {
      if (paramArrayOfAnnotationWriter[i] == null) {}
      for (int k = 0;; k = paramArrayOfAnnotationWriter[i].a())
      {
        j += k;
        i += 1;
        break;
      }
    }
    paramByteVector.putInt(j).putByte(paramArrayOfAnnotationWriter.length - paramInt);
    while (paramInt < paramArrayOfAnnotationWriter.length)
    {
      Object localObject2 = paramArrayOfAnnotationWriter[paramInt];
      Object localObject1 = null;
      i = 0;
      while (localObject2 != null)
      {
        i += 1;
        ((AnnotationWriter)localObject2).visitEnd();
        h = ((AnnotationWriter)localObject1);
        AnnotationWriter localAnnotationWriter = g;
        localObject1 = localObject2;
        localObject2 = localAnnotationWriter;
      }
      paramByteVector.putShort(i);
      while (localObject1 != null)
      {
        paramByteVector.putByteArray(d.a, 0, d.b);
        localObject1 = h;
      }
      paramInt += 1;
    }
  }
  
  int a()
  {
    int i = 0;
    for (AnnotationWriter localAnnotationWriter = this; localAnnotationWriter != null; localAnnotationWriter = g) {
      i += d.b;
    }
    return i;
  }
  
  void a(ByteVector paramByteVector)
  {
    Object localObject2 = null;
    int i = 2;
    int j = 0;
    AnnotationWriter localAnnotationWriter;
    for (Object localObject1 = this; localObject1 != null; localObject1 = localAnnotationWriter)
    {
      j += 1;
      i += d.b;
      ((AnnotationWriter)localObject1).visitEnd();
      h = ((AnnotationWriter)localObject2);
      localAnnotationWriter = g;
      localObject2 = localObject1;
    }
    paramByteVector.putInt(i);
    paramByteVector.putShort(j);
    while (localObject2 != null)
    {
      paramByteVector.putByteArray(d.a, 0, d.b);
      localObject2 = h;
    }
  }
  
  public void visit(String paramString, Object paramObject)
  {
    int i = 1;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int j = 0;
    b += 1;
    if (c) {
      d.putShort(a.newUTF8(paramString));
    }
    if ((paramObject instanceof String)) {
      d.b(115, a.newUTF8((String)paramObject));
    }
    for (;;)
    {
      return;
      if ((paramObject instanceof Byte))
      {
        d.b(66, a.a(((Byte)paramObject).byteValue()).a);
        return;
      }
      if ((paramObject instanceof Boolean))
      {
        if (((Boolean)paramObject).booleanValue()) {}
        for (;;)
        {
          d.b(90, a.a(i).a);
          return;
          i = 0;
        }
      }
      if ((paramObject instanceof Character))
      {
        d.b(67, a.a(((Character)paramObject).charValue()).a);
        return;
      }
      if ((paramObject instanceof Short))
      {
        d.b(83, a.a(((Short)paramObject).shortValue()).a);
        return;
      }
      if ((paramObject instanceof Type))
      {
        d.b(99, a.newUTF8(((Type)paramObject).getDescriptor()));
        return;
      }
      if ((paramObject instanceof byte[]))
      {
        paramString = (byte[])paramObject;
        d.b(91, paramString.length);
        i = j;
        while (i < paramString.length)
        {
          d.b(66, a.a(paramString[i]).a);
          i += 1;
        }
      }
      else
      {
        if ((paramObject instanceof boolean[]))
        {
          paramString = (boolean[])paramObject;
          d.b(91, paramString.length);
          i = 0;
          label370:
          ClassWriter localClassWriter;
          if (i < paramString.length)
          {
            paramObject = d;
            localClassWriter = a;
            if (paramString[i] == 0) {
              break label422;
            }
          }
          label422:
          for (j = 1;; j = 0)
          {
            ((ByteVector)paramObject).b(90, aa);
            i += 1;
            break label370;
            break;
          }
        }
        if ((paramObject instanceof short[]))
        {
          paramString = (short[])paramObject;
          d.b(91, paramString.length);
          i = k;
          while (i < paramString.length)
          {
            d.b(83, a.a(paramString[i]).a);
            i += 1;
          }
        }
        else if ((paramObject instanceof char[]))
        {
          paramString = (char[])paramObject;
          d.b(91, paramString.length);
          i = m;
          while (i < paramString.length)
          {
            d.b(67, a.a(paramString[i]).a);
            i += 1;
          }
        }
        else if ((paramObject instanceof int[]))
        {
          paramString = (int[])paramObject;
          d.b(91, paramString.length);
          i = n;
          while (i < paramString.length)
          {
            d.b(73, a.a(paramString[i]).a);
            i += 1;
          }
        }
        else if ((paramObject instanceof long[]))
        {
          paramString = (long[])paramObject;
          d.b(91, paramString.length);
          i = i1;
          while (i < paramString.length)
          {
            d.b(74, a.a(paramString[i]).a);
            i += 1;
          }
        }
        else if ((paramObject instanceof float[]))
        {
          paramString = (float[])paramObject;
          d.b(91, paramString.length);
          i = i2;
          while (i < paramString.length)
          {
            d.b(70, a.a(paramString[i]).a);
            i += 1;
          }
        }
        else
        {
          if (!(paramObject instanceof double[])) {
            break;
          }
          paramString = (double[])paramObject;
          d.b(91, paramString.length);
          i = i3;
          while (i < paramString.length)
          {
            d.b(68, a.a(paramString[i]).a);
            i += 1;
          }
        }
      }
    }
    paramString = a.a(paramObject);
    d.b(".s.IFJDCS".charAt(b), a);
  }
  
  public AnnotationVisitor visitAnnotation(String paramString1, String paramString2)
  {
    b += 1;
    if (c) {
      d.putShort(a.newUTF8(paramString1));
    }
    d.b(64, a.newUTF8(paramString2)).putShort(0);
    return new AnnotationWriter(a, true, d, d, d.b - 2);
  }
  
  public AnnotationVisitor visitArray(String paramString)
  {
    b += 1;
    if (c) {
      d.putShort(a.newUTF8(paramString));
    }
    d.b(91, 0);
    return new AnnotationWriter(a, false, d, d, d.b - 2);
  }
  
  public void visitEnd()
  {
    if (e != null)
    {
      byte[] arrayOfByte = e.a;
      arrayOfByte[f] = ((byte)(b >>> 8));
      arrayOfByte[(f + 1)] = ((byte)b);
    }
  }
  
  public void visitEnum(String paramString1, String paramString2, String paramString3)
  {
    b += 1;
    if (c) {
      d.putShort(a.newUTF8(paramString1));
    }
    d.b(101, a.newUTF8(paramString2)).putShort(a.newUTF8(paramString3));
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.AnnotationWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */