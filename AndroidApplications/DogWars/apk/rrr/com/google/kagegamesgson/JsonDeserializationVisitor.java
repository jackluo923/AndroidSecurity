package com.google.kagegamesgson;

import java.lang.reflect.Type;

abstract class JsonDeserializationVisitor<T>
  implements ObjectNavigator.Visitor
{
  protected boolean constructed;
  protected final JsonDeserializationContext context;
  protected final ParameterizedTypeHandlerMap deserializers;
  protected final ObjectNavigatorFactory factory;
  protected final JsonElement json;
  protected final ObjectConstructor objectConstructor;
  protected Object target;
  protected final Type targetType;
  
  public JsonDeserializationVisitor(JsonElement paramJsonElement, Type paramType, ObjectNavigatorFactory paramObjectNavigatorFactory, ObjectConstructor paramObjectConstructor, ParameterizedTypeHandlerMap<JsonDeserializer<?>> paramParameterizedTypeHandlerMap, JsonDeserializationContext paramJsonDeserializationContext)
  {
    Preconditions.checkNotNull(paramJsonElement);
    targetType = paramType;
    factory = paramObjectNavigatorFactory;
    objectConstructor = paramObjectConstructor;
    deserializers = paramParameterizedTypeHandlerMap;
    json = paramJsonElement;
    context = paramJsonDeserializationContext;
    boolean bool = false;
    constructed = bool;
  }
  
  protected abstract T constructTarget();
  
  public void end(ObjectTypePair paramObjectTypePair) {}
  
  public T getTarget()
  {
    boolean bool1 = constructed;
    if (!bool1)
    {
      Object localObject1 = constructTarget();
      target = localObject1;
      boolean bool2 = true;
      constructed = bool2;
    }
    Object localObject2 = target;
    return (T)localObject2;
  }
  
  protected Object invokeCustomDeserializer(JsonElement paramJsonElement, Pair<JsonDeserializer<?>, ObjectTypePair> paramPair)
  {
    if (paramJsonElement != null)
    {
      boolean bool = paramJsonElement.isJsonNull();
      if (!bool) {
        break label22;
      }
    }
    label22:
    Type localType;
    JsonDeserializationContext localJsonDeserializationContext;
    for (Object localObject = null;; localObject = ((JsonDeserializer)localObject).deserialize(paramJsonElement, localType, localJsonDeserializationContext))
    {
      return localObject;
      localObject = second;
      localObject = (ObjectTypePair)localObject;
      localType = type;
      localObject = first;
      localObject = (JsonDeserializer)localObject;
      localJsonDeserializationContext = context;
    }
  }
  
  public void start(ObjectTypePair paramObjectTypePair) {}
  
  private Object visitChild(Type paramType, JsonDeserializationVisitor<?> paramJsonDeserializationVisitor)
  {
    Object localObject1 = factory;
    ObjectTypePair localObjectTypePair = new com/google/kagegamesgson/ObjectTypePair;
    Object localObject2 = null;
    boolean bool = false;
    localObjectTypePair.<init>(localObject2, paramType, bool);
    ObjectNavigator localObjectNavigator = ((ObjectNavigatorFactory)localObject1).create(localObjectTypePair);
    localObjectNavigator.accept(paramJsonDeserializationVisitor);
    localObject1 = paramJsonDeserializationVisitor.getTarget();
    return localObject1;
  }
  
  final Object visitChildAsArray(Type paramType, JsonArray paramJsonArray)
  {
    JsonArrayDeserializationVisitor localJsonArrayDeserializationVisitor = new com/google/kagegamesgson/JsonArrayDeserializationVisitor;
    Object localObject = paramJsonArray.getAsJsonArray();
    ObjectNavigatorFactory localObjectNavigatorFactory = factory;
    ObjectConstructor localObjectConstructor = objectConstructor;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = deserializers;
    JsonDeserializationContext localJsonDeserializationContext = context;
    Type localType = paramType;
    localJsonArrayDeserializationVisitor.<init>((JsonArray)localObject, localType, localObjectNavigatorFactory, localObjectConstructor, localParameterizedTypeHandlerMap, localJsonDeserializationContext);
    localObject = visitChild(paramType, localJsonArrayDeserializationVisitor);
    return localObject;
  }
  
  final Object visitChildAsObject(Type paramType, JsonElement paramJsonElement)
  {
    JsonObjectDeserializationVisitor localJsonObjectDeserializationVisitor = new com/google/kagegamesgson/JsonObjectDeserializationVisitor;
    ObjectNavigatorFactory localObjectNavigatorFactory = factory;
    ObjectConstructor localObjectConstructor = objectConstructor;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = deserializers;
    JsonDeserializationContext localJsonDeserializationContext = context;
    Object localObject = paramJsonElement;
    Type localType = paramType;
    localJsonObjectDeserializationVisitor.<init>((JsonElement)localObject, localType, localObjectNavigatorFactory, localObjectConstructor, localParameterizedTypeHandlerMap, localJsonDeserializationContext);
    localObject = visitChild(paramType, localJsonObjectDeserializationVisitor);
    return localObject;
  }
  
  public final boolean visitUsingCustomHandler(ObjectTypePair paramObjectTypePair)
  {
    JsonElement localJsonElement2 = 1;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = deserializers;
    Pair localPair = paramObjectTypePair.getMatchingHandler(localParameterizedTypeHandlerMap);
    if (localPair == null) {}
    JsonElement localJsonElement1;
    for (boolean bool = false;; localJsonElement1 = localJsonElement2)
    {
      return bool;
      localJsonElement1 = json;
      Object localObject = invokeCustomDeserializer(localJsonElement1, localPair);
      target = localObject;
      constructed = localJsonElement2;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonDeserializationVisitor
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */