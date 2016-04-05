package org.codehaus.jackson.org.objectweb.asm;

public class Attribute
{
  Attribute a;
  byte[] b;
  public final String type;
  
  protected Attribute(String paramString)
  {
    type = paramString;
  }
  
  final int a()
  {
    int i = 0;
    for (Attribute localAttribute = this; localAttribute != null; localAttribute = a) {
      i += 1;
    }
    return i;
  }
  
  final int a(ClassWriter paramClassWriter, byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 0;
    Attribute localAttribute = this;
    while (localAttribute != null)
    {
      paramClassWriter.newUTF8(type);
      int j = writeb;
      localAttribute = a;
      i = j + 6 + i;
    }
    return i;
  }
  
  final void a(ClassWriter paramClassWriter, byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, ByteVector paramByteVector)
  {
    for (Attribute localAttribute = this; localAttribute != null; localAttribute = a)
    {
      ByteVector localByteVector = localAttribute.write(paramClassWriter, paramArrayOfByte, paramInt1, paramInt2, paramInt3);
      paramByteVector.putShort(paramClassWriter.newUTF8(type)).putInt(b);
      paramByteVector.putByteArray(a, 0, b);
    }
  }
  
  protected Label[] getLabels()
  {
    return null;
  }
  
  public boolean isCodeAttribute()
  {
    return false;
  }
  
  public boolean isUnknown()
  {
    return true;
  }
  
  protected Attribute read(ClassReader paramClassReader, int paramInt1, int paramInt2, char[] paramArrayOfChar, int paramInt3, Label[] paramArrayOfLabel)
  {
    paramArrayOfChar = new Attribute(type);
    b = new byte[paramInt2];
    System.arraycopy(b, paramInt1, b, 0, paramInt2);
    return paramArrayOfChar;
  }
  
  protected ByteVector write(ClassWriter paramClassWriter, byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    paramClassWriter = new ByteVector();
    a = b;
    b = b.length;
    return paramClassWriter;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.Attribute
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */