package com.google.kagegamesgson;

import java.lang.reflect.Type;

final class JsonObjectDeserializationVisitor<T>
  extends JsonDeserializationVisitor<T>
{
  JsonObjectDeserializationVisitor(JsonElement paramJsonElement, Type paramType, ObjectNavigatorFactory paramObjectNavigatorFactory, ObjectConstructor paramObjectConstructor, ParameterizedTypeHandlerMap<JsonDeserializer<?>> paramParameterizedTypeHandlerMap, JsonDeserializationContext paramJsonDeserializationContext)
  {
    super(paramJsonElement, paramType, paramObjectNavigatorFactory, paramObjectConstructor, paramParameterizedTypeHandlerMap, paramJsonDeserializationContext);
  }
  
  protected T constructTarget()
  {
    Object localObject = objectConstructor;
    Type localType = targetType;
    localObject = ((ObjectConstructor)localObject).construct(localType);
    return (T)localObject;
  }
  
  private String getFieldName(FieldAttributes paramFieldAttributes)
  {
    Object localObject = factory;
    FieldNamingStrategy2 localFieldNamingStrategy2 = ((ObjectNavigatorFactory)localObject).getFieldNamingPolicy();
    localObject = localFieldNamingStrategy2.translateName(paramFieldAttributes);
    return (String)localObject;
  }
  
  public void startVisitingObject(Object paramObject) {}
  
  public void visitArray(Object paramObject, Type paramType)
  {
    JsonParseException localJsonParseException = new com/google/kagegamesgson/JsonParseException;
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "Expecting object but found array: ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramObject);
    localObject = ((StringBuilder)localObject).toString();
    localJsonParseException.<init>((String)localObject);
    throw localJsonParseException;
  }
  
  public void visitArrayField(FieldAttributes paramFieldAttributes, Type paramType, Object paramObject)
  {
    try
    {
      JsonElement localJsonElement = json;
      boolean bool = localJsonElement.isJsonObject();
      if (!bool)
      {
        JsonParseException localJsonParseException = new com/google/kagegamesgson/JsonParseException;
        Object localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        Object localObject5 = "Expecting object found: ";
        localObject4 = ((StringBuilder)localObject4).append((String)localObject5);
        localObject5 = json;
        localObject4 = ((StringBuilder)localObject4).append(localObject5);
        localObject4 = ((StringBuilder)localObject4).toString();
        localJsonParseException.<init>((String)localObject4);
        throw localJsonParseException;
      }
    }
    catch (IllegalAccessException localIllegalAccessException2)
    {
      IllegalAccessException localIllegalAccessException1 = localIllegalAccessException2;
      localObject3 = new java/lang/RuntimeException;
      ((RuntimeException)localObject3).<init>(localIllegalAccessException1);
      throw ((Throwable)localObject3);
    }
    Object localObject3 = json;
    JsonObject localJsonObject = ((JsonElement)localObject3).getAsJsonObject();
    String str = getFieldName(paramFieldAttributes);
    Object localObject2 = localJsonObject.get(str);
    localObject2 = (JsonArray)localObject2;
    if (localObject2 != null)
    {
      Object localObject1 = visitChildAsArray(paramType, (JsonArray)localObject2);
      paramFieldAttributes.set(paramObject, localObject1);
    }
    for (;;)
    {
      return;
      localObject3 = null;
      paramFieldAttributes.set(paramObject, localObject3);
    }
  }
  
  public boolean visitFieldUsingCustomHandler(FieldAttributes paramFieldAttributes, Type paramType, Object paramObject)
  {
    int j = 0;
    int i = 1;
    String str;
    Object localObject5;
    try
    {
      str = getFieldName(paramFieldAttributes);
      JsonElement localJsonElement2 = json;
      boolean bool1 = localJsonElement2.isJsonObject();
      if (!bool1)
      {
        JsonParseException localJsonParseException = new com/google/kagegamesgson/JsonParseException;
        Object localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        localObject5 = "Expecting object found: ";
        localObject4 = ((StringBuilder)localObject4).append((String)localObject5);
        localObject5 = json;
        localObject4 = ((StringBuilder)localObject4).append(localObject5);
        localObject4 = ((StringBuilder)localObject4).toString();
        localJsonParseException.<init>((String)localObject4);
        throw localJsonParseException;
      }
    }
    catch (IllegalAccessException localIllegalAccessException2)
    {
      IllegalAccessException localIllegalAccessException1 = localIllegalAccessException2;
      localObject2 = new java/lang/RuntimeException;
      ((RuntimeException)localObject2).<init>();
      throw ((Throwable)localObject2);
    }
    Object localObject2 = json;
    localObject2 = ((JsonElement)localObject2).getAsJsonObject();
    JsonElement localJsonElement1 = ((JsonObject)localObject2).get(str);
    TypeInfo localTypeInfo = new com/google/kagegamesgson/TypeInfo;
    localTypeInfo.<init>(paramType);
    if (localJsonElement1 == null) {
      localObject2 = localObject5;
    }
    for (;;)
    {
      return (boolean)localObject2;
      boolean bool2 = localJsonElement1.isJsonNull();
      Object localObject3;
      if (bool2)
      {
        bool2 = localTypeInfo.isPrimitive();
        if (!bool2)
        {
          localObject3 = null;
          paramFieldAttributes.set(paramObject, localObject3);
        }
        localObject3 = localObject5;
      }
      else
      {
        ObjectTypePair localObjectTypePair = new com/google/kagegamesgson/ObjectTypePair;
        localObject3 = null;
        boolean bool4 = false;
        localObjectTypePair.<init>(localObject3, paramType, bool4);
        localObject3 = deserializers;
        Pair localPair = localObjectTypePair.getMatchingHandler((ParameterizedTypeHandlerMap)localObject3);
        if (localPair == null)
        {
          localObject3 = j;
        }
        else
        {
          Object localObject1 = invokeCustomDeserializer(localJsonElement1, localPair);
          if (localObject1 == null)
          {
            bool3 = localTypeInfo.isPrimitive();
            if (bool3) {}
          }
          else
          {
            paramFieldAttributes.set(paramObject, localObject1);
          }
          boolean bool3 = localObject5;
        }
      }
    }
  }
  
  public void visitObjectField(FieldAttributes paramFieldAttributes, Type paramType, Object paramObject)
  {
    try
    {
      JsonElement localJsonElement2 = json;
      boolean bool = localJsonElement2.isJsonObject();
      if (!bool)
      {
        JsonParseException localJsonParseException = new com/google/kagegamesgson/JsonParseException;
        Object localObject3 = new java/lang/StringBuilder;
        ((StringBuilder)localObject3).<init>();
        Object localObject4 = "Expecting object found: ";
        localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
        localObject4 = json;
        localObject3 = ((StringBuilder)localObject3).append(localObject4);
        localObject3 = ((StringBuilder)localObject3).toString();
        localJsonParseException.<init>((String)localObject3);
        throw localJsonParseException;
      }
    }
    catch (IllegalAccessException localIllegalAccessException2)
    {
      IllegalAccessException localIllegalAccessException1 = localIllegalAccessException2;
      localObject2 = new java/lang/RuntimeException;
      ((RuntimeException)localObject2).<init>(localIllegalAccessException1);
      throw ((Throwable)localObject2);
    }
    Object localObject2 = json;
    JsonObject localJsonObject = ((JsonElement)localObject2).getAsJsonObject();
    String str = getFieldName(paramFieldAttributes);
    JsonElement localJsonElement1 = localJsonObject.get(str);
    if (localJsonElement1 != null)
    {
      Object localObject1 = visitChildAsObject(paramType, localJsonElement1);
      paramFieldAttributes.set(paramObject, localObject1);
    }
    for (;;)
    {
      return;
      localObject2 = null;
      paramFieldAttributes.set(paramObject, localObject2);
    }
  }
  
  public void visitPrimitive(Object paramObject)
  {
    JsonElement localJsonElement = json;
    boolean bool = localJsonElement.isJsonPrimitive();
    if (!bool)
    {
      localObject1 = new com/google/kagegamesgson/JsonParseException;
      Object localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      Object localObject3 = "Type information is unavailable, and the target object is not a primitive: ";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      localObject3 = json;
      localObject2 = ((StringBuilder)localObject2).append(localObject3);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((JsonParseException)localObject1).<init>((String)localObject2);
      throw ((Throwable)localObject1);
    }
    Object localObject1 = json;
    JsonPrimitive localJsonPrimitive = ((JsonElement)localObject1).getAsJsonPrimitive();
    localObject1 = localJsonPrimitive.getAsObject();
    target = localObject1;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonObjectDeserializationVisitor
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */