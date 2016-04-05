package org.codehaus.jackson.map;

import java.io.IOException;
import org.codehaus.jackson.JsonProcessingException;

public abstract class KeyDeserializer
{
  public abstract Object deserializeKey(String paramString, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException;
  
  public static abstract class None
    extends KeyDeserializer
  {}
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.KeyDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */