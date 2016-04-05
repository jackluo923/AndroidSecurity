package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public abstract interface BeanPropertyFilter
{
  public abstract void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, BeanPropertyWriter paramBeanPropertyWriter)
    throws Exception;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.BeanPropertyFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */