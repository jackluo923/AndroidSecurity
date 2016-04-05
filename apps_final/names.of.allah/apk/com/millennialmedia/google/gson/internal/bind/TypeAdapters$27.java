package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.TypeAdapterFactory;
import com.millennialmedia.google.gson.reflect.TypeToken;

final class TypeAdapters$27
  implements TypeAdapterFactory
{
  TypeAdapters$27(TypeToken paramTypeToken, TypeAdapter paramTypeAdapter) {}
  
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    if (paramTypeToken.equals(val$type)) {
      return val$typeAdapter;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.27
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */