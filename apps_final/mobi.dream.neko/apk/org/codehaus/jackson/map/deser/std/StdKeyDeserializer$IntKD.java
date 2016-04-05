package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;

final class StdKeyDeserializer$IntKD
  extends StdKeyDeserializer
{
  StdKeyDeserializer$IntKD()
  {
    super(Integer.class);
  }
  
  public Integer _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws JsonMappingException
  {
    return Integer.valueOf(_parseInt(paramString));
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.IntKD
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */