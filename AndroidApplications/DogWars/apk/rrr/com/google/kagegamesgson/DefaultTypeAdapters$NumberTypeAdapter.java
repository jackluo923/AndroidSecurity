package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$NumberTypeAdapter
  implements JsonSerializer<Number>, JsonDeserializer<Number>
{
  private DefaultTypeAdapters$NumberTypeAdapter() {}
  
  DefaultTypeAdapters$NumberTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Number deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Number localNumber = paramJsonElement.getAsNumber();
    return localNumber;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Number localNumber = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localNumber;
  }
  
  public JsonElement serialize(Number paramNumber, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    localJsonPrimitive.<init>(paramNumber);
    return localJsonPrimitive;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Number)paramObject;
    JsonElement localJsonElement = serialize((Number)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public String toString()
  {
    Object localObject = NumberTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.NumberTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */