package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.util.Collection;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.BeanProperty.Std;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ResolvableDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.introspect.AnnotatedWithParams;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public final class StringCollectionDeserializer
  extends ContainerDeserializerBase<Collection<String>>
  implements ResolvableDeserializer
{
  protected final JavaType _collectionType;
  protected JsonDeserializer<Object> _delegateDeserializer;
  protected final boolean _isDefaultDeserializer;
  protected final JsonDeserializer<String> _valueDeserializer;
  protected final ValueInstantiator _valueInstantiator;
  
  protected StringCollectionDeserializer(StringCollectionDeserializer paramStringCollectionDeserializer)
  {
    super(_valueClass);
    _collectionType = _collectionType;
    _valueDeserializer = _valueDeserializer;
    _valueInstantiator = _valueInstantiator;
    _isDefaultDeserializer = _isDefaultDeserializer;
  }
  
  public StringCollectionDeserializer(JavaType paramJavaType, JsonDeserializer<?> paramJsonDeserializer, ValueInstantiator paramValueInstantiator)
  {
    super(paramJavaType.getRawClass());
    _collectionType = paramJavaType;
    _valueDeserializer = paramJsonDeserializer;
    _valueInstantiator = paramValueInstantiator;
    _isDefaultDeserializer = isDefaultSerializer(paramJsonDeserializer);
  }
  
  private Collection<String> deserializeUsingCustom(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<String> paramCollection)
    throws IOException, JsonProcessingException
  {
    JsonDeserializer localJsonDeserializer = _valueDeserializer;
    Object localObject = paramJsonParser.nextToken();
    if (localObject != JsonToken.END_ARRAY)
    {
      if (localObject == JsonToken.VALUE_NULL) {}
      for (localObject = null;; localObject = (String)localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext))
      {
        paramCollection.add(localObject);
        break;
      }
    }
    return paramCollection;
  }
  
  private final Collection<String> handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<String> paramCollection)
    throws IOException, JsonProcessingException
  {
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
      throw paramDeserializationContext.mappingException(_collectionType.getRawClass());
    }
    JsonDeserializer localJsonDeserializer = _valueDeserializer;
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
    {
      paramJsonParser = null;
      paramCollection.add(paramJsonParser);
      return paramCollection;
    }
    if (localJsonDeserializer == null) {}
    for (paramJsonParser = paramJsonParser.getText();; paramJsonParser = (String)localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext)) {
      break;
    }
  }
  
  public Collection<String> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (_delegateDeserializer != null) {
      return (Collection)_valueInstantiator.createUsingDelegate(_delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    }
    return deserialize(paramJsonParser, paramDeserializationContext, (Collection)_valueInstantiator.createUsingDefault());
  }
  
  public Collection<String> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<String> paramCollection)
    throws IOException, JsonProcessingException
  {
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      paramDeserializationContext = handleNonArray(paramJsonParser, paramDeserializationContext, paramCollection);
    }
    JsonToken localJsonToken;
    do
    {
      return paramDeserializationContext;
      if (!_isDefaultDeserializer) {
        return deserializeUsingCustom(paramJsonParser, paramDeserializationContext, paramCollection);
      }
      localJsonToken = paramJsonParser.nextToken();
      paramDeserializationContext = paramCollection;
    } while (localJsonToken == JsonToken.END_ARRAY);
    if (localJsonToken == JsonToken.VALUE_NULL) {}
    for (paramDeserializationContext = null;; paramDeserializationContext = paramJsonParser.getText())
    {
      paramCollection.add(paramDeserializationContext);
      break;
    }
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }
  
  public JsonDeserializer<Object> getContentDeserializer()
  {
    return _valueDeserializer;
  }
  
  public JavaType getContentType()
  {
    return _collectionType.getContentType();
  }
  
  public void resolve(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider)
    throws JsonMappingException
  {
    AnnotatedWithParams localAnnotatedWithParams = _valueInstantiator.getDelegateCreator();
    if (localAnnotatedWithParams != null)
    {
      JavaType localJavaType = _valueInstantiator.getDelegateType();
      _delegateDeserializer = findDeserializer(paramDeserializationConfig, paramDeserializerProvider, localJavaType, new BeanProperty.Std(null, localJavaType, null, localAnnotatedWithParams));
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StringCollectionDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */