package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;

final class StdKeyDeserializer$CharKD
  extends StdKeyDeserializer
{
  StdKeyDeserializer$CharKD()
  {
    super(Character.class);
  }
  
  public Character _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws JsonMappingException
  {
    if (paramString.length() == 1) {
      return Character.valueOf(paramString.charAt(0));
    }
    throw paramDeserializationContext.weirdKeyException(_keyClass, paramString, "can only convert 1-character Strings");
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.CharKD
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */