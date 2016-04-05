package com.google.kagegamesgson;

import java.lang.reflect.Type;

public abstract interface JsonDeserializationContext
{
  public abstract <T> T deserialize(JsonElement paramJsonElement, Type paramType)
    throws JsonParseException;
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonDeserializationContext
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */