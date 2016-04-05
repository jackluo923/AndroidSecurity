package com.millennialmedia.google.gson;

import java.lang.reflect.Type;

public abstract interface JsonSerializationContext
{
  public abstract JsonElement serialize(Object paramObject);
  
  public abstract JsonElement serialize(Object paramObject, Type paramType);
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.JsonSerializationContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */