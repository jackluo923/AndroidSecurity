package org.codehaus.jackson.map.ext;

import java.io.IOException;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ser.std.SerializerBase;
import org.joda.time.ReadableInstant;
import org.joda.time.ReadablePartial;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

public abstract class JodaSerializers$JodaSerializer<T>
  extends SerializerBase<T>
{
  static final DateTimeFormatter _localDateFormat = ISODateTimeFormat.date();
  static final DateTimeFormatter _localDateTimeFormat = ;
  
  protected JodaSerializers$JodaSerializer(Class<T> paramClass)
  {
    super(paramClass);
  }
  
  protected String printLocalDate(ReadableInstant paramReadableInstant)
    throws IOException, JsonProcessingException
  {
    return _localDateFormat.print(paramReadableInstant);
  }
  
  protected String printLocalDate(ReadablePartial paramReadablePartial)
    throws IOException, JsonProcessingException
  {
    return _localDateFormat.print(paramReadablePartial);
  }
  
  protected String printLocalDateTime(ReadablePartial paramReadablePartial)
    throws IOException, JsonProcessingException
  {
    return _localDateTimeFormat.print(paramReadablePartial);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ext.JodaSerializers.JodaSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */