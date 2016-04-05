package org.codehaus.jackson.mrbean;

import org.codehaus.jackson.org.objectweb.asm.Type;
import org.codehaus.jackson.type.JavaType;

class BeanBuilder$TypeDescription
{
  private final Type _asmType;
  private JavaType _jacksonType;
  
  public BeanBuilder$TypeDescription(JavaType paramJavaType)
  {
    _jacksonType = paramJavaType;
    _asmType = Type.getType(paramJavaType.getRawClass());
  }
  
  public static TypeDescription moreSpecificType(TypeDescription paramTypeDescription1, TypeDescription paramTypeDescription2)
  {
    Class localClass1 = paramTypeDescription1.getRawClass();
    Class localClass2 = paramTypeDescription2.getRawClass();
    if (localClass1.isAssignableFrom(localClass2)) {
      return paramTypeDescription2;
    }
    if (localClass2.isAssignableFrom(localClass1)) {
      return paramTypeDescription1;
    }
    return null;
  }
  
  public String erasedSignature()
  {
    return _jacksonType.getErasedSignature();
  }
  
  public String genericSignature()
  {
    return _jacksonType.getGenericSignature();
  }
  
  public int getLoadOpcode()
  {
    return _asmType.getOpcode(21);
  }
  
  public Class<?> getRawClass()
  {
    return _jacksonType.getRawClass();
  }
  
  public int getReturnOpcode()
  {
    return _asmType.getOpcode(172);
  }
  
  public boolean hasGenerics()
  {
    return _jacksonType.hasGenericTypes();
  }
  
  public String toString()
  {
    return _jacksonType.toString();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.mrbean.BeanBuilder.TypeDescription
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */