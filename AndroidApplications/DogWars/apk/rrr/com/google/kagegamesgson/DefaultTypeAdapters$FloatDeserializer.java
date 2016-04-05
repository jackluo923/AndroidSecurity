package com.google.kagegamesgson;

import java.lang.reflect.Type;

class DefaultTypeAdapters$FloatDeserializer
  implements JsonDeserializer<Float>
{
  private DefaultTypeAdapters$FloatDeserializer() {}
  
  DefaultTypeAdapters$FloatDeserializer(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Float deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    float f = paramJsonElement.getAsFloat();
    Float localFloat = Float.valueOf(f);
    return localFloat;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Float localFloat = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localFloat;
  }
  
  public String toString()
  {
    Object localObject = FloatDeserializer.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.FloatDeserializer
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */