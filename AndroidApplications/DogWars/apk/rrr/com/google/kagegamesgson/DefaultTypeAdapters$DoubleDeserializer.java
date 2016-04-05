package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$DoubleDeserializer
  implements JsonDeserializer<Double>
{
  private DefaultTypeAdapters$DoubleDeserializer() {}
  
  DefaultTypeAdapters$DoubleDeserializer(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Double deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    double d = paramJsonElement.getAsDouble();
    Double localDouble = Double.valueOf(d);
    return localDouble;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Double localDouble = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localDouble;
  }
  
  public String toString()
  {
    Object localObject = DoubleDeserializer.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.DoubleDeserializer
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */