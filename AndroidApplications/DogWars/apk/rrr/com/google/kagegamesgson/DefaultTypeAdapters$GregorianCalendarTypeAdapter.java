package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.util.GregorianCalendar;

class DefaultTypeAdapters$GregorianCalendarTypeAdapter
  implements JsonSerializer<GregorianCalendar>, JsonDeserializer<GregorianCalendar>
{
  private static final String DAY_OF_MONTH = "dayOfMonth";
  private static final String HOUR_OF_DAY = "hourOfDay";
  private static final String MINUTE = "minute";
  private static final String MONTH = "month";
  private static final String SECOND = "second";
  private static final String YEAR = "year";
  
  private DefaultTypeAdapters$GregorianCalendarTypeAdapter() {}
  
  DefaultTypeAdapters$GregorianCalendarTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    GregorianCalendar localGregorianCalendar = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localGregorianCalendar;
  }
  
  public GregorianCalendar deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    JsonObject localJsonObject = paramJsonElement.getAsJsonObject();
    Object localObject = "year";
    localObject = localJsonObject.get((String)localObject);
    int i = ((JsonElement)localObject).getAsInt();
    localObject = "month";
    localObject = localJsonObject.get((String)localObject);
    int j = ((JsonElement)localObject).getAsInt();
    localObject = "dayOfMonth";
    localObject = localJsonObject.get((String)localObject);
    int k = ((JsonElement)localObject).getAsInt();
    localObject = "hourOfDay";
    localObject = localJsonObject.get((String)localObject);
    int m = ((JsonElement)localObject).getAsInt();
    localObject = "minute";
    localObject = localJsonObject.get((String)localObject);
    int n = ((JsonElement)localObject).getAsInt();
    localObject = "second";
    localObject = localJsonObject.get((String)localObject);
    int i1 = ((JsonElement)localObject).getAsInt();
    localObject = new java/util/GregorianCalendar;
    ((GregorianCalendar)localObject).<init>(i, j, k, m, n, i1);
    return (GregorianCalendar)localObject;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (GregorianCalendar)paramObject;
    JsonElement localJsonElement = serialize((GregorianCalendar)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(GregorianCalendar paramGregorianCalendar, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonObject localJsonObject = new com/google/kagegamesgson/JsonObject;
    localJsonObject.<init>();
    String str = "year";
    int i = 1;
    i = paramGregorianCalendar.get(i);
    Integer localInteger1 = Integer.valueOf(i);
    localJsonObject.addProperty(str, localInteger1);
    str = "month";
    int j = 2;
    j = paramGregorianCalendar.get(j);
    Integer localInteger2 = Integer.valueOf(j);
    localJsonObject.addProperty(str, localInteger2);
    str = "dayOfMonth";
    int k = 5;
    k = paramGregorianCalendar.get(k);
    Integer localInteger3 = Integer.valueOf(k);
    localJsonObject.addProperty(str, localInteger3);
    str = "hourOfDay";
    int m = 11;
    m = paramGregorianCalendar.get(m);
    Integer localInteger4 = Integer.valueOf(m);
    localJsonObject.addProperty(str, localInteger4);
    str = "minute";
    int n = 12;
    n = paramGregorianCalendar.get(n);
    Integer localInteger5 = Integer.valueOf(n);
    localJsonObject.addProperty(str, localInteger5);
    str = "second";
    int i1 = 13;
    i1 = paramGregorianCalendar.get(i1);
    Integer localInteger6 = Integer.valueOf(i1);
    localJsonObject.addProperty(str, localInteger6);
    return localJsonObject;
  }
  
  public String toString()
  {
    Object localObject = GregorianCalendarTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.GregorianCalendarTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */