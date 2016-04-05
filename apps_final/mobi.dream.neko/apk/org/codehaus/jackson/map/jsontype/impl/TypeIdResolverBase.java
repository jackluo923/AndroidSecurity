package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public abstract class TypeIdResolverBase
  implements TypeIdResolver
{
  protected final JavaType _baseType;
  protected final TypeFactory _typeFactory;
  
  protected TypeIdResolverBase(JavaType paramJavaType, TypeFactory paramTypeFactory)
  {
    _baseType = paramJavaType;
    _typeFactory = paramTypeFactory;
  }
  
  public String idFromBaseType()
  {
    return idFromValueAndType(null, _baseType.getRawClass());
  }
  
  public void init(JavaType paramJavaType) {}
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.TypeIdResolverBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */