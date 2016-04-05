package org.codehaus.jackson.map.type;

import org.codehaus.jackson.type.JavaType;

public final class MapType
  extends MapLikeType
{
  @Deprecated
  private MapType(Class<?> paramClass, JavaType paramJavaType1, JavaType paramJavaType2)
  {
    this(paramClass, paramJavaType1, paramJavaType2, null, null);
  }
  
  private MapType(Class<?> paramClass, JavaType paramJavaType1, JavaType paramJavaType2, Object paramObject1, Object paramObject2)
  {
    super(paramClass, paramJavaType1, paramJavaType2, paramObject1, paramObject2);
  }
  
  public static MapType construct(Class<?> paramClass, JavaType paramJavaType1, JavaType paramJavaType2)
  {
    return new MapType(paramClass, paramJavaType1, paramJavaType2, null, null);
  }
  
  protected JavaType _narrow(Class<?> paramClass)
  {
    return new MapType(paramClass, _keyType, _valueType, _valueHandler, _typeHandler);
  }
  
  public JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == _valueType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType, _valueType.narrowBy(paramClass), _valueHandler, _typeHandler);
  }
  
  public JavaType narrowKey(Class<?> paramClass)
  {
    if (paramClass == _keyType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType.narrowBy(paramClass), _valueType, _valueHandler, _typeHandler);
  }
  
  public String toString()
  {
    return "[map type; class " + _class.getName() + ", " + _keyType + " -> " + _valueType + "]";
  }
  
  public JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == _valueType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType, _valueType.widenBy(paramClass), _valueHandler, _typeHandler);
  }
  
  public JavaType widenKey(Class<?> paramClass)
  {
    if (paramClass == _keyType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType.widenBy(paramClass), _valueType, _valueHandler, _typeHandler);
  }
  
  public MapType withContentTypeHandler(Object paramObject)
  {
    return new MapType(_class, _keyType, _valueType.withTypeHandler(paramObject), _valueHandler, _typeHandler);
  }
  
  public MapType withContentValueHandler(Object paramObject)
  {
    return new MapType(_class, _keyType, _valueType.withValueHandler(paramObject), _valueHandler, _typeHandler);
  }
  
  public MapType withKeyTypeHandler(Object paramObject)
  {
    return new MapType(_class, _keyType.withTypeHandler(paramObject), _valueType, _valueHandler, _typeHandler);
  }
  
  public MapType withKeyValueHandler(Object paramObject)
  {
    return new MapType(_class, _keyType.withValueHandler(paramObject), _valueType, _valueHandler, _typeHandler);
  }
  
  public MapType withTypeHandler(Object paramObject)
  {
    return new MapType(_class, _keyType, _valueType, _valueHandler, paramObject);
  }
  
  public MapType withValueHandler(Object paramObject)
  {
    return new MapType(_class, _keyType, _valueType, paramObject, _typeHandler);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.type.MapType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */