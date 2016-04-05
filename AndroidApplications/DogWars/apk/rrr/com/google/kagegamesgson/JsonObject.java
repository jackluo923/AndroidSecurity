package com.google.kagegamesgson;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class JsonObject
  extends JsonElement
{
  private final Map members;
  
  public JsonObject()
  {
    LinkedHashMap localLinkedHashMap = new java/util/LinkedHashMap;
    localLinkedHashMap.<init>();
    members = localLinkedHashMap;
  }
  
  public void add(String paramString, JsonElement paramJsonElement)
  {
    Preconditions.checkNotNull(paramString);
    if (paramJsonElement == null) {
      paramJsonElement = JsonNull.createJsonNull();
    }
    Map localMap = members;
    localMap.put(paramString, paramJsonElement);
  }
  
  public void addProperty(String paramString, Boolean paramBoolean)
  {
    JsonElement localJsonElement = createJsonElement(paramBoolean);
    add(paramString, localJsonElement);
  }
  
  public void addProperty(String paramString, Character paramCharacter)
  {
    JsonElement localJsonElement = createJsonElement(paramCharacter);
    add(paramString, localJsonElement);
  }
  
  public void addProperty(String paramString, Number paramNumber)
  {
    JsonElement localJsonElement = createJsonElement(paramNumber);
    add(paramString, localJsonElement);
  }
  
  public void addProperty(String paramString1, String paramString2)
  {
    JsonElement localJsonElement = createJsonElement(paramString2);
    add(paramString1, localJsonElement);
  }
  
  private JsonElement createJsonElement(Object paramObject)
  {
    Object localObject;
    if (paramObject == null) {
      localObject = JsonNull.createJsonNull();
    }
    for (;;)
    {
      return (JsonElement)localObject;
      localObject = new com/google/kagegamesgson/JsonPrimitive;
      ((JsonPrimitive)localObject).<init>(paramObject);
    }
  }
  
  public Set<Map.Entry<String, JsonElement>> entrySet()
  {
    Object localObject = members;
    localObject = ((Map)localObject).entrySet();
    return (Set<Map.Entry<String, JsonElement>>)localObject;
  }
  
  public JsonElement get(String paramString)
  {
    Map localMap = members;
    boolean bool = localMap.containsKey(paramString);
    Object localObject2;
    Object localObject1;
    if (bool)
    {
      localObject2 = members;
      localObject1 = ((Map)localObject2).get(paramString);
      localObject1 = (JsonElement)localObject1;
      if (localObject1 == null) {
        localObject2 = JsonNull.createJsonNull();
      }
    }
    for (;;)
    {
      return (JsonElement)localObject2;
      localObject2 = localObject1;
      continue;
      localObject2 = null;
    }
  }
  
  public JsonArray getAsJsonArray(String paramString)
  {
    Map localMap = members;
    this = localMap.get(paramString);
    this = (JsonArray)this;
    return this;
  }
  
  public JsonObject getAsJsonObject(String paramString)
  {
    Map localMap = members;
    this = localMap.get(paramString);
    this = (JsonObject)this;
    return this;
  }
  
  public JsonPrimitive getAsJsonPrimitive(String paramString)
  {
    Map localMap = members;
    this = localMap.get(paramString);
    this = (JsonPrimitive)this;
    return this;
  }
  
  public boolean has(String paramString)
  {
    Map localMap = members;
    boolean bool = localMap.containsKey(paramString);
    return bool;
  }
  
  public JsonElement remove(String paramString)
  {
    Map localMap = members;
    this = localMap.remove(paramString);
    this = (JsonElement)this;
    return this;
  }
  
  protected void toString(Appendable paramAppendable, Escaper paramEscaper)
    throws IOException
  {
    char c1 = '{';
    paramAppendable.append(c1);
    int i = 1;
    Object localObject2 = members;
    localObject2 = ((Map)localObject2).entrySet();
    Iterator localIterator = ((Set)localObject2).iterator();
    boolean bool = localIterator.hasNext();
    if (bool)
    {
      Object localObject1 = localIterator.next();
      localObject1 = (Map.Entry)localObject1;
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        char c2 = '"';
        paramAppendable.append(c2);
        this = ((Map.Entry)localObject1).getKey();
        this = (CharSequence)this;
        String str = paramEscaper.escapeJsonString(this);
        paramAppendable.append(str);
        str = "\":";
        paramAppendable.append(str);
        this = ((Map.Entry)localObject1).getValue();
        this = (JsonElement)this;
        toString(paramAppendable, paramEscaper);
        break;
        c3 = ',';
        paramAppendable.append(c3);
      }
    }
    char c3 = '}';
    paramAppendable.append(c3);
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonObject
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */