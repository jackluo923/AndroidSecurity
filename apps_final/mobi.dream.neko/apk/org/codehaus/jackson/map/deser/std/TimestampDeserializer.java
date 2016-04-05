package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;

public class TimestampDeserializer
  extends StdScalarDeserializer<Timestamp>
{
  public TimestampDeserializer()
  {
    super(Timestamp.class);
  }
  
  public Timestamp deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return new Timestamp(_parseDate(paramJsonParser, paramDeserializationContext).getTime());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.TimestampDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */