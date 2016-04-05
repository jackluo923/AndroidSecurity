package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;

abstract class PrimitiveArrayDeserializers$Base<T>
  extends StdDeserializer<T>
{
  protected PrimitiveArrayDeserializers$Base(Class<T> paramClass)
  {
    super(paramClass);
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.Base
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */