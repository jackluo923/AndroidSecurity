package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.net.URI;
import java.net.URISyntaxException;

class DefaultTypeAdapters$UriTypeAdapter
  implements JsonSerializer<URI>, JsonDeserializer<URI>
{
  private DefaultTypeAdapters$UriTypeAdapter() {}
  
  DefaultTypeAdapters$UriTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    URI localURI = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localURI;
  }
  
  public URI deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    try
    {
      URI localURI = new java/net/URI;
      String str = paramJsonElement.getAsString();
      localURI.<init>(str);
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException2)
    {
      URISyntaxException localURISyntaxException1 = localURISyntaxException2;
      JsonSyntaxException localJsonSyntaxException = new com/google/kagegamesgson/JsonSyntaxException;
      localJsonSyntaxException.<init>(localURISyntaxException1);
      throw localJsonSyntaxException;
    }
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (URI)paramObject;
    JsonElement localJsonElement = serialize((URI)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(URI paramURI, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    String str = paramURI.toASCIIString();
    localJsonPrimitive.<init>(str);
    return localJsonPrimitive;
  }
  
  public String toString()
  {
    Object localObject = UriTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.UriTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */