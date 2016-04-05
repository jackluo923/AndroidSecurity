package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$DoubleSerializer
  implements JsonSerializer<Double>
{
  private final boolean serializeSpecialFloatingPointValues;
  
  DefaultTypeAdapters$DoubleSerializer(boolean paramBoolean)
  {
    serializeSpecialFloatingPointValues = paramBoolean;
  }
  
  public JsonElement serialize(Double paramDouble, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    boolean bool1 = serializeSpecialFloatingPointValues;
    if (!bool1)
    {
      double d1 = paramDouble.doubleValue();
      boolean bool2 = Double.isNaN(d1);
      if (!bool2)
      {
        double d2 = paramDouble.doubleValue();
        boolean bool3 = Double.isInfinite(d2);
        if (!bool3) {}
      }
      else
      {
        localObject1 = new java/lang/IllegalArgumentException;
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject2 = ((StringBuilder)localObject2).append(paramDouble);
        String str = " is not a valid double value as per JSON specification. To override this";
        localObject2 = ((StringBuilder)localObject2).append(str);
        str = " behavior, use GsonBuilder.serializeSpecialDoubleValues() method.";
        localObject2 = ((StringBuilder)localObject2).append(str);
        localObject2 = ((StringBuilder)localObject2).toString();
        ((IllegalArgumentException)localObject1).<init>((String)localObject2);
        throw ((Throwable)localObject1);
      }
    }
    Object localObject1 = new com/google/kagegamesgson/JsonPrimitive;
    ((JsonPrimitive)localObject1).<init>(paramDouble);
    return (JsonElement)localObject1;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Double)paramObject;
    JsonElement localJsonElement = serialize((Double)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.DoubleSerializer
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */