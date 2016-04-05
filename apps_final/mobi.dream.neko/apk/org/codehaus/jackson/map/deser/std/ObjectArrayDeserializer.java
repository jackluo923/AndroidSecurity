package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.lang.reflect.Array;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.type.ArrayType;
import org.codehaus.jackson.map.util.ObjectBuffer;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class ObjectArrayDeserializer
  extends ContainerDeserializerBase<Object[]>
{
  protected final JavaType _arrayType;
  protected final Class<?> _elementClass;
  protected final JsonDeserializer<Object> _elementDeserializer;
  protected final TypeDeserializer _elementTypeDeserializer;
  protected final boolean _untyped;
  
  public ObjectArrayDeserializer(ArrayType paramArrayType, JsonDeserializer<Object> paramJsonDeserializer, TypeDeserializer paramTypeDeserializer)
  {
    super(Object[].class);
    _arrayType = paramArrayType;
    _elementClass = paramArrayType.getContentType().getRawClass();
    if (_elementClass == Object.class) {}
    for (boolean bool = true;; bool = false)
    {
      _untyped = bool;
      _elementDeserializer = paramJsonDeserializer;
      _elementTypeDeserializer = paramTypeDeserializer;
      return;
    }
  }
  
  private final Object[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0)) {
      return null;
    }
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
    {
      if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (_elementClass == Byte.class)) {
        return deserializeFromBase64(paramJsonParser, paramDeserializationContext);
      }
      throw paramDeserializationContext.mappingException(_arrayType.getRawClass());
    }
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
    {
      paramJsonParser = null;
      if (!_untyped) {
        break label147;
      }
    }
    label147:
    for (paramDeserializationContext = new Object[1];; paramDeserializationContext = (Object[])Array.newInstance(_elementClass, 1))
    {
      paramDeserializationContext[0] = paramJsonParser;
      return paramDeserializationContext;
      if (_elementTypeDeserializer == null)
      {
        paramJsonParser = _elementDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
        break;
      }
      paramJsonParser = _elementDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, _elementTypeDeserializer);
      break;
    }
  }
  
  public Object[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    }
    ObjectBuffer localObjectBuffer = paramDeserializationContext.leaseObjectBuffer();
    Object localObject2 = localObjectBuffer.resetAndStart();
    int i = 0;
    TypeDeserializer localTypeDeserializer = _elementTypeDeserializer;
    Object localObject1 = paramJsonParser.nextToken();
    if (localObject1 != JsonToken.END_ARRAY)
    {
      if (localObject1 == JsonToken.VALUE_NULL) {
        localObject1 = null;
      }
      for (;;)
      {
        Object localObject3 = localObject2;
        int j = i;
        if (i >= localObject2.length)
        {
          localObject3 = localObjectBuffer.appendCompletedChunk((Object[])localObject2);
          j = 0;
        }
        localObject3[j] = localObject1;
        i = j + 1;
        localObject2 = localObject3;
        break;
        if (localTypeDeserializer == null) {
          localObject1 = _elementDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
        } else {
          localObject1 = _elementDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, localTypeDeserializer);
        }
      }
    }
    if (_untyped) {}
    for (paramJsonParser = localObjectBuffer.completeAndClearBuffer((Object[])localObject2, i);; paramJsonParser = localObjectBuffer.completeAndClearBuffer((Object[])localObject2, i, _elementClass))
    {
      paramDeserializationContext.returnObjectBuffer(localObjectBuffer);
      return paramJsonParser;
    }
  }
  
  protected Byte[] deserializeFromBase64(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    paramJsonParser = paramJsonParser.getBinaryValue(paramDeserializationContext.getBase64Variant());
    paramDeserializationContext = new Byte[paramJsonParser.length];
    int i = 0;
    int j = paramJsonParser.length;
    while (i < j)
    {
      paramDeserializationContext[i] = Byte.valueOf(paramJsonParser[i]);
      i += 1;
    }
    return paramDeserializationContext;
  }
  
  public Object[] deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return (Object[])paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }
  
  public JsonDeserializer<Object> getContentDeserializer()
  {
    return _elementDeserializer;
  }
  
  public JavaType getContentType()
  {
    return _arrayType.getContentType();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.ObjectArrayDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */