package org.codehaus.jackson.org.objectweb.asm;

final class FieldWriter
  implements FieldVisitor
{
  FieldWriter a;
  private final ClassWriter b;
  private final int c;
  private final int d;
  private final int e;
  private int f;
  private int g;
  private AnnotationWriter h;
  private AnnotationWriter i;
  private Attribute j;
  
  FieldWriter(ClassWriter paramClassWriter, int paramInt, String paramString1, String paramString2, String paramString3, Object paramObject)
  {
    if (y == null) {
      y = this;
    }
    for (;;)
    {
      z = this;
      b = paramClassWriter;
      c = paramInt;
      d = paramClassWriter.newUTF8(paramString1);
      e = paramClassWriter.newUTF8(paramString2);
      if (paramString3 != null) {
        f = paramClassWriter.newUTF8(paramString3);
      }
      if (paramObject != null) {
        g = aa;
      }
      return;
      z.a = this;
    }
  }
  
  int a()
  {
    int m = 8;
    if (g != 0)
    {
      b.newUTF8("ConstantValue");
      m = 16;
    }
    int k = m;
    if ((c & 0x1000) != 0) {
      if ((b.b & 0xFFFF) >= 49)
      {
        k = m;
        if ((c & 0x40000) == 0) {}
      }
      else
      {
        b.newUTF8("Synthetic");
        k = m + 6;
      }
    }
    m = k;
    if ((c & 0x20000) != 0)
    {
      b.newUTF8("Deprecated");
      m = k + 6;
    }
    k = m;
    if (f != 0)
    {
      b.newUTF8("Signature");
      k = m + 8;
    }
    m = k;
    if (h != null)
    {
      b.newUTF8("RuntimeVisibleAnnotations");
      m = k + (h.a() + 8);
    }
    if (i != null) {
      b.newUTF8("RuntimeInvisibleAnnotations");
    }
    for (k = m + (i.a() + 8);; k = m)
    {
      m = k;
      if (j != null) {
        m = k + j.a(b, null, 0, -1, -1);
      }
      return m;
    }
  }
  
  void a(ByteVector paramByteVector)
  {
    paramByteVector.putShort(((0x60000 | (c & 0x40000) / 64) ^ 0xFFFFFFFF) & c).putShort(d).putShort(e);
    if (g != 0) {}
    for (int m = 1;; m = 0)
    {
      int k = m;
      if ((c & 0x1000) != 0) {
        if ((b.b & 0xFFFF) >= 49)
        {
          k = m;
          if ((c & 0x40000) == 0) {}
        }
        else
        {
          k = m + 1;
        }
      }
      m = k;
      if ((c & 0x20000) != 0) {
        m = k + 1;
      }
      k = m;
      if (f != 0) {
        k = m + 1;
      }
      m = k;
      if (h != null) {
        m = k + 1;
      }
      k = m;
      if (i != null) {
        k = m + 1;
      }
      m = k;
      if (j != null) {
        m = k + j.a();
      }
      paramByteVector.putShort(m);
      if (g != 0)
      {
        paramByteVector.putShort(b.newUTF8("ConstantValue"));
        paramByteVector.putInt(2).putShort(g);
      }
      if (((c & 0x1000) != 0) && (((b.b & 0xFFFF) < 49) || ((c & 0x40000) != 0))) {
        paramByteVector.putShort(b.newUTF8("Synthetic")).putInt(0);
      }
      if ((c & 0x20000) != 0) {
        paramByteVector.putShort(b.newUTF8("Deprecated")).putInt(0);
      }
      if (f != 0)
      {
        paramByteVector.putShort(b.newUTF8("Signature"));
        paramByteVector.putInt(2).putShort(f);
      }
      if (h != null)
      {
        paramByteVector.putShort(b.newUTF8("RuntimeVisibleAnnotations"));
        h.a(paramByteVector);
      }
      if (i != null)
      {
        paramByteVector.putShort(b.newUTF8("RuntimeInvisibleAnnotations"));
        i.a(paramByteVector);
      }
      if (j != null) {
        j.a(b, null, 0, -1, -1, paramByteVector);
      }
      return;
    }
  }
  
  public AnnotationVisitor visitAnnotation(String paramString, boolean paramBoolean)
  {
    ByteVector localByteVector = new ByteVector();
    localByteVector.putShort(b.newUTF8(paramString)).putShort(0);
    paramString = new AnnotationWriter(b, true, localByteVector, localByteVector, 2);
    if (paramBoolean)
    {
      g = h;
      h = paramString;
      return paramString;
    }
    g = i;
    i = paramString;
    return paramString;
  }
  
  public void visitAttribute(Attribute paramAttribute)
  {
    a = j;
    j = paramAttribute;
  }
  
  public void visitEnd() {}
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.FieldWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */