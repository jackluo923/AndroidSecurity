package org.codehaus.jackson.map.ser.impl;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.std.SerializerBase;

public final class FailingSerializer
  extends SerializerBase<Object>
{
  final String _msg;
  
  public FailingSerializer(String paramString)
  {
    super(Object.class);
    _msg = paramString;
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    throws JsonMappingException
  {
    return null;
  }
  
  public void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    throw new JsonGenerationException(_msg);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.FailingSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */