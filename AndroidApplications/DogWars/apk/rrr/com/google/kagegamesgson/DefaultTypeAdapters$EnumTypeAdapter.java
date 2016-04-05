package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$EnumTypeAdapter<T extends Enum<T>>
  implements JsonSerializer<T>, JsonDeserializer<T>
{
  private DefaultTypeAdapters$EnumTypeAdapter() {}
  
  DefaultTypeAdapters$EnumTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public T deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    paramType = (Class)paramType;
    Object localObject = paramJsonElement.getAsString();
    localObject = Enum.valueOf(paramType, (String)localObject);
    return (T)localObject;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Enum localEnum = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localEnum;
  }
  
  public JsonElement serialize(T paramT, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    String str = paramT.name();
    localJsonPrimitive.<init>(str);
    return localJsonPrimitive;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Enum)paramObject;
    JsonElement localJsonElement = serialize((Enum)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public String toString()
  {
    Object localObject = EnumTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.EnumTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */