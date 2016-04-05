package com.millennialmedia.google.gson;

 enum LongSerializationPolicy$1
{
  LongSerializationPolicy$1()
  {
    super(paramString, paramInt, null);
  }
  
  public final JsonElement serialize(Long paramLong)
  {
    return new JsonPrimitive(paramLong);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.LongSerializationPolicy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */