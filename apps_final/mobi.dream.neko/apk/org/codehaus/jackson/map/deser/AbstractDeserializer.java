package org.codehaus.jackson.map.deser;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.type.JavaType;

public class AbstractDeserializer
  extends JsonDeserializer<Object>
{
  protected final boolean _acceptBoolean;
  protected final boolean _acceptDouble;
  protected final boolean _acceptInt;
  protected final boolean _acceptString;
  protected final JavaType _baseType;
  
  public AbstractDeserializer(JavaType paramJavaType)
  {
    _baseType = paramJavaType;
    paramJavaType = paramJavaType.getRawClass();
    _acceptString = paramJavaType.isAssignableFrom(String.class);
    if ((paramJavaType == Boolean.TYPE) || (paramJavaType.isAssignableFrom(Boolean.class)))
    {
      bool1 = true;
      _acceptBoolean = bool1;
      if ((paramJavaType != Integer.TYPE) && (!paramJavaType.isAssignableFrom(Integer.class))) {
        break label103;
      }
    }
    label103:
    for (boolean bool1 = true;; bool1 = false)
    {
      _acceptInt = bool1;
      if (paramJavaType != Double.TYPE)
      {
        bool1 = bool2;
        if (!paramJavaType.isAssignableFrom(Double.class)) {}
      }
      else
      {
        bool1 = true;
      }
      _acceptDouble = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  protected Object _deserializeIfNatural(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    switch (paramJsonParser.getCurrentToken())
    {
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return null;
            } while (!_acceptString);
            return paramJsonParser.getText();
          } while (!_acceptInt);
          return Integer.valueOf(paramJsonParser.getIntValue());
        } while (!_acceptDouble);
        return Double.valueOf(paramJsonParser.getDoubleValue());
      } while (!_acceptBoolean);
      return Boolean.TRUE;
    } while (!_acceptBoolean);
    return Boolean.FALSE;
  }
  
  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    throw paramDeserializationContext.instantiationException(_baseType.getRawClass(), "abstract types can only be instantiated with additional type information");
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    Object localObject = _deserializeIfNatural(paramJsonParser, paramDeserializationContext);
    if (localObject != null) {
      return localObject;
    }
    return paramTypeDeserializer.deserializeTypedFromObject(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.AbstractDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */