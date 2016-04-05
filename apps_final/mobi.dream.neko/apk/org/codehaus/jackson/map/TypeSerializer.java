package org.codehaus.jackson.map;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

public abstract class TypeSerializer
{
  public abstract String getPropertyName();
  
  public abstract TypeIdResolver getTypeIdResolver();
  
  public abstract JsonTypeInfo.As getTypeInclusion();
  
  public abstract void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException;
  
  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    writeTypePrefixForArray(paramObject, paramJsonGenerator);
  }
  
  public abstract void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException;
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    writeTypePrefixForObject(paramObject, paramJsonGenerator);
  }
  
  public abstract void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException;
  
  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
    throws IOException, JsonProcessingException
  {
    writeTypePrefixForScalar(paramObject, paramJsonGenerator);
  }
  
  public abstract void writeTypeSuffixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException;
  
  public abstract void writeTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException;
  
  public abstract void writeTypeSuffixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException, JsonProcessingException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.TypeSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */