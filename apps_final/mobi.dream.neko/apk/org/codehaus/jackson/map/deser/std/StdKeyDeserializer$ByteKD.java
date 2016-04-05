package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;

final class StdKeyDeserializer$ByteKD
  extends StdKeyDeserializer
{
  StdKeyDeserializer$ByteKD()
  {
    super(Byte.class);
  }
  
  public Byte _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws JsonMappingException
  {
    int i = _parseInt(paramString);
    if ((i < -128) || (i > 255)) {
      throw paramDeserializationContext.weirdKeyException(_keyClass, paramString, "overflow, value can not be represented as 8-bit value");
    }
    return Byte.valueOf((byte)i);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.ByteKD
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */