package org.codehaus.jackson.map.module;

import java.util.HashMap;
import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.KeyDeserializers;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.type.JavaType;

public class SimpleKeyDeserializers
  implements KeyDeserializers
{
  protected HashMap<ClassKey, KeyDeserializer> _classMappings = null;
  
  public SimpleKeyDeserializers addDeserializer(Class<?> paramClass, KeyDeserializer paramKeyDeserializer)
  {
    if (_classMappings == null) {
      _classMappings = new HashMap();
    }
    _classMappings.put(new ClassKey(paramClass), paramKeyDeserializer);
    return this;
  }
  
  public KeyDeserializer findKeyDeserializer(JavaType paramJavaType, DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
  {
    if (_classMappings == null) {
      return null;
    }
    return (KeyDeserializer)_classMappings.get(new ClassKey(paramJavaType.getRawClass()));
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.module.SimpleKeyDeserializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */