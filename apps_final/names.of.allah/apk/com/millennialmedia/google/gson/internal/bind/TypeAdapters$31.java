package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.TypeAdapterFactory;
import com.millennialmedia.google.gson.reflect.TypeToken;

final class TypeAdapters$31
  implements TypeAdapterFactory
{
  TypeAdapters$31(Class paramClass, TypeAdapter paramTypeAdapter) {}
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    if (val$clazz.isAssignableFrom(paramTypeToken.getRawType())) {
      return val$typeAdapter;
    }
    return null;
  }
  
  public final String toString()
  {
    return "Factory[typeHierarchy=" + val$clazz.getName() + ",adapter=" + val$typeAdapter + "]";
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.31
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */