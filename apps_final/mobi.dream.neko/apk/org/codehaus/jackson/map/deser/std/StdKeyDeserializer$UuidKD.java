package org.codehaus.jackson.map.deser.std;

import java.util.UUID;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;

final class StdKeyDeserializer$UuidKD
  extends StdKeyDeserializer
{
  protected StdKeyDeserializer$UuidKD()
  {
    super(UUID.class);
  }
  
  public UUID _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws IllegalArgumentException, JsonMappingException
  {
    return UUID.fromString(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.UuidKD
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */