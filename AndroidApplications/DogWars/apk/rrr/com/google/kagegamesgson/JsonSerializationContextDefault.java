package com.google.kagegamesgson;

import java.lang.reflect.Type;

final class JsonSerializationContextDefault
  implements JsonSerializationContext
{
  private final MemoryRefStack ancestors;
  private final ObjectNavigatorFactory factory;
  private final boolean serializeNulls;
  private final ParameterizedTypeHandlerMap serializers;
  
  JsonSerializationContextDefault(ObjectNavigatorFactory paramObjectNavigatorFactory, boolean paramBoolean, ParameterizedTypeHandlerMap<JsonSerializer<?>> paramParameterizedTypeHandlerMap)
  {
    factory = paramObjectNavigatorFactory;
    serializeNulls = paramBoolean;
    serializers = paramParameterizedTypeHandlerMap;
    MemoryRefStack localMemoryRefStack = new com/google/kagegamesgson/MemoryRefStack;
    localMemoryRefStack.<init>();
    ancestors = localMemoryRefStack;
  }
  
  public JsonElement serialize(Object paramObject)
  {
    if (paramObject == null) {}
    boolean bool;
    for (Object localObject = JsonNull.createJsonNull();; localObject = serialize(paramObject, (Type)localObject, bool))
    {
      return (JsonElement)localObject;
      localObject = paramObject.getClass();
      bool = true;
    }
  }
  
  public JsonElement serialize(Object paramObject, Type paramType)
  {
    boolean bool = true;
    JsonElement localJsonElement = serialize(paramObject, paramType, bool);
    return localJsonElement;
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, boolean paramBoolean)
  {
    Object localObject = factory;
    ObjectTypePair localObjectTypePair = new com/google/kagegamesgson/ObjectTypePair;
    localObjectTypePair.<init>(paramObject, paramType, paramBoolean);
    ObjectNavigator localObjectNavigator = ((ObjectNavigatorFactory)localObject).create(localObjectTypePair);
    JsonSerializationVisitor localJsonSerializationVisitor = new com/google/kagegamesgson/JsonSerializationVisitor;
    localObject = factory;
    boolean bool = serializeNulls;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = serializers;
    MemoryRefStack localMemoryRefStack = ancestors;
    JsonSerializationContextDefault localJsonSerializationContextDefault = this;
    localJsonSerializationVisitor.<init>((ObjectNavigatorFactory)localObject, bool, localParameterizedTypeHandlerMap, localJsonSerializationContextDefault, localMemoryRefStack);
    localObjectNavigator.accept(localJsonSerializationVisitor);
    localObject = localJsonSerializationVisitor.getJsonElement();
    return (JsonElement)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonSerializationContextDefault
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */