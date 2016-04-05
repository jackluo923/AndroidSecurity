package org.codehaus.jackson.map.jsontype.impl;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.util.JsonParserSequence;
import org.codehaus.jackson.util.TokenBuffer;

public class AsPropertyTypeDeserializer
  extends AsArrayTypeDeserializer
{
  protected final String _typePropertyName;
  
  public AsPropertyTypeDeserializer(JavaType paramJavaType, TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty, Class<?> paramClass, String paramString)
  {
    super(paramJavaType, paramTypeIdResolver, paramBeanProperty, paramClass);
    _typePropertyName = paramString;
  }
  
  @Deprecated
  public AsPropertyTypeDeserializer(JavaType paramJavaType, TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty, String paramString)
  {
    this(paramJavaType, paramTypeIdResolver, paramBeanProperty, null, paramString);
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
            } while (!_baseType.getRawClass().isAssignableFrom(String.class));
            return paramJsonParser.getText();
          } while (!_baseType.getRawClass().isAssignableFrom(Integer.class));
          return Integer.valueOf(paramJsonParser.getIntValue());
        } while (!_baseType.getRawClass().isAssignableFrom(Double.class));
        return Double.valueOf(paramJsonParser.getDoubleValue());
      } while (!_baseType.getRawClass().isAssignableFrom(Boolean.class));
      return Boolean.TRUE;
    } while (!_baseType.getRawClass().isAssignableFrom(Boolean.class));
    return Boolean.FALSE;
  }
  
  protected Object _deserializeTypedUsingDefaultImpl(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TokenBuffer paramTokenBuffer)
    throws IOException, JsonProcessingException
  {
    Object localObject;
    if (_defaultImpl != null)
    {
      JsonDeserializer localJsonDeserializer = _findDefaultImplDeserializer(paramDeserializationContext);
      localObject = paramJsonParser;
      if (paramTokenBuffer != null)
      {
        paramTokenBuffer.writeEndObject();
        localObject = paramTokenBuffer.asParser(paramJsonParser);
        ((JsonParser)localObject).nextToken();
      }
      paramTokenBuffer = localJsonDeserializer.deserialize((JsonParser)localObject, paramDeserializationContext);
    }
    do
    {
      return paramTokenBuffer;
      localObject = _deserializeIfNatural(paramJsonParser, paramDeserializationContext);
      paramTokenBuffer = (TokenBuffer)localObject;
    } while (localObject != null);
    if (paramJsonParser.getCurrentToken() == JsonToken.START_ARRAY) {
      return super.deserializeTypedFromAny(paramJsonParser, paramDeserializationContext);
    }
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.FIELD_NAME, "missing property '" + _typePropertyName + "' that is to contain type id  (for class " + baseTypeName() + ")");
  }
  
  public Object deserializeTypedFromAny(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.START_ARRAY) {
      return super.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
    }
    return deserializeTypedFromObject(paramJsonParser, paramDeserializationContext);
  }
  
  public Object deserializeTypedFromObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    Object localObject2 = paramJsonParser.getCurrentToken();
    Object localObject1;
    Object localObject3;
    if (localObject2 == JsonToken.START_OBJECT)
    {
      localObject1 = paramJsonParser.nextToken();
      localObject2 = null;
      localObject3 = localObject1;
    }
    for (;;)
    {
      if (localObject3 != JsonToken.FIELD_NAME) {
        break label173;
      }
      localObject3 = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      if (_typePropertyName.equals(localObject3))
      {
        localObject3 = _findDeserializer(paramDeserializationContext, paramJsonParser.getText());
        localObject1 = paramJsonParser;
        if (localObject2 != null) {
          localObject1 = JsonParserSequence.createFlattened(((TokenBuffer)localObject2).asParser(paramJsonParser), paramJsonParser);
        }
        ((JsonParser)localObject1).nextToken();
        return ((JsonDeserializer)localObject3).deserialize((JsonParser)localObject1, paramDeserializationContext);
        if (localObject2 == JsonToken.START_ARRAY) {
          return _deserializeTypedUsingDefaultImpl(paramJsonParser, paramDeserializationContext, null);
        }
        localObject1 = localObject2;
        if (localObject2 == JsonToken.FIELD_NAME) {
          break;
        }
        return _deserializeTypedUsingDefaultImpl(paramJsonParser, paramDeserializationContext, null);
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new TokenBuffer(null);
      }
      ((TokenBuffer)localObject1).writeFieldName((String)localObject3);
      ((TokenBuffer)localObject1).copyCurrentStructure(paramJsonParser);
      localObject3 = paramJsonParser.nextToken();
      localObject2 = localObject1;
    }
    label173:
    return _deserializeTypedUsingDefaultImpl(paramJsonParser, paramDeserializationContext, (TokenBuffer)localObject2);
  }
  
  public String getPropertyName()
  {
    return _typePropertyName;
  }
  
  public JsonTypeInfo.As getTypeInclusion()
  {
    return JsonTypeInfo.As.PROPERTY;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.AsPropertyTypeDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */