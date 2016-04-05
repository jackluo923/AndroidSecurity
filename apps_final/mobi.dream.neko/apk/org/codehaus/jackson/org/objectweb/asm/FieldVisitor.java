package org.codehaus.jackson.org.objectweb.asm;

public abstract interface FieldVisitor
{
  public abstract AnnotationVisitor visitAnnotation(String paramString, boolean paramBoolean);
  
  public abstract void visitAttribute(Attribute paramAttribute);
  
  public abstract void visitEnd();
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.FieldVisitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */