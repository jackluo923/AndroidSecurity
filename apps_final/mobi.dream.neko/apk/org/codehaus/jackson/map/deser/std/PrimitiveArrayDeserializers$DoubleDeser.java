package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.DoubleBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$DoubleDeser
  extends PrimitiveArrayDeserializers.Base<double[]>
{
  public PrimitiveArrayDeserializers$DoubleDeser()
  {
    super(double[].class);
  }
  
  private final double[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0)) {
      return null;
    }
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
      throw paramDeserializationContext.mappingException(_valueClass);
    }
    return new double[] { _parseDoublePrimitive(paramJsonParser, paramDeserializationContext) };
  }
  
  public double[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    }
    ArrayBuilders.DoubleBuilder localDoubleBuilder = paramDeserializationContext.getArrayBuilders().getDoubleBuilder();
    Object localObject1 = (double[])localDoubleBuilder.resetAndStart();
    int i = 0;
    while (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
    {
      double d = _parseDoublePrimitive(paramJsonParser, paramDeserializationContext);
      Object localObject2 = localObject1;
      int j = i;
      if (i >= localObject1.length)
      {
        localObject2 = (double[])localDoubleBuilder.appendCompletedChunk(localObject1, i);
        j = 0;
      }
      localObject2[j] = d;
      i = j + 1;
      localObject1 = localObject2;
    }
    return (double[])localDoubleBuilder.completeAndClearBuffer(localObject1, i);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.DoubleDeser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */