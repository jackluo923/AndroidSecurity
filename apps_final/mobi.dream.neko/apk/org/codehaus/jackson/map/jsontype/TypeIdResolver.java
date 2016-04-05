package org.codehaus.jackson.map.jsontype;

import org.codehaus.jackson.annotate.JsonTypeInfo.Id;
import org.codehaus.jackson.type.JavaType;

public abstract interface TypeIdResolver
{
  public abstract JsonTypeInfo.Id getMechanism();
  
  public abstract String idFromValue(Object paramObject);
  
  public abstract String idFromValueAndType(Object paramObject, Class<?> paramClass);
  
  public abstract void init(JavaType paramJavaType);
  
  public abstract JavaType typeFromId(String paramString);
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.TypeIdResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */