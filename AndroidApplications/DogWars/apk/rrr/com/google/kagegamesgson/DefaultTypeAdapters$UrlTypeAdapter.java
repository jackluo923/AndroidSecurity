package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.net.MalformedURLException;
import java.net.URL;

class DefaultTypeAdapters$UrlTypeAdapter
  implements JsonSerializer<URL>, JsonDeserializer<URL>
{
  private DefaultTypeAdapters$UrlTypeAdapter() {}
  
  DefaultTypeAdapters$UrlTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    URL localURL = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localURL;
  }
  
  public URL deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    try
    {
      URL localURL = new java/net/URL;
      String str = paramJsonElement.getAsString();
      localURL.<init>(str);
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException2)
    {
      MalformedURLException localMalformedURLException1 = localMalformedURLException2;
      JsonSyntaxException localJsonSyntaxException = new com/google/kagegamesgson/JsonSyntaxException;
      localJsonSyntaxException.<init>(localMalformedURLException1);
      throw localJsonSyntaxException;
    }
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (URL)paramObject;
    JsonElement localJsonElement = serialize((URL)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(URL paramURL, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    String str = paramURL.toExternalForm();
    localJsonPrimitive.<init>(str);
    return localJsonPrimitive;
  }
  
  public String toString()
  {
    Object localObject = UrlTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.UrlTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */