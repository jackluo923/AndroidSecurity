package org.codehaus.jackson.map.ser;

import java.lang.reflect.Modifier;
import java.util.HashMap;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.SerializerFactory;
import org.codehaus.jackson.map.SerializerFactory.Config;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.type.JavaType;

public class CustomSerializerFactory
  extends BeanSerializerFactory
{
  protected HashMap<ClassKey, JsonSerializer<?>> _directClassMappings = null;
  protected JsonSerializer<?> _enumSerializerOverride;
  protected HashMap<ClassKey, JsonSerializer<?>> _interfaceMappings = null;
  protected HashMap<ClassKey, JsonSerializer<?>> _transitiveClassMappings = null;
  
  public CustomSerializerFactory()
  {
    this(null);
  }
  
  public CustomSerializerFactory(SerializerFactory.Config paramConfig)
  {
    super(paramConfig);
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
  
  public <T> void addGenericMapping(Class<? extends T> paramClass, JsonSerializer<T> paramJsonSerializer)
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
    if (_transitiveClassMappings == null) {
      _transitiveClassMappings = new HashMap();
    }
    _transitiveClassMappings.put(localClassKey, paramJsonSerializer);
  }
  
  public <T> void addSpecificMapping(Class<? extends T> paramClass, JsonSerializer<T> paramJsonSerializer)
  {
    ClassKey localClassKey = new ClassKey(paramClass);
    if (paramClass.isInterface()) {
      throw new IllegalArgumentException("Can not add specific mapping for an interface (" + paramClass.getName() + ")");
    }
    if (Modifier.isAbstract(paramClass.getModifiers())) {
      throw new IllegalArgumentException("Can not add specific mapping for an abstract class (" + paramClass.getName() + ")");
    }
    if (_directClassMappings == null) {
      _directClassMappings = new HashMap();
    }
    _directClassMappings.put(localClassKey, paramJsonSerializer);
  }
  
  public JsonSerializer<Object> createSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty)
    throws JsonMappingException
  {
    JsonSerializer localJsonSerializer = findCustomSerializer(paramJavaType.getRawClass(), paramSerializationConfig);
    if (localJsonSerializer != null) {
      return localJsonSerializer;
    }
    return super.createSerializer(paramSerializationConfig, paramJavaType, paramBeanProperty);
  }
  
  protected JsonSerializer<?> findCustomSerializer(Class<?> paramClass, SerializationConfig paramSerializationConfig)
  {
    ClassKey localClassKey = new ClassKey(paramClass);
    if (_directClassMappings != null)
    {
      paramSerializationConfig = (JsonSerializer)_directClassMappings.get(localClassKey);
      if (paramSerializationConfig != null) {
        return paramSerializationConfig;
      }
    }
    if ((paramClass.isEnum()) && (_enumSerializerOverride != null)) {
      return _enumSerializerOverride;
    }
    if (_transitiveClassMappings != null) {
      for (paramSerializationConfig = paramClass; paramSerializationConfig != null; paramSerializationConfig = paramSerializationConfig.getSuperclass())
      {
        localClassKey.reset(paramSerializationConfig);
        JsonSerializer localJsonSerializer = (JsonSerializer)_transitiveClassMappings.get(localClassKey);
        if (localJsonSerializer != null) {
          return localJsonSerializer;
        }
      }
    }
    if (_interfaceMappings != null)
    {
      localClassKey.reset(paramClass);
      paramSerializationConfig = (JsonSerializer)_interfaceMappings.get(localClassKey);
      if (paramSerializationConfig != null) {
        return paramSerializationConfig;
      }
      while (paramClass != null)
      {
        paramSerializationConfig = _findInterfaceMapping(paramClass, localClassKey);
        if (paramSerializationConfig != null) {
          return paramSerializationConfig;
        }
        paramClass = paramClass.getSuperclass();
      }
    }
    return null;
  }
  
  public void setEnumSerializer(JsonSerializer<?> paramJsonSerializer)
  {
    _enumSerializerOverride = paramJsonSerializer;
  }
  
  public SerializerFactory withConfig(SerializerFactory.Config paramConfig)
  {
    if (getClass() != CustomSerializerFactory.class) {
      throw new IllegalStateException("Subtype of CustomSerializerFactory (" + getClass().getName() + ") has not properly overridden method 'withAdditionalSerializers': can not instantiate subtype with " + "additional serializer definitions");
    }
    return new CustomSerializerFactory(paramConfig);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.CustomSerializerFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */