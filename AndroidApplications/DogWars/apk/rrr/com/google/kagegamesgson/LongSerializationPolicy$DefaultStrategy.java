package com.google.kagegamesgson;

class LongSerializationPolicy$DefaultStrategy
  implements LongSerializationPolicy.Strategy
{
  private LongSerializationPolicy$DefaultStrategy() {}
  
  LongSerializationPolicy$DefaultStrategy(LongSerializationPolicy.1 param1)
  {
    this();
  }
  
  public JsonElement serialize(Long paramLong)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    localJsonPrimitive.<init>(paramLong);
    return localJsonPrimitive;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.LongSerializationPolicy.DefaultStrategy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */