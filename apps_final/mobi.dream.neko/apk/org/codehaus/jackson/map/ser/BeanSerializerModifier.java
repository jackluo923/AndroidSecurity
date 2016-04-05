package org.codehaus.jackson.map.ser;

import java.util.List;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;

public abstract class BeanSerializerModifier
{
  public List<BeanPropertyWriter> changeProperties(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, List<BeanPropertyWriter> paramList)
  {
    return paramList;
  }
  
  public JsonSerializer<?> modifySerializer(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, JsonSerializer<?> paramJsonSerializer)
  {
    return paramJsonSerializer;
  }
  
  public List<BeanPropertyWriter> orderProperties(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, List<BeanPropertyWriter> paramList)
  {
    return paramList;
  }
  
  public BeanSerializerBuilder updateBuilder(SerializationConfig paramSerializationConfig, BasicBeanDescription paramBasicBeanDescription, BeanSerializerBuilder paramBeanSerializerBuilder)
  {
    return paramBeanSerializerBuilder;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.BeanSerializerModifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */