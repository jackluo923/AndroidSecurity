package org.codehaus.jackson.map.ext;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.deser.std.StdScalarDeserializer;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;

abstract class JodaDeserializers$JodaDeserializer<T>
  extends StdScalarDeserializer<T>
{
  static final DateTimeFormatter _localDateTimeFormat = ;
  
  protected JodaDeserializers$JodaDeserializer(Class<T> paramClass)
  {
    super(paramClass);
  }
  
  protected DateTime parseLocal(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException
  {
    paramJsonParser = paramJsonParser.getText().trim();
    if (paramJsonParser.length() == 0) {
      return null;
    }
    return _localDateTimeFormat.parseDateTime(paramJsonParser);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ext.JodaDeserializers.JodaDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */