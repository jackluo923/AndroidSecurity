package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;

final class StdKeyDeserializer$DoubleKD
  extends StdKeyDeserializer
{
  StdKeyDeserializer$DoubleKD()
  {
    super(Double.class);
  }
  
  public Double _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws JsonMappingException
  {
    return Double.valueOf(_parseDouble(paramString));
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.DoubleKD
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */