package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.util.Date;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;

public class DateDeserializer
  extends StdScalarDeserializer<Date>
{
  public DateDeserializer()
  {
    super(Date.class);
  }
  
  public Date deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return _parseDate(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.DateDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */