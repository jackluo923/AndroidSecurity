package org.codehaus.jackson.map;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;

@Deprecated
public abstract interface JsonSerializable
{
  public abstract void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.JsonSerializable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */