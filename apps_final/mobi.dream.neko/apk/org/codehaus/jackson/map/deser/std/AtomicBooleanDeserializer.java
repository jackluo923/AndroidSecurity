package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;

public class AtomicBooleanDeserializer
  extends StdScalarDeserializer<AtomicBoolean>
{
  public AtomicBooleanDeserializer()
  {
    super(AtomicBoolean.class);
  }
  
  public AtomicBoolean deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return new AtomicBoolean(_parseBooleanPrimitive(paramJsonParser, paramDeserializationContext));
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.AtomicBooleanDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */