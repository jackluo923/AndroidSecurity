package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ObjectBuffer;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$StringDeser
  extends PrimitiveArrayDeserializers.Base<String[]>
{
  public PrimitiveArrayDeserializers$StringDeser()
  {
    super(String[].class);
  }
  
  private final String[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    Object localObject = null;
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
    {
      if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0)) {
        return null;
      }
      throw paramDeserializationContext.mappingException(_valueClass);
    }
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {}
    for (paramJsonParser = (JsonParser)localObject;; paramJsonParser = paramJsonParser.getText()) {
      return new String[] { paramJsonParser };
    }
  }
  
  public String[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    }
    ObjectBuffer localObjectBuffer = paramDeserializationContext.leaseObjectBuffer();
    Object localObject1 = localObjectBuffer.resetAndStart();
    int i = 0;
    Object localObject2 = paramJsonParser.nextToken();
    if (localObject2 != JsonToken.END_ARRAY)
    {
      if (localObject2 == JsonToken.VALUE_NULL) {}
      for (localObject2 = null;; localObject2 = paramJsonParser.getText())
      {
        Object localObject3 = localObject1;
        int j = i;
        if (i >= localObject1.length)
        {
          localObject3 = localObjectBuffer.appendCompletedChunk((Object[])localObject1);
          j = 0;
        }
        localObject3[j] = localObject2;
        i = j + 1;
        localObject1 = localObject3;
        break;
      }
    }
    paramJsonParser = (String[])localObjectBuffer.completeAndClearBuffer((Object[])localObject1, i, String.class);
    paramDeserializationContext.returnObjectBuffer(localObjectBuffer);
    return paramJsonParser;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.StringDeser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */