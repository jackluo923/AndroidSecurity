package com.google.kagegamesgson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

class DefaultTypeAdapters$CollectionTypeAdapter
  implements JsonSerializer<Collection>, JsonDeserializer<Collection>, InstanceCreator<Collection>
{
  private DefaultTypeAdapters$CollectionTypeAdapter() {}
  
  DefaultTypeAdapters$CollectionTypeAdapter(DefaultTypeAdapters.1 param1)
  {
    this();
  }
  
  private Collection constructCollectionType(Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
  {
    Object localObject1 = paramJsonDeserializationContext;
    localObject1 = (JsonDeserializationContextDefault)localObject1;
    Object localObject2 = localObject1;
    ObjectConstructor localObjectConstructor = ((JsonDeserializationContextDefault)localObject2).getObjectConstructor();
    this = localObjectConstructor.construct(paramType);
    this = (Collection)this;
    return this;
  }
  
  public Object createInstance(Type paramType)
  {
    Collection localCollection = createInstance(paramType);
    return localCollection;
  }
  
  public Collection createInstance(Type paramType)
  {
    LinkedList localLinkedList = new java/util/LinkedList;
    localLinkedList.<init>();
    return localLinkedList;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Collection localCollection = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localCollection;
  }
  
  public Collection deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Object localObject5 = null;
    boolean bool1 = paramJsonElement.isJsonNull();
    if (bool1) {}
    Collection localCollection;
    Object localObject4;
    for (Object localObject3 = localObject5;; localObject4 = localCollection)
    {
      return (Collection)localObject3;
      localCollection = constructCollectionType(paramType, paramJsonDeserializationContext);
      localObject3 = new com/google/kagegamesgson/TypeInfoCollection;
      ((TypeInfoCollection)localObject3).<init>(paramType);
      Type localType = ((TypeInfoCollection)localObject3).getElementType();
      localObject3 = paramJsonElement.getAsJsonArray();
      Iterator localIterator = ((JsonArray)localObject3).iterator();
      for (;;)
      {
        boolean bool2 = localIterator.hasNext();
        if (!bool2) {
          break;
        }
        Object localObject1 = localIterator.next();
        localObject1 = (JsonElement)localObject1;
        if (localObject1 != null)
        {
          bool2 = ((JsonElement)localObject1).isJsonNull();
          if (!bool2) {}
        }
        else
        {
          localCollection.add(localObject5);
          continue;
        }
        Object localObject2 = paramJsonDeserializationContext.deserialize((JsonElement)localObject1, localType);
        localCollection.add(localObject2);
      }
    }
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Collection)paramObject;
    JsonElement localJsonElement = serialize((Collection)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(Collection paramCollection, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    if (paramCollection == null) {}
    JsonArray localJsonArray;
    Object localObject3;
    label162:
    for (JsonNull localJsonNull = JsonNull.createJsonNull();; localObject3 = localJsonArray)
    {
      return localJsonNull;
      localJsonArray = new com/google/kagegamesgson/JsonArray;
      localJsonArray.<init>();
      Type localType = null;
      boolean bool1 = paramType instanceof ParameterizedType;
      if (bool1)
      {
        TypeInfoCollection localTypeInfoCollection = new com/google/kagegamesgson/TypeInfoCollection;
        localTypeInfoCollection.<init>(paramType);
        localType = localTypeInfoCollection.getElementType();
      }
      Iterator localIterator = paramCollection.iterator();
      Object localObject1;
      for (;;)
      {
        boolean bool2 = localIterator.hasNext();
        if (!bool2) {
          break label162;
        }
        localObject1 = localIterator.next();
        if (localObject1 != null) {
          break;
        }
        localObject3 = JsonNull.createJsonNull();
        localJsonArray.add((JsonElement)localObject3);
      }
      if (localType != null)
      {
        localObject3 = Object.class;
        if (localType != localObject3) {}
      }
      else
      {
        localObject3 = localObject1.getClass();
      }
      for (Object localObject2 = localObject3;; localObject2 = localType)
      {
        JsonElement localJsonElement = paramJsonSerializationContext.serialize(localObject1, (Type)localObject2);
        localJsonArray.add(localJsonElement);
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.CollectionTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */