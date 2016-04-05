package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ArrayBuilders;
import org.codehaus.jackson.map.util.ArrayBuilders.ByteBuilder;

@JacksonStdImpl
final class PrimitiveArrayDeserializers$ByteDeser
  extends PrimitiveArrayDeserializers.Base<byte[]>
{
  public PrimitiveArrayDeserializers$ByteDeser()
  {
    super(byte[].class);
  }
  
  private final byte[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0)) {
      return null;
    }
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
      throw paramDeserializationContext.mappingException(_valueClass);
    }
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {}
    for (int i = paramJsonParser.getByteValue();; i = 0)
    {
      return new byte[] { i };
      if (localJsonToken != JsonToken.VALUE_NULL) {
        throw paramDeserializationContext.mappingException(_valueClass.getComponentType());
      }
    }
  }
  
  public byte[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    Object localObject1 = paramJsonParser.getCurrentToken();
    if (localObject1 == JsonToken.VALUE_STRING) {
      return paramJsonParser.getBinaryValue(paramDeserializationContext.getBase64Variant());
    }
    if (localObject1 == JsonToken.VALUE_EMBEDDED_OBJECT)
    {
      localObject1 = paramJsonParser.getEmbeddedObject();
      if (localObject1 == null) {
        return null;
      }
      if ((localObject1 instanceof byte[])) {
        return (byte[])localObject1;
      }
    }
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    }
    ArrayBuilders.ByteBuilder localByteBuilder = paramDeserializationContext.getArrayBuilders().getByteBuilder();
    localObject1 = (byte[])localByteBuilder.resetAndStart();
    int j = 0;
    Object localObject2 = paramJsonParser.nextToken();
    if (localObject2 != JsonToken.END_ARRAY)
    {
      if ((localObject2 == JsonToken.VALUE_NUMBER_INT) || (localObject2 == JsonToken.VALUE_NUMBER_FLOAT)) {}
      for (int i = paramJsonParser.getByteValue();; i = 0)
      {
        localObject2 = localObject1;
        int k = j;
        if (j >= localObject1.length)
        {
          localObject2 = (byte[])localByteBuilder.appendCompletedChunk(localObject1, j);
          k = 0;
        }
        localObject2[k] = i;
        j = k + 1;
        localObject1 = localObject2;
        break;
        if (localObject2 != JsonToken.VALUE_NULL) {
          throw paramDeserializationContext.mappingException(_valueClass.getComponentType());
        }
      }
    }
    return (byte[])localByteBuilder.completeAndClearBuffer(localObject1, j);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.PrimitiveArrayDeserializers.ByteDeser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */