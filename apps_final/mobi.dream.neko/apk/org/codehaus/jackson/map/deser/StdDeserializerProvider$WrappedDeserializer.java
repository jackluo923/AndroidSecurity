package org.codehaus.jackson.map.deser;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;

public final class StdDeserializerProvider$WrappedDeserializer
  extends JsonDeserializer<Object>
{
  final JsonDeserializer<Object> _deserializer;
  final TypeDeserializer _typeDeserializer;
  
  public StdDeserializerProvider$WrappedDeserializer(TypeDeserializer paramTypeDeserializer, JsonDeserializer<Object> paramJsonDeserializer)
  {
    _typeDeserializer = paramTypeDeserializer;
    _deserializer = paramJsonDeserializer;
  }
  
  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return _deserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, _typeDeserializer);
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    throw new IllegalStateException("Type-wrapped deserializer's deserializeWithType should never get called");
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.StdDeserializerProvider.WrappedDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */