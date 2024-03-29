package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$LongDeserializer
  extends StdDeserializer.PrimitiveOrWrapperDeserializer<Long>
{
  public StdDeserializer$LongDeserializer(Class<Long> paramClass, Long paramLong)
  {
    super(paramClass, paramLong);
  }
  
  public Long deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return _parseLong(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.LongDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */