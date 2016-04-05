package org.codehaus.jackson.xc;

import java.io.IOException;
import javax.xml.bind.annotation.adapters.XmlAdapter;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.deser.std.StdDeserializer;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public class XmlAdapterJsonDeserializer
  extends StdDeserializer<Object>
{
  protected static final JavaType ADAPTER_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(XmlAdapter.class);
  protected JsonDeserializer<?> _deserializer;
  protected final JavaType _valueType;
  protected final XmlAdapter<Object, Object> _xmlAdapter;
  
  public XmlAdapterJsonDeserializer(XmlAdapter<Object, Object> paramXmlAdapter)
  {
    super(Object.class);
    _xmlAdapter = paramXmlAdapter;
    TypeFactory localTypeFactory = TypeFactory.defaultInstance();
    paramXmlAdapter = localTypeFactory.findTypeParameters(localTypeFactory.constructType(paramXmlAdapter.getClass()), XmlAdapter.class);
    if ((paramXmlAdapter == null) || (paramXmlAdapter.length == 0)) {}
    for (paramXmlAdapter = TypeFactory.unknownType();; paramXmlAdapter = paramXmlAdapter[0])
    {
      _valueType = paramXmlAdapter;
      return;
    }
  }
  
  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonDeserializer localJsonDeserializer = _deserializer;
    Object localObject = localJsonDeserializer;
    if (localJsonDeserializer == null)
    {
      localObject = paramDeserializationContext.getConfig();
      localObject = paramDeserializationContext.getDeserializerProvider().findValueDeserializer((DeserializationConfig)localObject, _valueType, null);
      _deserializer = ((JsonDeserializer)localObject);
    }
    paramJsonParser = ((JsonDeserializer)localObject).deserialize(paramJsonParser, paramDeserializationContext);
    try
    {
      paramJsonParser = _xmlAdapter.unmarshal(paramJsonParser);
      return paramJsonParser;
    }
    catch (Exception paramJsonParser)
    {
      throw new JsonMappingException("Unable to unmarshal (to type " + _valueType + "): " + paramJsonParser.getMessage(), paramJsonParser);
    }
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return paramTypeDeserializer.deserializeTypedFromAny(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.xc.XmlAdapterJsonDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */