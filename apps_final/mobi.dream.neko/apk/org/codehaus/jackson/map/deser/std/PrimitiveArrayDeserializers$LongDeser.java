package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.LongBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$LongDeser
  extends PrimitiveArrayDeserializers.Base<long[]>
{
  public PrimitiveArrayDeserializers$LongDeser()
  {
    super(long[].class);
  }
  
  private final long[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0)) {
      return null;
    }
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
      throw paramDeserializationContext.mappingException(_valueClass);
    }
    return new long[] { _parseLongPrimitive(paramJsonParser, paramDeserializationContext) };
  }
  
  public long[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    }
    ArrayBuilders.LongBuilder localLongBuilder = paramDeserializationContext.getArrayBuilders().getLongBuilder();
    Object localObject1 = (long[])localLongBuilder.resetAndStart();
    int i = 0;
    while (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
    {
      long l = _parseLongPrimitive(paramJsonParser, paramDeserializationContext);
      Object localObject2 = localObject1;
      int j = i;
      if (i >= localObject1.length)
      {
        localObject2 = (long[])localLongBuilder.appendCompletedChunk(localObject1, i);
        j = 0;
      }
      localObject2[j] = l;
      i = j + 1;
      localObject1 = localObject2;
    }
    return (long[])localLongBuilder.completeAndClearBuffer(localObject1, i);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.LongDeser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */