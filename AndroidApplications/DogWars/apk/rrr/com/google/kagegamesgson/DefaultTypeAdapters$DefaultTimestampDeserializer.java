package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.Date;

class DefaultTypeAdapters$DefaultTimestampDeserializer
  implements JsonDeserializer<Timestamp>
{
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Timestamp localTimestamp = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localTimestamp;
  }
  
  public Timestamp deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Object localObject2 = Date.class;
    Object localObject1 = paramJsonDeserializationContext.deserialize(paramJsonElement, (Type)localObject2);
    localObject1 = (Date)localObject1;
    localObject2 = new java/sql/Timestamp;
    long l = ((Date)localObject1).getTime();
    ((Timestamp)localObject2).<init>(l);
    return (Timestamp)localObject2;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.DefaultTimestampDeserializer
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */