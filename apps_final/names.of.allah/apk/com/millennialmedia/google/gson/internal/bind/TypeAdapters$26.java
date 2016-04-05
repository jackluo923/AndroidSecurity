package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.TypeAdapterFactory;
import com.millennialmedia.google.gson.reflect.TypeToken;

final class TypeAdapters$26
  implements TypeAdapterFactory
{
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    paramTypeToken = paramTypeToken.getRawType();
    if ((!Enum.class.isAssignableFrom(paramTypeToken)) || (paramTypeToken == Enum.class)) {
      return null;
    }
    paramGson = paramTypeToken;
    if (!paramTypeToken.isEnum()) {
      paramGson = paramTypeToken.getSuperclass();
    }
    return new TypeAdapters.EnumTypeAdapter(paramGson);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.26
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */