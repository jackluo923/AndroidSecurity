package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$DoubleDeserializer
  extends StdDeserializer.PrimitiveOrWrapperDeserializer<Double>
{
  public StdDeserializer$DoubleDeserializer(Class<Double> paramClass, Double paramDouble)
  {
    super(paramClass, paramDouble);
  }
  
  public Double deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return _parseDouble(paramJsonParser, paramDeserializationContext);
  }
  
  public Double deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return _parseDouble(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.DoubleDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */