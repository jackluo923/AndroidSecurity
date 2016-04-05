package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.TypeAdapterFactory;
import com.millennialmedia.google.gson.internal..Gson.Types;
import com.millennialmedia.google.gson.reflect.TypeToken;
import java.lang.reflect.GenericArrayType;

final class ArrayTypeAdapter$1
  implements TypeAdapterFactory
{
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    paramTypeToken = paramTypeToken.getType();
    if ((!(paramTypeToken instanceof GenericArrayType)) && ((!(paramTypeToken instanceof Class)) || (!((Class)paramTypeToken).isArray()))) {
      return null;
    }
    paramTypeToken = .Gson.Types.getArrayComponentType(paramTypeToken);
    return new ArrayTypeAdapter(paramGson, paramGson.getAdapter(TypeToken.get(paramTypeToken)), .Gson.Types.getRawType(paramTypeToken));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.ArrayTypeAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */