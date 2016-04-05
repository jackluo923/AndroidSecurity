package org.codehaus.jackson;

import java.io.IOException;
import java.util.Iterator;
import org.codehaus.jackson.type.JavaType;
import org.codehaus.jackson.type.TypeReference;

public abstract class ObjectCodec
{
  public abstract JsonNode createArrayNode();
  
  public abstract JsonNode createObjectNode();
  
  public abstract JsonNode readTree(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException;
  
  public abstract <T> T readValue(JsonParser paramJsonParser, Class<T> paramClass)
    throws IOException, JsonProcessingException;
  
  public abstract <T> T readValue(JsonParser paramJsonParser, JavaType paramJavaType)
    throws IOException, JsonProcessingException;
  
  public abstract <T> T readValue(JsonParser paramJsonParser, TypeReference<?> paramTypeReference)
    throws IOException, JsonProcessingException;
  
  public abstract <T> Iterator<T> readValues(JsonParser paramJsonParser, Class<T> paramClass)
    throws IOException, JsonProcessingException;
  
  public abstract <T> Iterator<T> readValues(JsonParser paramJsonParser, JavaType paramJavaType)
    throws IOException, JsonProcessingException;
  
  public abstract <T> Iterator<T> readValues(JsonParser paramJsonParser, TypeReference<?> paramTypeReference)
    throws IOException, JsonProcessingException;
  
  public abstract JsonParser treeAsTokens(JsonNode paramJsonNode);
  
  public abstract <T> T treeToValue(JsonNode paramJsonNode, Class<T> paramClass)
    throws IOException, JsonProcessingException;
  
  public abstract void writeTree(JsonGenerator paramJsonGenerator, JsonNode paramJsonNode)
    throws IOException, JsonProcessingException;
  
  public abstract void writeValue(JsonGenerator paramJsonGenerator, Object paramObject)
    throws IOException, JsonProcessingException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.ObjectCodec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */