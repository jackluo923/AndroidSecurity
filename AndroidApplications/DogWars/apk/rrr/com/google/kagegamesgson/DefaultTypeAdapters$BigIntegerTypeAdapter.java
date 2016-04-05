package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.math.BigInteger;

class DefaultTypeAdapters$BigIntegerTypeAdapter
  implements JsonSerializer<BigInteger>, JsonDeserializer<BigInteger>
{
  private DefaultTypeAdapters$BigIntegerTypeAdapter() {}
  
  DefaultTypeAdapters$BigIntegerTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    BigInteger localBigInteger = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localBigInteger;
  }
  
  public BigInteger deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    BigInteger localBigInteger = paramJsonElement.getAsBigInteger();
    return localBigInteger;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (BigInteger)paramObject;
    JsonElement localJsonElement = serialize((BigInteger)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(BigInteger paramBigInteger, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    localJsonPrimitive.<init>(paramBigInteger);
    return localJsonPrimitive;
  }
  
  public String toString()
  {
    Object localObject = BigIntegerTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.BigIntegerTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */