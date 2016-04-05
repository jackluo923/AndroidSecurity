package com.google.kagegamesgson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class DefaultTypeAdapters$MapTypeAdapter
  implements JsonSerializer<Map>, JsonDeserializer<Map>, InstanceCreator<Map>
{
  private Map constructMapType(Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
  {
    Object localObject1 = paramJsonDeserializationContext;
    localObject1 = (JsonDeserializationContextDefault)localObject1;
    Object localObject2 = localObject1;
    ObjectConstructor localObjectConstructor = ((JsonDeserializationContextDefault)localObject2).getObjectConstructor();
    this = localObjectConstructor.construct(paramType);
    this = (Map)this;
    return this;
  }
  
  public Object createInstance(Type paramType)
  {
    Map localMap = createInstance(paramType);
    return localMap;
  }
  
  public Map createInstance(Type paramType)
  {
    LinkedHashMap localLinkedHashMap = new java/util/LinkedHashMap;
    localLinkedHashMap.<init>();
    return localLinkedHashMap;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Map localMap = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localMap;
  }
  
  public Map deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Map localMap = constructMapType(paramType, paramJsonDeserializationContext);
    TypeInfoMap localTypeInfoMap = new com/google/kagegamesgson/TypeInfoMap;
    localTypeInfoMap.<init>(paramType);
    Object localObject4 = paramJsonElement.getAsJsonObject();
    localObject4 = ((JsonObject)localObject4).entrySet();
    Iterator localIterator = ((Set)localObject4).iterator();
    for (;;)
    {
      boolean bool = localIterator.hasNext();
      if (!bool) {
        break;
      }
      Object localObject1 = localIterator.next();
      localObject1 = (Map.Entry)localObject1;
      Object localObject5 = new com/google/kagegamesgson/JsonPrimitive;
      this = ((Map.Entry)localObject1).getKey();
      this = (String)this;
      ((JsonPrimitive)localObject5).<init>(this);
      Type localType = localTypeInfoMap.getKeyType();
      Object localObject2 = paramJsonDeserializationContext.deserialize((JsonElement)localObject5, localType);
      this = ((Map.Entry)localObject1).getValue();
      this = (JsonElement)this;
      localObject5 = localTypeInfoMap.getValueType();
      Object localObject3 = paramJsonDeserializationContext.deserialize(this, (Type)localObject5);
      localMap.put(localObject2, localObject3);
    }
    return localMap;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Map)paramObject;
    JsonElement localJsonElement = serialize((Map)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(Map paramMap, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    JsonObject localJsonObject = new com/google/kagegamesgson/JsonObject;
    localJsonObject.<init>();
    Type localType = null;
    boolean bool1 = paramType instanceof ParameterizedType;
    if (bool1)
    {
      localObject5 = new com/google/kagegamesgson/TypeInfoMap;
      ((TypeInfoMap)localObject5).<init>(paramType);
      localType = ((TypeInfoMap)localObject5).getValueType();
    }
    Object localObject5 = paramMap.entrySet();
    Iterator localIterator = ((Set)localObject5).iterator();
    Object localObject3;
    Object localObject4;
    Object localObject6;
    for (;;)
    {
      boolean bool2 = localIterator.hasNext();
      if (!bool2) {
        break label175;
      }
      Object localObject2 = localIterator.next();
      localObject2 = (Map.Entry)localObject2;
      localObject3 = ((Map.Entry)localObject2).getValue();
      if (localObject3 != null) {
        break;
      }
      localObject4 = JsonNull.createJsonNull();
      localObject6 = ((Map.Entry)localObject2).getKey();
      localObject6 = String.valueOf(localObject6);
      localJsonObject.add((String)localObject6, (JsonElement)localObject4);
    }
    if (localType == null) {
      localObject6 = localObject3.getClass();
    }
    for (Object localObject1 = localObject6;; localObject1 = localType)
    {
      localObject4 = paramJsonSerializationContext.serialize(localObject3, (Type)localObject1);
      break;
    }
    label175:
    return localJsonObject;
  }
  
  public String toString()
  {
    Object localObject = MapTypeAdapter.class;
    localObject = ((Class)localObject).getSimpleName();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.MapTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */