package org.codehaus.jackson.map.type;

import org.codehaus.jackson.type.JavaType;

public final class CollectionType
  extends CollectionLikeType
{
  private CollectionType(Class<?> paramClass, JavaType paramJavaType, Object paramObject1, Object paramObject2)
  {
    super(paramClass, paramJavaType, paramObject1, paramObject2);
  }
  
  public static CollectionType construct(Class<?> paramClass, JavaType paramJavaType)
  {
    return new CollectionType(paramClass, paramJavaType, null, null);
  }
  
  protected JavaType _narrow(Class<?> paramClass)
  {
    return new CollectionType(paramClass, _elementType, null, null);
  }
  
  public JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == _elementType.getRawClass()) {
      return this;
    }
    return new CollectionType(_class, _elementType.narrowBy(paramClass), _valueHandler, _typeHandler);
  }
  
  public String toString()
  {
    return "[collection type; class " + _class.getName() + ", contains " + _elementType + "]";
  }
  
  public JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == _elementType.getRawClass()) {
      return this;
    }
    return new CollectionType(_class, _elementType.widenBy(paramClass), _valueHandler, _typeHandler);
  }
  
  public CollectionType withContentTypeHandler(Object paramObject)
  {
    return new CollectionType(_class, _elementType.withTypeHandler(paramObject), _valueHandler, _typeHandler);
  }
  
  public CollectionType withContentValueHandler(Object paramObject)
  {
    return new CollectionType(_class, _elementType.withValueHandler(paramObject), _valueHandler, _typeHandler);
  }
  
  public CollectionType withTypeHandler(Object paramObject)
  {
    return new CollectionType(_class, _elementType, _valueHandler, paramObject);
  }
  
  public CollectionType withValueHandler(Object paramObject)
  {
    return new CollectionType(_class, _elementType, paramObject, _typeHandler);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.type.CollectionType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */