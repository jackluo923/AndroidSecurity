package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$NumberDeserializer
  extends StdScalarDeserializer<Number>
{
  public StdDeserializer$NumberDeserializer()
  {
    super(Number.class);
  }
  
  public Number deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
    {
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS)) {
        return paramJsonParser.getBigIntegerValue();
      }
      return paramJsonParser.getNumberValue();
    }
    if (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)
    {
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS)) {
        return paramJsonParser.getDecimalValue();
      }
      return Double.valueOf(paramJsonParser.getDoubleValue());
    }
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      paramJsonParser = paramJsonParser.getText().trim();
      try
      {
        if (paramJsonParser.indexOf('.') < 0) {
          break label128;
        }
        if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS))
        {
          paramJsonParser = new BigDecimal(paramJsonParser);
          return paramJsonParser;
        }
      }
      catch (IllegalArgumentException paramJsonParser)
      {
        throw paramDeserializationContext.weirdStringException(_valueClass, "not a valid number");
      }
      return new Double(paramJsonParser);
      label128:
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS)) {
        return new BigInteger(paramJsonParser);
      }
      long l = Long.parseLong(paramJsonParser);
      if ((l <= 2147483647L) && (l >= -2147483648L)) {
        return Integer.valueOf((int)l);
      }
      return Long.valueOf(l);
    }
    throw paramDeserializationContext.mappingException(_valueClass, localJsonToken);
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    switch (StdDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
    {
    default: 
      return paramTypeDeserializer.deserializeTypedFromScalar(paramJsonParser, paramDeserializationContext);
    }
    return deserialize(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.NumberDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */