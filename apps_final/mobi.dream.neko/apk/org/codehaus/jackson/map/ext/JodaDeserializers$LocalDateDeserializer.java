package org.codehaus.jackson.map.ext;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.joda.time.DateTime;
import org.joda.time.LocalDate;

public class JodaDeserializers$LocalDateDeserializer
  extends JodaDeserializers.JodaDeserializer<LocalDate>
{
  public JodaDeserializers$LocalDateDeserializer()
  {
    super(LocalDate.class);
  }
  
  public LocalDate deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (paramJsonParser.isExpectedStartArrayToken())
    {
      paramJsonParser.nextToken();
      int i = paramJsonParser.getIntValue();
      paramJsonParser.nextToken();
      int j = paramJsonParser.getIntValue();
      paramJsonParser.nextToken();
      int k = paramJsonParser.getIntValue();
      if (paramJsonParser.nextToken() != JsonToken.END_ARRAY) {
        throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "after LocalDate ints");
      }
      return new LocalDate(i, j, k);
    }
    switch (JodaDeserializers.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
    {
    default: 
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.START_ARRAY, "expected JSON Array, String or Number");
    case 1: 
      return new LocalDate(paramJsonParser.getLongValue());
    }
    paramJsonParser = parseLocal(paramJsonParser);
    if (paramJsonParser == null) {
      return null;
    }
    return paramJsonParser.toLocalDate();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ext.JodaDeserializers.LocalDateDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */