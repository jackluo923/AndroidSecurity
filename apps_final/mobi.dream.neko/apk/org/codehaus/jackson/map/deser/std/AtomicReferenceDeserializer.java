package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.DeserializerProvider;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ResolvableDeserializer;
import org.codehaus.jackson.type.JavaType;

public class AtomicReferenceDeserializer
  extends StdScalarDeserializer<AtomicReference<?>>
  implements ResolvableDeserializer
{
  protected final BeanProperty _property;
  protected final JavaType _referencedType;
  protected JsonDeserializer<?> _valueDeserializer;
  
  public AtomicReferenceDeserializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    super(AtomicReference.class);
    _referencedType = paramJavaType;
    _property = paramBeanProperty;
  }
  
  public AtomicReference<?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    return new AtomicReference(_valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
  }
  
  public void resolve(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider)
    throws JsonMappingException
  {
    _valueDeserializer = paramDeserializerProvider.findValueDeserializer(paramDeserializationConfig, _referencedType, _property);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.AtomicReferenceDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */