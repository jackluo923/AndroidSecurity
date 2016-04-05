package org.codehaus.jackson.org.objectweb.asm;

public class ClassWriter
  implements ClassVisitor
{
  public static final int COMPUTE_FRAMES = 2;
  public static final int COMPUTE_MAXS = 1;
  static final byte[] a;
  MethodWriter A;
  MethodWriter B;
  private short D;
  Item[] E;
  String F;
  private final boolean G;
  private final boolean H;
  boolean I;
  ClassReader J;
  int b;
  int c = 1;
  final ByteVector d = new ByteVector();
  Item[] e = new Item['Ā'];
  int f = (int)(0.75D * e.length);
  final Item g = new Item();
  final Item h = new Item();
  final Item i = new Item();
  private int j;
  private int k;
  private int l;
  private int m;
  private int n;
  private int[] o;
  private int p;
  private ByteVector q;
  private int r;
  private int s;
  private AnnotationWriter t;
  private AnnotationWriter u;
  private Attribute v;
  private int w;
  private ByteVector x;
  FieldWriter y;
  FieldWriter z;
  
  static
  {
    byte[] arrayOfByte = new byte['Ü'];
    int i1 = 0;
    while (i1 < arrayOfByte.length)
    {
      arrayOfByte[i1] = ((byte)("AAAAAAAAAAAAAAAABCKLLDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAIIIIIIIIIIIIIIIIDNOAAAAAAGGGGGGGHHFBFAAFFAAQPIIJJIIIIIIIIIIIIIIIIII".charAt(i1) - 'A'));
      i1 += 1;
    }
    a = arrayOfByte;
  }
  
  public ClassWriter(int paramInt)
  {
    if ((paramInt & 0x1) != 0)
    {
      bool1 = true;
      H = bool1;
      if ((paramInt & 0x2) == 0) {
        break label112;
      }
    }
    label112:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      G = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public ClassWriter(ClassReader paramClassReader, int paramInt)
  {
    this(paramInt);
    paramClassReader.a(this);
    J = paramClassReader;
  }
  
  private Item a(Item paramItem)
  {
    for (Item localItem = e[(j % e.length)]; (localItem != null) && ((b != b) || (!paramItem.a(localItem))); localItem = k) {}
    return localItem;
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3)
  {
    d.b(paramInt1, paramInt2).putShort(paramInt3);
  }
  
  private Item b(String paramString)
  {
    h.a(8, paramString, null, null);
    Item localItem2 = a(h);
    Item localItem1 = localItem2;
    if (localItem2 == null)
    {
      d.b(8, newUTF8(paramString));
      int i1 = c;
      c = (i1 + 1);
      localItem1 = new Item(i1, h);
      b(localItem1);
    }
    return localItem1;
  }
  
  private void b(Item paramItem)
  {
    if (c > f)
    {
      i1 = e.length;
      int i2 = i1 * 2 + 1;
      Item[] arrayOfItem = new Item[i2];
      i1 -= 1;
      while (i1 >= 0)
      {
        Item localItem;
        for (Object localObject = e[i1]; localObject != null; localObject = localItem)
        {
          int i3 = j % arrayOfItem.length;
          localItem = k;
          k = arrayOfItem[i3];
          arrayOfItem[i3] = localObject;
        }
        i1 -= 1;
      }
      e = arrayOfItem;
      f = ((int)(i2 * 0.75D));
    }
    int i1 = j % e.length;
    k = e[i1];
    e[i1] = paramItem;
  }
  
  private Item c(Item paramItem)
  {
    D = ((short)(D + 1));
    paramItem = new Item(D, g);
    b(paramItem);
    if (E == null) {
      E = new Item[16];
    }
    if (D == E.length)
    {
      Item[] arrayOfItem = new Item[E.length * 2];
      System.arraycopy(E, 0, arrayOfItem, 0, E.length);
      E = arrayOfItem;
    }
    E[D] = paramItem;
    return paramItem;
  }
  
  int a(int paramInt1, int paramInt2)
  {
    h.b = 15;
    h.d = (paramInt1 | paramInt2 << 32);
    h.j = (0x7FFFFFFF & paramInt1 + 15 + paramInt2);
    Object localObject2 = a(h);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = E[paramInt1].g;
      localObject2 = E[paramInt2].g;
      h.c = c(getCommonSuperClass((String)localObject1, (String)localObject2));
      localObject1 = new Item(0, h);
      b((Item)localObject1);
    }
    return c;
  }
  
  int a(String paramString, int paramInt)
  {
    g.b = 14;
    g.c = paramInt;
    g.g = paramString;
    g.j = (0x7FFFFFFF & paramString.hashCode() + 14 + paramInt);
    Item localItem = a(g);
    paramString = localItem;
    if (localItem == null) {
      paramString = c(g);
    }
    return a;
  }
  
  Item a(double paramDouble)
  {
    g.a(paramDouble);
    Item localItem2 = a(g);
    Item localItem1 = localItem2;
    if (localItem2 == null)
    {
      d.putByte(6).putLong(g.d);
      localItem1 = new Item(c, g);
      b(localItem1);
      c += 2;
    }
    return localItem1;
  }
  
  Item a(float paramFloat)
  {
    g.a(paramFloat);
    Item localItem2 = a(g);
    Item localItem1 = localItem2;
    if (localItem2 == null)
    {
      d.putByte(4).putInt(g.c);
      int i1 = c;
      c = (i1 + 1);
      localItem1 = new Item(i1, g);
      b(localItem1);
    }
    return localItem1;
  }
  
  Item a(int paramInt)
  {
    g.a(paramInt);
    Item localItem2 = a(g);
    Item localItem1 = localItem2;
    if (localItem2 == null)
    {
      d.putByte(3).putInt(paramInt);
      paramInt = c;
      c = (paramInt + 1);
      localItem1 = new Item(paramInt, g);
      b(localItem1);
    }
    return localItem1;
  }
  
  Item a(long paramLong)
  {
    g.a(paramLong);
    Item localItem2 = a(g);
    Item localItem1 = localItem2;
    if (localItem2 == null)
    {
      d.putByte(5).putLong(paramLong);
      localItem1 = new Item(c, g);
      b(localItem1);
      c += 2;
    }
    return localItem1;
  }
  
  Item a(Object paramObject)
  {
    if ((paramObject instanceof Integer)) {
      return a(((Integer)paramObject).intValue());
    }
    if ((paramObject instanceof Byte)) {
      return a(((Byte)paramObject).intValue());
    }
    if ((paramObject instanceof Character)) {
      return a(((Character)paramObject).charValue());
    }
    if ((paramObject instanceof Short)) {
      return a(((Short)paramObject).intValue());
    }
    if ((paramObject instanceof Boolean))
    {
      if (((Boolean)paramObject).booleanValue()) {}
      for (int i1 = 1;; i1 = 0) {
        return a(i1);
      }
    }
    if ((paramObject instanceof Float)) {
      return a(((Float)paramObject).floatValue());
    }
    if ((paramObject instanceof Long)) {
      return a(((Long)paramObject).longValue());
    }
    if ((paramObject instanceof Double)) {
      return a(((Double)paramObject).doubleValue());
    }
    if ((paramObject instanceof String)) {
      return b((String)paramObject);
    }
    if ((paramObject instanceof Type))
    {
      paramObject = (Type)paramObject;
      if (((Type)paramObject).getSort() == 10) {}
      for (paramObject = ((Type)paramObject).getInternalName();; paramObject = ((Type)paramObject).getDescriptor()) {
        return a((String)paramObject);
      }
    }
    throw new IllegalArgumentException("value " + paramObject);
  }
  
  Item a(String paramString)
  {
    h.a(7, paramString, null, null);
    Item localItem2 = a(h);
    Item localItem1 = localItem2;
    if (localItem2 == null)
    {
      d.b(7, newUTF8(paramString));
      int i1 = c;
      c = (i1 + 1);
      localItem1 = new Item(i1, h);
      b(localItem1);
    }
    return localItem1;
  }
  
  Item a(String paramString1, String paramString2)
  {
    h.a(12, paramString1, paramString2, null);
    Item localItem2 = a(h);
    Item localItem1 = localItem2;
    if (localItem2 == null)
    {
      a(12, newUTF8(paramString1), newUTF8(paramString2));
      int i1 = c;
      c = (i1 + 1);
      localItem1 = new Item(i1, h);
      b(localItem1);
    }
    return localItem1;
  }
  
  Item a(String paramString1, String paramString2, String paramString3)
  {
    i.a(9, paramString1, paramString2, paramString3);
    Item localItem2 = a(i);
    Item localItem1 = localItem2;
    if (localItem2 == null)
    {
      a(9, newClass(paramString1), newNameType(paramString2, paramString3));
      int i1 = c;
      c = (i1 + 1);
      localItem1 = new Item(i1, i);
      b(localItem1);
    }
    return localItem1;
  }
  
  Item a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    if (paramBoolean) {}
    Item localItem;
    for (int i1 = 11;; i1 = 10)
    {
      i.a(i1, paramString1, paramString2, paramString3);
      localItem = a(i);
      if (localItem != null) {
        break;
      }
      a(i1, newClass(paramString1), newNameType(paramString2, paramString3));
      i1 = c;
      c = (i1 + 1);
      paramString1 = new Item(i1, i);
      b(paramString1);
      return paramString1;
    }
    return localItem;
  }
  
  int c(String paramString)
  {
    g.a(13, paramString, null, null);
    Item localItem = a(g);
    paramString = localItem;
    if (localItem == null) {
      paramString = c(g);
    }
    return a;
  }
  
  protected String getCommonSuperClass(String paramString1, String paramString2)
  {
    Class localClass1;
    Class localClass2;
    try
    {
      localClass1 = Class.forName(paramString1.replace('/', '.'));
      localClass2 = Class.forName(paramString2.replace('/', '.'));
      if (localClass1.isAssignableFrom(localClass2)) {
        return paramString1;
      }
    }
    catch (Exception paramString1)
    {
      throw new RuntimeException(paramString1.toString());
    }
    if (localClass2.isAssignableFrom(localClass1)) {
      return paramString2;
    }
    if (!localClass1.isInterface())
    {
      paramString1 = localClass1;
      if (!localClass2.isInterface()) {}
    }
    else
    {
      return "java/lang/Object";
    }
    do
    {
      paramString2 = paramString1.getSuperclass();
      paramString1 = paramString2;
    } while (!paramString2.isAssignableFrom(localClass2));
    return paramString2.getName().replace('.', '/');
  }
  
  public int newClass(String paramString)
  {
    return aa;
  }
  
  public int newConst(Object paramObject)
  {
    return aa;
  }
  
  public int newField(String paramString1, String paramString2, String paramString3)
  {
    return aa;
  }
  
  public int newMethod(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    return aa;
  }
  
  public int newNameType(String paramString1, String paramString2)
  {
    return aa;
  }
  
  public int newUTF8(String paramString)
  {
    g.a(1, paramString, null, null);
    Item localItem2 = a(g);
    Item localItem1 = localItem2;
    if (localItem2 == null)
    {
      d.putByte(1).putUTF8(paramString);
      int i1 = c;
      c = (i1 + 1);
      localItem1 = new Item(i1, g);
      b(localItem1);
    }
    return a;
  }
  
  public byte[] toByteArray()
  {
    int i2 = n * 2 + 24;
    Object localObject = y;
    int i6 = 0;
    while (localObject != null)
    {
      i2 += ((FieldWriter)localObject).a();
      localObject = a;
      i6 += 1;
    }
    localObject = A;
    int i7 = 0;
    while (localObject != null)
    {
      i2 += ((MethodWriter)localObject).a();
      localObject = a;
      i7 += 1;
    }
    int i4;
    if (l != 0)
    {
      i4 = 1;
      i2 += 8;
      newUTF8("Signature");
    }
    for (;;)
    {
      int i3 = i4;
      int i1 = i2;
      if (p != 0)
      {
        i3 = i4 + 1;
        i1 = i2 + 8;
        newUTF8("SourceFile");
      }
      i4 = i3;
      i2 = i1;
      if (q != null)
      {
        i4 = i3 + 1;
        i2 = i1 + (q.b + 4);
        newUTF8("SourceDebugExtension");
      }
      i3 = i4;
      i1 = i2;
      if (r != 0)
      {
        i3 = i4 + 1;
        i1 = i2 + 10;
        newUTF8("EnclosingMethod");
      }
      i4 = i3;
      i2 = i1;
      if ((j & 0x20000) != 0)
      {
        i4 = i3 + 1;
        i2 = i1 + 6;
        newUTF8("Deprecated");
      }
      i3 = i4;
      i1 = i2;
      if ((j & 0x1000) != 0) {
        if ((b & 0xFFFF) >= 49)
        {
          i3 = i4;
          i1 = i2;
          if ((j & 0x40000) == 0) {}
        }
        else
        {
          i3 = i4 + 1;
          i1 = i2 + 6;
          newUTF8("Synthetic");
        }
      }
      i4 = i3;
      i2 = i1;
      if (x != null)
      {
        i4 = i3 + 1;
        i2 = i1 + (x.b + 8);
        newUTF8("InnerClasses");
      }
      int i5 = i4;
      i3 = i2;
      if (t != null)
      {
        i5 = i4 + 1;
        i3 = i2 + (t.a() + 8);
        newUTF8("RuntimeVisibleAnnotations");
      }
      i1 = i5;
      i2 = i3;
      if (u != null)
      {
        i1 = i5 + 1;
        i2 = i3 + (u.a() + 8);
        newUTF8("RuntimeInvisibleAnnotations");
      }
      i3 = i2;
      i2 = i1;
      i4 = i3;
      if (v != null)
      {
        i2 = v.a();
        i4 = i3 + v.a(this, null, 0, -1, -1);
        i2 = i1 + i2;
      }
      ByteVector localByteVector = new ByteVector(d.b + i4);
      localByteVector.putInt(-889275714).putInt(b);
      localByteVector.putShort(c).putByteArray(d.a, 0, d.b);
      localByteVector.putShort(((0x60000 | (j & 0x40000) / 64) ^ 0xFFFFFFFF) & j).putShort(k).putShort(m);
      localByteVector.putShort(n);
      i1 = 0;
      while (i1 < n)
      {
        localByteVector.putShort(o[i1]);
        i1 += 1;
      }
      localByteVector.putShort(i6);
      for (localObject = y; localObject != null; localObject = a) {
        ((FieldWriter)localObject).a(localByteVector);
      }
      localByteVector.putShort(i7);
      for (localObject = A; localObject != null; localObject = a) {
        ((MethodWriter)localObject).a(localByteVector);
      }
      localByteVector.putShort(i2);
      if (l != 0) {
        localByteVector.putShort(newUTF8("Signature")).putInt(2).putShort(l);
      }
      if (p != 0) {
        localByteVector.putShort(newUTF8("SourceFile")).putInt(2).putShort(p);
      }
      if (q != null)
      {
        i1 = q.b - 2;
        localByteVector.putShort(newUTF8("SourceDebugExtension")).putInt(i1);
        localByteVector.putByteArray(q.a, 2, i1);
      }
      if (r != 0)
      {
        localByteVector.putShort(newUTF8("EnclosingMethod")).putInt(4);
        localByteVector.putShort(r).putShort(s);
      }
      if ((j & 0x20000) != 0) {
        localByteVector.putShort(newUTF8("Deprecated")).putInt(0);
      }
      if (((j & 0x1000) != 0) && (((b & 0xFFFF) < 49) || ((j & 0x40000) != 0))) {
        localByteVector.putShort(newUTF8("Synthetic")).putInt(0);
      }
      if (x != null)
      {
        localByteVector.putShort(newUTF8("InnerClasses"));
        localByteVector.putInt(x.b + 2).putShort(w);
        localByteVector.putByteArray(x.a, 0, x.b);
      }
      if (t != null)
      {
        localByteVector.putShort(newUTF8("RuntimeVisibleAnnotations"));
        t.a(localByteVector);
      }
      if (u != null)
      {
        localByteVector.putShort(newUTF8("RuntimeInvisibleAnnotations"));
        u.a(localByteVector);
      }
      if (v != null) {
        v.a(this, null, 0, -1, -1, localByteVector);
      }
      if (I)
      {
        localObject = new ClassWriter(2);
        new ClassReader(a).accept((ClassVisitor)localObject, 4);
        return ((ClassWriter)localObject).toByteArray();
      }
      return a;
      i4 = 0;
    }
  }
  
  public void visit(int paramInt1, int paramInt2, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    int i1 = 0;
    b = paramInt1;
    j = paramInt2;
    k = newClass(paramString1);
    F = paramString1;
    if (paramString2 != null) {
      l = newUTF8(paramString2);
    }
    if (paramString3 == null) {}
    for (paramInt1 = 0;; paramInt1 = newClass(paramString3))
    {
      m = paramInt1;
      if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0)) {
        break;
      }
      n = paramArrayOfString.length;
      o = new int[n];
      paramInt1 = i1;
      while (paramInt1 < n)
      {
        o[paramInt1] = newClass(paramArrayOfString[paramInt1]);
        paramInt1 += 1;
      }
    }
  }
  
  public AnnotationVisitor visitAnnotation(String paramString, boolean paramBoolean)
  {
    ByteVector localByteVector = new ByteVector();
    localByteVector.putShort(newUTF8(paramString)).putShort(0);
    paramString = new AnnotationWriter(this, true, localByteVector, localByteVector, 2);
    if (paramBoolean)
    {
      g = t;
      t = paramString;
      return paramString;
    }
    g = u;
    u = paramString;
    return paramString;
  }
  
  public void visitAttribute(Attribute paramAttribute)
  {
    a = v;
    v = paramAttribute;
  }
  
  public void visitEnd() {}
  
  public FieldVisitor visitField(int paramInt, String paramString1, String paramString2, String paramString3, Object paramObject)
  {
    return new FieldWriter(this, paramInt, paramString1, paramString2, paramString3, paramObject);
  }
  
  public void visitInnerClass(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    int i2 = 0;
    if (x == null) {
      x = new ByteVector();
    }
    w += 1;
    ByteVector localByteVector = x;
    if (paramString1 == null)
    {
      i1 = 0;
      localByteVector.putShort(i1);
      paramString1 = x;
      if (paramString2 != null) {
        break label112;
      }
      i1 = 0;
      label64:
      paramString1.putShort(i1);
      paramString1 = x;
      if (paramString3 != null) {
        break label122;
      }
    }
    label112:
    label122:
    for (int i1 = i2;; i1 = newUTF8(paramString3))
    {
      paramString1.putShort(i1);
      x.putShort(paramInt);
      return;
      i1 = newClass(paramString1);
      break;
      i1 = newClass(paramString2);
      break label64;
    }
  }
  
  public MethodVisitor visitMethod(int paramInt, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    return new MethodWriter(this, paramInt, paramString1, paramString2, paramString3, paramArrayOfString, H, G);
  }
  
  public void visitOuterClass(String paramString1, String paramString2, String paramString3)
  {
    r = newClass(paramString1);
    if ((paramString2 != null) && (paramString3 != null)) {
      s = newNameType(paramString2, paramString3);
    }
  }
  
  public void visitSource(String paramString1, String paramString2)
  {
    if (paramString1 != null) {
      p = newUTF8(paramString1);
    }
    if (paramString2 != null) {
      q = new ByteVector().putUTF8(paramString2);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.ClassWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */