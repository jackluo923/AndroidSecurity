package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$IntegerTypeAdapter
  implements JsonSerializer<Integer>, JsonDeserializer<Integer>
{
  private DefaultTypeAdapters$IntegerTypeAdapter() {}
  
  DefaultTypeAdapters$IntegerTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Integer deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    int i = paramJsonElement.getAsInt();
    Integer localInteger = Integer.valueOf(i);
    return localInteger;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Integer localInteger = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localInteger;
  }
  
  public JsonElement serialize(Integer paramInteger, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    localJsonPrimitive.<init>(paramInteger);
    return localJsonPrimitive;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Integer)paramObject;
    JsonElement localJsonElement = serialize((Integer)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public String toString()
  {
    Object localObject = IntegerTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.IntegerTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */