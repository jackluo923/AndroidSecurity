package org.codehaus.jackson.map.deser.std;

import java.util.Date;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;

final class StdKeyDeserializer$DateKD
  extends StdKeyDeserializer
{
  protected StdKeyDeserializer$DateKD()
  {
    super(Date.class);
  }
  
  public Date _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws IllegalArgumentException, JsonMappingException
  {
    return paramDeserializationContext.parseDate(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.DateKD
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */