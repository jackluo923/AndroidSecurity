package org.codehaus.jackson.map.deser.std;

import java.util.Calendar;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;

final class StdKeyDeserializer$CalendarKD
  extends StdKeyDeserializer
{
  protected StdKeyDeserializer$CalendarKD()
  {
    super(Calendar.class);
  }
  
  public Calendar _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws IllegalArgumentException, JsonMappingException
  {
    paramString = paramDeserializationContext.parseDate(paramString);
    if (paramString == null) {
      return null;
    }
    return paramDeserializationContext.constructCalendar(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.CalendarKD
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */