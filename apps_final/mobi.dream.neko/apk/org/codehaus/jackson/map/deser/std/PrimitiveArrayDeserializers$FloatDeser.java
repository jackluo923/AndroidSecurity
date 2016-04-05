package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.FloatBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$FloatDeser
  extends PrimitiveArrayDeserializers.Base<float[]>
{
  public PrimitiveArrayDeserializers$FloatDeser()
  {
    super(float[].class);
  }
  
  private final float[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0)) {
      return null;
    }
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
      throw paramDeserializationContext.mappingException(_valueClass);
    }
    return new float[] { _parseFloatPrimitive(paramJsonParser, paramDeserializationContext) };
  }
  
  public float[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    }
    ArrayBuilders.FloatBuilder localFloatBuilder = paramDeserializationContext.getArrayBuilders().getFloatBuilder();
    Object localObject1 = (float[])localFloatBuilder.resetAndStart();
    int i = 0;
    while (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
    {
      float f = _parseFloatPrimitive(paramJsonParser, paramDeserializationContext);
      Object localObject2 = localObject1;
      int j = i;
      if (i >= localObject1.length)
      {
        localObject2 = (float[])localFloatBuilder.appendCompletedChunk(localObject1, i);
        j = 0;
      }
      localObject2[j] = f;
      i = j + 1;
      localObject1 = localObject2;
    }
    return (float[])localFloatBuilder.completeAndClearBuffer(localObject1, i);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.FloatDeser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */