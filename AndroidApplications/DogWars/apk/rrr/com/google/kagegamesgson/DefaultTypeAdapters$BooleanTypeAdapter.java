package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$BooleanTypeAdapter
  implements JsonSerializer<Boolean>, JsonDeserializer<Boolean>
{
  private DefaultTypeAdapters$BooleanTypeAdapter() {}
  
  DefaultTypeAdapters$BooleanTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Boolean deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    boolean bool = paramJsonElement.getAsBoolean();
    Boolean localBoolean = Boolean.valueOf(bool);
    return localBoolean;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Boolean localBoolean = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localBoolean;
  }
  
  public JsonElement serialize(Boolean paramBoolean, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    localJsonPrimitive.<init>(paramBoolean);
    return localJsonPrimitive;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Boolean)paramObject;
    JsonElement localJsonElement = serialize((Boolean)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public String toString()
  {
    Object localObject = BooleanTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.BooleanTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */