package org.codehaus.jackson.map;

import org.codehaus.jackson.type.JavaType;

public abstract interface KeyDeserializers
{
  public abstract KeyDeserializer findKeyDeserializer(JavaType paramJavaType, DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, BeanProperty paramBeanProperty)
    throws JsonMappingException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.KeyDeserializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */