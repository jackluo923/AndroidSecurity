package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$ShortTypeAdapter
  implements JsonSerializer<Short>, JsonDeserializer<Short>
{
  private DefaultTypeAdapters$ShortTypeAdapter() {}
  
  DefaultTypeAdapters$ShortTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Short localShort = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localShort;
  }
  
  public Short deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    short s = paramJsonElement.getAsShort();
    Short localShort = Short.valueOf(s);
    return localShort;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Short)paramObject;
    JsonElement localJsonElement = serialize((Short)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(Short paramShort, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    localJsonPrimitive.<init>(paramShort);
    return localJsonPrimitive;
  }
  
  public String toString()
  {
    Object localObject = ShortTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.ShortTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */