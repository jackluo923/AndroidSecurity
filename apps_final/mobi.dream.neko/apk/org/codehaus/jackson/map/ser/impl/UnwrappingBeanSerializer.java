package org.codehaus.jackson.map.ser.impl;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.std.BeanSerializerBase;

public class UnwrappingBeanSerializer
  extends BeanSerializerBase
{
  public UnwrappingBeanSerializer(BeanSerializerBase paramBeanSerializerBase)
  {
    super(paramBeanSerializerBase);
  }
  
  public boolean isUnwrappingSerializer()
  {
    return true;
  }
  
  public final void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    if (_propertyFilterId != null)
    {
      serializeFieldsFiltered(paramObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    serializeFields(paramObject, paramJsonGenerator, paramSerializerProvider);
  }
  
  public String toString()
  {
    return "UnwrappingBeanSerializer for " + handledType().getName();
  }
  
  public JsonSerializer<Object> unwrappingSerializer()
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.UnwrappingBeanSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */