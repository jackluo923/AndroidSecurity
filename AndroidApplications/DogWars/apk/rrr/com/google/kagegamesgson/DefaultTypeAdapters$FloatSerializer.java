package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$FloatSerializer
  implements JsonSerializer<Float>
{
  private final boolean serializeSpecialFloatingPointValues;
  
  DefaultTypeAdapters$FloatSerializer(boolean paramBoolean)
  {
    serializeSpecialFloatingPointValues = paramBoolean;
  }
  
  public JsonElement serialize(Float paramFloat, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    boolean bool1 = serializeSpecialFloatingPointValues;
    if (!bool1)
    {
      float f1 = paramFloat.floatValue();
      boolean bool2 = Float.isNaN(f1);
      if (!bool2)
      {
        float f2 = paramFloat.floatValue();
        boolean bool3 = Float.isInfinite(f2);
        if (!bool3) {}
      }
      else
      {
        localObject1 = new java/lang/IllegalArgumentException;
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject2 = ((StringBuilder)localObject2).append(paramFloat);
        String str = " is not a valid float value as per JSON specification. To override this";
        localObject2 = ((StringBuilder)localObject2).append(str);
        str = " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.";
        localObject2 = ((StringBuilder)localObject2).append(str);
        localObject2 = ((StringBuilder)localObject2).toString();
        ((IllegalArgumentException)localObject1).<init>((String)localObject2);
        throw ((Throwable)localObject1);
      }
    }
    Object localObject1 = new com/google/kagegamesgson/JsonPrimitive;
    ((JsonPrimitive)localObject1).<init>(paramFloat);
    return (JsonElement)localObject1;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Float)paramObject;
    JsonElement localJsonElement = serialize((Float)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.FloatSerializer
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */