package com.google.kagegamesgson;

class LongSerializationPolicy$StringStrategy
  implements LongSerializationPolicy.Strategy
{
  private LongSerializationPolicy$StringStrategy() {}
  
  LongSerializationPolicy$StringStrategy(LongSerializationPolicy.1 param1)
  {
    this();
  }
  
  public JsonElement serialize(Long paramLong)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    String str = String.valueOf(paramLong);
    localJsonPrimitive.<init>(str);
    return localJsonPrimitive;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.LongSerializationPolicy.StringStrategy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */