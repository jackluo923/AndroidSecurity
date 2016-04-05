package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.math.BigDecimal;

class DefaultTypeAdapters$BigDecimalTypeAdapter
  implements JsonSerializer<BigDecimal>, JsonDeserializer<BigDecimal>
{
  private DefaultTypeAdapters$BigDecimalTypeAdapter() {}
  
  DefaultTypeAdapters$BigDecimalTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    BigDecimal localBigDecimal = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localBigDecimal;
  }
  
  public BigDecimal deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    BigDecimal localBigDecimal = paramJsonElement.getAsBigDecimal();
    return localBigDecimal;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (BigDecimal)paramObject;
    JsonElement localJsonElement = serialize((BigDecimal)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(BigDecimal paramBigDecimal, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    localJsonPrimitive.<init>(paramBigDecimal);
    return localJsonPrimitive;
  }
  
  public String toString()
  {
    Object localObject = BigDecimalTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.BigDecimalTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */