package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.BooleanBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$BooleanDeser
  extends PrimitiveArrayDeserializers.Base<boolean[]>
{
  public PrimitiveArrayDeserializers$BooleanDeser()
  {
    super(boolean[].class);
  }
  
  private final boolean[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0)) {
      return null;
    }
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
      throw paramDeserializationContext.mappingException(_valueClass);
    }
    return new boolean[] { _parseBooleanPrimitive(paramJsonParser, paramDeserializationContext) };
  }
  
  public boolean[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    }
    ArrayBuilders.BooleanBuilder localBooleanBuilder = paramDeserializationContext.getArrayBuilders().getBooleanBuilder();
    Object localObject1 = (boolean[])localBooleanBuilder.resetAndStart();
    int i = 0;
    while (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
    {
      boolean bool = _parseBooleanPrimitive(paramJsonParser, paramDeserializationContext);
      Object localObject2 = localObject1;
      int j = i;
      if (i >= localObject1.length)
      {
        localObject2 = (boolean[])localBooleanBuilder.appendCompletedChunk(localObject1, i);
        j = 0;
      }
      localObject2[j] = bool;
      i = j + 1;
      localObject1 = localObject2;
    }
    return (boolean[])localBooleanBuilder.completeAndClearBuffer(localObject1, i);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.BooleanDeser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */