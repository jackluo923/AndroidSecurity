package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.math.BigDecimal;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class StdDeserializer$BigDecimalDeserializer
  extends StdScalarDeserializer<BigDecimal>
{
  public StdDeserializer$BigDecimalDeserializer()
  {
    super(BigDecimal.class);
  }
  
  public BigDecimal deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {
      return paramJsonParser.getDecimalValue();
    }
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      paramJsonParser = paramJsonParser.getText().trim();
      if (paramJsonParser.length() == 0) {
        return null;
      }
      try
      {
        paramJsonParser = new BigDecimal(paramJsonParser);
        return paramJsonParser;
      }
      catch (IllegalArgumentException paramJsonParser)
      {
        throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid representation");
      }
    }
    throw paramDeserializationContext.mappingException(_valueClass, localJsonToken);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.BigDecimalDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */