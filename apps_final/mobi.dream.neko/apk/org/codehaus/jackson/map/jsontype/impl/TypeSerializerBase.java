package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

public abstract class TypeSerializerBase
  extends TypeSerializer
{
  protected final TypeIdResolver _idResolver;
  protected final BeanProperty _property;
  
  protected TypeSerializerBase(TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty)
  {
    _idResolver = paramTypeIdResolver;
    _property = paramBeanProperty;
  }
  
  public String getPropertyName()
  {
    return null;
  }
  
  public TypeIdResolver getTypeIdResolver()
  {
    return _idResolver;
  }
  
  public abstract JsonTypeInfo.As getTypeInclusion();
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.TypeSerializerBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */