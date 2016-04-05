package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.util.Calendar;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

public class StdKeySerializers$CalendarKeySerializer
  extends SerializerBase<Calendar>
{
  protected static final JsonSerializer<?> instance = new CalendarKeySerializer();
  
  public StdKeySerializers$CalendarKeySerializer()
  {
    super(Calendar.class);
  }
  
  public void serialize(Calendar paramCalendar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramSerializerProvider.defaultSerializeDateKey(paramCalendar.getTimeInMillis(), paramJsonGenerator);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdKeySerializers.CalendarKeySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */