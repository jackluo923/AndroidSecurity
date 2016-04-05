package com.google.kagegamesgson;

import java.lang.reflect.Type;

final class JsonDeserializationContextDefault
  implements JsonDeserializationContext
{
  private final ParameterizedTypeHandlerMap deserializers;
  private final ObjectNavigatorFactory navigatorFactory;
  private final MappedObjectConstructor objectConstructor;
  
  JsonDeserializationContextDefault(ObjectNavigatorFactory paramObjectNavigatorFactory, ParameterizedTypeHandlerMap<JsonDeserializer<?>> paramParameterizedTypeHandlerMap, MappedObjectConstructor paramMappedObjectConstructor)
  {
    navigatorFactory = paramObjectNavigatorFactory;
    deserializers = paramParameterizedTypeHandlerMap;
    objectConstructor = paramMappedObjectConstructor;
  }
  
  public <T> T deserialize(JsonElement paramJsonElement, Type paramType)
    throws JsonParseException
  {
    T ?;
    if (paramJsonElement != null)
    {
      boolean bool1 = paramJsonElement.isJsonNull();
      if (!bool1) {}
    }
    else
    {
      ? = null;
    }
    for (;;)
    {
      return ?;
      boolean bool2 = paramJsonElement.isJsonArray();
      if (bool2)
      {
        Object localObject1 = paramJsonElement.getAsJsonArray();
        localObject1 = fromJsonArray(paramType, (JsonArray)localObject1, this);
      }
      else
      {
        boolean bool3 = paramJsonElement.isJsonObject();
        if (bool3)
        {
          Object localObject2 = paramJsonElement.getAsJsonObject();
          localObject2 = fromJsonObject(paramType, (JsonObject)localObject2, this);
        }
        else
        {
          boolean bool4 = paramJsonElement.isJsonPrimitive();
          if (!bool4) {
            break;
          }
          localObject3 = paramJsonElement.getAsJsonPrimitive();
          localObject3 = fromJsonPrimitive(paramType, (JsonPrimitive)localObject3, this);
        }
      }
    }
    Object localObject3 = new com/google/kagegamesgson/JsonParseException;
    Object localObject4 = new java/lang/StringBuilder;
    ((StringBuilder)localObject4).<init>();
    String str = "Failed parsing JSON source: ";
    localObject4 = ((StringBuilder)localObject4).append(str);
    localObject4 = ((StringBuilder)localObject4).append(paramJsonElement);
    str = " to Json";
    localObject4 = ((StringBuilder)localObject4).append(str);
    localObject4 = ((StringBuilder)localObject4).toString();
    ((JsonParseException)localObject3).<init>((String)localObject4);
    throw ((Throwable)localObject3);
  }
  
  private <T> T fromJsonArray(Type paramType, JsonArray paramJsonArray, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    JsonArrayDeserializationVisitor localJsonArrayDeserializationVisitor = new com/google/kagegamesgson/JsonArrayDeserializationVisitor;
    ObjectNavigatorFactory localObjectNavigatorFactory = navigatorFactory;
    MappedObjectConstructor localMappedObjectConstructor = objectConstructor;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = deserializers;
    Object localObject1 = paramJsonArray;
    Object localObject2 = paramType;
    JsonDeserializationContext localJsonDeserializationContext = paramJsonDeserializationContext;
    localJsonArrayDeserializationVisitor.<init>((JsonArray)localObject1, (Type)localObject2, localObjectNavigatorFactory, localMappedObjectConstructor, localParameterizedTypeHandlerMap, localJsonDeserializationContext);
    localObject1 = navigatorFactory;
    localObject2 = new com/google/kagegamesgson/ObjectTypePair;
    localObjectNavigatorFactory = null;
    boolean bool = true;
    ((ObjectTypePair)localObject2).<init>(localObjectNavigatorFactory, paramType, bool);
    ObjectNavigator localObjectNavigator = ((ObjectNavigatorFactory)localObject1).create((ObjectTypePair)localObject2);
    localObjectNavigator.accept(localJsonArrayDeserializationVisitor);
    localObject1 = localJsonArrayDeserializationVisitor.getTarget();
    return (T)localObject1;
  }
  
  private <T> T fromJsonObject(Type paramType, JsonObject paramJsonObject, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    JsonObjectDeserializationVisitor localJsonObjectDeserializationVisitor = new com/google/kagegamesgson/JsonObjectDeserializationVisitor;
    ObjectNavigatorFactory localObjectNavigatorFactory = navigatorFactory;
    MappedObjectConstructor localMappedObjectConstructor = objectConstructor;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = deserializers;
    Object localObject1 = paramJsonObject;
    Object localObject2 = paramType;
    JsonDeserializationContext localJsonDeserializationContext = paramJsonDeserializationContext;
    localJsonObjectDeserializationVisitor.<init>((JsonElement)localObject1, (Type)localObject2, localObjectNavigatorFactory, localMappedObjectConstructor, localParameterizedTypeHandlerMap, localJsonDeserializationContext);
    localObject1 = navigatorFactory;
    localObject2 = new com/google/kagegamesgson/ObjectTypePair;
    localObjectNavigatorFactory = null;
    boolean bool = true;
    ((ObjectTypePair)localObject2).<init>(localObjectNavigatorFactory, paramType, bool);
    ObjectNavigator localObjectNavigator = ((ObjectNavigatorFactory)localObject1).create((ObjectTypePair)localObject2);
    localObjectNavigator.accept(localJsonObjectDeserializationVisitor);
    localObject1 = localJsonObjectDeserializationVisitor.getTarget();
    return (T)localObject1;
  }
  
  private <T> T fromJsonPrimitive(Type paramType, JsonPrimitive paramJsonPrimitive, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    JsonObjectDeserializationVisitor localJsonObjectDeserializationVisitor = new com/google/kagegamesgson/JsonObjectDeserializationVisitor;
    Object localObject3 = navigatorFactory;
    MappedObjectConstructor localMappedObjectConstructor = objectConstructor;
    ParameterizedTypeHandlerMap localParameterizedTypeHandlerMap = deserializers;
    Object localObject1 = paramJsonPrimitive;
    Object localObject2 = paramType;
    JsonDeserializationContext localJsonDeserializationContext = paramJsonDeserializationContext;
    localJsonObjectDeserializationVisitor.<init>((JsonElement)localObject1, (Type)localObject2, (ObjectNavigatorFactory)localObject3, localMappedObjectConstructor, localParameterizedTypeHandlerMap, localJsonDeserializationContext);
    localObject1 = navigatorFactory;
    localObject2 = new com/google/kagegamesgson/ObjectTypePair;
    localObject3 = paramJsonPrimitive.getAsObject();
    boolean bool = true;
    ((ObjectTypePair)localObject2).<init>(localObject3, paramType, bool);
    ObjectNavigator localObjectNavigator = ((ObjectNavigatorFactory)localObject1).create((ObjectTypePair)localObject2);
    localObjectNavigator.accept(localJsonObjectDeserializationVisitor);
    Object localObject4 = localJsonObjectDeserializationVisitor.getTarget();
    return (T)localObject4;
  }
  
  ObjectConstructor getObjectConstructor()
  {
    MappedObjectConstructor localMappedObjectConstructor = objectConstructor;
    return localMappedObjectConstructor;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonDeserializationContextDefault
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */