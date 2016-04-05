package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.reflect.TypeToken;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class TypeAdapterRuntimeTypeWrapper<T>
  extends TypeAdapter<T>
{
  private final Gson context;
  private final TypeAdapter<T> delegate;
  private final Type type;
  
  TypeAdapterRuntimeTypeWrapper(Gson paramGson, TypeAdapter<T> paramTypeAdapter, Type paramType)
  {
    context = paramGson;
    delegate = paramTypeAdapter;
    type = paramType;
  }
  
  private Type getRuntimeTypeIfMoreSpecific(Type paramType, Object paramObject)
  {
    Object localObject = paramType;
    if (paramObject != null) {
      if ((paramType != Object.class) && (!(paramType instanceof TypeVariable)))
      {
        localObject = paramType;
        if (!(paramType instanceof Class)) {}
      }
      else
      {
        localObject = paramObject.getClass();
      }
    }
    return (Type)localObject;
  }
  
  public final T read(JsonReader paramJsonReader)
  {
    return (T)delegate.read(paramJsonReader);
  }
  
  public final void write(JsonWriter paramJsonWriter, T paramT)
  {
    Object localObject1 = delegate;
    Object localObject2 = getRuntimeTypeIfMoreSpecific(type, paramT);
    if (localObject2 != type)
    {
      localObject2 = context.getAdapter(TypeToken.get((Type)localObject2));
      localObject1 = localObject2;
      if ((localObject2 instanceof ReflectiveTypeAdapterFactory.Adapter))
      {
        localObject1 = localObject2;
        if (!(delegate instanceof ReflectiveTypeAdapterFactory.Adapter)) {
          localObject1 = delegate;
        }
      }
    }
    ((TypeAdapter)localObject1).write(paramJsonWriter, paramT);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapterRuntimeTypeWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */