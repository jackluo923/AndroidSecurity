package com.millennialmedia.google.gson;

import java.lang.reflect.Type;

public abstract interface JsonDeserializationContext
{
  public abstract <T> T deserialize(JsonElement paramJsonElement, Type paramType);
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.JsonDeserializationContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */