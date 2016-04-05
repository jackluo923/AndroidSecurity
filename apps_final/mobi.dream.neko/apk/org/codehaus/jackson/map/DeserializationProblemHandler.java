package org.codehaus.jackson.map;

import java.io.IOException;
import org.codehaus.jackson.JsonProcessingException;

public abstract class DeserializationProblemHandler
{
  public boolean handleUnknownProperty(DeserializationContext paramDeserializationContext, JsonDeserializer<?> paramJsonDeserializer, Object paramObject, String paramString)
    throws IOException, JsonProcessingException
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.DeserializationProblemHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */