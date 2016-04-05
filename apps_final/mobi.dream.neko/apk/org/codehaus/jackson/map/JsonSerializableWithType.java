package org.codehaus.jackson.map;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;

public abstract interface JsonSerializableWithType
  extends JsonSerializable
{
  public abstract void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonProcessingException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.JsonSerializableWithType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */