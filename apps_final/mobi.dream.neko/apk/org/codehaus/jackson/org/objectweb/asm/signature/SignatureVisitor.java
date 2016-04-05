package org.codehaus.jackson.org.objectweb.asm.signature;

public abstract interface SignatureVisitor
{
  public static final char EXTENDS = '+';
  public static final char INSTANCEOF = '=';
  public static final char SUPER = '-';
  
  public abstract SignatureVisitor visitArrayType();
  
  public abstract void visitBaseType(char paramChar);
  
  public abstract SignatureVisitor visitClassBound();
  
  public abstract void visitClassType(String paramString);
  
  public abstract void visitEnd();
  
  public abstract SignatureVisitor visitExceptionType();
  
  public abstract void visitFormalTypeParameter(String paramString);
  
  public abstract void visitInnerClassType(String paramString);
  
  public abstract SignatureVisitor visitInterface();
  
  public abstract SignatureVisitor visitInterfaceBound();
  
  public abstract SignatureVisitor visitParameterType();
  
  public abstract SignatureVisitor visitReturnType();
  
  public abstract SignatureVisitor visitSuperclass();
  
  public abstract SignatureVisitor visitTypeArgument(char paramChar);
  
  public abstract void visitTypeArgument();
  
  public abstract void visitTypeVariable(String paramString);
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.signature.SignatureVisitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */