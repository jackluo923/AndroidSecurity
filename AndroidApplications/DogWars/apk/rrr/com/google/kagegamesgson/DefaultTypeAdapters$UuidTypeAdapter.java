package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.util.UUID;

class DefaultTypeAdapters$UuidTypeAdapter
  implements JsonSerializer<UUID>, JsonDeserializer<UUID>
{
  private DefaultTypeAdapters$UuidTypeAdapter() {}
  
  DefaultTypeAdapters$UuidTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    UUID localUUID = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localUUID;
  }
  
  public UUID deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Object localObject = paramJsonElement.getAsString();
    localObject = UUID.fromString((String)localObject);
    return (UUID)localObject;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (UUID)paramObject;
    JsonElement localJsonElement = serialize((UUID)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(UUID paramUUID, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    String str = paramUUID.toString();
    localJsonPrimitive.<init>(str);
    return localJsonPrimitive;
  }
  
  public String toString()
  {
    Object localObject = UuidTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.UuidTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */