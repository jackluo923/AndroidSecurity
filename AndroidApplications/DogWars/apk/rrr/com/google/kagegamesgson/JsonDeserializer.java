package com.google.kagegamesgson;

import java.lang.reflect.Type;

public abstract interface JsonDeserializer<T>
{
  public abstract T deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException;
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonDeserializer
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */