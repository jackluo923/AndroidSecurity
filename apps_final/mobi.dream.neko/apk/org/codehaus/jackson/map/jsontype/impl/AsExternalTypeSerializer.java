package org.codehaus.jackson.map.jsontype.impl;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

public class AsExternalTypeSerializer
  extends TypeSerializerBase
{
  protected final String _typePropertyName;
  
  public AsExternalTypeSerializer(TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty, String paramString)
  {
    super(paramTypeIdResolver, paramBeanProperty);
    _typePropertyName = paramString;
  }
  
  protected final void _writePrefix(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartObject();
  }
  
  protected final void _writePrefix(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartObject();
  }
  
  protected final void _writeSuffix(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeEndObject();
    paramJsonGenerator.writeStringField(_typePropertyName, _idResolver.idFromValue(paramObject));
  }
  
  public String getPropertyName()
  {
    return _typePropertyName;
  }
  
  public JsonTypeInfo.As getTypeInclusion()
  {
    return JsonTypeInfo.As.EXTERNAL_PROPERTY;
  }
  
  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    _writePrefix(paramObject, paramJsonGenerator);
  }
  
  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    _writePrefix(paramObject, paramJsonGenerator, paramClass);
  }
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    _writePrefix(paramObject, paramJsonGenerator);
  }
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    _writePrefix(paramObject, paramJsonGenerator, paramClass);
  }
  
  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    _writePrefix(paramObject, paramJsonGenerator);
  }
  
  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    _writePrefix(paramObject, paramJsonGenerator, paramClass);
  }
  
  public void writeTypeSuffixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    _writeSuffix(paramObject, paramJsonGenerator);
  }
  
  public void writeTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    _writeSuffix(paramObject, paramJsonGenerator);
  }
  
  public void writeTypeSuffixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    _writeSuffix(paramObject, paramJsonGenerator);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.AsExternalTypeSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */