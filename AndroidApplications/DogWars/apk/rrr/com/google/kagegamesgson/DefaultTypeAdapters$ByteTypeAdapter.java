package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$ByteTypeAdapter
  implements JsonSerializer<Byte>, JsonDeserializer<Byte>
{
  private DefaultTypeAdapters$ByteTypeAdapter() {}
  
  DefaultTypeAdapters$ByteTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Byte deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    byte b = paramJsonElement.getAsByte();
    Byte localByte = Byte.valueOf(b);
    return localByte;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Byte localByte = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localByte;
  }
  
  public JsonElement serialize(Byte paramByte, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    localJsonPrimitive.<init>(paramByte);
    return localJsonPrimitive;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Byte)paramObject;
    JsonElement localJsonElement = serialize((Byte)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public String toString()
  {
    Object localObject = ByteTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.ByteTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */