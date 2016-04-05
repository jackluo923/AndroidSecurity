package com.google.kagegamesgson;

import java.lang.reflect.Type;

public abstract interface JsonSerializationContext
{
  public abstract JsonElement serialize(Object paramObject);
  
  public abstract JsonElement serialize(Object paramObject, Type paramType);
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonSerializationContext
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */