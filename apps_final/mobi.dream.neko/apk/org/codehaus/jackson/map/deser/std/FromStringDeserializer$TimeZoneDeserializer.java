package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.util.TimeZone;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$TimeZoneDeserializer
  extends FromStringDeserializer<TimeZone>
{
  public FromStringDeserializer$TimeZoneDeserializer()
  {
    super(TimeZone.class);
  }
  
  protected TimeZone _deserialize(String paramString, DeserializationContext paramDeserializationContext)
    throws IOException
  {
    return TimeZone.getTimeZone(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.TimeZoneDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */