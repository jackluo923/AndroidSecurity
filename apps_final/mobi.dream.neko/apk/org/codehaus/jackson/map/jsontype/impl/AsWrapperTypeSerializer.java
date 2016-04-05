package org.codehaus.jackson.map.jsontype.impl;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

public class AsWrapperTypeSerializer
  extends TypeSerializerBase
{
  public AsWrapperTypeSerializer(TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty)
  {
    super(paramTypeIdResolver, paramBeanProperty);
  }
  
  public JsonTypeInfo.As getTypeInclusion()
  {
    return JsonTypeInfo.As.WRAPPER_OBJECT;
  }
  
  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeArrayFieldStart(_idResolver.idFromValue(paramObject));
  }
  
  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeArrayFieldStart(_idResolver.idFromValueAndType(paramObject, paramClass));
  }
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeObjectFieldStart(_idResolver.idFromValue(paramObject));
  }
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeObjectFieldStart(_idResolver.idFromValueAndType(paramObject, paramClass));
  }
  
  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeFieldName(_idResolver.idFromValue(paramObject));
  }
  
  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.writeFieldName(_idResolver.idFromValueAndType(paramObject, paramClass));
  }
  
  public void writeTypeSuffixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeEndArray();
    paramJsonGenerator.writeEndObject();
  }
  
  public void writeTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeEndObject();
    paramJsonGenerator.writeEndObject();
  }
  
  public void writeTypeSuffixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeEndObject();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.AsWrapperTypeSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */