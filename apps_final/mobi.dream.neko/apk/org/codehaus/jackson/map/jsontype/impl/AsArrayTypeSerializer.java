package org.codehaus.jackson.map.jsontype.impl;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

public class AsArrayTypeSerializer
  extends TypeSerializerBase
{
  public AsArrayTypeSerializer(TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty)
  {
    super(paramTypeIdResolver, paramBeanProperty);
  }
  
  public JsonTypeInfo.As getTypeInclusion()
  {
    return JsonTypeInfo.As.WRAPPER_ARRAY;
  }
  
  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString(_idResolver.idFromValue(paramObject));
    paramJsonGenerator.writeStartArray();
  }
  
  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString(_idResolver.idFromValueAndType(paramObject, paramClass));
    paramJsonGenerator.writeStartArray();
  }
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString(_idResolver.idFromValue(paramObject));
    paramJsonGenerator.writeStartObject();
  }
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString(_idResolver.idFromValueAndType(paramObject, paramClass));
    paramJsonGenerator.writeStartObject();
  }
  
  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString(_idResolver.idFromValue(paramObject));
  }
  
  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString(_idResolver.idFromValueAndType(paramObject, paramClass));
  }
  
  public void writeTypeSuffixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeEndArray();
    paramJsonGenerator.writeEndArray();
  }
  
  public void writeTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeEndObject();
    paramJsonGenerator.writeEndArray();
  }
  
  public void writeTypeSuffixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeEndArray();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.AsArrayTypeSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */