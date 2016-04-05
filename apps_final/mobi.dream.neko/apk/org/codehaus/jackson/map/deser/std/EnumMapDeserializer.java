package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.util.EnumMap;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.util.EnumResolver;

public class EnumMapDeserializer
  extends StdDeserializer<EnumMap<?, ?>>
{
  protected final Class<?> _enumClass;
  protected final JsonDeserializer<Enum<?>> _keyDeserializer;
  protected final JsonDeserializer<Object> _valueDeserializer;
  
  public EnumMapDeserializer(Class<?> paramClass, JsonDeserializer<?> paramJsonDeserializer, JsonDeserializer<Object> paramJsonDeserializer1)
  {
    super(EnumMap.class);
    _enumClass = paramClass;
    _keyDeserializer = paramJsonDeserializer;
    _valueDeserializer = paramJsonDeserializer1;
  }
  
  @Deprecated
  public EnumMapDeserializer(EnumResolver<?> paramEnumResolver, JsonDeserializer<Object> paramJsonDeserializer)
  {
    this(paramEnumResolver.getEnumClass(), new EnumDeserializer(paramEnumResolver), paramJsonDeserializer);
  }
  
  private EnumMap<?, ?> constructMap()
  {
    return new EnumMap(_enumClass);
  }
  
  public EnumMap<?, ?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (paramJsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
      throw paramDeserializationContext.mappingException(EnumMap.class);
    }
    EnumMap localEnumMap = constructMap();
    if (paramJsonParser.nextToken() != JsonToken.END_OBJECT)
    {
      Enum localEnum = (Enum)_keyDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
      if (localEnum == null) {
        throw paramDeserializationContext.weirdStringException(_enumClass, "value not one of declared Enum instance names");
      }
      if (paramJsonParser.nextToken() == JsonToken.VALUE_NULL) {}
      for (Object localObject = null;; localObject = _valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext))
      {
        localEnumMap.put(localEnum, localObject);
        break;
      }
    }
    return localEnumMap;
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return paramTypeDeserializer.deserializeTypedFromObject(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.EnumMapDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */