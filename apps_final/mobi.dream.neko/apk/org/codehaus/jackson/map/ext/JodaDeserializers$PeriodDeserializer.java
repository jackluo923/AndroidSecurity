package org.codehaus.jackson.map.ext;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.joda.time.Period;
import org.joda.time.ReadablePeriod;

public class JodaDeserializers$PeriodDeserializer
  extends JodaDeserializers.JodaDeserializer<ReadablePeriod>
{
  public JodaDeserializers$PeriodDeserializer()
  {
    super(ReadablePeriod.class);
  }
  
  public ReadablePeriod deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    switch (JodaDeserializers.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
    {
    default: 
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.START_ARRAY, "expected JSON Number or String");
    case 1: 
      return new Period(paramJsonParser.getLongValue());
    }
    return new Period(paramJsonParser.getText());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ext.JodaDeserializers.PeriodDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */