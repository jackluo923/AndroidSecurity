package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$ShortDeserializer
  extends StdDeserializer.PrimitiveOrWrapperDeserializer<Short>
{
  public StdDeserializer$ShortDeserializer(Class<Short> paramClass, Short paramShort)
  {
    super(paramClass, paramShort);
  }
  
  public Short deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return _parseShort(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.ShortDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */