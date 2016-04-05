package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$BooleanDeserializer
  extends StdDeserializer.PrimitiveOrWrapperDeserializer<Boolean>
{
  public StdDeserializer$BooleanDeserializer(Class<Boolean> paramClass, Boolean paramBoolean)
  {
    super(paramClass, paramBoolean);
  }
  
  public Boolean deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return _parseBoolean(paramJsonParser, paramDeserializationContext);
  }
  
  public Boolean deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return _parseBoolean(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.BooleanDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */