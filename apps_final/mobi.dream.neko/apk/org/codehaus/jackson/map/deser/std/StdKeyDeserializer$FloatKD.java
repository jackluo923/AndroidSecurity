package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;

final class StdKeyDeserializer$FloatKD
  extends StdKeyDeserializer
{
  StdKeyDeserializer$FloatKD()
  {
    super(Float.class);
  }
  
  public Float _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws JsonMappingException
  {
    return Float.valueOf((float)_parseDouble(paramString));
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.FloatKD
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */