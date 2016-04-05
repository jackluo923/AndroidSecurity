package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$StringTypeAdapter
  implements JsonSerializer<String>, JsonDeserializer<String>
{
  private DefaultTypeAdapters$StringTypeAdapter() {}
  
  DefaultTypeAdapters$StringTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    String str = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return str;
  }
  
  public String deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    String str = paramJsonElement.getAsString();
    return str;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (String)paramObject;
    JsonElement localJsonElement = serialize((String)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(String paramString, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    localJsonPrimitive.<init>(paramString);
    return localJsonPrimitive;
  }
  
  public String toString()
  {
    Object localObject = StringTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.StringTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */