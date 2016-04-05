package org.codehaus.jackson.map.ext;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadableInstant;

public class JodaDeserializers$DateTimeDeserializer<T extends ReadableInstant>
  extends JodaDeserializers.JodaDeserializer<T>
{
  public JodaDeserializers$DateTimeDeserializer(Class<T> paramClass)
  {
    super(paramClass);
  }
  
  public T deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT) {
      return new DateTime(paramJsonParser.getLongValue(), DateTimeZone.UTC);
    }
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      paramJsonParser = paramJsonParser.getText().trim();
      if (paramJsonParser.length() == 0) {
        return null;
      }
      return new DateTime(paramJsonParser, DateTimeZone.UTC);
    }
    throw paramDeserializationContext.mappingException(getValueClass());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ext.JodaDeserializers.DateTimeDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */