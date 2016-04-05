package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.util.Locale;
import java.util.StringTokenizer;

class DefaultTypeAdapters$LocaleTypeAdapter
  implements JsonSerializer<Locale>, JsonDeserializer<Locale>
{
  private DefaultTypeAdapters$LocaleTypeAdapter() {}
  
  DefaultTypeAdapters$LocaleTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Locale localLocale = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localLocale;
  }
  
  public Locale deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    String str3 = paramJsonElement.getAsString();
    StringTokenizer localStringTokenizer = new java/util/StringTokenizer;
    String str5 = "_";
    localStringTokenizer.<init>(str3, str5);
    String str2 = null;
    String str1 = null;
    String str4 = null;
    boolean bool = localStringTokenizer.hasMoreElements();
    if (bool) {
      str2 = localStringTokenizer.nextToken();
    }
    bool = localStringTokenizer.hasMoreElements();
    if (bool) {
      str1 = localStringTokenizer.nextToken();
    }
    bool = localStringTokenizer.hasMoreElements();
    if (bool) {
      str4 = localStringTokenizer.nextToken();
    }
    Locale localLocale;
    if ((str1 == null) && (str4 == null))
    {
      localLocale = new java/util/Locale;
      localLocale.<init>(str2);
    }
    for (;;)
    {
      return localLocale;
      if (str4 == null)
      {
        localLocale = new java/util/Locale;
        localLocale.<init>(str2, str1);
      }
      else
      {
        localLocale = new java/util/Locale;
        localLocale.<init>(str2, str1, str4);
      }
    }
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Locale)paramObject;
    JsonElement localJsonElement = serialize((Locale)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(Locale paramLocale, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonPrimitive localJsonPrimitive = new com/google/kagegamesgson/JsonPrimitive;
    String str = paramLocale.toString();
    localJsonPrimitive.<init>(str);
    return localJsonPrimitive;
  }
  
  public String toString()
  {
    Object localObject = LocaleTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.LocaleTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */