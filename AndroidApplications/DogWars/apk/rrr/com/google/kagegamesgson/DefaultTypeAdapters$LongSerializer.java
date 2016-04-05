package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$LongSerializer
  implements JsonSerializer<Long>
{
  private final LongSerializationPolicy longSerializationPolicy;
  
  private DefaultTypeAdapters$LongSerializer(LongSerializationPolicy paramLongSerializationPolicy)
  {
    longSerializationPolicy = paramLongSerializationPolicy;
  }
  
  DefaultTypeAdapters$LongSerializer(LongSerializationPolicy paramLongSerializationPolicy, DefaultTypeAdapters.1 param1)
  {
    this(paramLongSerializationPolicy);
  }
  
  public JsonElement serialize(Long paramLong, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    Object localObject = longSerializationPolicy;
    localObject = ((LongSerializationPolicy)localObject).serialize(paramLong);
    return (JsonElement)localObject;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Long)paramObject;
    JsonElement localJsonElement = serialize((Long)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public String toString()
  {
    Object localObject = LongSerializer.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.LongSerializer
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */