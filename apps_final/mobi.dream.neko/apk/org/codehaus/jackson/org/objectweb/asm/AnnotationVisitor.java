package org.codehaus.jackson.org.objectweb.asm;

public abstract interface AnnotationVisitor
{
  public abstract void visit(String paramString, Object paramObject);
  
  public abstract AnnotationVisitor visitAnnotation(String paramString1, String paramString2);
  
  public abstract AnnotationVisitor visitArray(String paramString);
  
  public abstract void visitEnd();
  
  public abstract void visitEnum(String paramString1, String paramString2, String paramString3);
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.AnnotationVisitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */