package org.codehaus.jackson.map.type;

import java.lang.reflect.Type;
import org.codehaus.jackson.type.JavaType;

public abstract class TypeModifier
{
  public abstract JavaType modifyType(JavaType paramJavaType, Type paramType, TypeBindings paramTypeBindings, TypeFactory paramTypeFactory);
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.type.TypeModifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */