package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class CalendarDeserializer
  extends StdScalarDeserializer<Calendar>
{
  protected final Class<? extends Calendar> _calendarClass;
  
  public CalendarDeserializer()
  {
    this(null);
  }
  
  public CalendarDeserializer(Class<? extends Calendar> paramClass)
  {
    super(Calendar.class);
    _calendarClass = paramClass;
  }
  
  public Calendar deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    paramJsonParser = _parseDate(paramJsonParser, paramDeserializationContext);
    if (paramJsonParser == null) {
      return null;
    }
    if (_calendarClass == null) {
      return paramDeserializationContext.constructCalendar(paramJsonParser);
    }
    try
    {
      Calendar localCalendar = (Calendar)_calendarClass.newInstance();
      localCalendar.setTimeInMillis(paramJsonParser.getTime());
      return localCalendar;
    }
    catch (Exception paramJsonParser)
    {
      throw paramDeserializationContext.instantiationException(_calendarClass, paramJsonParser);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.CalendarDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */