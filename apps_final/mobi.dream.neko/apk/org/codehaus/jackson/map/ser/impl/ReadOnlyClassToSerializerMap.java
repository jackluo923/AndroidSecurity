package org.codehaus.jackson.map.ser.impl;

import java.util.HashMap;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.type.JavaType;

public final class ReadOnlyClassToSerializerMap
{
  protected final SerializerCache.TypeKey _cacheKey = new SerializerCache.TypeKey(getClass(), false);
  protected final JsonSerializerMap _map;
  
  private ReadOnlyClassToSerializerMap(JsonSerializerMap paramJsonSerializerMap)
  {
    _map = paramJsonSerializerMap;
  }
  
  public static ReadOnlyClassToSerializerMap from(HashMap<SerializerCache.TypeKey, JsonSerializer<Object>> paramHashMap)
  {
    return new ReadOnlyClassToSerializerMap(new JsonSerializerMap(paramHashMap));
  }
  
  public ReadOnlyClassToSerializerMap instance()
  {
    return new ReadOnlyClassToSerializerMap(_map);
  }
  
  public JsonSerializer<Object> typedValueSerializer(Class<?> paramClass)
  {
    _cacheKey.resetTyped(paramClass);
    return _map.find(_cacheKey);
  }
  
  public JsonSerializer<Object> typedValueSerializer(JavaType paramJavaType)
  {
    _cacheKey.resetTyped(paramJavaType);
    return _map.find(_cacheKey);
  }
  
  public JsonSerializer<Object> untypedValueSerializer(Class<?> paramClass)
  {
    _cacheKey.resetUntyped(paramClass);
    return _map.find(_cacheKey);
  }
  
  public JsonSerializer<Object> untypedValueSerializer(JavaType paramJavaType)
  {
    _cacheKey.resetUntyped(paramJavaType);
    return _map.find(_cacheKey);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.ReadOnlyClassToSerializerMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */