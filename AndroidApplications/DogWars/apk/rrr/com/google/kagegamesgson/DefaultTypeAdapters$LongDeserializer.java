package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$LongDeserializer
  implements JsonDeserializer<Long>
{
  private DefaultTypeAdapters$LongDeserializer() {}
  
  DefaultTypeAdapters$LongDeserializer(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Long deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    long l = paramJsonElement.getAsLong();
    Long localLong = Long.valueOf(l);
    return localLong;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Long localLong = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localLong;
  }
  
  public String toString()
  {
    Object localObject = LongDeserializer.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.LongDeserializer
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */