package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$ByteDeserializer
  extends StdDeserializer.PrimitiveOrWrapperDeserializer<Byte>
{
  public StdDeserializer$ByteDeserializer(Class<Byte> paramClass, Byte paramByte)
  {
    super(paramClass, paramByte);
  }
  
  public Byte deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return _parseByte(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.ByteDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */