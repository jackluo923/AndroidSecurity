package org.codehaus.jackson.map.jsontype.impl;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

public class AsPropertyTypeSerializer
  extends AsArrayTypeSerializer
{
  protected final String _typePropertyName;
  
  public AsPropertyTypeSerializer(TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty, String paramString)
  {
    super(paramTypeIdResolver, paramBeanProperty);
    _typePropertyName = paramString;
  }
  
  public String getPropertyName()
  {
    return _typePropertyName;
  }
  
  public JsonTypeInfo.As getTypeInclusion()
  {
    return JsonTypeInfo.As.PROPERTY;
  }
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeStringField(_typePropertyName, _idResolver.idFromValue(paramObject));
  }
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeStringField(_typePropertyName, _idResolver.idFromValueAndType(paramObject, paramClass));
  }
  
  public void writeTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeEndObject();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.AsPropertyTypeSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */