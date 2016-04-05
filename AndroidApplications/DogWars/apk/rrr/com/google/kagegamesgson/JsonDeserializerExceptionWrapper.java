package com.google.kagegamesgson;

import java.lang.reflect.Type;

class JsonDeserializerExceptionWrapper<T>
  implements JsonDeserializer<T>
{
  private final JsonDeserializer delegate;
  
  JsonDeserializerExceptionWrapper(JsonDeserializer<T> paramJsonDeserializer)
  {
    Preconditions.checkNotNull(paramJsonDeserializer);
    delegate = paramJsonDeserializer;
  }
  
  public T deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    try
    {
      Object localObject2 = delegate;
      localObject2 = ((JsonDeserializer)localObject2).deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
      return (T)localObject2;
    }
    catch (JsonParseException localJsonParseException)
    {
      localObject1 = localJsonParseException;
      throw ((Throwable)localObject1);
    }
    catch (Exception localException)
    {
      Object localObject1 = localException;
      Object localObject3 = new java/lang/StringBuilder;
      ((StringBuilder)localObject3).<init>();
      Object localObject4 = "The JsonDeserializer ";
      localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
      localObject4 = delegate;
      localObject3 = ((StringBuilder)localObject3).append(localObject4);
      localObject4 = " failed to deserialized json object ";
      localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
      localObject3 = ((StringBuilder)localObject3).append(paramJsonElement);
      localObject4 = " given the type ";
      localObject3 = ((StringBuilder)localObject3).append((String)localObject4);
      StringBuilder localStringBuilder = ((StringBuilder)localObject3).append(paramType);
      localObject3 = new com/google/kagegamesgson/JsonParseException;
      localObject4 = localStringBuilder.toString();
      ((JsonParseException)localObject3).<init>((String)localObject4, (Throwable)localObject1);
      throw ((Throwable)localObject3);
    }
  }
  
  public String toString()
  {
    Object localObject = delegate;
    localObject = localObject.toString();
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonDeserializerExceptionWrapper
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */