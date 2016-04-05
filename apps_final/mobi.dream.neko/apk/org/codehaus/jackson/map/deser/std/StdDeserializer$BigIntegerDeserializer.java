package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class StdDeserializer$BigIntegerDeserializer
  extends StdScalarDeserializer<BigInteger>
{
  public StdDeserializer$BigIntegerDeserializer()
  {
    super(BigInteger.class);
  }
  
  public BigInteger deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT) {
      switch (StdDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[paramJsonParser.getNumberType().ordinal()])
      {
      }
    }
    do
    {
      paramJsonParser = paramJsonParser.getText().trim();
      if (paramJsonParser.length() != 0) {
        break;
      }
      return null;
      return BigInteger.valueOf(paramJsonParser.getLongValue());
      if (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT) {
        return paramJsonParser.getDecimalValue().toBigInteger();
      }
    } while (localJsonToken == JsonToken.VALUE_STRING);
    throw paramDeserializationContext.mappingException(_valueClass, localJsonToken);
    try
    {
      paramJsonParser = new BigInteger(paramJsonParser);
      return paramJsonParser;
    }
    catch (IllegalArgumentException paramJsonParser)
    {
      throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid representation");
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.BigIntegerDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */