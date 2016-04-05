package org.codehaus.jackson.map.ser.impl;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.ser.std.SerializerBase;

public class UnknownSerializer
  extends SerializerBase<Object>
{
  public UnknownSerializer()
  {
    super(Object.class);
  }
  
  protected void failForEmpty(Object paramObject)
    throws JsonMappingException
  {
    throw new JsonMappingException("No serializer found for class " + paramObject.getClass().getName() + " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS) )");
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    throws JsonMappingException
  {
    return null;
  }
  
  public void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonMappingException
  {
    if (paramSerializerProvider.isEnabled(SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS)) {
      failForEmpty(paramObject);
    }
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeEndObject();
  }
  
  public final void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonGenerationException
  {
    if (paramSerializerProvider.isEnabled(SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS)) {
      failForEmpty(paramObject);
    }
    paramTypeSerializer.writeTypePrefixForObject(paramObject, paramJsonGenerator);
    paramTypeSerializer.writeTypeSuffixForObject(paramObject, paramJsonGenerator);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.UnknownSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */