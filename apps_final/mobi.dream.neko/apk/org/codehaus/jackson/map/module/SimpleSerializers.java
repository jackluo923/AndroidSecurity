package org.codehaus.jackson.map.module;

import java.util.HashMap;
import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.Serializers.Base;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.type.ArrayType;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.map.type.CollectionLikeType;
import org.codehaus.jackson.map.type.CollectionType;
import org.codehaus.jackson.map.type.MapLikeType;
import org.codehaus.jackson.map.type.MapType;
import org.codehaus.jackson.type.JavaType;

public class SimpleSerializers
  extends Serializers.Base
{
  protected HashMap<ClassKey, JsonSerializer<?>> _classMappings = null;
  protected HashMap<ClassKey, JsonSerializer<?>> _interfaceMappings = null;
  
  private void _addSerializer(Class<?> paramClass, JsonSerializer<?> paramJsonSerializer)
  {
    ClassKey localClassKey = new ClassKey(paramClass);
    if (paramClass.isInterface())
    {
      if (_interfaceMappings == null) {
        _interfaceMappings = new HashMap();
      }
      _interfaceMappings.put(localClassKey, paramJsonSerializer);
      return;
    }
    if (_classMappings == null) {
      _classMappings = new HashMap();
    }
    _classMappings.put(localClassKey, paramJsonSerializer);
  }
  
  protected JsonSerializer<?> _findInterfaceMapping(Class<?> paramClass, ClassKey paramClassKey)
  {
    Class[] arrayOfClass = paramClass.getInterfaces();
    int j = arrayOfClass.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfClass[i];
      paramClassKey.reset((Class)localObject);
      paramClass = (JsonSerializer)_interfaceMappings.get(paramClassKey);
      if (paramClass != null) {}
      do
      {
        return paramClass;
        localObject = _findInterfaceMapping((Class)localObject, paramClassKey);
        paramClass = (Class<?>)localObject;
      } while (localObject != null);
      i += 1;
    }
    return null;
  }
  
  public <T> void addSerializer(Class<? extends T> paramClass, JsonSerializer<T> paramJsonSerializer)
  {
    _addSerializer(paramClass, paramJsonSerializer);
  }
  
  public void addSerializer(JsonSerializer<?> paramJsonSerializer)
  {
    Class localClass = paramJsonSerializer.handledType();
    if ((localClass == null) || (localClass == Object.class)) {
      throw new IllegalArgumentException("JsonSerializer of type " + paramJsonSerializer.getClass().getName() + " does not define valid handledType() -- must either register with method that takes type argument " + " or make serializer extend 'org.codehaus.jackson.map.ser.std.SerializerBase'");
    }
    _addSerializer(localClass, paramJsonSerializer);
  }
  
  public JsonSerializer<?> findArraySerializer(SerializationConfig paramSerializationConfig, ArrayType paramArrayType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    return findSerializer(paramSerializationConfig, paramArrayType, paramBeanDescription, paramBeanProperty);
  }
  
  public JsonSerializer<?> findCollectionLikeSerializer(SerializationConfig paramSerializationConfig, CollectionLikeType paramCollectionLikeType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    return findSerializer(paramSerializationConfig, paramCollectionLikeType, paramBeanDescription, paramBeanProperty);
  }
  
  public JsonSerializer<?> findCollectionSerializer(SerializationConfig paramSerializationConfig, CollectionType paramCollectionType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    return findSerializer(paramSerializationConfig, paramCollectionType, paramBeanDescription, paramBeanProperty);
  }
  
  public JsonSerializer<?> findMapLikeSerializer(SerializationConfig paramSerializationConfig, MapLikeType paramMapLikeType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer1, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer2)
  {
    return findSerializer(paramSerializationConfig, paramMapLikeType, paramBeanDescription, paramBeanProperty);
  }
  
  public JsonSerializer<?> findMapSerializer(SerializationConfig paramSerializationConfig, MapType paramMapType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer1, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer2)
  {
    return findSerializer(paramSerializationConfig, paramMapType, paramBeanDescription, paramBeanProperty);
  }
  
  public JsonSerializer<?> findSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
  {
    paramSerializationConfig = paramJavaType.getRawClass();
    paramBeanDescription = new ClassKey(paramSerializationConfig);
    if (paramSerializationConfig.isInterface())
    {
      if (_interfaceMappings != null)
      {
        paramJavaType = (JsonSerializer)_interfaceMappings.get(paramBeanDescription);
        if (paramJavaType != null) {
          return paramJavaType;
        }
      }
    }
    else if (_classMappings != null)
    {
      paramJavaType = (JsonSerializer)_classMappings.get(paramBeanDescription);
      if (paramJavaType != null) {
        return paramJavaType;
      }
      for (paramJavaType = paramSerializationConfig; paramJavaType != null; paramJavaType = paramJavaType.getSuperclass())
      {
        paramBeanDescription.reset(paramJavaType);
        paramBeanProperty = (JsonSerializer)_classMappings.get(paramBeanDescription);
        if (paramBeanProperty != null) {
          return paramBeanProperty;
        }
      }
    }
    if (_interfaceMappings != null)
    {
      paramJavaType = _findInterfaceMapping(paramSerializationConfig, paramBeanDescription);
      if (paramJavaType != null) {
        return paramJavaType;
      }
      if (!paramSerializationConfig.isInterface())
      {
        do
        {
          paramSerializationConfig = paramSerializationConfig.getSuperclass();
          if (paramSerializationConfig == null) {
            break;
          }
          paramJavaType = _findInterfaceMapping(paramSerializationConfig, paramBeanDescription);
        } while (paramJavaType == null);
        return paramJavaType;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.module.SimpleSerializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */