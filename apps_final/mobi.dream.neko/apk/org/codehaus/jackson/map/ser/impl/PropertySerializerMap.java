package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.type.JavaType;

public abstract class PropertySerializerMap
{
  public static PropertySerializerMap emptyMap()
  {
    return Empty.instance;
  }
  
  public final SerializerAndMapResult findAndAddSerializer(Class<?> paramClass, SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    paramSerializerProvider = paramSerializerProvider.findValueSerializer(paramClass, paramBeanProperty);
    return new SerializerAndMapResult(paramSerializerProvider, newWith(paramClass, paramSerializerProvider));
  }
  
  public final SerializerAndMapResult findAndAddSerializer(JavaType paramJavaType, SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    paramSerializerProvider = paramSerializerProvider.findValueSerializer(paramJavaType, paramBeanProperty);
    return new SerializerAndMapResult(paramSerializerProvider, newWith(paramJavaType.getRawClass(), paramSerializerProvider));
  }
  
  public abstract PropertySerializerMap newWith(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer);
  
  public abstract JsonSerializer<Object> serializerFor(Class<?> paramClass);
  
  private static final class Double
    extends PropertySerializerMap
  {
    private final JsonSerializer<Object> _serializer1;
    private final JsonSerializer<Object> _serializer2;
    private final Class<?> _type1;
    private final Class<?> _type2;
    
    public Double(Class<?> paramClass1, JsonSerializer<Object> paramJsonSerializer1, Class<?> paramClass2, JsonSerializer<Object> paramJsonSerializer2)
    {
      _type1 = paramClass1;
      _serializer1 = paramJsonSerializer1;
      _type2 = paramClass2;
      _serializer2 = paramJsonSerializer2;
    }
    
    public PropertySerializerMap newWith(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
    {
      return new PropertySerializerMap.Multi(new PropertySerializerMap.TypeAndSerializer[] { new PropertySerializerMap.TypeAndSerializer(_type1, _serializer1), new PropertySerializerMap.TypeAndSerializer(_type2, _serializer2) });
    }
    
    public JsonSerializer<Object> serializerFor(Class<?> paramClass)
    {
      if (paramClass == _type1) {
        return _serializer1;
      }
      if (paramClass == _type2) {
        return _serializer2;
      }
      return null;
    }
  }
  
  private static final class Empty
    extends PropertySerializerMap
  {
    protected static final Empty instance = new Empty();
    
    public PropertySerializerMap newWith(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
    {
      return new PropertySerializerMap.Single(paramClass, paramJsonSerializer);
    }
    
    public JsonSerializer<Object> serializerFor(Class<?> paramClass)
    {
      return null;
    }
  }
  
  private static final class Multi
    extends PropertySerializerMap
  {
    private static final int MAX_ENTRIES = 8;
    private final PropertySerializerMap.TypeAndSerializer[] _entries;
    
    public Multi(PropertySerializerMap.TypeAndSerializer[] paramArrayOfTypeAndSerializer)
    {
      _entries = paramArrayOfTypeAndSerializer;
    }
    
    public PropertySerializerMap newWith(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
    {
      int i = _entries.length;
      if (i == 8) {
        return this;
      }
      PropertySerializerMap.TypeAndSerializer[] arrayOfTypeAndSerializer = new PropertySerializerMap.TypeAndSerializer[i + 1];
      System.arraycopy(_entries, 0, arrayOfTypeAndSerializer, 0, i);
      arrayOfTypeAndSerializer[i] = new PropertySerializerMap.TypeAndSerializer(paramClass, paramJsonSerializer);
      return new Multi(arrayOfTypeAndSerializer);
    }
    
    public JsonSerializer<Object> serializerFor(Class<?> paramClass)
    {
      int i = 0;
      int j = _entries.length;
      while (i < j)
      {
        PropertySerializerMap.TypeAndSerializer localTypeAndSerializer = _entries[i];
        if (type == paramClass) {
          return serializer;
        }
        i += 1;
      }
      return null;
    }
  }
  
  public static final class SerializerAndMapResult
  {
    public final PropertySerializerMap map;
    public final JsonSerializer<Object> serializer;
    
    public SerializerAndMapResult(JsonSerializer<Object> paramJsonSerializer, PropertySerializerMap paramPropertySerializerMap)
    {
      serializer = paramJsonSerializer;
      map = paramPropertySerializerMap;
    }
  }
  
  private static final class Single
    extends PropertySerializerMap
  {
    private final JsonSerializer<Object> _serializer;
    private final Class<?> _type;
    
    public Single(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
    {
      _type = paramClass;
      _serializer = paramJsonSerializer;
    }
    
    public PropertySerializerMap newWith(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
    {
      return new PropertySerializerMap.Double(_type, _serializer, paramClass, paramJsonSerializer);
    }
    
    public JsonSerializer<Object> serializerFor(Class<?> paramClass)
    {
      if (paramClass == _type) {
        return _serializer;
      }
      return null;
    }
  }
  
  private static final class TypeAndSerializer
  {
    public final JsonSerializer<Object> serializer;
    public final Class<?> type;
    
    public TypeAndSerializer(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
    {
      type = paramClass;
      serializer = paramJsonSerializer;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.PropertySerializerMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */