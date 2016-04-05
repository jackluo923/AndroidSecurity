package com.google.kagegamesgson;

public enum LongSerializationPolicy
{
  private static final LongSerializationPolicy[] $VALUES;
  private final LongSerializationPolicy.Strategy strategy;
  
  static
  {
    LongSerializationPolicy.1 local1 = null;
    int k = 1;
    int j = 0;
    LongSerializationPolicy localLongSerializationPolicy = new com/google/kagegamesgson/LongSerializationPolicy;
    Object localObject1 = "DEFAULT";
    Object localObject2 = new com/google/kagegamesgson/LongSerializationPolicy$DefaultStrategy;
    ((LongSerializationPolicy.DefaultStrategy)localObject2).<init>(local1);
    localLongSerializationPolicy.<init>((String)localObject1, j, (LongSerializationPolicy.Strategy)localObject2);
    DEFAULT = localLongSerializationPolicy;
    localLongSerializationPolicy = new com/google/kagegamesgson/LongSerializationPolicy;
    localObject1 = "STRING";
    localObject2 = new com/google/kagegamesgson/LongSerializationPolicy$StringStrategy;
    ((LongSerializationPolicy.StringStrategy)localObject2).<init>(local1);
    localLongSerializationPolicy.<init>((String)localObject1, k, (LongSerializationPolicy.Strategy)localObject2);
    STRING = localLongSerializationPolicy;
    int i = 2;
    LongSerializationPolicy[] arrayOfLongSerializationPolicy = new LongSerializationPolicy[i];
    localObject1 = DEFAULT;
    arrayOfLongSerializationPolicy[j] = localObject1;
    localObject1 = STRING;
    arrayOfLongSerializationPolicy[k] = localObject1;
    $VALUES = arrayOfLongSerializationPolicy;
  }
  
  private LongSerializationPolicy(LongSerializationPolicy.Strategy paramStrategy)
  {
    strategy = paramStrategy;
  }
  
  public JsonElement serialize(Long paramLong)
  {
    Object localObject = strategy;
    localObject = ((LongSerializationPolicy.Strategy)localObject).serialize(paramLong);
    return (JsonElement)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.LongSerializationPolicy
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */