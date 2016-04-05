package org.codehaus.jackson.org.objectweb.asm;

public abstract interface MethodVisitor
{
  public abstract AnnotationVisitor visitAnnotation(String paramString, boolean paramBoolean);
  
  public abstract AnnotationVisitor visitAnnotationDefault();
  
  public abstract void visitAttribute(Attribute paramAttribute);
  
  public abstract void visitCode();
  
  public abstract void visitEnd();
  
  public abstract void visitFieldInsn(int paramInt, String paramString1, String paramString2, String paramString3);
  
  public abstract void visitFrame(int paramInt1, int paramInt2, Object[] paramArrayOfObject1, int paramInt3, Object[] paramArrayOfObject2);
  
  public abstract void visitIincInsn(int paramInt1, int paramInt2);
  
  public abstract void visitInsn(int paramInt);
  
  public abstract void visitIntInsn(int paramInt1, int paramInt2);
  
  public abstract void visitJumpInsn(int paramInt, Label paramLabel);
  
  public abstract void visitLabel(Label paramLabel);
  
  public abstract void visitLdcInsn(Object paramObject);
  
  public abstract void visitLineNumber(int paramInt, Label paramLabel);
  
  public abstract void visitLocalVariable(String paramString1, String paramString2, String paramString3, Label paramLabel1, Label paramLabel2, int paramInt);
  
  public abstract void visitLookupSwitchInsn(Label paramLabel, int[] paramArrayOfInt, Label[] paramArrayOfLabel);
  
  public abstract void visitMaxs(int paramInt1, int paramInt2);
  
  public abstract void visitMethodInsn(int paramInt, String paramString1, String paramString2, String paramString3);
  
  public abstract void visitMultiANewArrayInsn(String paramString, int paramInt);
  
  public abstract AnnotationVisitor visitParameterAnnotation(int paramInt, String paramString, boolean paramBoolean);
  
  public abstract void visitTableSwitchInsn(int paramInt1, int paramInt2, Label paramLabel, Label[] paramArrayOfLabel);
  
  public abstract void visitTryCatchBlock(Label paramLabel1, Label paramLabel2, Label paramLabel3, String paramString);
  
  public abstract void visitTypeInsn(int paramInt, String paramString);
  
  public abstract void visitVarInsn(int paramInt1, int paramInt2);
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.org.objectweb.asm.MethodVisitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */