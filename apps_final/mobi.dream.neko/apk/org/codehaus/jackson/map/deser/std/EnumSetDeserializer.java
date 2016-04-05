package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.util.EnumSet;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.util.EnumResolver;

public class EnumSetDeserializer
  extends StdDeserializer<EnumSet<?>>
{
  protected final Class<Enum> _enumClass;
  protected final JsonDeserializer<Enum<?>> _enumDeserializer;
  
  public EnumSetDeserializer(Class<?> paramClass, JsonDeserializer<?> paramJsonDeserializer)
  {
    super(EnumSet.class);
    _enumClass = paramClass;
    _enumDeserializer = paramJsonDeserializer;
  }
  
  public EnumSetDeserializer(EnumResolver paramEnumResolver)
  {
    this(paramEnumResolver.getEnumClass(), new EnumDeserializer(paramEnumResolver));
  }
  
  private EnumSet constructSet()
  {
    return EnumSet.noneOf(_enumClass);
  }
  
  public EnumSet<?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      throw paramDeserializationContext.mappingException(EnumSet.class);
    }
    EnumSet localEnumSet = constructSet();
    for (;;)
    {
      JsonToken localJsonToken = paramJsonParser.nextToken();
      if (localJsonToken == JsonToken.END_ARRAY) {
        break;
      }
      if (localJsonToken == JsonToken.VALUE_NULL) {
        throw paramDeserializationContext.mappingException(_enumClass);
      }
      localEnumSet.add((Enum)_enumDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    }
    return localEnumSet;
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.EnumSetDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */