package org.codehaus.jackson.org.objectweb.asm;

public class ClassAdapter
  implements ClassVisitor
{
  protected ClassVisitor cv;
  
  public ClassAdapter(ClassVisitor paramClassVisitor)
  {
    cv = paramClassVisitor;
  }
  
  public void visit(int paramInt1, int paramInt2, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    cv.visit(paramInt1, paramInt2, paramString1, paramString2, paramString3, paramArrayOfString);
  }
  
  public AnnotationVisitor visitAnnotation(String paramString, boolean paramBoolean)
  {
    return cv.visitAnnotation(paramString, paramBoolean);
  }
  
  public void visitAttribute(Attribute paramAttribute)
  {
    cv.visitAttribute(paramAttribute);
  }
  
  public void visitEnd()
  {
    cv.visitEnd();
  }
  
  public FieldVisitor visitField(int paramInt, String paramString1, String paramString2, String paramString3, Object paramObject)
  {
    return cv.visitField(paramInt, paramString1, paramString2, paramString3, paramObject);
  }
  
  public void visitInnerClass(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    cv.visitInnerClass(paramString1, paramString2, paramString3, paramInt);
  }
  
  public MethodVisitor visitMethod(int paramInt, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    return cv.visitMethod(paramInt, paramString1, paramString2, paramString3, paramArrayOfString);
  }
  
  public void visitOuterClass(String paramString1, String paramString2, String paramString3)
  {
    cv.visitOuterClass(paramString1, paramString2, paramString3);
  }
  
  public void visitSource(String paramString1, String paramString2)
  {
    cv.visitSource(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.ClassAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */