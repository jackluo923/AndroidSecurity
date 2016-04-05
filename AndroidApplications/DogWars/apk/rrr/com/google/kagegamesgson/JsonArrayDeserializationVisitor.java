package com.google.kagegamesgson;

import java.lang.reflect.Array;
import java.lang.reflect.Type;

final class JsonArrayDeserializationVisitor<T>
  extends JsonDeserializationVisitor<T>
{
  JsonArrayDeserializationVisitor(JsonArray paramJsonArray, Type paramType, ObjectNavigatorFactory paramObjectNavigatorFactory, ObjectConstructor paramObjectConstructor, ParameterizedTypeHandlerMap<JsonDeserializer<?>> paramParameterizedTypeHandlerMap, JsonDeserializationContext paramJsonDeserializationContext)
  {
    super(paramJsonArray, paramType, paramObjectNavigatorFactory, paramObjectConstructor, paramParameterizedTypeHandlerMap, paramJsonDeserializationContext);
  }
  
  protected T constructTarget()
  {
    TypeInfo localTypeInfo = new com/google/kagegamesgson/TypeInfo;
    Object localObject1 = targetType;
    localTypeInfo.<init>((Type)localObject1);
    localObject1 = json;
    boolean bool1 = ((JsonElement)localObject1).isJsonArray();
    Object localObject4;
    if (!bool1)
    {
      localObject2 = new com/google/kagegamesgson/JsonParseException;
      localObject4 = new java/lang/StringBuilder;
      ((StringBuilder)localObject4).<init>();
      Object localObject5 = "Expecting array found: ";
      localObject4 = ((StringBuilder)localObject4).append((String)localObject5);
      localObject5 = json;
      localObject4 = ((StringBuilder)localObject4).append(localObject5);
      localObject4 = ((StringBuilder)localObject4).toString();
      ((JsonParseException)localObject2).<init>((String)localObject4);
      throw ((Throwable)localObject2);
    }
    Object localObject2 = json;
    JsonArray localJsonArray = ((JsonElement)localObject2).getAsJsonArray();
    boolean bool2 = localTypeInfo.isArray();
    int i;
    if (bool2)
    {
      localObject3 = targetType;
      TypeInfoArray localTypeInfoArray = TypeInfoFactory.getTypeInfoForArray((Type)localObject3);
      localObject3 = objectConstructor;
      localObject4 = localTypeInfoArray.getSecondLevelType();
      i = localJsonArray.size();
    }
    for (Object localObject3 = ((ObjectConstructor)localObject3).constructArray((Type)localObject4, i);; localObject3 = ((ObjectConstructor)localObject3).construct((Type)localObject4))
    {
      return (T)localObject3;
      localObject3 = objectConstructor;
      localObject4 = localTypeInfo.getRawClass();
    }
  }
  
  public void startVisitingObject(Object paramObject)
  {
    JsonParseException localJsonParseException = new com/google/kagegamesgson/JsonParseException;
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "Expecting array but found object: ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramObject);
    localObject = ((StringBuilder)localObject).toString();
    localJsonParseException.<init>((String)localObject);
    throw localJsonParseException;
  }
  
  public void visitArray(Object paramObject, Type paramType)
  {
    JsonElement localJsonElement2 = json;
    boolean bool1 = localJsonElement2.isJsonArray();
    Object localObject4;
    if (!bool1)
    {
      localObject2 = new com/google/kagegamesgson/JsonParseException;
      localObject4 = new java/lang/StringBuilder;
      ((StringBuilder)localObject4).<init>();
      Object localObject5 = "Expecting array found: ";
      localObject4 = ((StringBuilder)localObject4).append((String)localObject5);
      localObject5 = json;
      localObject4 = ((StringBuilder)localObject4).append(localObject5);
      localObject4 = ((StringBuilder)localObject4).toString();
      ((JsonParseException)localObject2).<init>((String)localObject4);
      throw ((Throwable)localObject2);
    }
    Object localObject2 = json;
    JsonArray localJsonArray = ((JsonElement)localObject2).getAsJsonArray();
    TypeInfoArray localTypeInfoArray = TypeInfoFactory.getTypeInfoForArray(paramType);
    int i = 0;
    int j = localJsonArray.size();
    if (i < j)
    {
      JsonElement localJsonElement1 = localJsonArray.get(i);
      boolean bool2;
      Object localObject1;
      if (localJsonElement1 != null)
      {
        bool2 = localJsonElement1.isJsonNull();
        if (!bool2) {}
      }
      else
      {
        localObject1 = null;
      }
      for (;;)
      {
        Array.set(paramObject, i, localObject1);
        i += 1;
        break;
        bool2 = localJsonElement1 instanceof JsonObject;
        if (bool2)
        {
          Class localClass = localTypeInfoArray.getComponentRawType();
          localObject1 = visitChildAsObject(localClass, localJsonElement1);
        }
        else
        {
          boolean bool3 = localJsonElement1 instanceof JsonArray;
          if (bool3)
          {
            Type localType = localTypeInfoArray.getSecondLevelType();
            localObject4 = localJsonElement1.getAsJsonArray();
            localObject1 = visitChildAsArray(localType, (JsonArray)localObject4);
          }
          else
          {
            boolean bool4 = localJsonElement1 instanceof JsonPrimitive;
            if (!bool4) {
              break label267;
            }
            localObject3 = localTypeInfoArray.getComponentRawType();
            localObject4 = localJsonElement1.getAsJsonPrimitive();
            localObject1 = visitChildAsObject((Type)localObject3, (JsonElement)localObject4);
          }
        }
      }
      label267:
      Object localObject3 = new java/lang/IllegalStateException;
      ((IllegalStateException)localObject3).<init>();
      throw ((Throwable)localObject3);
    }
  }
  
  public void visitArrayField(FieldAttributes paramFieldAttributes, Type paramType, Object paramObject)
  {
    JsonParseException localJsonParseException = new com/google/kagegamesgson/JsonParseException;
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "Expecting array but found array field ";
    localObject = ((StringBuilder)localObject).append(str);
    str = paramFieldAttributes.getName();
    localObject = ((StringBuilder)localObject).append(str);
    str = ": ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramObject);
    localObject = ((StringBuilder)localObject).toString();
    localJsonParseException.<init>((String)localObject);
    throw localJsonParseException;
  }
  
  public boolean visitFieldUsingCustomHandler(FieldAttributes paramFieldAttributes, Type paramType, Object paramObject)
  {
    JsonParseException localJsonParseException = new com/google/kagegamesgson/JsonParseException;
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "Expecting array but found field ";
    localObject = ((StringBuilder)localObject).append(str);
    str = paramFieldAttributes.getName();
    localObject = ((StringBuilder)localObject).append(str);
    str = ": ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramObject);
    localObject = ((StringBuilder)localObject).toString();
    localJsonParseException.<init>((String)localObject);
    throw localJsonParseException;
  }
  
  public void visitObjectField(FieldAttributes paramFieldAttributes, Type paramType, Object paramObject)
  {
    JsonParseException localJsonParseException = new com/google/kagegamesgson/JsonParseException;
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "Expecting array but found object field ";
    localObject = ((StringBuilder)localObject).append(str);
    str = paramFieldAttributes.getName();
    localObject = ((StringBuilder)localObject).append(str);
    str = ": ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramObject);
    localObject = ((StringBuilder)localObject).toString();
    localJsonParseException.<init>((String)localObject);
    throw localJsonParseException;
  }
  
  public void visitPrimitive(Object paramObject)
  {
    JsonParseException localJsonParseException = new com/google/kagegamesgson/JsonParseException;
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    Object localObject2 = "Type information is unavailable, and the target is not a primitive: ";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = json;
    localObject1 = ((StringBuilder)localObject1).append(localObject2);
    localObject1 = ((StringBuilder)localObject1).toString();
    localJsonParseException.<init>((String)localObject1);
    throw localJsonParseException;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonArrayDeserializationVisitor
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */