package org.codehaus.jackson.org.objectweb.asm.signature;

public class SignatureWriter
  implements SignatureVisitor
{
  private final StringBuffer a = new StringBuffer();
  private boolean b;
  private boolean c;
  private int d;
  
  private void a()
  {
    if (b)
    {
      b = false;
      a.append('>');
    }
  }
  
  private void b()
  {
    if (d % 2 != 0) {
      a.append('>');
    }
    d /= 2;
  }
  
  public String toString()
  {
    return a.toString();
  }
  
  public SignatureVisitor visitArrayType()
  {
    a.append('[');
    return this;
  }
  
  public void visitBaseType(char paramChar)
  {
    a.append(paramChar);
  }
  
  public SignatureVisitor visitClassBound()
  {
    return this;
  }
  
  public void visitClassType(String paramString)
  {
    a.append('L');
    a.append(paramString);
    d *= 2;
  }
  
  public void visitEnd()
  {
    b();
    a.append(';');
  }
  
  public SignatureVisitor visitExceptionType()
  {
    a.append('^');
    return this;
  }
  
  public void visitFormalTypeParameter(String paramString)
  {
    if (!b)
    {
      b = true;
      a.append('<');
    }
    a.append(paramString);
    a.append(':');
  }
  
  public void visitInnerClassType(String paramString)
  {
    b();
    a.append('.');
    a.append(paramString);
    d *= 2;
  }
  
  public SignatureVisitor visitInterface()
  {
    return this;
  }
  
  public SignatureVisitor visitInterfaceBound()
  {
    a.append(':');
    return this;
  }
  
  public SignatureVisitor visitParameterType()
  {
    a();
    if (!c)
    {
      c = true;
      a.append('(');
    }
    return this;
  }
  
  public SignatureVisitor visitReturnType()
  {
    a();
    if (!c) {
      a.append('(');
    }
    a.append(')');
    return this;
  }
  
  public SignatureVisitor visitSuperclass()
  {
    a();
    return this;
  }
  
  public SignatureVisitor visitTypeArgument(char paramChar)
  {
    if (d % 2 == 0)
    {
      d += 1;
      a.append('<');
    }
    if (paramChar != '=') {
      a.append(paramChar);
    }
    return this;
  }
  
  public void visitTypeArgument()
  {
    if (d % 2 == 0)
    {
      d += 1;
      a.append('<');
    }
    a.append('*');
  }
  
  public void visitTypeVariable(String paramString)
  {
    a.append('T');
    a.append(paramString);
    a.append(';');
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.signature.SignatureWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */