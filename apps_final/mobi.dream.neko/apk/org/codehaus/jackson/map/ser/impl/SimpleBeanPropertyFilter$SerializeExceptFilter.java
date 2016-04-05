package org.codehaus.jackson.map.ser.impl;

import java.util.Set;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.BeanPropertyWriter;

public class SimpleBeanPropertyFilter$SerializeExceptFilter
  extends SimpleBeanPropertyFilter
{
  protected final Set<String> _propertiesToExclude;
  
  public SimpleBeanPropertyFilter$SerializeExceptFilter(Set<String> paramSet)
  {
    _propertiesToExclude = paramSet;
  }
  
  public void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, BeanPropertyWriter paramBeanPropertyWriter)
    throws Exception
  {
    if (!_propertiesToExclude.contains(paramBeanPropertyWriter.getName())) {
      paramBeanPropertyWriter.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.SimpleBeanPropertyFilter.SerializeExceptFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */