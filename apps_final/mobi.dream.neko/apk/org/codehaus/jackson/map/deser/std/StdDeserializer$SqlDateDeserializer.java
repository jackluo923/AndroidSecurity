package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;

public class StdDeserializer$SqlDateDeserializer
  extends StdScalarDeserializer<java.sql.Date>
{
  public StdDeserializer$SqlDateDeserializer()
  {
    super(java.sql.Date.class);
  }
  
  public java.sql.Date deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    paramJsonParser = _parseDate(paramJsonParser, paramDeserializationContext);
    if (paramJsonParser == null) {
      return null;
    }
    return new java.sql.Date(paramJsonParser.getTime());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.SqlDateDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */