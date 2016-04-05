package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.ShortBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$ShortDeser
  extends PrimitiveArrayDeserializers.Base<short[]>
{
  public PrimitiveArrayDeserializers$ShortDeser()
  {
    super(short[].class);
  }
  
  private final short[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0)) {
      return null;
    }
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
      throw paramDeserializationContext.mappingException(_valueClass);
    }
    return new short[] { _parseShortPrimitive(paramJsonParser, paramDeserializationContext) };
  }
  
  public short[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    }
    ArrayBuilders.ShortBuilder localShortBuilder = paramDeserializationContext.getArrayBuilders().getShortBuilder();
    Object localObject1 = (short[])localShortBuilder.resetAndStart();
    int j = 0;
    while (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
    {
      int i = _parseShortPrimitive(paramJsonParser, paramDeserializationContext);
      Object localObject2 = localObject1;
      int k = j;
      if (j >= localObject1.length)
      {
        localObject2 = (short[])localShortBuilder.appendCompletedChunk(localObject1, j);
        k = 0;
      }
      localObject2[k] = i;
      j = k + 1;
      localObject1 = localObject2;
    }
    return (short[])localShortBuilder.completeAndClearBuffer(localObject1, j);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.ShortDeser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */