package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$FloatDeserializer
  extends StdDeserializer.PrimitiveOrWrapperDeserializer<Float>
{
  public StdDeserializer$FloatDeserializer(Class<Float> paramClass, Float paramFloat)
  {
    super(paramClass, paramFloat);
  }
  
  public Float deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return _parseFloat(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.FloatDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */