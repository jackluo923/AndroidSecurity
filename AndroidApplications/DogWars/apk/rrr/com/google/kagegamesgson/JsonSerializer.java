package com.google.kagegamesgson;

import java.lang.reflect.Type;

public abstract interface JsonSerializer<T>
{
  public abstract JsonElement serialize(T paramT, Type paramType, JsonSerializationContext paramJsonSerializationContext);
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonSerializer
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */