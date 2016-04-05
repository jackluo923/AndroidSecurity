package com.millennialmedia.google.gson;

public final class JsonNull
  extends JsonElement
{
  public static final JsonNull INSTANCE = new JsonNull();
  
  final JsonNull deepCopy()
  {
    return INSTANCE;
  }
  
  public final boolean equals(Object paramObject)
  {
    return (this == paramObject) || ((paramObject instanceof JsonNull));
  }
  
  public final int hashCode()
  {
    return JsonNull.class.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.JsonNull
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */