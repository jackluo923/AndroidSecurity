package com.millennialmedia.google.gson;

import com.millennialmedia.google.gson.internal.LinkedHashTreeMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class JsonObject
  extends JsonElement
{
  private final LinkedHashTreeMap<String, JsonElement> members = new LinkedHashTreeMap();
  
  private JsonElement createJsonElement(Object paramObject)
  {
    if (paramObject == null) {
      return JsonNull.INSTANCE;
    }
    return new JsonPrimitive(paramObject);
  }
  
  public final void add(String paramString, JsonElement paramJsonElement)
  {
    Object localObject = paramJsonElement;
    if (paramJsonElement == null) {
      localObject = JsonNull.INSTANCE;
    }
    members.put(paramString, localObject);
  }
  
  public final void addProperty(String paramString, Boolean paramBoolean)
  {
    add(paramString, createJsonElement(paramBoolean));
  }
  
  public final void addProperty(String paramString, Character paramCharacter)
  {
    add(paramString, createJsonElement(paramCharacter));
  }
  
  public final void addProperty(String paramString, Number paramNumber)
  {
    add(paramString, createJsonElement(paramNumber));
  }
  
  public final void addProperty(String paramString1, String paramString2)
  {
    add(paramString1, createJsonElement(paramString2));
  }
  
  final JsonObject deepCopy()
  {
    JsonObject localJsonObject = new JsonObject();
    Iterator localIterator = members.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localJsonObject.add((String)localEntry.getKey(), ((JsonElement)localEntry.getValue()).deepCopy());
    }
    return localJsonObject;
  }
  
  public final Set<Map.Entry<String, JsonElement>> entrySet()
  {
    return members.entrySet();
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof JsonObject)) && (members.equals(members)));
  }
  
  public final JsonElement get(String paramString)
  {
    return (JsonElement)members.get(paramString);
  }
  
  public final JsonArray getAsJsonArray(String paramString)
  {
    return (JsonArray)members.get(paramString);
  }
  
  public final JsonObject getAsJsonObject(String paramString)
  {
    return (JsonObject)members.get(paramString);
  }
  
  public final JsonPrimitive getAsJsonPrimitive(String paramString)
  {
    return (JsonPrimitive)members.get(paramString);
  }
  
  public final boolean has(String paramString)
  {
    return members.containsKey(paramString);
  }
  
  public final int hashCode()
  {
    return members.hashCode();
  }
  
  public final JsonElement remove(String paramString)
  {
    return (JsonElement)members.remove(paramString);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.JsonObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */