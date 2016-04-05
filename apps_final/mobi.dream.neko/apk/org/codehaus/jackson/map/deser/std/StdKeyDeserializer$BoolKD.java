package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;

final class StdKeyDeserializer$BoolKD
  extends StdKeyDeserializer
{
  StdKeyDeserializer$BoolKD()
  {
    super(Boolean.class);
  }
  
  public Boolean _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws JsonMappingException
  {
    if ("true".equals(paramString)) {
      return Boolean.TRUE;
    }
    if ("false".equals(paramString)) {
      return Boolean.FALSE;
    }
    throw paramDeserializationContext.weirdKeyException(_keyClass, paramString, "value not 'true' or 'false'");
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.BoolKD
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */